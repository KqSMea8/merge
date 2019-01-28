.class public Lc8/QLn;
.super Lc8/xNn;
.source "AliMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OLn;,
        Lc8/PLn;
    }
.end annotation


# static fields
.field public static final ALIPLAYER:Ljava/lang/String; = "aliplayer-1.1.7"

.field private static D_Native_MainThread_PreAd_StartTime:J = 0x0L

.field private static D_Native_MainThread_RealVideo_StartTime:J = 0x0L

.field public static final MEDIAPLAYER_NATIVE_SETPROPERTY_CLEAR_TIMEOUT:I = 0x9

.field public static final MEDIA_PLAYMODE_U_Plus:I = 0x1

.field public static final MEDIA_PLAYMODE_VR:I = 0x65

.field public static final MINIMUM_BUFFER_TIME:I = 0x16

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_BITRATE_RATE:I = 0x20

.field public static final TYPE_BUFFERTIME_BEFORE_PLAY:I = 0x14

.field public static final TYPE_BUFFERTIME__PLAYING:I = 0x15

.field public static final TYPE_ENABLE_CPUMONITOR:I = 0x25

.field public static final TYPE_KS_DEFAULTIP:I = 0x26

.field public static final TYPE_MEMFREE_RATE:I = 0x21

.field public static final TYPE_MULTI_CDN_ENABLE:I = 0x1e

.field public static final TYPE_MULTI_TASK:I = 0x1f

.field public static final TYPE_NETCACHE_SIZE:I = 0xa

.field public static final TYPE_POSITION_FRESH_FREQUENCY:I = 0x6

.field public static final TYPE_RTMPE_NETCACHE:I = 0x22

.field public static final TYPE_SIMPLE_DOWNLOAD_HTTP:I = 0x23

.field public static final TYPE_SIMPLE_DOWNLOAD_RTMPE:I = 0x24

.field public static final TYPE_TIMEOUT_CDN:I = 0x2

.field public static final TYPE_TIMEOUT_CDN_READ:I = 0x3

.field public static final TYPE_TIMEOUT_KEY:I = 0x1

.field public static final TYPE_TIMEOUT_RTMPE_CDN:I = 0x4

.field public static final TYPE_TIMEOUT_RTMPE_CDN_READ:I = 0x5

.field public static final TYPE_ZHANGBEI_K_IP:I = 0x26

.field public static final UPLAYER24:Ljava/lang/String; = "uplayer24-1.1.7"

.field public static final UPLAYER_PROPERTY_TYPE_MINIMUM_BUFFER_TIME:I = 0x17

.field public static final UPLAYER_PROPERTY_TYPE_SPEED_RATIO_TO_ADJUST_HIGH:I = 0x18

.field public static final VIDEO_VR_180_3D_LEFT_RIGHT:I = 0x5

.field public static final VIDEO_VR_180_3D_TOP_DOWN:I = 0x4

.field public static final VIDEO_VR_360_2D:I = 0x1

.field public static final VIDEO_VR_360_3D_LEFT_RIGHT:I = 0x3

.field public static final VIDEO_VR_360_3D_TOP_DOWN:I = 0x2

.field public static final VIDEO_VR_NULL:I


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mEventHandler:Lc8/OLn;

.field private mInfoListener:Lc8/aNn;

.field private mNativeContext:I

.field private mOnADCountListener:Lc8/QMn;

.field private mOnADPlayListener:Lc8/RMn;

.field private mOnConnectDelayListener:Lc8/UMn;

.field private mOnCpuUsageListener:Lc8/VMn;

.field private mOnCurrentPositionUpdateListener:Lc8/WMn;

.field private mOnDropVideoFramesListener:Lc8/XMn;

.field private mOnHttp302DelayListener:Lc8/YMn;

.field private mOnHwDecodeErrorListener:Lc8/ZMn;

.field private mOnIsInitialListener:Lc8/bNn;

.field private mOnLodingStatusListener:Lc8/cNn;

.field private mOnLodingStatusListenerNoTrack:Lc8/dNn;

.field private mOnMidADPlayListener:Lc8/eNn;

.field private mOnNativeShotDownListener:Lc8/gNn;

.field private mOnNetworkErrorListener:Lc8/hNn;

.field private mOnNetworkSpeedListener:Lc8/iNn;

.field private mOnPreLoadPlayListener:Lc8/lNn;

.field private mOnQualityChangeListener:Lc8/oNn;

.field private mOnRealVideoStartListener:Lc8/pNn;

.field private mOnTimeoutListener:Lc8/sNn;

.field private mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

.field private mOnVideoIndexUpdateListener:Lc8/vNn;

.field private mPreparedFlag:Z

.field private mPreparedListener:Lc8/mNn;

