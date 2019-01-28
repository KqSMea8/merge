.class public final Lc8/jNp;
.super Ljava/lang/Object;
.source "FilterUtils.java"


# static fields
.field private static final errorCodeMappingAfterFilter:Lc8/OMp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lc8/OMp;

    invoke-direct {v0}, Lc8/OMp;-><init>()V

    sput-object v0, Lc8/jNp;->errorCodeMappingAfterFilter:Lc8/OMp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFilterManager(Lc8/dNp;Lc8/IMp;)V
    .locals 3
    .param p0, "filterManager"    # Lc8/dNp;
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 101
    if-nez p0, :cond_1

    .line 102
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v1, "ANDROID_SYS_MTOPSDK_INIT_ERROR"

    const-string/jumbo v2, "MTOPSDK\u521d\u59cb\u5316\u5931\u8d25"

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v1, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 105
    iget-object v1, p1, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 107
    :cond_0
    iput-object v0, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 108
    invoke-static {p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 110
    .end local v0    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_1
    return-void
.end method

.method public static handleExceptionCallBack(Lc8/IMp;)V
    .locals 5
    .param p0, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 33
    iget-object v1, p0, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 34
    .local v1, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    if-eqz v1, :cond_0

    iget-object v3, p0, Lc8/IMp;->mtopListener:Lc8/QNp;

    instance-of v3, v3, Lc8/JNp;

    if-eqz v3, :cond_0

    .line 35
    iget-object v3, p0, Lc8/IMp;->stats:Lc8/pPp;

    invoke-virtual {v1, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lc8/pPp;)V

    .line 36
    new-instance v0, Lc8/ONp;

    invoke-direct {v0, v1}, Lc8/ONp;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 37
    .local v0, "mtopEvent":Lc8/ONp;
    iget-object v3, p0, Lc8/IMp;->seqNo:Ljava/lang/String;

    iput-object v3, v0, Lc8/ONp;->seqNo:Ljava/lang/String;

    .line 38
    sget-object v3, Lc8/jNp;->errorCodeMappingAfterFilter:Lc8/OMp;

    invoke-virtual {v3, p0}, Lc8/OMp;->doAfter(Lc8/IMp;)Ljava/lang/String;

    .line 39
    new-instance v2, Lc8/iNp;

    invoke-direct {v2, p0, v1, v0}, Lc8/iNp;-><init>(Lc8/IMp;Lmtopsdk/mtop/domain/MtopResponse;Lc8/ONp;)V

    .line 56
    .local v2, "task":Ljava/lang/Runnable;
    iget-object v3, p0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v3, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lc8/IMp;->seqNo:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v3, v2, v4}, Lc8/jNp;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    .line 58
    .end local v0    # "mtopEvent":Lc8/ONp;
    .end local v2    # "task":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method

.method public static parseRetCodeFromHeader(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 3
    .param p0, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 81
    if-nez p0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-retcode"

    invoke-static {v1, v2}, Lc8/cQp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "retCode":Ljava/lang/String;
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "x-mapping-code"

    invoke-static {v1, v2}, Lc8/cQp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mappingCodeSuffix:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    goto :goto_0
.end method

.method public static submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V
    .locals 0
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "task"    # Ljava/lang/Runnable;
    .param p2, "TaskId"    # I

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {p2, p1}, Lc8/mPp;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method
