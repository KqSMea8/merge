.class public abstract Lc8/xNn;
.super Ljava/lang/Object;
.source "OriginalMediaPlayer.java"

# interfaces
.implements Lc8/LMn;


# instance fields
.field private mOnADCountListener:Lc8/QMn;

.field private mOnADPlayListener:Lc8/RMn;

.field protected mOnBufferPercentUpdateListener:Lc8/SMn;

.field protected mOnCdnSwitchListener:Lc8/TMn;

.field private mOnConnectDelayListener:Lc8/UMn;

.field private mOnCpuUsageListener:Lc8/VMn;

.field private mOnCurrentPositionUpdateListener:Lc8/WMn;

.field private mOnDropVideoFramesListener:Lc8/XMn;

.field private mOnHttp302DelayListener:Lc8/YMn;

.field private mOnHwDecodeErrorListener:Lc8/ZMn;

.field protected mOnInfoListener:Lc8/aNn;

.field private mOnIsInitialListener:Lc8/bNn;

.field private mOnLodingStatusListener:Lc8/cNn;

.field private mOnLodingStatusListenerNoTrack:Lc8/dNn;

.field private mOnMidADPlayListener:Lc8/eNn;

.field private mOnNativeShotDownListener:Lc8/gNn;

.field private mOnNetworkErrorListener:Lc8/hNn;

.field private mOnNetworkSpeedListener:Lc8/iNn;

.field protected mOnNetworkSpeedPerMinute:Lc8/jNn;

.field private mOnQualityChangeListener:Lc8/oNn;

.field private mOnRealVideoStartListener:Lc8/pNn;

.field private mOnTimeoutListener:Lc8/sNn;

.field protected mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

.field private mOnVideoIndexUpdateListener:Lc8/vNn;