.field private mScreenOnWhilePlaying:Z

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mStayAwake:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mTextureSurface:Landroid/view/Surface;

.field private mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private useHardwareDecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-class v1, Lc8/QLn;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/QLn;->TAG:Ljava/lang/String;

    .line 86
    :try_start_0
    sget-boolean v1, Lc8/PMn;->isloaded:Z

    if-nez v1, :cond_0

    .line 87
    const-string/jumbo v1, "aliplayer-1.1.7"

    invoke-static {v1}, Lc8/TOm;->loadLibrary(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "uplayer24-1.1.7"

    invoke-static {v1}, Lc8/TOm;->loadLibrary(Ljava/lang/String;)V

    .line 89
    const/4 v1, 0x1

    sput-boolean v1, Lc8/PMn;->isloaded:Z

    .line 91
    :cond_0
    invoke-static {}, Lc8/QLn;->initPlayerNative()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 93
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/VOm;->aliplayerLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 725
    invoke-direct {p0}, Lc8/xNn;-><init>()V

    .line 252
    iput v2, p0, Lc8/QLn;->mNativeContext:I

    .line 253
    iput-object v1, p0, Lc8/QLn;->mSurface:Landroid/view/Surface;

    .line 254
    iput-object v1, p0, Lc8/QLn;->mTextureSurface:Landroid/view/Surface;

    .line 255
    iput-object v1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 256
    iput-object v1, p0, Lc8/QLn;->mEventHandler:Lc8/OLn;

    .line 257
    iput-boolean v2, p0, Lc8/QLn;->mScreenOnWhilePlaying:Z

    .line 258
    iput-boolean v2, p0, Lc8/QLn;->mStayAwake:Z

    .line 259
    iput-object v1, p0, Lc8/QLn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 261
    iput-boolean v2, p0, Lc8/QLn;->mPreparedFlag:Z

    .line 727
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 728
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 729
    new-instance v1, Lc8/OLn;

    invoke-direct {v1, p0, p0, v0}, Lc8/OLn;-><init>(Lc8/QLn;Lc8/QLn;Landroid/os/Looper;)V

    iput-object v1, p0, Lc8/QLn;->mEventHandler:Lc8/OLn;

    .line 741
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Lc8/QLn;->native_setup(Ljava/lang/Object;)V

    .line 742
    return-void

    .line 731
    :cond_0
    iput-object v1, p0, Lc8/QLn;->mEventHandler:Lc8/OLn;

    goto :goto_0
.end method

.method private static _1load(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ali/mobisecenhance/Library;->isKeepSoload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_load(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p0, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method private native _pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _release()V
.end method

.method private native _reset()V
.end method

.method private native _setVideoSurface(Landroid/view/Surface;)V
.end method

.method private native _start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Lc8/QLn;)I
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget v0, p0, Lc8/QLn;->mNativeContext:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lc8/QLn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/QLn;)Lc8/dNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnLodingStatusListenerNoTrack:Lc8/dNn;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/QLn;)Lc8/cNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnLodingStatusListener:Lc8/cNn;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/QLn;)Lc8/aNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mInfoListener:Lc8/aNn;

    return-object v0
.end method

.method static synthetic access$1300()J
    .locals 2

    .prologue
    .line 39
    sget-wide v0, Lc8/QLn;->D_Native_MainThread_PreAd_StartTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lc8/QLn;)Lc8/RMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnADPlayListener:Lc8/RMn;

    return-object v0
.end method

.method static synthetic access$1500(Lc8/QLn;)Lc8/eNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnMidADPlayListener:Lc8/eNn;

    return-object v0
.end method

.method static synthetic access$1600(Lc8/QLn;)Lc8/WMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnCurrentPositionUpdateListener:Lc8/WMn;

    return-object v0
.end method

.method static synthetic access$1700(Lc8/QLn;)Lc8/uNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

    return-object v0
.end method

.method static synthetic access$1800(Lc8/QLn;)Lc8/vNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnVideoIndexUpdateListener:Lc8/vNn;

    return-object v0
.end method

.method static synthetic access$1900(Lc8/QLn;)Lc8/iNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnNetworkSpeedListener:Lc8/iNn;

    return-object v0
.end method

.method static synthetic access$200(Lc8/QLn;)Lc8/mNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mPreparedListener:Lc8/mNn;

    return-object v0
.end method

.method static synthetic access$2000(Lc8/QLn;)Lc8/bNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnIsInitialListener:Lc8/bNn;

    return-object v0
.end method

.method static synthetic access$2100()J
    .locals 2

    .prologue
    .line 39
    sget-wide v0, Lc8/QLn;->D_Native_MainThread_RealVideo_StartTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lc8/QLn;)Lc8/pNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnRealVideoStartListener:Lc8/pNn;

    return-object v0
.end method

