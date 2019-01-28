.class public Lc8/XMp;
.super Ljava/lang/Object;
.source "TraceBeforeFilter.java"

# interfaces
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.TraceBeforeFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 8
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 30
    iget-object v2, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 31
    .local v2, "mtopInstance":Lc8/AOp;
    iget-object v4, p1, Lc8/IMp;->stats:Lc8/pPp;

    .line 32
    .local v4, "stats":Lc8/pPp;
    iget-object v3, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 34
    .local v3, "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v5

    iget-object v5, v5, Lc8/kOp;->utdid:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    new-instance v5, Ljava/text/DecimalFormat;

    const-string/jumbo v6, "0000"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget v6, v4, Lc8/pPp;->intSeqNo:I

    rem-int/lit16 v6, v6, 0x2710

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    const-string/jumbo v5, "1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v5

    iget v5, v5, Lc8/kOp;->processId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    .line 41
    iget-object v5, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    iput-object v5, v4, Lc8/pPp;->clientTraceId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    const-string/jumbo v5, "CONTINUE"

    return-object v5

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "mtopsdk.TraceBeforeFilter"

    iget-object v6, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v7, "generate client-trace-id failed."

    invoke-static {v5, v6, v7, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string/jumbo v0, "mtopsdk.TraceBeforeFilter"

    return-object v0
.end method
