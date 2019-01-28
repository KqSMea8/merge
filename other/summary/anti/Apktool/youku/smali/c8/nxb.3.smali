.class public Lc8/nxb;
.super Ljava/lang/Object;
.source "NetworkTracker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkTracker"

.field private static enabled:Z


# instance fields
.field private hasHeaderReported:Z

.field private mEventReporter:Lc8/Uwb;

.field private final mRequestId:I

.field private mRequestIdString:Ljava/lang/String;
    .annotation build Lc8/jFp;
    .end annotation
.end field

.field private mResponse:Lc8/Twb;

.field private mUrl:Ljava/lang/String;

.field private requestTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lc8/nxb;->enabled:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/nxb;->hasHeaderReported:Z

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    iput-wide v0, p0, Lc8/nxb;->requestTime:D

    .line 45
    invoke-static {}, Lc8/Vwb;->nextRequestId()I

    move-result v0

    iput v0, p0, Lc8/nxb;->mRequestId:I

    .line 51
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lc8/Uwb;->getInstance()Lc8/Uwb;

    move-result-object v0

    iput-object v0, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    .line 53
    const-string/jumbo v0, "NetworkTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Create new instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/nxb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/nxb;

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/nxb;->getRequestId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/nxb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/nxb;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/nxb;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lc8/nxb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/nxb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/nxb;->mUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lc8/nxb;)Lc8/Uwb;
    .locals 1
    .param p0, "x0"    # Lc8/nxb;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    return-object v0
.end method

.method static synthetic access$300(Lc8/nxb;)Lc8/Twb;
    .locals 1
    .param p0, "x0"    # Lc8/nxb;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/nxb;->mResponse:Lc8/Twb;

    return-object v0
.end method

.method static synthetic access$302(Lc8/nxb;Lc8/Twb;)Lc8/Twb;
    .locals 0
    .param p0, "x0"    # Lc8/nxb;
    .param p1, "x1"    # Lc8/Twb;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/nxb;->mResponse:Lc8/Twb;

    return-object p1
.end method

