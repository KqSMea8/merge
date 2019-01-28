.class public Lc8/dBb;
.super Ljava/lang/Object;
.source "TnetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cBb;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT:I = 0x2710

.field private static final ENVIRONMENT_BETA:I = 0x1

.field private static final ENVIRONMENT_DAILY:I = 0x3

.field private static final ENVIRONMENT_ONLINE:I = 0x0

.field private static final ENVIRONMENT_PRE:I = 0x2

.field private static final GCRY_CIPHER_AES128:I = 0x10

.field private static final HEAD_LENGTH:I = 0x8

.field private static final Lock_Event:Ljava/lang/Object;

.field private static final Lock_Object:Ljava/lang/Object;

.field private static final PROTOCOL_MAX_LENGTH:I = 0x20000

.field private static final SSL_TIKET_KEY2:Ljava/lang/String; = "accs_ssl_key2_"

.field private static final SecurityGuard_HOST:Ljava/lang/String; = "adashx.m.taobao.com"

.field private static final TNET_ENVIRONMENT:I = 0x0

.field private static final WAIT_TIMEOUT:I = 0xea60

.field private static bFirstSpdySession:Z

.field private static errorCode:I

.field private static isGetWuaBeforeSpdySession:Z

.field public static mErrorCode:I

.field public static final mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private static mResponseCache:Ljava/io/ByteArrayOutputStream;

.field private static mResponseLen:J

.field private static mResponseReceiveLen:J