.field protected mOnVideoRealIpUpdateListener:Lc8/wNn;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetDownloadSpeed([I)I
    .locals 1
    .param p1, "speed"    # [I

    .prologue
    .line 424
    const/4 v0, -0x1

    return v0
.end method

.method public addPostADUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public changeVideoSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public closePreloadDataSource(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 385
    return-void
.end method

.method public cropOneFrame(ILjava/lang/String;IIII)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public enableVoice(I)V
    .locals 0
    .param p1, "enable"    # I

    .prologue
    .line 279
    return-void
.end method

.method public generateCacheFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "file_id"    # Ljava/lang/String;
    .param p2, "target_path"    # Ljava/lang/String;

    .prologue
    .line 439
    const/4 v0, -0x1

    return v0
.end method

.method public getAvgKeyFrameSize()D
    .locals 2

    .prologue
    .line 298
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAvgVideoBitrate()D
    .locals 2

    .prologue
    .line 302
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoCode()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoFrameRate()D
    .locals 2

    .prologue
    .line 310
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVoiceStatus()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

    return v0
.end method

.method public panGuesture(IFF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 323
    return-void
.end method

.method public pinchForZoom(IF)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 327
    return-void
.end method

.method public playBackupAD(Ljava/lang/String;I)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public playMidADConfirm(II)V
    .locals 0
    .param p1, "videoTime"    # I
    .param p2, "adTime"    # I

    .prologue
    .line 347
    return-void
.end method

.method public preloadDataSource(Ljava/lang/String;I)I
    .locals 1
    .param p1, "playlist"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 379
    const/4 v0, -0x1

    return v0
.end method

.method public prepareMidAD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 356
    return-void
.end method

.method public releaseSurface()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public resetPanoramic()V
    .locals 0

    .prologue
    .line 335
    return-void
.end method

.method public screenShotMultiFramesBegin(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "outFmt"    # I
    .param p6, "logoPath"    # Ljava/lang/String;
    .param p7, "logoWidth"    # I
    .param p8, "logoHeight"    # I
    .param p9, "logoLeft"    # I
    .param p10, "logoTop"    # I

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public screenShotMultiFramesEnd()I
    .locals 1

    .prologue
    .line 367
    const/4 v0, 0x0

    return v0
.end method

.method public screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
    .locals 1
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "outPath"    # Ljava/lang/String;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I
    .param p5, "outFmt"    # I
    .param p6, "logoPath"    # Ljava/lang/String;
    .param p7, "logoWidth"    # I
    .param p8, "logoHeight"    # I
    .param p9, "logoLeft"    # I
    .param p10, "logoTop"    # I

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public setAudioEnhance(Z)V
    .locals 0
    .param p1, "enhance"    # Z

    .prologue
    .line 393
    return-void
.end method

.method public setBinocularMode(Z)V
    .locals 0
    .param p1, "sw"    # Z

    .prologue
    .line 372
    return-void
.end method

.method public setDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z
    .param p4, "sysVersion"    # I
    .param p5, "isHLS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 398
    return-void
.end method

.method public setEnhanceMode(ZFF)V
    .locals 0
    .param p1, "isEnhance"    # Z
    .param p2, "percent"    # F
    .param p3, "ratio"    # F

    .prologue
    .line 402
    return-void
.end method

.method public setGyroscope(FFFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 319
    return-void
.end method

.method public setGyroscopeActive(Z)V
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 315
    return-void
.end method

.method public setHttpUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 16
    return-void
.end method

.method public setInterfaceOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 331
    return-void
.end method

.method public setMidADDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "b"    # Z
    .param p4, "sysVersion"    # I
    .param p5, "isHLS"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method public setNightMode(FF)V
    .locals 0
    .param p1, "lumRatio"    # F
    .param p2, "colorRatio"    # F

    .prologue
    .line 406
    return-void
.end method

.method public setOnADCountListener(Lc8/QMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/QMn;

    .prologue
    .line 135
    iput-object p1, p0, Lc8/xNn;->mOnADCountListener:Lc8/QMn;

    .line 136
    return-void
.end method

.method public setOnADPlayListener(Lc8/RMn;)V
    .locals 0
    .param p1, "mADPlayListener"    # Lc8/RMn;

    .prologue
    .line 76
    iput-object p1, p0, Lc8/xNn;->mOnADPlayListener:Lc8/RMn;

    .line 77
    return-void
.end method

.method public setOnBufferPercentUpdateListener(Lc8/SMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/SMn;

    .prologue
    .line 158
    iput-object p1, p0, Lc8/xNn;->mOnBufferPercentUpdateListener:Lc8/SMn;

    .line 159
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "onBufferingUpdateListener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 446
    return-void
.end method

.method public setOnCdnSwitchListener(Lc8/TMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/TMn;

    .prologue
    .line 222
    iput-object p1, p0, Lc8/xNn;->mOnCdnSwitchListener:Lc8/TMn;

    .line 223
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "onCompletionListener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 449
    return-void
.end method

.method public setOnConnectDelayListener(Lc8/UMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/UMn;

    .prologue
    .line 235
    iput-object p1, p0, Lc8/xNn;->mOnConnectDelayListener:Lc8/UMn;

    .line 236
    return-void
.end method

.method public setOnCpuUsageListener(Lc8/VMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/VMn;

    .prologue
    .line 263
    iput-object p1, p0, Lc8/xNn;->mOnCpuUsageListener:Lc8/VMn;

    .line 264
    return-void
.end method

.method public setOnCurrentPositionUpdateListener(Lc8/WMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/WMn;

    .prologue
    .line 102
    iput-object p1, p0, Lc8/xNn;->mOnCurrentPositionUpdateListener:Lc8/WMn;

    .line 103
    return-void
.end method

.method public setOnDropVideoFramesListener(Lc8/XMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/XMn;

    .prologue
    .line 257
    iput-object p1, p0, Lc8/xNn;->mOnDropVideoFramesListener:Lc8/XMn;

    .line 258
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "onErrorListene"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 452
    return-void
.end method

.method public setOnHttp302DelayListener(Lc8/YMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/YMn;

    .prologue
    .line 239
    iput-object p1, p0, Lc8/xNn;->mOnHttp302DelayListener:Lc8/YMn;

    .line 240
    return-void
.end method

.method public setOnHwDecodeErrorListener(Lc8/ZMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/ZMn;

    .prologue
    .line 231
    iput-object p1, p0, Lc8/xNn;->mOnHwDecodeErrorListener:Lc8/ZMn;

    .line 232
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "onInfoListener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 455
    return-void
.end method

.method public setOnInfoListener(Lc8/aNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/aNn;

    .prologue
    .line 269
    iput-object p1, p0, Lc8/xNn;->mOnInfoListener:Lc8/aNn;

    .line 270
    return-void
.end method

.method public setOnIsInitialListener(Lc8/bNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/bNn;

    .prologue
    .line 177
    iput-object p1, p0, Lc8/xNn;->mOnIsInitialListener:Lc8/bNn;

    .line 178
    return-void
.end method

.method public setOnLodingStatusListener(Lc8/cNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/cNn;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/xNn;->mOnLodingStatusListener:Lc8/cNn;

    .line 115
    return-void
.end method

.method public setOnMidADPlayListener(Lc8/eNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/eNn;

    .prologue
    .line 85
    iput-object p1, p0, Lc8/xNn;->mOnMidADPlayListener:Lc8/eNn;

    .line 86
    return-void
.end method

.method public setOnNativeShotDownListener(Lc8/gNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/gNn;

    .prologue
    .line 251
    iput-object p1, p0, Lc8/xNn;->mOnNativeShotDownListener:Lc8/gNn;

    .line 252
    return-void
.end method

.method public setOnNetworkErrorListener(Lc8/hNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/hNn;

    .prologue
    .line 92
    iput-object p1, p0, Lc8/xNn;->mOnNetworkErrorListener:Lc8/hNn;

    .line 93
    return-void
.end method

.method public setOnNetworkSpeedListener(Lc8/iNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/iNn;

    .prologue
    .line 146
    iput-object p1, p0, Lc8/xNn;->mOnNetworkSpeedListener:Lc8/iNn;

    .line 147
    return-void
.end method

.method public setOnNetworkSpeedPerMinute(Lc8/jNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/jNn;

    .prologue
    .line 152
    iput-object p1, p0, Lc8/xNn;->mOnNetworkSpeedPerMinute:Lc8/jNn;

    .line 153
    return-void
.end method

.method public setOnPreLoadPlayListener(Lc8/lNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/lNn;

    .prologue
    .line 208
    return-void
.end method

.method public setOnPreparedListener(Lc8/mNn;)V
    .locals 0
    .param p1, "onPreparedListener"    # Lc8/mNn;

    .prologue
    .line 458
    return-void
.end method

.method public setOnQualityChangeListener(Lc8/oNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/oNn;

    .prologue
    .line 245
    iput-object p1, p0, Lc8/xNn;->mOnQualityChangeListener:Lc8/oNn;

    .line 246
    return-void
.end method

.method public setOnRealVideoStartListener(Lc8/pNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/pNn;

    .prologue
    .line 186
    iput-object p1, p0, Lc8/xNn;->mOnRealVideoStartListener:Lc8/pNn;

    .line 187
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "onSeekCompleteListener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 461
    return-void
.end method

.method public setOnVideoCurrentIndexUpdateListener(Lc8/uNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/uNn;

    .prologue
    .line 215
    iput-object p1, p0, Lc8/xNn;->mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

    .line 216
    return-void
.end method

.method public setOnVideoIndexUpdateListener(Lc8/vNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/vNn;

    .prologue
    .line 204
    iput-object p1, p0, Lc8/xNn;->mOnVideoIndexUpdateListener:Lc8/vNn;

    .line 205
    return-void
.end method

.method public setOnVideoRealIpUpdateListener(Lc8/wNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/wNn;

    .prologue
    .line 211
    iput-object p1, p0, Lc8/xNn;->mOnVideoRealIpUpdateListener:Lc8/wNn;

    .line 212
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "onVideoSizeChangedListener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 463
    return-void
.end method

.method public setPlayRate(I)V
    .locals 0
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method

.method public setPlaySpeed(D)V
    .locals 0
    .param p1, "playSpeed"    # D

    .prologue
    .line 343
    return-void
.end method

.method public setPreparedFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 274
    return-void
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sec"    # Ljava/lang/String;

    .prologue
    .line 195
    return-void
.end method

.method public setRenderVideo(Z)V
    .locals 0
    .param p1, "renderVideo"    # Z

    .prologue
    .line 415
    return-void
.end method

.method public setRotationMatrix(I[F)V
    .locals 0
    .param p1, "length"    # I
    .param p2, "rotationMatrix"    # [F

    .prologue
    .line 376
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 291
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 287
    return-void
.end method

.method public setTimeout(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sec"    # I

    .prologue
    .line 191
    return-void
.end method

.method public setUseHardwareDecode(Z)V
    .locals 0
    .param p1, "useHardwareDecode"    # Z

    .prologue
    .line 436
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 0
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public setVideoRendCutMode(IFF)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "xoffset"    # F
    .param p3, "yoffset"    # F

    .prologue
    .line 443
    return-void
.end method

.method public setmOnLodingStatusListenerNoTrack(Lc8/dNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/dNn;

    .prologue
    .line 123
    iput-object p1, p0, Lc8/xNn;->mOnLodingStatusListenerNoTrack:Lc8/dNn;

    .line 124
    return-void
.end method

.method public setmOnTimeoutListener(Lc8/sNn;)V
    .locals 0
    .param p1, "mOnTimeoutListener"    # Lc8/sNn;

    .prologue
    .line 67
    iput-object p1, p0, Lc8/xNn;->mOnTimeoutListener:Lc8/sNn;

    .line 68
    return-void
.end method

.method public skipAd(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public stopVideoSurface(Landroid/view/Surface;)V
    .locals 0
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 467
    return-void
.end method

.method public switchDataSource(Ljava/lang/String;)I
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x0

    return v0
.end method

.method public switchPlayerMode(II)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "vrType"    # I

    .prologue
    .line 339
    return-void
.end method