.method static synthetic access$2300(Lc8/QLn;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$2400(Lc8/QLn;)Lc8/QMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnADCountListener:Lc8/QMn;

    return-object v0
.end method

.method static synthetic access$2500(Lc8/QLn;)Lc8/sNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnTimeoutListener:Lc8/sNn;

    return-object v0
.end method

.method static synthetic access$2600(Lc8/QLn;)Lc8/ZMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnHwDecodeErrorListener:Lc8/ZMn;

    return-object v0
.end method

.method static synthetic access$2700(Lc8/QLn;)Lc8/UMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnConnectDelayListener:Lc8/UMn;

    return-object v0
.end method

.method static synthetic access$2800(Lc8/QLn;)Lc8/YMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnHttp302DelayListener:Lc8/YMn;

    return-object v0
.end method

.method static synthetic access$2900(Lc8/QLn;)Lc8/oNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnQualityChangeListener:Lc8/oNn;

    return-object v0
.end method

.method static synthetic access$300(Lc8/QLn;)Z
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-boolean v0, p0, Lc8/QLn;->mPreparedFlag:Z

    return v0
.end method

.method static synthetic access$3000(Lc8/QLn;)Lc8/XMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnDropVideoFramesListener:Lc8/XMn;

    return-object v0
.end method

.method static synthetic access$3100(Lc8/QLn;)Lc8/gNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnNativeShotDownListener:Lc8/gNn;

    return-object v0
.end method

.method static synthetic access$3200(Lc8/QLn;)Lc8/VMn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnCpuUsageListener:Lc8/VMn;

    return-object v0
.end method

.method static synthetic access$400(Lc8/QLn;)Lc8/lNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnPreLoadPlayListener:Lc8/lNn;

    return-object v0
.end method

.method static synthetic access$500(Lc8/QLn;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$600(Lc8/QLn;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$700(Lc8/QLn;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$800(Lc8/QLn;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$900(Lc8/QLn;)Lc8/hNn;
    .locals 1
    .param p0, "x0"    # Lc8/QLn;

    .prologue
    .line 39
    iget-object v0, p0, Lc8/QLn;->mOnNetworkErrorListener:Lc8/hNn;

    return-object v0
.end method

.method public static native getCpuCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native getFFmpegVersionCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native getFFmpegVersionName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static synchronized native declared-synchronized getFileDuration(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method public static getSDKVersionNumber()I
    .locals 2

    .prologue
    .line 138
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 142
    .local v0, "sdkVersion":I
    :goto_0
    return v0

    .line 140
    .end local v0    # "sdkVersion":I
    :catch_0
    move-exception v1

    const/4 v0, 0x0

    .restart local v0    # "sdkVersion":I
    goto :goto_0
.end method

.method public static native getUplayerVersionCode()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public static native getUplayerVersionName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private static initPlayerNative()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    .line 1527
    const-wide/16 v1, 0x0

    .line 1529
    .local v1, "size":J
    :try_start_0
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/nEj;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1530
    invoke-static {}, Lc8/YOm;->getSdAvailableSize()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v8, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    div-double/2addr v4, v10

    double-to-long v1, v4

    .line 1531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    :cond_0
    :goto_0
    invoke-static {}, Lc8/PMn;->getInitPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc8/PMn;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-static/range {v0 .. v5}, Lc8/QLn;->native_init(Ljava/lang/String;JLjava/lang/String;J)V

    .line 1540
    return-void

    .line 1534
    :catch_0
    move-exception v6

    .line 1536
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static loadsoFromSdcard()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 99
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/VLn;->getSDPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 100
    .local v4, "sdcardstr":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "libuplayer24.so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "uplayer24Path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "libaliplayer.so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .local v2, "libaliplayerpath":Ljava/lang/String;
    sget-object v8, Lc8/nEj;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "libs"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 104
    .local v0, "dir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "libuplayer24.so"

    invoke-direct {v7, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v7, "uplayer24soFile":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string/jumbo v8, "libaliplayer.so"

    invoke-direct {v3, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v3, "libaliplayersoFile":Ljava/io/File;
    const-string/jumbo v5, ""

    .line 108
    .local v5, "showtip":Ljava/lang/String;
    invoke-static {v2}, Lc8/VLn;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 109
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lc8/VLn;->copyTo(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "libaliplayer.so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    :goto_0
    invoke-static {v6}, Lc8/VLn;->isFileExist(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 115
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Lc8/VLn;->copyTo(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "libuplayer24.so  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 122
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/QLn;->_1load(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/QLn;->_1load(Ljava/lang/String;)V

    .line 124
    const-string/jumbo v8, ""

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 125
    sget-object v8, Lc8/nEj;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "from sdcard "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_2
    return-void

    .line 112
    :cond_1
    sget-object v8, Lc8/nEj;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "libaliplayer.so"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lc8/VLn;->assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_2
    sget-object v8, Lc8/nEj;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "libuplayer24.so"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lc8/VLn;->assetToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init(Ljava/lang/String;JLjava/lang/String;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private static final native native_set_egl_path(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private native native_suspend_resume(Z)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 9
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v8, 0x3f9

    const/16 v7, 0x3f3

    const/4 v6, 0x1

    const/16 v4, 0x64

    .line 1250
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/QLn;

    .line 1251
    .local v1, "mp":Lc8/QLn;
    if-nez v1, :cond_1

    .line 1478
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    iget-object v3, v1, Lc8/QLn;->mEventHandler:Lc8/OLn;

    if-eqz v3, :cond_0

    .line 1256
    iget-object v3, v1, Lc8/QLn;->mEventHandler:Lc8/OLn;

    invoke-virtual {v3, p1, p2, p3, p4}, Lc8/OLn;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1257
    .local v0, "m":Landroid/os/Message;
    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 1471
    :goto_1
    :sswitch_0
    iget v3, v0, Landroid/os/Message;->what:I

    if-eq v3, v6, :cond_2

    iget v3, v0, Landroid/os/Message;->what:I

    if-eq v3, v7, :cond_2

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, v8, :cond_3

    .line 1472
    :cond_2
    iget-object v3, v1, Lc8/QLn;->mEventHandler:Lc8/OLn;

    invoke-virtual {v3, v0}, Lc8/OLn;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0

    .line 1259
    :sswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Video frame rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 1262
    :sswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Audio frame rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 1267
    :sswitch_3
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1271
    :sswitch_4
    const v3, 0xc353

    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1275
    :sswitch_5
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_1

    .line 1283
    :sswitch_6
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1284
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1285
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1286
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_1

    .line 1291
    :sswitch_7
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1292
    const/16 v3, 0x3ef

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1293
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 1298
    :sswitch_8
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1299
    const/16 v3, 0x3f0

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1300
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 1305
    :sswitch_9
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1306
    const/16 v3, 0x3ed

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1307
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto :goto_1

    .line 1311
    :sswitch_a
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1312
    const/16 v3, 0x3f1

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1313
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 1320
    :sswitch_b
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1321
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1322
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1323
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1330
    :sswitch_c
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1331
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1332
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1333
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1337
    :sswitch_d
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1338
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1339
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1340
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1344
    :sswitch_e
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1345
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1346
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1347
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1351
    :sswitch_f
    const/4 v3, 0x5

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1352
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1353
    iput p3, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 1357
    :sswitch_10
    const/4 v3, 0x3

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1358
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1359
    iput p3, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 1363
    :sswitch_11
    const/16 v3, 0x7d6

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 1366
    :sswitch_12
    const-string/jumbo v3, "YKPlayer.PlayFlow.Track"

    const-string/jumbo v4, "MEDIA_INFO_PRE_AD_START  Native"

    invoke-static {v3, v4}, Lc8/VOm;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iput v7, v0, Landroid/os/Message;->what:I

    .line 1369
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lc8/QLn;->D_Native_MainThread_PreAd_StartTime:J

    goto/16 :goto_1

    .line 1374
    :sswitch_13
    const/16 v3, 0x3f4

    iput v3, v0, Landroid/os/Message;->what:I

    .line 1375
    iput p2, v0, Landroid/os/Message;->arg1:I

    goto/16 :goto_1

    .line 1379
    :sswitch_14
    const/16 v3, 0x7d0

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 1384
    :sswitch_15
    const-string/jumbo v3, "YKPlayer.PlayFlow.Track"

    const-string/jumbo v4, "MEDIA_INFO_VIDEO_START  From Native"

    invoke-static {v3, v4}, Lc8/VOm;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iput v8, v0, Landroid/os/Message;->what:I

    .line 1386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lc8/QLn;->D_Native_MainThread_RealVideo_StartTime:J

    goto/16 :goto_1

    .line 1390
    :sswitch_16
    const/16 v3, 0x3fa

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 1395
    :sswitch_17
    const/16 v3, 0x410

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 1402
    :sswitch_18
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1403
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1404
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1405
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1412
    :sswitch_19
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1413
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1414
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1415
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1419
    :sswitch_1a
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1420
    const/16 v3, 0x898

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1421
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 1425
    :sswitch_1b
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1426
    const/16 v3, 0x899

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1427
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 1431
    :sswitch_1c
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1432
    const/16 v3, 0x3ea

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1433
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 1440
    :sswitch_1d
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1441
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 1442
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 1443
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_1

    .line 1446
    :sswitch_1e
    const/16 v3, 0x413

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 1455
    :sswitch_1f
    const/16 v3, 0x134

    iput v3, v0, Landroid/os/Message;->what:I

    goto/16 :goto_1

    .line 1459
    :sswitch_20
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1461
    .local v2, "tlogStr":Ljava/lang/String;
    invoke-static {v2}, Lc8/VOm;->aliplayerLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1465
    .end local v2    # "tlogStr":Ljava/lang/String;
    :sswitch_21
    iput v4, v0, Landroid/os/Message;->what:I

    .line 1466
    const/16 v3, 0xbba

    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 1467
    iput p2, v0, Landroid/os/Message;->arg2:I

    goto/16 :goto_1

    .line 1474
    :cond_3
    iget-object v3, v1, Lc8/QLn;->mEventHandler:Lc8/OLn;

    invoke-virtual {v3, v0}, Lc8/OLn;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1257
    :sswitch_data_0
    .sparse-switch
        0x134 -> :sswitch_1f
        0x135 -> :sswitch_20
        0x384 -> :sswitch_1
        0x385 -> :sswitch_2
        0x3e8 -> :sswitch_3
        0x3e9 -> :sswitch_5
        0x3ea -> :sswitch_1c
        0x3ed -> :sswitch_9
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_a
        0x3f2 -> :sswitch_b
        0x3f3 -> :sswitch_12
        0x3f4 -> :sswitch_13
        0x3f9 -> :sswitch_15
        0x3fa -> :sswitch_16
        0x3ff -> :sswitch_e
        0x406 -> :sswitch_f
        0x407 -> :sswitch_10
        0x410 -> :sswitch_17
        0x413 -> :sswitch_1e
        0x456 -> :sswitch_c
        0x457 -> :sswitch_d
        0x7d0 -> :sswitch_14
        0x7d4 -> :sswitch_1d
        0x7d5 -> :sswitch_18
        0x7d6 -> :sswitch_11
        0x898 -> :sswitch_1a
        0x899 -> :sswitch_1b
        0x89d -> :sswitch_19
        0xbba -> :sswitch_21
        0x7530 -> :sswitch_0
        0x7531 -> :sswitch_0
        0xc353 -> :sswitch_4
    .end sparse-switch
.end method

.method public static native registerAVcodec()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation
.end method

.method private native setTextureView(Landroid/view/Surface;)V
.end method

.method private stayAwake(Z)V
    .locals 1
    .param p1, "awake"    # Z

    .prologue
    .line 856
    iget-object v0, p0, Lc8/QLn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 857
    if-eqz p1, :cond_1

    iget-object v0, p0, Lc8/QLn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 858
    iget-object v0, p0, Lc8/QLn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 863
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lc8/QLn;->mStayAwake:Z

    .line 864
    invoke-direct {p0}, Lc8/QLn;->updateSurfaceScreenOn()V

    .line 865
    return-void

    .line 859
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lc8/QLn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lc8/QLn;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateSurfaceScreenOn()V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 779
    iget-object v1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-boolean v0, p0, Lc8/QLn;->mScreenOnWhilePlaying:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc8/QLn;->mStayAwake:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 781
    :cond_0
    return-void

    .line 779
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public native GetDownloadSpeed([I)I
.end method

.method public native addPostADUrl(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native changeVideoSize(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native closePreloadDataSource(I)V
.end method

.method public native cropOneFrame(ILjava/lang/String;IIII)I
.end method

.method public native enableVoice(I)V
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 851
    invoke-direct {p0}, Lc8/QLn;->native_finalize()V

    .line 852
    return-void
.end method

.method public native generateCacheFile(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public native getAvgKeyFrameSize()D
.end method

.method public native getAvgVideoBitrate()D
.end method

.method public native getConfigParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native getCurrentPosition()I
.end method

.method public native getDuration()I
.end method

.method public native getSoVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getVideoCode()I
.end method

.method public native getVideoFrameRate()D
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public native getVoiceStatus()I
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 841
    const/4 v0, 0x0

    return v0
.end method

.method public native isPlaying()Z
.end method

.method public native isSeeking()Z
.end method

.method public native panGuesture(IFF)V
.end method

.method public pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 793
    invoke-direct {p0}, Lc8/QLn;->_pause()V

    .line 794
    return-void
.end method

.method public native pinchForZoom(IF)V
.end method

.method public native playBackupAD(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public native playMidADConfirm(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native preloadDataSource(Ljava/lang/String;I)I
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareMidAD()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public release()V
    .locals 3

    .prologue
    const/16 v2, 0x7d0

    const/4 v1, 0x0

    .line 818
    const-string/jumbo v0, "AliMediaPlayer release"

    invoke-static {v0}, Lc8/VOm;->playLog(Ljava/lang/String;)V

    .line 820
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/QLn;->stayAwake(Z)V

    .line 821
    invoke-direct {p0}, Lc8/QLn;->updateSurfaceScreenOn()V

    .line 822
    iput-object v1, p0, Lc8/QLn;->mPreparedListener:Lc8/mNn;

    .line 823
    iput-object v1, p0, Lc8/QLn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 824
    iput-object v1, p0, Lc8/QLn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 825
    iput-object v1, p0, Lc8/QLn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 826
    iput-object v1, p0, Lc8/QLn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 827
    iput-object v1, p0, Lc8/QLn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 828
    iput-object v1, p0, Lc8/QLn;->mInfoListener:Lc8/aNn;

    .line 829
    iput-object v1, p0, Lc8/QLn;->mOnHttp302DelayListener:Lc8/YMn;

    .line 830
    iput-object v1, p0, Lc8/QLn;->mOnMidADPlayListener:Lc8/eNn;

    .line 831
    iput-object v1, p0, Lc8/QLn;->mOnNetworkErrorListener:Lc8/hNn;

    .line 832
    invoke-direct {p0}, Lc8/QLn;->_release()V

    .line 833
    iget-object v0, p0, Lc8/QLn;->mEventHandler:Lc8/OLn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/QLn;->mEventHandler:Lc8/OLn;

    invoke-virtual {v0, v2}, Lc8/OLn;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lc8/QLn;->mEventHandler:Lc8/OLn;

    invoke-virtual {v0, v2}, Lc8/OLn;->removeMessages(I)V

    .line 837
    :cond_0
    return-void
.end method

.method public releaseSurface()V
    .locals 1

    .prologue
    .line 1493
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/QLn;->mTextureSurface:Landroid/view/Surface;

    .line 1494
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 845
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/QLn;->stayAwake(Z)V

    .line 846
    invoke-direct {p0}, Lc8/QLn;->_reset()V

    .line 847
    return-void
.end method

.method public native resetPanoramic()V
.end method

.method public native screenShotMultiFramesBegin(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
.end method

.method public native screenShotMultiFramesEnd()I
.end method

.method public native screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
.end method

.method public native seekTo(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setAudioEnhance(Z)V
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setBinocularMode(Z)V
.end method

.method public native setConfigParameter(Ljava/lang/String;)I
.end method

.method public native setDataSource(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 745
    iput-object p1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 746
    iget-object v1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-static {v1}, Lc8/TLn;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 748
    iget-object v1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 750
    iget-object v1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lc8/QLn;->mSurface:Landroid/view/Surface;

    .line 754
    :goto_0
    iget-boolean v1, p0, Lc8/QLn;->useHardwareDecode:Z

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lc8/QLn;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Lc8/QLn;->setHWVideoSurface(Landroid/view/Surface;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 756
    .local v0, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    new-instance v1, Lc8/NLn;

    invoke-direct {v1, p0}, Lc8/NLn;-><init>(Lc8/QLn;)V

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 764
    .end local v0    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :goto_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lc8/QLn;->stayAwake(Z)V

    .line 765
    return-void

    .line 752
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/QLn;->mSurface:Landroid/view/Surface;

    goto :goto_0

    .line 763
    :cond_1
    iget-object v1, p0, Lc8/QLn;->mSurface:Landroid/view/Surface;

    invoke-direct {p0, v1}, Lc8/QLn;->_setVideoSurface(Landroid/view/Surface;)V

    goto :goto_1
.end method

.method public native setEnhanceMode(ZFF)V
.end method

.method public native setEulerAngles(FFF)V
.end method

.method public native setFrameAvailable()V
.end method

.method public native setGyroscope(FFFF)V
.end method

.method public native setGyroscopeActive(Z)V
.end method

.method public native setHWVideoSurface(Landroid/view/Surface;)Landroid/graphics/SurfaceTexture;
.end method

.method public native setHttpUserAgent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setInterfaceOrientation(I)V
.end method

.method public native setMidADDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setNightMode(FF)V
.end method

.method public setOnADCountListener(Lc8/QMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/QMn;

    .prologue
    .line 541
    iput-object p1, p0, Lc8/QLn;->mOnADCountListener:Lc8/QMn;

    .line 542
    return-void
.end method

.method public setOnADPlayListener(Lc8/RMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/RMn;

    .prologue
    .line 616
    iput-object p1, p0, Lc8/QLn;->mOnADPlayListener:Lc8/RMn;

    .line 617
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 683
    iput-object p1, p0, Lc8/QLn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 684
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 677
    iput-object p1, p0, Lc8/QLn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 678
    return-void
.end method

.method public setOnConnectDelayListener(Lc8/UMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/UMn;

    .prologue
    .line 520
    iput-object p1, p0, Lc8/QLn;->mOnConnectDelayListener:Lc8/UMn;

    .line 521
    return-void
.end method

.method public setOnCpuUsageListener(Lc8/VMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/VMn;

    .prologue
    .line 580
    iput-object p1, p0, Lc8/QLn;->mOnCpuUsageListener:Lc8/VMn;

    .line 581
    return-void
.end method

.method public setOnCurrentPositionUpdateListener(Lc8/WMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/WMn;

    .prologue
    .line 647
    iput-object p1, p0, Lc8/QLn;->mOnCurrentPositionUpdateListener:Lc8/WMn;

    .line 648
    return-void
.end method

.method public setOnDropVideoFramesListener(Lc8/XMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/XMn;

    .prologue
    .line 717
    iput-object p1, p0, Lc8/QLn;->mOnDropVideoFramesListener:Lc8/XMn;

    .line 718
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 702
    iput-object p1, p0, Lc8/QLn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 703
    return-void
.end method

.method public setOnHttp302DelayListener(Lc8/YMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/YMn;

    .prologue
    .line 524
    iput-object p1, p0, Lc8/QLn;->mOnHttp302DelayListener:Lc8/YMn;

    .line 525
    return-void
.end method

.method public setOnHwDecodeErrorListener(Lc8/ZMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/ZMn;

    .prologue
    .line 516
    iput-object p1, p0, Lc8/QLn;->mOnHwDecodeErrorListener:Lc8/ZMn;

    .line 517
    return-void
.end method

.method public setOnInfoListener(Lc8/aNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/aNn;

    .prologue
    .line 707
    iput-object p1, p0, Lc8/QLn;->mInfoListener:Lc8/aNn;

    .line 708
    return-void
.end method

.method public setOnIsInitialListener(Lc8/bNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/bNn;

    .prologue
    .line 571
    iput-object p1, p0, Lc8/QLn;->mOnIsInitialListener:Lc8/bNn;

    .line 572
    return-void
.end method

.method public setOnLodingStatusListener(Lc8/cNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/cNn;

    .prologue
    .line 598
    iput-object p1, p0, Lc8/QLn;->mOnLodingStatusListener:Lc8/cNn;

    .line 599
    return-void
.end method

.method public setOnMidADPlayListener(Lc8/eNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/eNn;

    .prologue
    .line 630
    iput-object p1, p0, Lc8/QLn;->mOnMidADPlayListener:Lc8/eNn;

    .line 631
    return-void
.end method

.method public setOnNativeShotDownListener(Lc8/gNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/gNn;

    .prologue
    .line 551
    iput-object p1, p0, Lc8/QLn;->mOnNativeShotDownListener:Lc8/gNn;

    .line 552
    return-void
.end method

.method public setOnNetworkErrorListener(Lc8/hNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/hNn;

    .prologue
    .line 637
    iput-object p1, p0, Lc8/QLn;->mOnNetworkErrorListener:Lc8/hNn;

    .line 638
    return-void
.end method

.method public setOnNetworkSpeedListener(Lc8/iNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/iNn;

    .prologue
    .line 562
    iput-object p1, p0, Lc8/QLn;->mOnNetworkSpeedListener:Lc8/iNn;

    .line 563
    return-void
.end method

.method public setOnPreLoadPlayListener(Lc8/lNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/lNn;

    .prologue
    .line 620
    iput-object p1, p0, Lc8/QLn;->mOnPreLoadPlayListener:Lc8/lNn;

    .line 621
    return-void
.end method

.method public setOnPreparedListener(Lc8/mNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/mNn;

    .prologue
    .line 671
    iput-object p1, p0, Lc8/QLn;->mPreparedListener:Lc8/mNn;

    .line 672
    return-void
.end method

.method public setOnQualityChangeListener(Lc8/oNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/oNn;

    .prologue
    .line 712
    iput-object p1, p0, Lc8/QLn;->mOnQualityChangeListener:Lc8/oNn;

    .line 713
    return-void
.end method

.method public setOnRealVideoStartListener(Lc8/pNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/pNn;

    .prologue
    .line 589
    iput-object p1, p0, Lc8/QLn;->mOnRealVideoStartListener:Lc8/pNn;

    .line 590
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 689
    iput-object p1, p0, Lc8/QLn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 690
    return-void
.end method

.method public setOnVideoCurrentIndexUpdateListener(Lc8/uNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/uNn;

    .prologue
    .line 664
    iput-object p1, p0, Lc8/QLn;->mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

    .line 665
    return-void
.end method

.method public setOnVideoIndexUpdateListener(Lc8/vNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/vNn;

    .prologue
    .line 657
    iput-object p1, p0, Lc8/QLn;->mOnVideoIndexUpdateListener:Lc8/vNn;

    .line 658
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 696
    iput-object p1, p0, Lc8/QLn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 697
    return-void
.end method

.method public setPlayRate(I)V
    .locals 0
    .param p1, "playRate"    # I

    .prologue
    .line 430
    return-void
.end method

.method public native setPlaySpeed(D)V
.end method

.method public setPreparedFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1549
    iput-boolean p1, p0, Lc8/QLn;->mPreparedFlag:Z

    .line 1550
    return-void
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sec"    # Ljava/lang/String;

    .prologue
    .line 813
    invoke-virtual {p0, p1, p2}, Lc8/QLn;->set_property(ILjava/lang/String;)V

    .line 814
    return-void
.end method

.method public native setQuaternion(FFFF)V
.end method

.method public native setRenderVideo(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setRotationMatrix(I[F)V
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 797
    iget-boolean v0, p0, Lc8/QLn;->mScreenOnWhilePlaying:Z

    if-eq v0, p1, :cond_0

    .line 798
    iput-boolean p1, p0, Lc8/QLn;->mScreenOnWhilePlaying:Z

    .line 799
    invoke-direct {p0}, Lc8/QLn;->updateSurfaceScreenOn()V

    .line 801
    :cond_0
    return-void
.end method

.method public native setScreenState(I)V
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<********> alimediaplayer.surface()---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    iput-object p1, p0, Lc8/QLn;->mTextureSurface:Landroid/view/Surface;

    .line 771
    iget-object v0, p0, Lc8/QLn;->mTextureSurface:Landroid/view/Surface;

    invoke-direct {p0, v0}, Lc8/QLn;->_setVideoSurface(Landroid/view/Surface;)V

    .line 772
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "mSurfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1482
    iput-object p1, p0, Lc8/QLn;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1483
    return-void
.end method

.method public setTimeout(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "sec"    # I

    .prologue
    .line 809
    invoke-virtual {p0, p1, p2}, Lc8/QLn;->set_timeout(II)V

    .line 810
    return-void
.end method

.method public setUseHardwareDecode(Z)V
    .locals 0
    .param p1, "useHardwareDecode"    # Z

    .prologue
    .line 722
    iput-boolean p1, p0, Lc8/QLn;->useHardwareDecode:Z

    .line 723
    return-void
.end method

.method public native setVideoOrientation(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setVideoRendCutMode(IFF)V
.end method

.method public native setZoomValue(F)V
.end method

.method public native set_property(ILjava/lang/String;)V
.end method

.method public native set_timeout(II)V
.end method

.method public setmOnLodingStatusListenerNoTrack(Lc8/dNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/dNn;

    .prologue
    .line 607
    iput-object p1, p0, Lc8/QLn;->mOnLodingStatusListenerNoTrack:Lc8/dNn;

    .line 608
    return-void
.end method

.method public setmOnTimeoutListener(Lc8/sNn;)V
    .locals 0
    .param p1, "mOnTimeoutListener"    # Lc8/sNn;

    .prologue
    .line 532
    iput-object p1, p0, Lc8/QLn;->mOnTimeoutListener:Lc8/sNn;

    .line 533
    return-void
.end method

.method public native skipAd(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 784
    invoke-direct {p0}, Lc8/QLn;->_start()V

    .line 785
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 788
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/QLn;->stayAwake(Z)V

    .line 789
    invoke-direct {p0}, Lc8/QLn;->_stop()V

    .line 790
    return-void
.end method

.method public native stopVideoSurface(Landroid/view/Surface;)V
.end method

.method public native switchDataSource(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native switchPlayerMode(II)V
.end method

.method public testGetKey()V
    .locals 4

    .prologue
    .line 1514
    const-string/jumbo v0, "{\"key3\":\"1\",\"hw_audio_dec_ac3\":\"true\",\"key4\":\"asdfgk4k4k4\"}"

    .line 1515
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testGetKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1516
    invoke-virtual {p0, v0}, Lc8/QLn;->getConfigParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1517
    .local v1, "res":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testGetKey res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1520
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lc8/QLn;->getConfigParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testGetKey res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1522
    return-void
.end method

.method public testPutKey()V
    .locals 4

    .prologue
    .line 1499
    const-string/jumbo v0, "{\"hw_audio_dec_ac3\":\"enable:1\",\"hw_video_dec_h263\":\"adf\",\"key3\":\"asdfgh\"}"

    .line 1500
    .local v0, "data":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tesyPutKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1501
    invoke-virtual {p0, v0}, Lc8/QLn;->setConfigParameter(Ljava/lang/String;)I

    move-result v1

    .line 1502
    .local v1, "res":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testPutKey res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1504
    const-string/jumbo v0, "{\"hw_audio_dec_ac3\":\"enable:0\",\"hw_video_dec_h263\":\"adf\",\"key3\":\"asdfgh\"}"

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tesyPutKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1506
    invoke-virtual {p0, v0}, Lc8/QLn;->setConfigParameter(Ljava/lang/String;)I

    move-result v1

    .line 1507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "testPutKey res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1508
    return-void
.end method