.field private static protocolBytes:[B

.field private static sendBytes:I

.field private static spdySessionUT:Lorg/android/spdy/SpdySession;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lc8/dBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    .line 35
    sput v1, Lc8/dBb;->mErrorCode:I

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/dBb;->Lock_Event:Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    .line 45
    const/4 v0, -0x1

    sput v0, Lc8/dBb;->errorCode:I

    .line 46
    sput v1, Lc8/dBb;->sendBytes:I

    .line 47
    sput-object v2, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    .line 48
    sput-object v2, Lc8/dBb;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    .line 49
    sput-wide v4, Lc8/dBb;->mResponseReceiveLen:J

    .line 50
    sput-wide v4, Lc8/dBb;->mResponseLen:J

    .line 51
    sput-object v2, Lc8/dBb;->protocolBytes:[B

    .line 54
    const/4 v0, 0x1

    sput-boolean v0, Lc8/dBb;->bFirstSpdySession:Z

    .line 55
    sput-boolean v1, Lc8/dBb;->isGetWuaBeforeSpdySession:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    return-void
.end method

.method static synthetic access$100()Lorg/android/spdy/SpdySession;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SpdySession;
    .locals 0
    .param p0, "x0"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 32
    sput-object p0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    return-object p0
.end method

.method static synthetic access$1100([B)I
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 32
    invoke-static {p0}, Lc8/dBb;->securityGuardPutSslTicket2([B)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/android/spdy/SpdySession;)V
    .locals 0
    .param p0, "x0"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 32
    invoke-static {p0}, Lc8/dBb;->sendCustomControlFrame(Lorg/android/spdy/SpdySession;)V

    return-void
.end method

.method static synthetic access$300()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lc8/dBb;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$302(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0
    .param p0, "x0"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 32
    sput-object p0, Lc8/dBb;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$400()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lc8/dBb;->mResponseLen:J

    return-wide v0
.end method

.method static synthetic access$402(J)J
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 32
    sput-wide p0, Lc8/dBb;->mResponseLen:J

    return-wide p0
.end method

.method static synthetic access$500([B)J
    .locals 2
    .param p0, "x0"    # [B

    .prologue
    .line 32
    invoke-static {p0}, Lc8/dBb;->getResponseBodyLen([B)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lc8/dBb;->mResponseReceiveLen:J

    return-wide v0
.end method

.method static synthetic access$614(J)J
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 32
    sget-wide v0, Lc8/dBb;->mResponseReceiveLen:J

    add-long/2addr v0, p0

    sput-wide v0, Lc8/dBb;->mResponseReceiveLen:J

    return-wide v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lc8/dBb;->errorCode:I

    return v0
.end method

.method static synthetic access$702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 32
    sput p0, Lc8/dBb;->errorCode:I

    return p0
.end method

.method static synthetic access$800()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lc8/dBb;->closeSession()V

    return-void
.end method

.method static synthetic access$900()V
    .locals 0

    .prologue
    .line 32
    invoke-static {}, Lc8/dBb;->sendCallbackNotify()V

    return-void
.end method

.method private static closeSession()V
    .locals 2

    .prologue
    .line 236
    invoke-static {}, Lc8/NBb;->d()V

    .line 237
    sget-object v1, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    invoke-virtual {v0}, Lorg/android/spdy/SpdySession;->closeSession()I

    .line 241
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    .line 243
    invoke-static {}, Lc8/UAb;->closeOutputStream()V

    .line 244
    invoke-static {}, Lc8/hCb;->clear()V

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-static {}, Lc8/dBb;->sendCallbackNotify()V

    .line 247
    return-void

    .line 245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getResponseBodyLen([B)J
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 394
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 395
    :cond_0
    const-wide/16 v0, -0x1

    .line 397
    :goto_0
    return-wide v0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lc8/DBb;->bytesToInt([BII)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method static initTnetStream()V
    .locals 2

    .prologue
    .line 402
    sget-object v1, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    monitor-enter v1

    .line 403
    :try_start_0
    sget-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_0

    .line 404
    invoke-static {}, Lc8/hCb;->clear()V

    .line 405
    invoke-static {}, Lc8/UAb;->initOutputStream()V

    .line 406
    const/4 v0, 0x1

    sput-boolean v0, Lc8/dBb;->bFirstSpdySession:Z

    .line 410
    :goto_0
    monitor-exit v1

    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lc8/dBb;->bFirstSpdySession:Z

    goto :goto_0

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static refreshMiniWua()V
    .locals 1

    .prologue
    .line 414
    sget-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lc8/gCb;->getMiniWua()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/UAb;->mMiniWua:Ljava/lang/String;

    .line 416
    const/4 v0, 0x1

    sput-boolean v0, Lc8/dBb;->isGetWuaBeforeSpdySession:Z

    .line 418
    :cond_0
    return-void
.end method

.method private static securityGuardPutSslTicket2([B)I
    .locals 5
    .param p0, "value"    # [B

    .prologue
    .line 384
    const/4 v1, -0x1

    .line 385
    .local v1, "ret":I
    if-nez p0, :cond_0

    move v2, v1

    .line 390
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_0
    return v2

    .line 388
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    invoke-static {}, Lc8/aBb;->getInstance()Lc8/aBb;

    move-result-object v3

    const-string/jumbo v4, "accs_ssl_key2_adashx.m.taobao.com"

    invoke-virtual {v3, v4, p0}, Lc8/aBb;->putByteArray(Ljava/lang/String;[B)I

    move-result v0

    .line 389
    .local v0, "code":I
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_1
    move v2, v1

    .line 390
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_0

    .line 389
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static sendCallbackNotify()V
    .locals 2

    .prologue
    .line 250
    sget-object v1, Lc8/dBb;->Lock_Event:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    sget-object v0, Lc8/dBb;->Lock_Event:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 252
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static sendCustomControlFrame(Lorg/android/spdy/SpdySession;)V
    .locals 10
    .param p0, "spdySession"    # Lorg/android/spdy/SpdySession;

    .prologue
    const/high16 v9, 0x20000

    .line 203
    sget-object v7, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    monitor-enter v7

    .line 205
    :cond_0
    :goto_0
    :try_start_0
    sget-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-ne p0, v0, :cond_3

    sget-object v0, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_3

    sget-object v0, Lc8/dBb;->protocolBytes:[B

    if-eqz v0, :cond_3

    sget-object v0, Lc8/dBb;->protocolBytes:[B

    array-length v0, v0

    sget v1, Lc8/dBb;->sendBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-le v0, v1, :cond_3

    .line 208
    :try_start_1
    sget-object v0, Lc8/dBb;->protocolBytes:[B

    array-length v0, v0

    sget v1, Lc8/dBb;->sendBytes:I

    sub-int/2addr v0, v1

    if-le v0, v9, :cond_2

    .line 209
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/high16 v4, 0x20000

    sget-object v0, Lc8/dBb;->protocolBytes:[B

    sget v5, Lc8/dBb;->sendBytes:I

    const/high16 v8, 0x20000

    invoke-static {v0, v5, v8}, Lc8/DBb;->subBytes([BII)[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 211
    sget v0, Lc8/dBb;->sendBytes:I

    add-int/2addr v0, v9

    sput v0, Lc8/dBb;->sendBytes:I
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v6

    .line 221
    .local v6, "e":Lorg/android/spdy/SpdyErrorException;
    :try_start_2
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "SpdyErrorException"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    invoke-virtual {v6}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    const/16 v1, -0xf08

    if-eq v0, v1, :cond_1

    .line 223
    invoke-virtual {v6}, Lorg/android/spdy/SpdyErrorException;->SpdyErrorGetCode()I

    move-result v0

    sput v0, Lc8/dBb;->errorCode:I

    .line 224
    invoke-static {}, Lc8/dBb;->closeSession()V

    .line 226
    :cond_1
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 229
    .end local v6    # "e":Lorg/android/spdy/SpdyErrorException;
    :goto_1
    return-void

    .line 213
    :cond_2
    :try_start_3
    sget-object v0, Lc8/dBb;->protocolBytes:[B

    array-length v0, v0

    sget v1, Lc8/dBb;->sendBytes:I

    sub-int v4, v0, v1

    .line 214
    .local v4, "len":I
    if-lez v4, :cond_0

    .line 215
    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    sget-object v0, Lc8/dBb;->protocolBytes:[B

    sget v5, Lc8/dBb;->sendBytes:I

    invoke-static {v0, v5, v4}, Lc8/DBb;->subBytes([BII)[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 217
    sget v0, Lc8/dBb;->sendBytes:I

    add-int/2addr v0, v4

    sput v0, Lc8/dBb;->sendBytes:I
    :try_end_3
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 232
    .end local v4    # "len":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 229
    :cond_3
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method static sendRequest([B)Lc8/VAb;
    .locals 24
    .param p0, "bytes"    # [B

    .prologue
    .line 65
    invoke-static {}, Lc8/NBb;->d()V

    .line 66
    sget-object v5, Lc8/dBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v6, Lc8/JAb;->TNET_REQUEST_SEND:I

    const/4 v7, 0x0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 68
    new-instance v11, Lc8/VAb;

    invoke-direct {v11}, Lc8/VAb;-><init>()V

    .line 70
    .local v11, "bizResponse":Lc8/VAb;
    sget-object v6, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    monitor-enter v6

    .line 71
    :try_start_0
    sput-object p0, Lc8/dBb;->protocolBytes:[B

    .line 72
    const/4 v5, 0x0

    sput v5, Lc8/dBb;->sendBytes:I

    .line 73
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    sget-object v20, Lc8/dBb;->Lock_Event:Ljava/lang/Object;

    monitor-enter v20

    .line 75
    :try_start_1
    sget-object v5, Lc8/dBb;->mResponseCache:Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_0

    .line 77
    :try_start_2
    sget-object v5, Lc8/dBb;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :try_start_3
    sput-object v5, Lc8/dBb;->mResponseCache:Ljava/io/ByteArrayOutputStream;

    .line 83
    const-wide/16 v6, 0x0

    sput-wide v6, Lc8/dBb;->mResponseReceiveLen:J

    .line 84
    const-wide/16 v6, 0x0

    sput-wide v6, Lc8/dBb;->mResponseLen:J

    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 87
    .local v18, "startTime":J
    const/4 v5, -0x1

    sput v5, Lc8/dBb;->errorCode:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 89
    :try_start_4
    sget-object v5, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-nez v5, :cond_8

    sget-boolean v5, Lc8/dBb;->bFirstSpdySession:Z

    if-nez v5, :cond_1

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->isGzipUpload()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 91
    :cond_1
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->isSelfMonitorTurnOn()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    sget-object v5, Lc8/dBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v6, Lc8/JAb;->TNET_CREATE_SESSION:I

    const/4 v7, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 95
    :cond_2
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 96
    .local v12, "context":Landroid/content/Context;
    sget-object v5, Lorg/android/spdy/SpdyVersion;->SPDY3:Lorg/android/spdy/SpdyVersion;

    sget-object v6, Lorg/android/spdy/SpdySessionKind;->NONE_SESSION:Lorg/android/spdy/SpdySessionKind;

    invoke-static {v12, v5, v6}, Lc8/CXp;->getInstance(Landroid/content/Context;Lorg/android/spdy/SpdyVersion;Lorg/android/spdy/SpdySessionKind;)Lc8/CXp;

    move-result-object v15

    .line 97
    .local v15, "spdyAgent":Lc8/CXp;
    invoke-static {}, Lc8/aBb;->getInstance()Lc8/aBb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/aBb;->getInitSecurityCheck()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    new-instance v5, Lc8/bBb;

    invoke-direct {v5}, Lc8/bBb;-><init>()V

    invoke-virtual {v15, v5}, Lc8/CXp;->setAccsSslCallback(Lc8/tXp;)V

    .line 107
    :cond_3
    new-instance v9, Lc8/cBb;

    const/4 v5, 0x0

    invoke-direct {v9, v5}, Lc8/cBb;-><init>(Lc8/bBb;)V

    .line 114
    .local v9, "sessionCb":Lc8/cBb;
    invoke-static {}, Lc8/ZAb;->getInstance()Lc8/ZAb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/ZAb;->getEntity()Lc8/YAb;

    move-result-object v14

    .line 115
    .local v14, "hostPortEntity":Lc8/YAb;
    invoke-virtual {v14}, Lc8/YAb;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "host":Ljava/lang/String;
    invoke-virtual {v14}, Lc8/YAb;->getPort()I

    move-result v4

    .line 117
    .local v4, "port":I
    new-instance v2, Lc8/AXp;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x1090

    invoke-direct/range {v2 .. v10}, Lc8/AXp;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;Lc8/yXp;I)V

    .line 118
    .local v2, "sessionInfo":Lc8/AXp;
    invoke-static {}, Lc8/aBb;->getInstance()Lc8/aBb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/aBb;->getInitSecurityCheck()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 119
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lc8/AXp;->setPubKeySeqNum(I)V

    .line 147
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "host"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "port"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "TNET_ENVIRONMENT"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const/16 v5, 0x2710

    invoke-virtual {v2, v5}, Lc8/AXp;->setConnectionTimeoutMs(I)V

    .line 153
    sget-object v6, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    monitor-enter v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 154
    :try_start_5
    invoke-virtual {v15, v2}, Lc8/CXp;->createSession(Lc8/AXp;)Lorg/android/spdy/SpdySession;

    move-result-object v5

    sput-object v5, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    .line 156
    sget-boolean v5, Lc8/dBb;->isGetWuaBeforeSpdySession:Z

    if-nez v5, :cond_4

    .line 157
    invoke-static {}, Lc8/gCb;->getMiniWua()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lc8/UAb;->mMiniWua:Ljava/lang/String;

    .line 158
    const-string/jumbo v5, ""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "GetWua by createSession:"

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v21, Lc8/UAb;->mMiniWua:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v5, v7}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    :cond_4
    const/4 v5, 0x0

    sput-boolean v5, Lc8/dBb;->isGetWuaBeforeSpdySession:Z

    .line 161
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 162
    :try_start_6
    const-string/jumbo v5, ""

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "createSession"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    sget-object v5, Lc8/dBb;->Lock_Event:Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 176
    .end local v2    # "sessionInfo":Lc8/AXp;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v9    # "sessionCb":Lc8/cBb;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "hostPortEntity":Lc8/YAb;
    .end local v15    # "spdyAgent":Lc8/CXp;
    :goto_2
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v16, v6, v18

    .line 177
    .local v16, "rt":J
    const-wide/32 v6, 0xea60

    cmp-long v5, v16, v6

    if-ltz v5, :cond_6

    .line 178
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->isSelfMonitorTurnOn()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 179
    sget-object v5, Lc8/dBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v6, Lc8/JAb;->TNET_REQUEST_TIMEOUT:I

    const/4 v7, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 181
    :cond_5
    invoke-static {}, Lc8/dBb;->closeSession()V

    .line 182
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "WAIT_TIMEOUT"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    :cond_6
    monitor-exit v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 185
    sget v5, Lc8/dBb;->sendBytes:I

    int-to-long v6, v5

    invoke-static {v6, v7}, Lc8/UAb;->recordTraffic(J)V

    .line 186
    sget-object v6, Lc8/dBb;->Lock_Object:Ljava/lang/Object;

    monitor-enter v6

    .line 187
    const/4 v5, 0x0

    :try_start_8
    sput-object v5, Lc8/dBb;->protocolBytes:[B

    .line 188
    const/4 v5, 0x0

    sput v5, Lc8/dBb;->sendBytes:I

    .line 189
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 191
    sget v5, Lc8/dBb;->errorCode:I

    iput v5, v11, Lc8/VAb;->errCode:I

    .line 192
    move-wide/from16 v0, v16

    iput-wide v0, v11, Lc8/VAb;->rt:J

    .line 193
    sget-object v5, Lc8/UAb;->mResponseAdditionalData:Ljava/lang/String;

    iput-object v5, v11, Lc8/VAb;->data:Ljava/lang/String;

    .line 194
    const/4 v5, 0x0

    sput-object v5, Lc8/UAb;->mResponseAdditionalData:Ljava/lang/String;

    .line 196
    sget v5, Lc8/dBb;->errorCode:I

    sput v5, Lc8/dBb;->mErrorCode:I

    .line 197
    const-string/jumbo v5, "PostData"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "isSuccess"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v11}, Lc8/VAb;->isSuccess()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "errCode"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, v11, Lc8/VAb;->errCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string/jumbo v8, "rt"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-wide v0, v11, Lc8/VAb;->rt:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    return-object v11

    .line 73
    .end local v16    # "rt":J
    .end local v18    # "startTime":J
    :catchall_0
    move-exception v5

    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v5

    .line 121
    .restart local v2    # "sessionInfo":Lc8/AXp;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "port":I
    .restart local v9    # "sessionCb":Lc8/cBb;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v14    # "hostPortEntity":Lc8/YAb;
    .restart local v15    # "spdyAgent":Lc8/CXp;
    .restart local v18    # "startTime":J
    :cond_7
    const/16 v5, 0x9

    :try_start_a
    invoke-virtual {v2, v5}, Lc8/AXp;->setPubKeySeqNum(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 171
    .end local v2    # "sessionInfo":Lc8/AXp;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v9    # "sessionCb":Lc8/cBb;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "hostPortEntity":Lc8/YAb;
    .end local v15    # "spdyAgent":Lc8/CXp;
    :catch_0
    move-exception v13

    .line 172
    .local v13, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {}, Lc8/dBb;->closeSession()V

    .line 173
    const-string/jumbo v5, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "CreateSession Exception"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v13, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 184
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v18    # "startTime":J
    :catchall_1
    move-exception v5

    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v5

    .line 161
    .restart local v2    # "sessionInfo":Lc8/AXp;
    .restart local v3    # "host":Ljava/lang/String;
    .restart local v4    # "port":I
    .restart local v9    # "sessionCb":Lc8/cBb;
    .restart local v12    # "context":Landroid/content/Context;
    .restart local v14    # "hostPortEntity":Lc8/YAb;
    .restart local v15    # "spdyAgent":Lc8/CXp;
    .restart local v18    # "startTime":J
    :catchall_2
    move-exception v5

    :try_start_c
    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v5

    .line 164
    .end local v2    # "sessionInfo":Lc8/AXp;
    .end local v3    # "host":Ljava/lang/String;
    .end local v4    # "port":I
    .end local v9    # "sessionCb":Lc8/cBb;
    .end local v12    # "context":Landroid/content/Context;
    .end local v14    # "hostPortEntity":Lc8/YAb;
    .end local v15    # "spdyAgent":Lc8/CXp;
    :cond_8
    sget-object v5, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    if-eqz v5, :cond_a

    sget-boolean v5, Lc8/dBb;->bFirstSpdySession:Z

    if-eqz v5, :cond_9

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->isGzipUpload()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 166
    :cond_9
    sget-object v5, Lc8/dBb;->spdySessionUT:Lorg/android/spdy/SpdySession;

    invoke-static {v5}, Lc8/dBb;->sendCustomControlFrame(Lorg/android/spdy/SpdySession;)V

    .line 167
    sget-object v5, Lc8/dBb;->Lock_Event:Ljava/lang/Object;

    const-wide/32 v6, 0xea60

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V

    goto/16 :goto_2

    .line 169
    :cond_a
    invoke-static {}, Lc8/dBb;->closeSession()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_2

    .line 189
    .restart local v16    # "rt":J
    :catchall_3
    move-exception v5

    :try_start_e
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    throw v5

    .end local v16    # "rt":J
    .end local v18    # "startTime":J
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method
