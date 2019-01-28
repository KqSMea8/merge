.class public Lc8/TMp;
.super Ljava/lang/Object;
.source "CheckRequestParamBeforeFilter.java"

# interfaces
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CheckRequestParamBeforeFilter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkRequiredParam(Lc8/IMp;)Z
    .locals 8
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 46
    iget-object v1, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 47
    .local v1, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v3, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 48
    .local v3, "property":Lmtopsdk/mtop/common/MtopNetworkProp;
    iget-object v4, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    .line 49
    .local v4, "seqNo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 50
    .local v0, "errorMsg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 52
    .local v2, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    if-nez v1, :cond_4

    .line 53
    const-string/jumbo v0, "mtopRequest is invalid.mtopRequest=null"

    .line 54
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    .end local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    const-string/jumbo v5, "ANDROID_SYS_MTOPCONTEXT_INIT_ERROR"

    invoke-direct {v2, v5, v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .restart local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_0
    :goto_0
    iput-object v2, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 64
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 65
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 66
    const-string/jumbo v5, "mtopsdk.CheckRequestParamBeforeFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkRequiredParam]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_1
    if-eqz v1, :cond_2

    .line 71
    sget-object v5, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v5}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    const-string/jumbo v5, "mtopsdk.CheckRequestParamBeforeFilter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[checkRequiredParam]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :cond_2
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 79
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v5

    invoke-virtual {v5}, Lc8/oOp;->isGlobalSpdySslSwitchOpen()Z

    move-result v5

    if-nez v5, :cond_3

    .line 80
    const-string/jumbo v5, "mtopsdk.CheckRequestParamBeforeFilter"

    const-string/jumbo v6, "[checkRequiredParam]MTOP SSL switch is false"

    invoke-static {v5, v4, v6}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v5, p1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v6, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    iput-object v6, v5, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 84
    :cond_3
    if-nez v2, :cond_6

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 55
    :cond_4
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->isLegalRequest()Z

    move-result v5

    if-nez v5, :cond_5

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mtopRequest is invalid. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    .end local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ANDROID_SYS_MTOPCONTEXT_INIT_ERROR"

    invoke-direct {v2, v5, v6, v7, v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    goto/16 :goto_0

    .line 58
    :cond_5
    if-nez v3, :cond_0

    .line 59
    const-string/jumbo v0, "MtopNetworkProp is invalid.property=null"

    .line 60
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    .end local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "ANDROID_SYS_MTOPCONTEXT_INIT_ERROR"

    invoke-direct {v2, v5, v6, v7, v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    goto/16 :goto_0

    .line 84
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 2
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lc8/TMp;->checkRequiredParam(Lc8/IMp;)Z

    move-result v0

    .line 34
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 35
    const-string/jumbo v1, "CONTINUE"

    .line 37
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, "STOP"

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string/jumbo v0, "mtopsdk.CheckRequestParamBeforeFilter"

    return-object v0
.end method