.method static synthetic access$402(Lc8/nxb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/nxb;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lc8/nxb;->hasHeaderReported:Z

    return p1
.end method

.method static synthetic access$500(Lc8/nxb;[BLc8/Twb;)V
    .locals 0
    .param p0, "x0"    # Lc8/nxb;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Lc8/Twb;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lc8/nxb;->interceptResponse([BLc8/Twb;)V

    return-void
.end method

.method static synthetic access$600(Lc8/nxb;)D
    .locals 2
    .param p0, "x0"    # Lc8/nxb;

    .prologue
    .line 36
    iget-wide v0, p0, Lc8/nxb;->requestTime:D

    return-wide v0
.end method

.method private canReport()Z
    .locals 1

    .prologue
    .line 219
    sget-boolean v0, Lc8/nxb;->enabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    invoke-virtual {v0}, Lc8/Uwb;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getRequestId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lc8/nxb;->mRequestIdString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 224
    iget v0, p0, Lc8/nxb;->mRequestId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/nxb;->mRequestIdString:Ljava/lang/String;

    .line 226
    :cond_0
    iget-object v0, p0, Lc8/nxb;->mRequestIdString:Ljava/lang/String;

    return-object v0
.end method

.method private interceptResponse([BLc8/Twb;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "descriptor"    # Lc8/Twb;

    .prologue
    .line 200
    invoke-direct {p0}, Lc8/nxb;->canReport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    new-instance v1, Lc8/lxb;

    invoke-direct {v1, p0, p1, p2}, Lc8/lxb;-><init>(Lc8/nxb;[BLc8/Twb;)V

    invoke-virtual {v0, v1}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 216
    :cond_0
    return-void
.end method

.method public static newInstance()Lc8/nxb;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lc8/nxb;

    invoke-direct {v0}, Lc8/nxb;-><init>()V

    return-object v0
.end method

.method private reportException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 243
    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lc8/nxb;->enabled:Z

    .line 244
    const-string/jumbo v1, "Disable NetworkTracker"

    invoke-static {v1}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pVf;->getIWXUserTrackAdapter()Lc8/HVf;

    move-result-object v0

    .line 247
    .local v0, "utAdapter":Lc8/HVf;
    if-eqz v0, :cond_0

    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    new-instance v4, Lc8/OXf;

    invoke-direct {v4}, Lc8/OXf;-><init>()V

    .line 250
    .local v4, "performance":Lc8/OXf;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .local v6, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "message: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "requestId: "

    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/nxb;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "isApkDebugable: "

    .line 253
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "canReport: "

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lc8/nxb;->canReport()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "exception: "

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lc8/OXf;->args:Ljava/lang/String;

    .line 258
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lc8/OXf;->errCode:Ljava/lang/String;

    .line 259
    sget-object v1, Lcom/taobao/weex/common/WXErrorCode;->WX_ERR_INVOKE_NATIVE:Lcom/taobao/weex/common/WXErrorCode;

    invoke-virtual {v1}, Lcom/taobao/weex/common/WXErrorCode;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lc8/OXf;->appendErrMsg(Ljava/lang/CharSequence;)V

    .line 261
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "streamModule"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lc8/HVf;->commit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/OXf;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0    # "utAdapter":Lc8/HVf;
    .end local v4    # "performance":Lc8/OXf;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v7

    .line 268
    .local v7, "t":Ljava/lang/Throwable;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static setEnabled(Z)V
    .locals 0
    .param p0, "isEnabled"    # Z

    .prologue
    .line 62
    sput-boolean p0, Lc8/nxb;->enabled:Z

    .line 63
    return-void
.end method


# virtual methods
.method public onDataReceived(Lc8/oM;)V
    .locals 3
    .param p1, "event"    # Lc8/oM;

    .prologue
    .line 157
    :try_start_0
    invoke-direct {p0}, Lc8/nxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    iget-object v1, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    new-instance v2, Lc8/jxb;

    invoke-direct {v2, p0, p1}, Lc8/jxb;-><init>(Lc8/nxb;Lc8/oM;)V

    invoke-virtual {v1, v2}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "Exception on onDataReceived()"

    invoke-direct {p0, v1, v0}, Lc8/nxb;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 190
    :try_start_0
    invoke-direct {p0}, Lc8/nxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string/jumbo v1, "NetworkTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lc8/nxb;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " onFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    invoke-direct {p0}, Lc8/nxb;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lc8/Uwb;->httpExchangeFailed(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "Exception on onFailed()"

    invoke-direct {p0, v1, v0}, Lc8/nxb;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFinished([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    .line 174
    :try_start_0
    invoke-direct {p0}, Lc8/nxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    new-instance v2, Lc8/kxb;

    invoke-direct {v2, p0, p1}, Lc8/kxb;-><init>(Lc8/nxb;[B)V

    invoke-virtual {v1, v2}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "Exception on onFinished()"

    invoke-direct {p0, v1, v0}, Lc8/nxb;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 3
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    invoke-direct {p0}, Lc8/nxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/nxb;->hasHeaderReported:Z

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    new-instance v2, Lc8/ixb;

    invoke-direct {v2, p0, p1, p2}, Lc8/ixb;-><init>(Lc8/nxb;ILjava/util/Map;)V

    invoke-virtual {v1, v2}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "Exception on onResponseCode()"

    invoke-direct {p0, v1, v0}, Lc8/nxb;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStatisticDataReceived(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "statisticData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lc8/nxb;->mResponse:Lc8/Twb;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    iget-object v0, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    new-instance v1, Lc8/mxb;

    invoke-direct {v1, p0, p1}, Lc8/mxb;-><init>(Lc8/nxb;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V

    .line 239
    :cond_0
    return-void
.end method

.method public preRequest(Lc8/uM;)V
    .locals 3
    .param p1, "request"    # Lc8/uM;

    .prologue
    .line 67
    :try_start_0
    invoke-direct {p0}, Lc8/nxb;->canReport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lc8/nxb;->mEventReporter:Lc8/Uwb;

    new-instance v2, Lc8/hxb;

    invoke-direct {v2, p0, p1}, Lc8/hxb;-><init>(Lc8/nxb;Lc8/uM;)V

    invoke-virtual {v1, v2}, Lc8/Uwb;->execAsync(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "Exception on preRequest()"

    invoke-direct {p0, v1, v0}, Lc8/nxb;->reportException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
