.class public Lc8/cBb;
.super Ljava/lang/Object;
.source "TnetUtil.java"

# interfaces
.implements Lc8/yXp;
.implements Lc8/zXp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dBb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTSessionCb"
.end annotation


# instance fields
.field private sslMeta:[B


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/bBb;)V
    .locals 0
    .param p1, "x0"    # Lc8/bBb;

    .prologue
    .line 255
    invoke-direct {p0}, Lc8/cBb;-><init>()V

    return-void
.end method


# virtual methods
.method public bioPingRecvCallback(Lorg/android/spdy/SpdySession;I)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "pingId"    # I

    .prologue
    .line 348
    return-void
.end method

.method public getSSLMeta(Lorg/android/spdy/SpdySession;)[B
    .locals 3
    .param p1, "session"    # Lorg/android/spdy/SpdySession;

    .prologue
    .line 352
    invoke-static {}, Lc8/aBb;->getInstance()Lc8/aBb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/aBb;->getInitSecurityCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-static {}, Lc8/aBb;->getInstance()Lc8/aBb;

    move-result-object v1

    const-string/jumbo v2, "accs_ssl_key2_adashx.m.taobao.com"

    invoke-virtual {v1, v2}, Lc8/aBb;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 354
    .local v0, "temp":[B
    if-eqz v0, :cond_1

    .line 360
    .end local v0    # "temp":[B
    :goto_0
    return-object v0

    .line 358
    :cond_0
    iget-object v0, p0, Lc8/cBb;->sslMeta:[B

    goto :goto_0

    .line 360
    .restart local v0    # "temp":[B
    :cond_1
    const/4 v1, 0x0

    new-array v0, v1, [B

    goto :goto_0
.end method

.method public putSSLMeta(Lorg/android/spdy/SpdySession;[B)I
    .locals 1
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sslMeta"    # [B

    .prologue
    .line 365
    invoke-static {}, Lc8/aBb;->getInstance()Lc8/aBb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/aBb;->getInitSecurityCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-static {p2}, Lc8/dBb;->access$1100([B)I

    move-result v0

    .line 370
    :goto_0
    return v0

    .line 368
    :cond_0
    iput-object p2, p0, Lc8/cBb;->sslMeta:[B

    .line 370
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "id"    # I
    .param p4, "error"    # I

    .prologue
    .line 320
    return-void
.end method

.method public spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 8
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "node"    # I
    .param p4, "type"    # I
    .param p5, "flags"    # I
    .param p6, "length"    # I
    .param p7, "data"    # [B

    .prologue
    .line 275
    invoke-static {}, Lc8/dBb;->access$100()Lorg/android/spdy/SpdySession;

    move-result-object v1

    if-ne p1, v1, :cond_4

    .line 276
    invoke-static {}, Lc8/dBb;->access$300()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    if-nez v1, :cond_0

    .line 277
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x400

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-static {v1}, Lc8/dBb;->access$302(Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;

    .line 278
    invoke-static {p7}, Lc8/dBb;->access$500([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Lc8/dBb;->access$402(J)J

    .line 280
    :cond_0
    invoke-static {}, Lc8/dBb;->access$400()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 282
    :try_start_0
    invoke-static {}, Lc8/dBb;->access$300()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    :goto_0
    array-length v1, p7

    int-to-long v2, v1

    invoke-static {v2, v3}, Lc8/dBb;->access$614(J)J

    .line 287
    invoke-static {}, Lc8/dBb;->access$400()J

    move-result-wide v2

    invoke-static {}, Lc8/dBb;->access$600()J

    move-result-wide v4

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 289
    :try_start_1
    invoke-static {}, Lc8/dBb;->access$300()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :goto_1
    invoke-static {}, Lc8/dBb;->access$300()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 296
    .local v0, "temp":[B
    :try_start_2
    invoke-static {}, Lc8/dBb;->access$300()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 300
    :goto_2
    invoke-static {v0}, Lc8/UAb;->parseResult([B)I

    move-result v1

    invoke-static {v1}, Lc8/dBb;->access$702(I)I

    .line 301
    invoke-static {}, Lc8/dBb;->access$700()I

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    invoke-static {}, Lc8/dBb;->access$800()V

    .line 304
    :cond_1
    invoke-static {}, Lc8/dBb;->access$900()V

    .line 314
    .end local v0    # "temp":[B
    :cond_2
    :goto_3
    return-void

    .line 307
    :cond_3
    const/4 v1, -0x1

    invoke-static {v1}, Lc8/dBb;->access$702(I)I

    .line 308
    invoke-static {}, Lc8/dBb;->access$800()V

    .line 309
    invoke-static {}, Lc8/dBb;->access$900()V

    goto :goto_3

    .line 312
    :cond_4
    const-string/jumbo v1, "[spdyCustomControlFrameRecvCallback]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, " session != spdySessionUT"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .restart local v0    # "temp":[B
    :catch_0
    move-exception v1

    goto :goto_2

    .end local v0    # "temp":[B
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public spdyPingRecvCallback(Lorg/android/spdy/SpdySession;JLjava/lang/Object;)V
    .locals 0
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "unique_id"    # J
    .param p4, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    .line 270
    return-void
.end method

.method public spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 2
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;
    .param p4, "error"    # I

    .prologue
    .line 337
    invoke-static {}, Lc8/dBb;->access$100()Lorg/android/spdy/SpdySession;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 338
    invoke-static {p4}, Lc8/dBb;->access$702(I)I

    .line 339
    invoke-static {}, Lc8/dBb;->access$1000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 340
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lc8/dBb;->access$102(Lorg/android/spdy/SpdySession;)Lorg/android/spdy/SpdySession;

    .line 341
    monitor-exit v1

    .line 343
    :cond_0
    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public spdySessionConnectCB(Lorg/android/spdy/SpdySession;Lorg/android/spdy/SuperviseConnectInfo;)V
    .locals 1
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "data"    # Lorg/android/spdy/SuperviseConnectInfo;

    .prologue
    .line 262
    invoke-static {}, Lc8/dBb;->access$100()Lorg/android/spdy/SpdySession;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 263
    invoke-static {p1}, Lc8/dBb;->access$200(Lorg/android/spdy/SpdySession;)V

    .line 265
    :cond_0
    return-void
.end method

.method public spdySessionFailedError(Lorg/android/spdy/SpdySession;ILjava/lang/Object;)V
    .locals 6
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "error"    # I
    .param p3, "sessionUserData"    # Ljava/lang/Object;

    .prologue
    .line 325
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->isSelfMonitorTurnOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    sget-object v0, Lc8/dBb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v1, Lc8/JAb;->TNET_REQUEST_ERROR:I

    const/4 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 328
    :cond_0
    invoke-static {}, Lc8/dBb;->access$100()Lorg/android/spdy/SpdySession;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 329
    invoke-static {p2}, Lc8/dBb;->access$702(I)I

    .line 330
    invoke-static {}, Lc8/dBb;->access$800()V

    .line 332
    :cond_1
    return-void
.end method

.method public spdySessionOnWritable(Lorg/android/spdy/SpdySession;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "spdySession"    # Lorg/android/spdy/SpdySession;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "i"    # I

    .prologue
    .line 375
    invoke-static {}, Lc8/dBb;->access$100()Lorg/android/spdy/SpdySession;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 376
    invoke-static {p1}, Lc8/dBb;->access$200(Lorg/android/spdy/SpdySession;)V

    .line 378
    :cond_0
    return-void
.end method
