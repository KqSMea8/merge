.class public Lc8/bNp;
.super Ljava/lang/Object;
.source "FlowLimitDuplexFilter.java"

# interfaces
.implements Lc8/JMp;
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FlowLimitDuplexFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 6
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 49
    iget-object v2, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    .line 51
    .local v1, "responseCode":I
    const/16 v2, 0x1a4

    if-eq v1, v2, :cond_0

    const/16 v2, 0x1f3

    if-eq v1, v2, :cond_0

    const/16 v2, 0x257

    if-ne v1, v2, :cond_2

    .line 52
    :cond_0
    iget-object v2, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "apiFullName":Ljava/lang/String;
    invoke-static {}, Lc8/nOp;->getCorrectionTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/oNp;->lock(Ljava/lang/String;J)V

    .line 54
    iget-object v2, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v3, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 55
    iget-object v2, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v3, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5(420)"

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    .line 56
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    const-string/jumbo v2, "mtopsdk.FlowLimitDuplexFilter"

    iget-object v3, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[doAfter] execute FlowLimitDuplexFilter apiKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_1
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 60
    const-string/jumbo v2, "STOP"

    .line 62
    .end local v0    # "apiFullName":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_2
    const-string/jumbo v2, "CONTINUE"

    goto :goto_0
.end method

.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 7
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 34
    iget-object v1, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 35
    .local v1, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "apiFullName":Ljava/lang/String;
    invoke-static {}, Lc8/uMp;->getApiWhiteList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lc8/nOp;->getCorrectionTime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/oNp;->iSApiLocked(Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ANDROID_SYS_API_FLOW_LIMIT_LOCKED"

    const-string/jumbo v6, "\u54ce\u54df\u5582,\u88ab\u6324\u7206\u5566,\u8bf7\u7a0d\u540e\u91cd\u8bd5(420)"

    invoke-direct {v2, v3, v4, v5, v6}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 38
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    const-string/jumbo v2, "mtopsdk.FlowLimitDuplexFilter"

    iget-object v3, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[doBefore] execute FlowLimitDuplexFilter apiKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 42
    const-string/jumbo v2, "STOP"

    .line 44
    :goto_0
    return-object v2

    :cond_1
    const-string/jumbo v2, "CONTINUE"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "mtopsdk.FlowLimitDuplexFilter"

    return-object v0
.end method
