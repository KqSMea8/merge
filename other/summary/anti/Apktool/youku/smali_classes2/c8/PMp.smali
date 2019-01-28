.class public Lc8/PMp;
.super Ljava/lang/Object;
.source "ExecuteCallbackAfterFilter.java"

# interfaces
.implements Lc8/JMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExecuteCallbackAfterFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 9
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 31
    iget-object v5, p1, Lc8/IMp;->stats:Lc8/pPp;

    .line 32
    .local v5, "stats":Lc8/pPp;
    iget-object v3, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 34
    .local v3, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v4, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    .line 35
    .local v4, "seqNo":Ljava/lang/String;
    new-instance v1, Lc8/ONp;

    invoke-direct {v1, v3}, Lc8/ONp;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 36
    .local v1, "mtopEvent":Lc8/ONp;
    iput-object v4, v1, Lc8/ONp;->seqNo:Ljava/lang/String;

    .line 37
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    const-string/jumbo v7, "x-s-traceid"

    invoke-static {v6, v7}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/pPp;->serverTraceId:Ljava/lang/String;

    .line 38
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lc8/pPp;->retCode:Ljava/lang/String;

    .line 39
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v6

    iput v6, v5, Lc8/pPp;->statusCode:I

    .line 40
    invoke-virtual {v5}, Lc8/pPp;->onEndAndCommit()V

    .line 42
    iget-object v2, p1, Lc8/IMp;->mtopListener:Lc8/QNp;

    .line 44
    .local v2, "mtopListener":Lc8/QNp;
    :try_start_0
    instance-of v6, v2, Lc8/JNp;

    if-eqz v6, :cond_0

    .line 45
    check-cast v2, Lc8/JNp;

    .end local v2    # "mtopListener":Lc8/QNp;
    iget-object v6, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v6, v6, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    invoke-interface {v2, v1, v6}, Lc8/JNp;->onFinished(Lc8/ONp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_0
    :goto_0
    const-string/jumbo v6, "CONTINUE"

    return-object v6

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v6, "mtopsdk.ExecuteCallbackAfterFilter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "call MtopFinishListener error,apiKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v8}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v4, v7, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "mtopsdk.ExecuteCallbackAfterFilter"

    return-object v0
.end method
