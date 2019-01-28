.class public final Lc8/iNp;
.super Ljava/lang/Object;
.source "FilterUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$mtopContext:Lc8/IMp;

.field final synthetic val$mtopEvent:Lc8/ONp;

.field final synthetic val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lc8/IMp;Lmtopsdk/mtop/domain/MtopResponse;Lc8/ONp;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iput-object p2, p0, Lc8/iNp;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    iput-object p3, p0, Lc8/iNp;->val$mtopEvent:Lc8/ONp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v1, p0, Lc8/iNp;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-s-traceid"

    invoke-static {v1, v2}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/pPp;->serverTraceId:Ljava/lang/String;

    .line 44
    iget-object v0, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v1, p0, Lc8/iNp;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    iput v1, v0, Lc8/pPp;->statusCode:I

    .line 45
    iget-object v0, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v1, p0, Lc8/iNp;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lc8/pPp;->retCode:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lc8/iNp;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iget-object v1, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v1, v1, Lc8/IMp;->stats:Lc8/pPp;

    iget v1, v1, Lc8/pPp;->cacheHitType:I

    if-ne v0, v1, :cond_0

    .line 48
    iget-object v0, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    const/16 v1, 0x130

    iput v1, v0, Lc8/pPp;->statusCode:I

    .line 50
    :cond_0
    iget-object v0, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v0, v0, Lc8/IMp;->stats:Lc8/pPp;

    invoke-virtual {v0}, Lc8/pPp;->onEndAndCommit()V

    .line 51
    iget-object v0, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v0, v0, Lc8/IMp;->mtopListener:Lc8/QNp;

    check-cast v0, Lc8/JNp;

    iget-object v1, p0, Lc8/iNp;->val$mtopEvent:Lc8/ONp;

    iget-object v2, p0, Lc8/iNp;->val$mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v2, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lc8/JNp;->onFinished(Lc8/ONp;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
