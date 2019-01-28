.class public Lc8/KMn;
.super Ljava/lang/Object;
.source "MediaPlayerProxy.java"

# interfaces
.implements Lc8/LMn;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JMn;,
        Lc8/IMn;
    }
.end annotation


# static fields
.field private static final HD2_BLACK_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static HD2_CORES_REQUIREMENT:D = 0.0

.field private static HD2_H265_HLS_CORES_REQUIREMENT:D = 0.0

.field private static HD2_H265_HLS_FREQUENCY_REQUIREMENT:D = 0.0

.field private static HD2_RAM_REQUIREMENT:D = 0.0

.field private static HD3_RAM_REQUIREMENT:D = 0.0

.field private static final HD3_WHITE_LIST:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaPlayerProxy"

.field public static Versions:[I

.field public static freq:I

.field private static initialized:Z

.field private static isCpuinfoReaded:Z

.field private static isUplayerSupported:Z

.field private static mNumCores:I

.field private static mScreenHeight:I

.field private static mScreenWidth:I

.field private static mTotalRAM:D

.field private static sPlayer:Lc8/KMn;


# instance fields
.field private isDRM:Z

.field private isHLS:Z

.field private volatile isReleased:Z

.field private mADPlayListener:Lc8/RMn;

.field private mAudioStreamType:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentOrientation:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mInnerDisplaySet:Z

.field private mInnerPlayer:Lc8/xNn;

.field private mMPLastState:I

.field private mMPState:I

.field private mMidADPlayListener:Lc8/eNn;

.field private mOnADCountListener:Lc8/QMn;

.field private mOnBufferPercentUpdateListener:Lc8/SMn;

.field private mOnCdnSwitchListener:Lc8/TMn;

.field private mOnConnectDelayListener:Lc8/UMn;

.field private mOnCpuUsageListener:Lc8/VMn;

.field private mOnCurrentPositionUpdateListener:Lc8/WMn;

.field private mOnDropVideoFramesListener:Lc8/XMn;

.field private mOnHttp302DelayListener:Lc8/YMn;

.field private mOnHwDecodeErrorListener:Lc8/ZMn;

.field private mOnInfoListener:Lc8/aNn;

.field private mOnIsInitialListener:Lc8/bNn;

.field private mOnLodingStatusListener:Lc8/cNn;

.field private mOnLodingStatusListenerNoTrack:Lc8/dNn;

.field private mOnNativeShotDownListener:Lc8/gNn;

.field private mOnNetworkErrorListener:Lc8/hNn;

.field private mOnNetworkSpeedListener:Lc8/iNn;

.field private mOnNetworkSpeedPerMinute:Lc8/jNn;

.field private mOnPreLoadPlayListener:Lc8/lNn;

.field private mOnQualityChangeListener:Lc8/oNn;

.field private mOnRealVideoStartListener:Lc8/pNn;

.field private mOnTimeoutListener:Lc8/sNn;

.field private mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

.field private mOnVideoIndexUpdateListener:Lc8/vNn;

.field private mOnVideoRealIpUpdateListener:Lc8/wNn;

.field private mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOuterPreparedListener:Lc8/mNn;

.field private mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mPath:Ljava/lang/String;

.field private mPlayerTimeoutProperty:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreparedListener:Lc8/mNn;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSurface:Landroid/view/Surface;

.field private mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private positionFrequency:Ljava/lang/String;

.field private systemMediaplayerClose:Z

.field private useAliPlayer:Z

.field private useHardwareDecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 45
    const/4 v3, 0x0

    sput-object v3, Lc8/KMn;->sPlayer:Lc8/KMn;

    .line 132
    const-wide v6, 0x4133333333333333L    # 1258291.2

    sput-wide v6, Lc8/KMn;->HD2_RAM_REQUIREMENT:D

    .line 134
    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    sput-wide v6, Lc8/KMn;->HD2_CORES_REQUIREMENT:D

    .line 135
    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    sput-wide v6, Lc8/KMn;->HD2_H265_HLS_CORES_REQUIREMENT:D

    .line 136
    const-wide v6, 0x40a1300000000000L    # 2200.0

    sput-wide v6, Lc8/KMn;->HD2_H265_HLS_FREQUENCY_REQUIREMENT:D

    .line 141
    const-wide v6, 0x414599999999999aL    # 2831155.2

    sput-wide v6, Lc8/KMn;->HD3_RAM_REQUIREMENT:D

    .line 149
    const/4 v3, 0x5

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v3, "HM 1SW"

    aput-object v3, v0, v4

    const-string/jumbo v3, "2014501"

    aput-object v3, v0, v8

    const-string/jumbo v3, "2014011"

    aput-object v3, v0, v9

    const-string/jumbo v3, "HM 1SC"

    aput-object v3, v0, v10

    const-string/jumbo v3, "HM 1STD"

    aput-object v3, v0, v11

    .line 155
    .local v0, "hd2BlackList":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lc8/KMn;->HD2_BLACK_LIST:Ljava/util/HashSet;

    .line 156
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v0, v3

    .line 157
    .local v2, "item":Ljava/lang/String;
    sget-object v6, Lc8/KMn;->HD2_BLACK_LIST:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v2    # "item":Ljava/lang/String;
    :cond_0
    const/16 v3, 0x9

    new-array v1, v3, [Ljava/lang/String;

    const-string/jumbo v3, "Nexus 9"

    aput-object v3, v1, v4

    const-string/jumbo v3, "MI NOTE LTE"

    aput-object v3, v1, v8

    const-string/jumbo v3, "SM-N9100"

    aput-object v3, v1, v9

    const-string/jumbo v3, "HUAWEI NXT-AL10"

    aput-object v3, v1, v10

    const-string/jumbo v3, "HUAWEI GRA-UL10"

    aput-object v3, v1, v11

    const/4 v3, 0x5

    const-string/jumbo v5, "SM-G935T"

    aput-object v5, v1, v3

    const/4 v3, 0x6

    const-string/jumbo v5, "SM-G9350"

    aput-object v5, v1, v3

    const/4 v3, 0x7

    const-string/jumbo v5, "SM-G930\u0422"

    aput-object v5, v1, v3

    const/16 v3, 0x8

    const-string/jumbo v5, "SM-G930"

    aput-object v5, v1, v3

    .line 173
    .local v1, "hd3WhiteList":[Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    sput-object v3, Lc8/KMn;->HD3_WHITE_LIST:Ljava/util/HashSet;

    .line 174
    array-length v5, v1

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v2, v1, v3

    .line 175
    .restart local v2    # "item":Ljava/lang/String;
    sget-object v6, Lc8/KMn;->HD3_WHITE_LIST:Ljava/util/HashSet;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1314
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    sput-boolean v4, Lc8/KMn;->isCpuinfoReaded:Z

    .line 1322
    sput-boolean v4, Lc8/KMn;->isUplayerSupported:Z

    .line 1940
    const/16 v3, 0xb

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    sput-object v3, Lc8/KMn;->Versions:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8
        0x3fe
        0x3ff
        0x406
        0x410
        0x411
        0x412
        0x413
        0x414
        0x41a
        0x44b
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v3, p0, Lc8/KMn;->useAliPlayer:Z

    .line 106
    iput-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    .line 107
    iput-object v1, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    .line 108
    iput-object v1, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    .line 110
    iput-boolean v2, p0, Lc8/KMn;->mInnerDisplaySet:Z

    .line 111
    iput v2, p0, Lc8/KMn;->mMPState:I

    .line 112
    iput v2, p0, Lc8/KMn;->mMPLastState:I

    .line 113
    iput-object v1, p0, Lc8/KMn;->mPath:Ljava/lang/String;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lc8/KMn;->mAudioStreamType:I

    .line 121
    iput-object v1, p0, Lc8/KMn;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 122
    iput-object v1, p0, Lc8/KMn;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 123
    iput-object v1, p0, Lc8/KMn;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 124
    iput-object v1, p0, Lc8/KMn;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 125
    iput-object v1, p0, Lc8/KMn;->mOuterPreparedListener:Lc8/mNn;

    .line 126
    iput-object v1, p0, Lc8/KMn;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 127
    iput-object v1, p0, Lc8/KMn;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 128
    iput-object v1, p0, Lc8/KMn;->mOnNativeShotDownListener:Lc8/gNn;

    .line 138
    const-string/jumbo v0, "500000"

    iput-object v0, p0, Lc8/KMn;->positionFrequency:Ljava/lang/String;

    .line 457
    new-instance v0, Lc8/lMn;

    invoke-direct {v0, p0}, Lc8/lMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 468
    new-instance v0, Lc8/wMn;

    invoke-direct {v0, p0}, Lc8/wMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 480
    new-instance v0, Lc8/BMn;

    invoke-direct {v0, p0}, Lc8/BMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 494
    new-instance v0, Lc8/CMn;

    invoke-direct {v0, p0}, Lc8/CMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 505
    new-instance v0, Lc8/DMn;

    invoke-direct {v0, p0}, Lc8/DMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mPreparedListener:Lc8/mNn;

    .line 515
    new-instance v0, Lc8/EMn;

    invoke-direct {v0, p0}, Lc8/EMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 527
    new-instance v0, Lc8/FMn;

    invoke-direct {v0, p0}, Lc8/FMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 1464
    new-instance v0, Lc8/HMn;

    invoke-direct {v0, p0}, Lc8/HMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mADPlayListener:Lc8/RMn;

    .line 1477
    new-instance v0, Lc8/bMn;

    invoke-direct {v0, p0}, Lc8/bMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnPreLoadPlayListener:Lc8/lNn;

    .line 1484
    new-instance v0, Lc8/cMn;

    invoke-direct {v0, p0}, Lc8/cMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mMidADPlayListener:Lc8/eNn;

    .line 1502
    new-instance v0, Lc8/dMn;

    invoke-direct {v0, p0}, Lc8/dMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnNetworkErrorListener:Lc8/hNn;

    .line 1558
    new-instance v0, Lc8/eMn;

    invoke-direct {v0, p0}, Lc8/eMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnCurrentPositionUpdateListener:Lc8/WMn;

    .line 1567
    new-instance v0, Lc8/fMn;

    invoke-direct {v0, p0}, Lc8/fMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnLodingStatusListener:Lc8/cNn;

    .line 1581
    new-instance v0, Lc8/gMn;

    invoke-direct {v0, p0}, Lc8/gMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnLodingStatusListenerNoTrack:Lc8/dNn;

    .line 1613
    new-instance v0, Lc8/hMn;

    invoke-direct {v0, p0}, Lc8/hMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnADCountListener:Lc8/QMn;

    .line 1621
    new-instance v0, Lc8/iMn;

    invoke-direct {v0, p0}, Lc8/iMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnNetworkSpeedListener:Lc8/iNn;

    .line 1629
    new-instance v0, Lc8/jMn;

    invoke-direct {v0, p0}, Lc8/jMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnNetworkSpeedPerMinute:Lc8/jNn;

    .line 1636
    new-instance v0, Lc8/kMn;

    invoke-direct {v0, p0}, Lc8/kMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnBufferPercentUpdateListener:Lc8/SMn;

    .line 1643
    new-instance v0, Lc8/mMn;

    invoke-direct {v0, p0}, Lc8/mMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnIsInitialListener:Lc8/bNn;

    .line 1651
    new-instance v0, Lc8/nMn;

    invoke-direct {v0, p0}, Lc8/nMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnRealVideoStartListener:Lc8/pNn;

    .line 1659
    new-instance v0, Lc8/oMn;

    invoke-direct {v0, p0}, Lc8/oMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

    .line 1665
    new-instance v0, Lc8/pMn;

    invoke-direct {v0, p0}, Lc8/pMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnCdnSwitchListener:Lc8/TMn;

    .line 1672
    new-instance v0, Lc8/qMn;

    invoke-direct {v0, p0}, Lc8/qMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnVideoIndexUpdateListener:Lc8/vNn;

    .line 1680
    new-instance v0, Lc8/rMn;

    invoke-direct {v0, p0}, Lc8/rMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnVideoRealIpUpdateListener:Lc8/wNn;

    .line 1687
    new-instance v0, Lc8/sMn;

    invoke-direct {v0, p0}, Lc8/sMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnTimeoutListener:Lc8/sNn;

    .line 1700
    new-instance v0, Lc8/tMn;

    invoke-direct {v0, p0}, Lc8/tMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnHwDecodeErrorListener:Lc8/ZMn;

    .line 1713
    new-instance v0, Lc8/uMn;

    invoke-direct {v0, p0}, Lc8/uMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnConnectDelayListener:Lc8/UMn;

    .line 1725
    new-instance v0, Lc8/vMn;

    invoke-direct {v0, p0}, Lc8/vMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnHttp302DelayListener:Lc8/YMn;

    .line 1737
    new-instance v0, Lc8/xMn;

    invoke-direct {v0, p0}, Lc8/xMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnQualityChangeListener:Lc8/oNn;

    .line 1745
    new-instance v0, Lc8/yMn;

    invoke-direct {v0, p0}, Lc8/yMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnDropVideoFramesListener:Lc8/XMn;

    .line 1752
    new-instance v0, Lc8/zMn;

    invoke-direct {v0, p0}, Lc8/zMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnCpuUsageListener:Lc8/VMn;

    .line 1761
    new-instance v0, Lc8/AMn;

    invoke-direct {v0, p0}, Lc8/AMn;-><init>(Lc8/KMn;)V

    iput-object v0, p0, Lc8/KMn;->mOnInfoListener:Lc8/aNn;

    .line 1227
    invoke-direct {p0}, Lc8/KMn;->initPlayer()V

    .line 1228
    iput-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    .line 1229
    iput-object v1, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    .line 1230
    iput-object v1, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    .line 1231
    iput-boolean v2, p0, Lc8/KMn;->mInnerDisplaySet:Z

    .line 1232
    iput-object v1, p0, Lc8/KMn;->mPath:Ljava/lang/String;

    .line 1234
    iput v3, p0, Lc8/KMn;->mMPState:I

    iput v3, p0, Lc8/KMn;->mMPLastState:I

    .line 1235
    invoke-static {}, Lc8/KMn;->isUplayerSupported()Z

    .line 1240
    return-void
.end method

.method private _prepare()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 632
    :try_start_0
    iget v0, p0, Lc8/KMn;->mAudioStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 633
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    iget v1, p0, Lc8/KMn;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Lc8/xNn;->setAudioStreamType(I)V

    .line 638
    :goto_0
    iget-boolean v0, p0, Lc8/KMn;->mInnerDisplaySet:Z

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_2

    .line 640
    iget-object v0, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lc8/KMn;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 646
    :cond_0
    :goto_1
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/xNn;->setScreenOnWhilePlaying(Z)V

    .line 647
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/xNn;->setPreparedFlag(Z)V

    .line 648
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    :goto_2
    iput v4, p0, Lc8/KMn;->mMPState:I

    .line 654
    return-void

    .line 635
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/xNn;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 650
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/KMn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_2

    .line 641
    :cond_2
    :try_start_2
    iget-object v0, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lc8/KMn;->setTextureViewSurface(Landroid/view/Surface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private _prepareAsync()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 666
    :try_start_0
    iget v0, p0, Lc8/KMn;->mAudioStreamType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 667
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    iget v1, p0, Lc8/KMn;->mAudioStreamType:I

    invoke-virtual {v0, v1}, Lc8/xNn;->setAudioStreamType(I)V

    .line 672
    :goto_0
    iget-boolean v0, p0, Lc8/KMn;->mInnerDisplaySet:Z

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lc8/KMn;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 680
    :cond_0
    :goto_1
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/xNn;->setScreenOnWhilePlaying(Z)V

    .line 681
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc8/xNn;->setPreparedFlag(Z)V

    .line 682
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :cond_1
    :goto_2
    iput v4, p0, Lc8/KMn;->mMPState:I

    .line 689
    return-void

    .line 669
    :cond_2
    :try_start_1
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lc8/xNn;->setAudioStreamType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 684
    :catch_0
    move-exception v0

    iget-object v0, p0, Lc8/KMn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_1

    .line 685
    iget-object v0, p0, Lc8/KMn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3, v2}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto :goto_2

    .line 675
    :cond_3
    :try_start_2
    iget-object v0, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lc8/KMn;->setTextureViewSurface(Landroid/view/Surface;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private _release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 315
    const-string/jumbo v0, "MediaPlayerProxy release"

    invoke-static {v0}, Lc8/VOm;->playLog(Ljava/lang/String;)V

    .line 328
    iput-object v1, p0, Lc8/KMn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 329
    iput-object v1, p0, Lc8/KMn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 330
    iput-object v1, p0, Lc8/KMn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 331
    iput-object v1, p0, Lc8/KMn;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 332
    iput-object v1, p0, Lc8/KMn;->mPreparedListener:Lc8/mNn;

    .line 333
    iput-object v1, p0, Lc8/KMn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 334
    iput-object v1, p0, Lc8/KMn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 335
    iput-object v1, p0, Lc8/KMn;->mADPlayListener:Lc8/RMn;

    .line 336
    iput-object v1, p0, Lc8/KMn;->mMidADPlayListener:Lc8/eNn;

    .line 337
    iput-object v1, p0, Lc8/KMn;->mOnNetworkErrorListener:Lc8/hNn;

    .line 338
    iput-object v1, p0, Lc8/KMn;->mOnCurrentPositionUpdateListener:Lc8/WMn;

    .line 339
    iput-object v1, p0, Lc8/KMn;->mOnLodingStatusListener:Lc8/cNn;

    .line 340
    iput-object v1, p0, Lc8/KMn;->mOnADCountListener:Lc8/QMn;

    .line 341
    iput-object v1, p0, Lc8/KMn;->mOnNetworkSpeedListener:Lc8/iNn;

    .line 342
    iput-object v1, p0, Lc8/KMn;->mOnNetworkSpeedPerMinute:Lc8/jNn;

    .line 343
    iput-object v1, p0, Lc8/KMn;->mOnBufferPercentUpdateListener:Lc8/SMn;

    .line 344
    iput-object v1, p0, Lc8/KMn;->mOnIsInitialListener:Lc8/bNn;

    .line 345
    iput-object v1, p0, Lc8/KMn;->mOnRealVideoStartListener:Lc8/pNn;

    .line 346
    iput-object v1, p0, Lc8/KMn;->mOnVideoIndexUpdateListener:Lc8/vNn;

    .line 347
    iput-object v1, p0, Lc8/KMn;->mOnVideoRealIpUpdateListener:Lc8/wNn;

    .line 348
    iput-object v1, p0, Lc8/KMn;->mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

    .line 349
    iput-object v1, p0, Lc8/KMn;->mOnCdnSwitchListener:Lc8/TMn;

    .line 351
    iput-object v1, p0, Lc8/KMn;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 352
    iput-object v1, p0, Lc8/KMn;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 353
    iput-object v1, p0, Lc8/KMn;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 354
    iput-object v1, p0, Lc8/KMn;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 355
    iput-object v1, p0, Lc8/KMn;->mOuterPreparedListener:Lc8/mNn;

    .line 356
    iput-object v1, p0, Lc8/KMn;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 357
    iput-object v1, p0, Lc8/KMn;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 358
    iput-object v1, p0, Lc8/KMn;->mOnNativeShotDownListener:Lc8/gNn;

    .line 359
    iput-object v1, p0, Lc8/KMn;->mOnHwDecodeErrorListener:Lc8/ZMn;

    .line 360
    iput-object v1, p0, Lc8/KMn;->mOnConnectDelayListener:Lc8/UMn;

    .line 361
    iput-object v1, p0, Lc8/KMn;->mOnTimeoutListener:Lc8/sNn;

    .line 362
    iput-object v1, p0, Lc8/KMn;->mOnHttp302DelayListener:Lc8/YMn;

    .line 363
    iput-object v1, p0, Lc8/KMn;->mOnQualityChangeListener:Lc8/oNn;

    .line 364
    iput-object v1, p0, Lc8/KMn;->mOnDropVideoFramesListener:Lc8/XMn;

    .line 365
    iput-object v1, p0, Lc8/KMn;->mOnInfoListener:Lc8/aNn;

    .line 367
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnADPlayListener(Lc8/RMn;)V

    .line 372
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnPreLoadPlayListener(Lc8/lNn;)V

    .line 373
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnCurrentPositionUpdateListener(Lc8/WMn;)V

    .line 374
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnLodingStatusListener(Lc8/cNn;)V

    .line 375
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setmOnLodingStatusListenerNoTrack(Lc8/dNn;)V

    .line 376
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnADCountListener(Lc8/QMn;)V

    .line 377
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnNetworkSpeedListener(Lc8/iNn;)V

    .line 378
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnRealVideoStartListener(Lc8/pNn;)V

    .line 379
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnVideoIndexUpdateListener(Lc8/vNn;)V

    .line 380
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnVideoRealIpUpdateListener(Lc8/wNn;)V

    .line 381
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnVideoCurrentIndexUpdateListener(Lc8/uNn;)V

    .line 382
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnCdnSwitchListener(Lc8/TMn;)V

    .line 383
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setmOnTimeoutListener(Lc8/sNn;)V

    .line 384
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setOnHwDecodeErrorListener(Lc8/ZMn;)V

    .line 386
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->release()V

    .line 387
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    instance-of v0, v0, Lc8/WNn;

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Lc8/xNn;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 389
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->releaseSurface()V

    .line 391
    :cond_0
    monitor-enter p0

    .line 392
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    .line 393
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    :goto_0
    iput-object v1, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    .line 399
    iput-object v1, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    .line 400
    return-void

    .line 393
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 395
    :cond_1
    const-string/jumbo v0, "MediaPlayerProxy mInnerPlayer is null"

    invoke-static {v0}, Lc8/VOm;->playLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/KMn;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/KMn;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$102(Lc8/KMn;I)I
    .locals 0
    .param p0, "x0"    # Lc8/KMn;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lc8/KMn;->mMPState:I

    return p1
.end method

.method static synthetic access$200(Lc8/KMn;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/KMn;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$300(Lc8/KMn;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/KMn;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$400(Lc8/KMn;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/KMn;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$500(Lc8/KMn;)Lc8/mNn;
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/KMn;->mOuterPreparedListener:Lc8/mNn;

    return-object v0
.end method

.method static synthetic access$600(Lc8/KMn;)I
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget v0, p0, Lc8/KMn;->mMPLastState:I

    return v0
.end method

.method static synthetic access$700(Lc8/KMn;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/KMn;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$800(Lc8/KMn;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lc8/KMn;

    .prologue
    .line 41
    iget-object v0, p0, Lc8/KMn;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Landroid/view/SurfaceHolder;)Lc8/KMn;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 1245
    :try_start_0
    new-instance v0, Lc8/KMn;

    invoke-direct {v0}, Lc8/KMn;-><init>()V

    sput-object v0, Lc8/KMn;->sPlayer:Lc8/KMn;

    .line 1246
    if-eqz p2, :cond_0

    .line 1247
    sget-object v0, Lc8/KMn;->sPlayer:Lc8/KMn;

    invoke-virtual {v0, p2}, Lc8/KMn;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 1249
    :cond_0
    sget-object v0, Lc8/KMn;->sPlayer:Lc8/KMn;

    invoke-virtual {v0, p1}, Lc8/KMn;->setDataSource(Ljava/lang/String;)V

    .line 1250
    sget-object v0, Lc8/KMn;->sPlayer:Lc8/KMn;

    invoke-virtual {v0}, Lc8/KMn;->prepare()V

    .line 1252
    sget-object v0, Lc8/KMn;->sPlayer:Lc8/KMn;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1263
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1262
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private createInnerPlayer()V
    .locals 30

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 312
    :cond_0
    return-void

    .line 190
    :cond_1
    sget-object v26, Lc8/YLn;->TAG_TIME:Ljava/lang/String;

    .line 192
    new-instance v26, Lc8/QLn;

    invoke-direct/range {v26 .. v26}, Lc8/QLn;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    .line 194
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "player-core--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    sget-object v27, Lc8/nEj;->USER_AGENT:Ljava/lang/String;

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setHttpUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 206
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/KMn;->useHardwareDecode:Z

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setUseHardwareDecode(Z)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mPreparedListener:Lc8/mNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnPreparedListener(Lc8/mNn;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mADPlayListener:Lc8/RMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnADPlayListener(Lc8/RMn;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnPreLoadPlayListener:Lc8/lNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnPreLoadPlayListener(Lc8/lNn;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mMidADPlayListener:Lc8/eNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnMidADPlayListener(Lc8/eNn;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnNetworkErrorListener:Lc8/hNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnNetworkErrorListener(Lc8/hNn;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnCurrentPositionUpdateListener:Lc8/WMn;

    move-object/from16 v27, v0

    .line 219
    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnCurrentPositionUpdateListener(Lc8/WMn;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnLodingStatusListener:Lc8/cNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnLodingStatusListener(Lc8/cNn;)V

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnLodingStatusListenerNoTrack:Lc8/dNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setmOnLodingStatusListenerNoTrack(Lc8/dNn;)V

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnADCountListener:Lc8/QMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnADCountListener(Lc8/QMn;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnNetworkSpeedListener:Lc8/iNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnNetworkSpeedListener(Lc8/iNn;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnNetworkSpeedPerMinute:Lc8/jNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnNetworkSpeedPerMinute(Lc8/jNn;)V

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnBufferPercentUpdateListener:Lc8/SMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnBufferPercentUpdateListener(Lc8/SMn;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnIsInitialListener:Lc8/bNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnIsInitialListener(Lc8/bNn;)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnRealVideoStartListener:Lc8/pNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnRealVideoStartListener(Lc8/pNn;)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnVideoIndexUpdateListener:Lc8/vNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnVideoIndexUpdateListener(Lc8/vNn;)V

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnVideoCurrentIndexUpdateListener(Lc8/uNn;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnCdnSwitchListener:Lc8/TMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnCdnSwitchListener(Lc8/TMn;)V

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnVideoRealIpUpdateListener:Lc8/wNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnVideoRealIpUpdateListener(Lc8/wNn;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnTimeoutListener:Lc8/sNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setmOnTimeoutListener(Lc8/sNn;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnHwDecodeErrorListener:Lc8/ZMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnHwDecodeErrorListener(Lc8/ZMn;)V

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnConnectDelayListener:Lc8/UMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnConnectDelayListener(Lc8/UMn;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnHttp302DelayListener:Lc8/YMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnHttp302DelayListener(Lc8/YMn;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnQualityChangeListener:Lc8/oNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnQualityChangeListener(Lc8/oNn;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnDropVideoFramesListener:Lc8/XMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnDropVideoFramesListener(Lc8/XMn;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnInfoListener:Lc8/aNn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnInfoListener(Lc8/aNn;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mOnCpuUsageListener:Lc8/VMn;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lc8/xNn;->setOnCpuUsageListener(Lc8/VMn;)V

    .line 244
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "key_timeout"

    const-string/jumbo v29, "3,3"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 245
    .local v11, "key_timeout":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "cdn_timeout"

    const-string/jumbo v29, "3"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 246
    .local v7, "cdn_timeout":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "cdn_read_timeout"

    const-string/jumbo v29, "6"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 247
    .local v6, "cdn_read_timeout":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "netcache_size"

    const-string/jumbo v29, "32"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 248
    .local v15, "netcache_size":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "rtmpe_cdn_timeout"

    const-string/jumbo v29, "3"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 249
    .local v17, "rtmpe_cdn_timeout":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "rtmpe_cdn_read_timeout"

    const-string/jumbo v29, "6"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 251
    .local v16, "rtmpe_cdn_read_timeout":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "buffertime_before_play"

    const-string/jumbo v29, "3"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "buffertime_before_play":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "buffertime_playing"

    const-string/jumbo v29, "3"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, "buffertime_playing":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "zhangbei_k_ip"

    const-string/jumbo v29, ""

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 256
    .local v25, "zhangbei_k_ip":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "buffertime_min_high"

    const-string/jumbo v29, "10"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "buffertime_min_high":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "speed_ratio_to_adjust_high"

    const-string/jumbo v29, "100"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 260
    .local v21, "speed_ratio_to_adjust_high":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "key_timeoout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "cdn_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "cdn_read_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "netcache_size--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "rtmpe_cdn_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "rtmpe_cdn_read_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "buffertime_before_play"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "buffertime_playing"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "switch_multi_cdn"

    const-string/jumbo v29, "0"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 262
    .local v22, "switch_multi_cdn":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "switch_multi_task"

    const-string/jumbo v29, "0"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 263
    .local v23, "switch_multi_task":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "switch_multi_task_bitrate_rate"

    const-string/jumbo v29, "100"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 264
    .local v24, "switch_multi_task_bitrate_rate":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "memfree_rate"

    const-string/jumbo v29, "20"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, "memfree_rate":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "enable_rtmpe_via_netcache"

    const-string/jumbo v29, "1"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 266
    .local v18, "rtmpe_netcache":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "http_simple_downloader"

    const-string/jumbo v29, "1"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 267
    .local v19, "simple_downloader_http":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "rtmpe_simple_downloader"

    const-string/jumbo v29, "1"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 268
    .local v20, "simple_downloader_rtmpe":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "enable_cpu_monitor"

    const-string/jumbo v29, "0"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 269
    .local v9, "enable_cpumonitor":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "min_buffertime"

    const-string/jumbo v29, "3"

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 270
    .local v14, "min_buffertime":Ljava/lang/String;
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v26

    const-string/jumbo v27, "network_retry_config"

    const-string/jumbo v28, "ks_defaultip"

    const-string/jumbo v29, ""

    invoke-virtual/range {v26 .. v29}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 272
    .local v12, "ks_defaultip":Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "key_timeoout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "cdn_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "cdn_read_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "netcache_size--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "rtmpe_cdn_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "rtmpe_cdn_read_timeout--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "switch_multi_cdn--"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "switch_multi_task-"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "switch_multi_task_bitrate_rate"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "memfree_rate"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "enable_rtmpe_via_netcache"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "http_simple_downloader"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "rtmpe_simple_downloader"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "enable_cpu_monitor"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " min_buffertime"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "ks_defaultip"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "zhangbei_k_ip "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v11}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x2

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v7}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v15}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x5

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x14

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x15

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v5}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x26

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x1e

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x1f

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x20

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x21

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v13}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x22

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x23

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x24

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x25

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v9}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x16

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v14}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x26

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x17

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v4}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x18

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->positionFrequency:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 304
    sget-object v26, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "mPlayerTimeoutProperty"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mPlayerTimeoutProperty:Ljava/util/Map;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mPlayerTimeoutProperty:Ljava/util/Map;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v26, v0

    const/16 v27, 0x9

    const-string/jumbo v28, "1"

    invoke-virtual/range {v26 .. v28}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mPlayerTimeoutProperty:Ljava/util/Map;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 308
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object/from16 v28, v0

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v29

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 309
    sget-object v26, Lc8/YLn;->TAG_TIME:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "setproperty "

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v28, "--"

    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_1

    .line 197
    .end local v3    # "buffertime_before_play":Ljava/lang/String;
    .end local v4    # "buffertime_min_high":Ljava/lang/String;
    .end local v5    # "buffertime_playing":Ljava/lang/String;
    .end local v6    # "cdn_read_timeout":Ljava/lang/String;
    .end local v7    # "cdn_timeout":Ljava/lang/String;
    .end local v9    # "enable_cpumonitor":Ljava/lang/String;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v11    # "key_timeout":Ljava/lang/String;
    .end local v12    # "ks_defaultip":Ljava/lang/String;
    .end local v13    # "memfree_rate":Ljava/lang/String;
    .end local v14    # "min_buffertime":Ljava/lang/String;
    .end local v15    # "netcache_size":Ljava/lang/String;
    .end local v16    # "rtmpe_cdn_read_timeout":Ljava/lang/String;
    .end local v17    # "rtmpe_cdn_timeout":Ljava/lang/String;
    .end local v18    # "rtmpe_netcache":Ljava/lang/String;
    .end local v19    # "simple_downloader_http":Ljava/lang/String;
    .end local v20    # "simple_downloader_rtmpe":Ljava/lang/String;
    .end local v21    # "speed_ratio_to_adjust_high":Ljava/lang/String;
    .end local v22    # "switch_multi_cdn":Ljava/lang/String;
    .end local v23    # "switch_multi_task":Ljava/lang/String;
    .end local v24    # "switch_multi_task_bitrate_rate":Ljava/lang/String;
    .end local v25    # "zhangbei_k_ip":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 198
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v26, "MediaPlayerProxy"

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 199
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v8

    .line 200
    .local v8, "e":Ljava/lang/SecurityException;
    const-string/jumbo v26, "MediaPlayerProxy"

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 201
    .end local v8    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v8

    .line 202
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v26, "MediaPlayerProxy"

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 203
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v8

    .line 204
    .local v8, "e":Ljava/io/IOException;
    const-string/jumbo v26, "MediaPlayerProxy"

    move-object/from16 v0, v26

    invoke-static {v0, v8}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private static getNumCores()I
    .locals 4

    .prologue
    .line 1440
    sget v2, Lc8/KMn;->mNumCores:I

    if-eqz v2, :cond_0

    .line 1441
    sget v2, Lc8/KMn;->mNumCores:I

    .line 1461
    .local v0, "dir":Ljava/io/File;
    :goto_0
    return v2

    .line 1444
    .end local v0    # "dir":Ljava/io/File;
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/sys/devices/system/cpu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1446
    .restart local v0    # "dir":Ljava/io/File;
    new-instance v2, Lc8/GMn;

    invoke-direct {v2}, Lc8/GMn;-><init>()V

    invoke-virtual {v0, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1456
    .local v1, "files":[Ljava/io/File;
    array-length v2, v1

    sput v2, Lc8/KMn;->mNumCores:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    .end local v1    # "files":[Ljava/io/File;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NumCores="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lc8/KMn;->mNumCores:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1461
    sget v2, Lc8/KMn;->mNumCores:I

    goto :goto_0

    .line 1458
    :catch_0
    move-exception v2

    const/4 v2, 0x1

    sput v2, Lc8/KMn;->mNumCores:I

    goto :goto_1
.end method

.method private getSdAvailableSize()J
    .locals 8

    .prologue
    .line 1215
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 1216
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v5, "statFs":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 1218
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1219
    .local v0, "availableBlocks":J
    mul-long v6, v2, v0

    return-wide v6
.end method

.method private static getTotalRAM()D
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    .line 1414
    sget-wide v8, Lc8/KMn;->mTotalRAM:D

    const-wide/16 v10, 0x0

    cmpl-double v7, v8, v10

    if-eqz v7, :cond_0

    .line 1415
    sget-wide v8, Lc8/KMn;->mTotalRAM:D

    .line 1436
    .local v1, "format":Ljava/text/DecimalFormat;
    .local v5, "reader":Ljava/io/BufferedReader;
    :goto_0
    return-wide v8

    .line 1418
    .end local v1    # "format":Ljava/text/DecimalFormat;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/proc/meminfo"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1419
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 1420
    .local v2, "load":Ljava/lang/String;
    const-string/jumbo v7, "(\\d+)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1421
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1422
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string/jumbo v6, ""

    .line 1423
    .local v6, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1424
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1426
    :cond_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 1427
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 1429
    sput-wide v8, Lc8/KMn;->mTotalRAM:D

    const-wide v10, 0x411f400000000000L    # 512000.0

    add-double/2addr v8, v10

    sput-wide v8, Lc8/KMn;->mTotalRAM:D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    .end local v2    # "load":Ljava/lang/String;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v6    # "value":Ljava/lang/String;
    :goto_2
    new-instance v1, Ljava/text/DecimalFormat;

    const-string/jumbo v7, "0.00"

    invoke-direct {v1, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1435
    .restart local v1    # "format":Ljava/text/DecimalFormat;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "total RAM="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-wide v8, Lc8/KMn;->mTotalRAM:D

    div-double/2addr v8, v12

    div-double/2addr v8, v12

    invoke-virtual {v1, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "GB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1436
    sget-wide v8, Lc8/KMn;->mTotalRAM:D

    goto :goto_0

    .line 1430
    .end local v1    # "format":Ljava/text/DecimalFormat;
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private initPlayer()V
    .locals 1

    .prologue
    .line 1186
    sget-boolean v0, Lc8/KMn;->initialized:Z

    if-eqz v0, :cond_0

    .line 1212
    :goto_0
    return-void

    .line 1188
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lc8/KMn;->initialized:Z

    goto :goto_0
.end method

.method public static is3GRAM()Z
    .locals 4

    .prologue
    .line 1294
    invoke-static {}, Lc8/KMn;->getTotalRAM()D

    move-result-wide v0

    .line 1295
    .local v0, "ram":D
    const-wide/high16 v2, 0x4144000000000000L    # 2621440.0

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/high16 v2, 0x414c000000000000L    # 3670016.0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static is4GRAM()Z
    .locals 4

    .prologue
    .line 1299
    invoke-static {}, Lc8/KMn;->getTotalRAM()D

    move-result-wide v0

    const-wide/high16 v2, 0x414c000000000000L    # 3670016.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHD2Supported()Z
    .locals 4

    .prologue
    .line 1267
    sget-object v0, Lc8/KMn;->HD2_BLACK_LIST:Ljava/util/HashSet;

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lc8/KMn;->getTotalRAM()D

    move-result-wide v0

    sget-wide v2, Lc8/KMn;->HD2_RAM_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-gez v0, :cond_0

    .line 1268
    invoke-static {}, Lc8/KMn;->getNumCores()I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lc8/KMn;->HD2_CORES_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHD3Supported()Z
    .locals 4

    .prologue
    .line 1286
    invoke-static {}, Lc8/KMn;->getTotalRAM()D

    move-result-wide v0

    sget-wide v2, Lc8/KMn;->HD3_RAM_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUplayerSupported()Z
    .locals 16

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1328
    sget-boolean v11, Lc8/KMn;->isCpuinfoReaded:Z

    if-eqz v11, :cond_0

    .line 1329
    sget-boolean v10, Lc8/KMn;->isUplayerSupported:Z

    .line 1410
    .local v3, "hasNeon":Z
    :goto_0
    return v10

    .line 1330
    .end local v3    # "hasNeon":Z
    :cond_0
    sput-boolean v10, Lc8/KMn;->isCpuinfoReaded:Z

    .line 1332
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "CPU_ABI: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1333
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "CPU_ABI2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1338
    const/4 v3, 0x0

    .line 1339
    .restart local v3    # "hasNeon":Z
    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "x86"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1341
    sput-boolean v10, Lc8/KMn;->isUplayerSupported:Z

    goto :goto_0

    .line 1343
    :cond_1
    const/4 v5, 0x0

    .line 1344
    .local v5, "isArmv7a":Z
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_4

    .line 1345
    sget-object v12, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v13, v12

    move v11, v9

    :goto_1
    if-ge v11, v13, :cond_2

    aget-object v7, v12, v11

    .line 1346
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "armeabi-v7a"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1347
    const/4 v5, 0x1

    .line 1355
    .end local v7    # "str":Ljava/lang/String;
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 1359
    .local v2, "freq":I
    :try_start_0
    sget-object v11, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 1364
    .local v6, "sdkVersion":I
    :goto_3
    const/16 v11, 0x8

    if-ge v6, v11, :cond_5

    .line 1365
    const-string/jumbo v10, "MediaPlayerProxy"

    const-string/jumbo v11, "Android version is less than 2.2, not supported by Uplayer!!"

    invoke-static {v10, v11}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v10, v9

    .line 1367
    goto :goto_0

    .line 1345
    .end local v2    # "freq":I
    .end local v6    # "sdkVersion":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1352
    .end local v7    # "str":Ljava/lang/String;
    :cond_4
    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "armeabi-v7a"

    .line 1353
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_2

    .line 1361
    .restart local v2    # "freq":I
    :catch_0
    move-exception v11

    const/4 v6, 0x0

    .restart local v6    # "sdkVersion":I
    goto :goto_3

    .line 1370
    :cond_5
    const-string/jumbo v0, ""

    .line 1372
    .local v0, "cpuInfo":Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    const-string/jumbo v12, "/proc/cpuinfo"

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1374
    .local v1, "cpuinfoReader":Ljava/io/BufferedReader;
    :cond_6
    :goto_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "strLine":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 1375
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1376
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    .line 1378
    const-string/jumbo v11, "FEATURES"

    invoke-virtual {v8, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1379
    const/16 v11, 0x3a

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1380
    .local v4, "idx":I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_6

    .line 1381
    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1382
    const-string/jumbo v11, "NEON"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string/jumbo v11, "ASIMD"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    move v3, v10

    :goto_5
    goto :goto_4

    :cond_8
    move v3, v9

    goto :goto_5

    .line 1387
    .end local v4    # "idx":I
    :cond_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 1390
    new-instance v1, Ljava/io/BufferedReader;

    .end local v1    # "cpuinfoReader":Ljava/io/BufferedReader;
    new-instance v11, Ljava/io/FileReader;

    const-string/jumbo v12, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-direct {v11, v12}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1392
    .restart local v1    # "cpuinfoReader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1393
    if-eqz v8, :cond_a

    .line 1394
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1395
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1396
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "cpu0 max frequency: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1399
    :cond_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1406
    .end local v1    # "cpuinfoReader":Ljava/io/BufferedReader;
    .end local v8    # "strLine":Ljava/lang/String;
    :goto_6
    add-int/lit16 v2, v2, 0x3e7

    .line 1407
    div-int/lit16 v2, v2, 0x3e8

    .line 1408
    sput v2, Lc8/KMn;->freq:I

    .line 1409
    if-eqz v5, :cond_b

    if-eqz v3, :cond_b

    .line 1410
    :goto_7
    sput-boolean v10, Lc8/KMn;->isUplayerSupported:Z

    goto/16 :goto_0

    :cond_b
    move v10, v9

    .line 1409
    goto :goto_7

    :catch_1
    move-exception v11

    goto :goto_6
.end method

.method public static setScreenHeight(I)V
    .locals 1
    .param p0, "height"    # I

    .prologue
    .line 1277
    sget v0, Lc8/KMn;->mScreenHeight:I

    if-nez v0, :cond_0

    .line 1278
    sput p0, Lc8/KMn;->mScreenHeight:I

    .line 1279
    :cond_0
    return-void
.end method

.method public static setScreenWidth(I)V
    .locals 1
    .param p0, "width"    # I

    .prologue
    .line 1272
    sget v0, Lc8/KMn;->mScreenWidth:I

    if-nez v0, :cond_0

    .line 1273
    sput p0, Lc8/KMn;->mScreenWidth:I

    .line 1274
    :cond_0
    return-void
.end method

.method public static supportH265()Z
    .locals 1

    .prologue
    .line 1290
    invoke-static {}, Lc8/KMn;->isHD2Supported()Z

    move-result v0

    return v0
.end method

.method public static supportH265ForHlsHD2()Z
    .locals 4

    .prologue
    .line 1309
    sget v0, Lc8/KMn;->freq:I

    int-to-double v0, v0

    sget-wide v2, Lc8/KMn;->HD2_H265_HLS_FREQUENCY_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 1310
    invoke-static {}, Lc8/KMn;->getNumCores()I

    move-result v0

    int-to-double v0, v0

    sget-wide v2, Lc8/KMn;->HD2_H265_HLS_CORES_REQUIREMENT:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyState(I)V
    .locals 7
    .param p1, "mCurrentAction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 403
    const/4 v0, 0x0

    .line 404
    .local v0, "illegal":Z
    sparse-switch p1, :sswitch_data_0

    .line 452
    :goto_0
    :sswitch_0
    if-eqz v0, :cond_10

    .line 453
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 406
    :sswitch_1
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-ne v3, v5, :cond_0

    move v0, v1

    .line 407
    :goto_1
    goto :goto_0

    :cond_0
    move v0, v2

    .line 406
    goto :goto_1

    .line 409
    :sswitch_2
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v1, :cond_1

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v4, :cond_1

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lc8/KMn;->mMPState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_1
    move v0, v1

    .line 410
    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    .line 409
    goto :goto_2

    .line 413
    :sswitch_3
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-ne v3, v5, :cond_3

    move v0, v1

    .line 414
    :goto_3
    goto :goto_0

    :cond_3
    move v0, v2

    .line 413
    goto :goto_3

    .line 416
    :sswitch_4
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-ne v3, v5, :cond_4

    move v0, v1

    .line 417
    :goto_4
    goto :goto_0

    :cond_4
    move v0, v2

    .line 416
    goto :goto_4

    .line 419
    :sswitch_5
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v1, :cond_5

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v6, :cond_5

    iget v3, p0, Lc8/KMn;->mMPState:I

    const/16 v4, 0x9

    if-eq v3, v4, :cond_5

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lc8/KMn;->mMPState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    :cond_5
    move v0, v1

    .line 425
    :goto_5
    goto :goto_0

    :cond_6
    move v0, v2

    .line 419
    goto :goto_5

    .line 428
    :sswitch_6
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v4, :cond_7

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v6, :cond_7

    move v0, v1

    .line 429
    :goto_6
    goto :goto_0

    :cond_7
    move v0, v2

    .line 428
    goto :goto_6

    .line 434
    :sswitch_7
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v1, :cond_8

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v4, :cond_8

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v6, :cond_8

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-ne v3, v5, :cond_9

    :cond_8
    move v0, v1

    .line 436
    :goto_7
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 434
    goto :goto_7

    .line 438
    :sswitch_8
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-ne v3, v5, :cond_a

    move v0, v1

    .line 439
    :goto_8
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 438
    goto :goto_8

    .line 441
    :sswitch_9
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v1, :cond_b

    move v0, v1

    .line 442
    :goto_9
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 441
    goto :goto_9

    .line 444
    :sswitch_a
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v1, :cond_c

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v4, :cond_c

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v6, :cond_c

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-ne v3, v5, :cond_d

    :cond_c
    move v0, v1

    .line 446
    :goto_a
    goto/16 :goto_0

    :cond_d
    move v0, v2

    .line 444
    goto :goto_a

    .line 448
    :sswitch_b
    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v1, :cond_e

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-eq v3, v4, :cond_e

    iget v3, p0, Lc8/KMn;->mMPState:I

    if-ne v3, v5, :cond_f

    :cond_e
    move v0, v1

    :goto_b
    goto/16 :goto_0

    :cond_f
    move v0, v2

    goto :goto_b

    .line 455
    :cond_10
    return-void

    .line 404
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_1
        0x23 -> :sswitch_2
        0x28 -> :sswitch_3
        0x2d -> :sswitch_3
        0x32 -> :sswitch_4
        0x37 -> :sswitch_5
        0x3c -> :sswitch_6
        0x41 -> :sswitch_6
        0x46 -> :sswitch_0
        0x4b -> :sswitch_0
        0x50 -> :sswitch_7
        0x55 -> :sswitch_8
        0x5a -> :sswitch_9
        0x5f -> :sswitch_a
        0x64 -> :sswitch_b
    .end sparse-switch
.end method


# virtual methods
.method public changeVideoSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-nez v0, :cond_0

    .line 588
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->changeVideoSize(II)V

    goto :goto_0
.end method

.method public closePreloadDataSource(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1167
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->closePreloadDataSource(I)V

    .line 1170
    :cond_0
    return-void
.end method

.method public cropTheImage(ILjava/lang/String;IIII)I
    .locals 8
    .param p1, "mode"    # I
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "left"    # I
    .param p6, "top"    # I

    .prologue
    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInnerPlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 973
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getVideoWidth()I

    move-result p3

    .line 974
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getVideoHeight()I

    move-result p4

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInnerPlayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u771f\u6b63\u4f20\u5165\u7684\u89c6\u9891\u5bbd\u5ea6\u3001\u9ad8\u5ea6\u3001\u622a\u5c4f\u56fe\u7247\u5b58\u50a8\u8def\u5f84\uff1avideoWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",mCropFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lc8/xNn;->cropOneFrame(ILjava/lang/String;IIII)I

    move-result v7

    .line 978
    .local v7, "result":I
    return v7
.end method

.method public enableVoice(I)V
    .locals 1
    .param p1, "enable"    # I

    .prologue
    .line 1030
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->enableVoice(I)V

    .line 1032
    :cond_0
    return-void
.end method

.method public generateCacheFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "file_id"    # Ljava/lang/String;
    .param p2, "target_path"    # Ljava/lang/String;

    .prologue
    .line 1173
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1174
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->generateCacheFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1175
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getAvgKeyFrameSize()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 998
    const/16 v0, 0x6e

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 999
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1000
    const-wide/16 v0, 0x0

    .line 1002
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getAvgKeyFrameSize()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getAvgVideoBitrate()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1007
    const/16 v0, 0x73

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 1008
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1009
    const-wide/16 v0, 0x0

    .line 1011
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getAvgVideoBitrate()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 547
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lc8/KMn;->verifyState(I)V

    .line 548
    iget v1, p0, Lc8/KMn;->mMPState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v0

    .line 551
    :cond_1
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v1, :cond_0

    .line 553
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getDownloadSpeed([I)I
    .locals 1
    .param p1, "speed"    # [I

    .prologue
    .line 1953
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1954
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->GetDownloadSpeed([I)I

    move-result v0

    .line 1956
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 558
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 559
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getDuration()I

    move-result v0

    .line 562
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPlayerTimeoutProperty()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1908
    iget-object v0, p0, Lc8/KMn;->mPlayerTimeoutProperty:Ljava/util/Map;

    return-object v0
.end method

.method public getVideoCode()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 989
    const/16 v0, 0x69

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 990
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 991
    const/4 v0, 0x0

    .line 993
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getVideoCode()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoFrameRate()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1016
    const/16 v0, 0x78

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 1017
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1018
    const-wide/16 v0, 0x0

    .line 1020
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getVideoFrameRate()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 600
    const/16 v0, 0x28

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 601
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 602
    const/4 v0, 0x0

    .line 604
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getVideoHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoOrientation()I
    .locals 1

    .prologue
    .line 579
    iget v0, p0, Lc8/KMn;->mCurrentOrientation:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 591
    const/16 v0, 0x2d

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 592
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 593
    const/4 v0, 0x0

    .line 595
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getVideoWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getVoiceStatus()I
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->getVoiceStatus()I

    move-result v0

    .line 1037
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isLooping()Z
    .locals 2

    .prologue
    .line 540
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 541
    const/4 v0, 0x0

    .line 543
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->isLooping()Z

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 609
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-nez v1, :cond_0

    .line 616
    :goto_0
    return v0

    .line 611
    :cond_0
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    monitor-enter v1

    .line 612
    const/16 v2, 0x32

    :try_start_0
    invoke-direct {p0, v2}, Lc8/KMn;->verifyState(I)V

    .line 613
    iget v2, p0, Lc8/KMn;->mMPState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 614
    monitor-exit v1

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 616
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-nez v2, :cond_2

    :goto_1
    monitor-exit v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->isPlaying()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_1
.end method

.method public isReleased()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lc8/KMn;->isReleased:Z

    return v0
.end method

.method public isUsingUMediaplayer()Z
    .locals 1

    .prologue
    .line 1879
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_1

    .line 1880
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    instance-of v0, v0, Lc8/WNn;

    if-nez v0, :cond_0

    .line 1881
    const/4 v0, 0x1

    .line 1885
    :goto_0
    return v0

    .line 1883
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1885
    :cond_1
    invoke-static {}, Lc8/KMn;->isUplayerSupported()Z

    move-result v0

    goto :goto_0
.end method

.method public panGuesture(IFF)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1053
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2, p3}, Lc8/xNn;->panGuesture(IFF)V

    .line 1056
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 623
    const/16 v0, 0x37

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 625
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->pause()V

    .line 626
    const/4 v0, 0x6

    iput v0, p0, Lc8/KMn;->mMPState:I

    iput v0, p0, Lc8/KMn;->mMPLastState:I

    .line 627
    return-void
.end method

.method public pinchForZoom(IF)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "ratio"    # F

    .prologue
    .line 1059
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->pinchForZoom(IF)V

    .line 1062
    :cond_0
    return-void
.end method

.method public playBackupAD(Ljava/lang/String;I)V
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
    .line 875
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->playBackupAD(Ljava/lang/String;I)I

    .line 878
    :cond_0
    return-void
.end method

.method public playMidADConfirm(II)V
    .locals 1
    .param p1, "videoTime"    # I
    .param p2, "adTime"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 888
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    .line 889
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->playMidADConfirm(II)V

    .line 892
    :cond_0
    return-void
.end method

.method public preloadDataSource(Ljava/lang/String;I)I
    .locals 2
    .param p1, "playlist"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 1152
    const/4 v0, -0x1

    .line 1153
    .local v0, "res":I
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v1, :cond_0

    .line 1154
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v1, p1, p2}, Lc8/xNn;->preloadDataSource(Ljava/lang/String;I)I

    move-result v0

    .line 1156
    :cond_0
    return v0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 658
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 660
    invoke-direct {p0}, Lc8/KMn;->_prepare()V

    .line 661
    return-void
.end method

.method public prepareAsync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 693
    const/16 v0, 0x41

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 695
    invoke-direct {p0}, Lc8/KMn;->_prepareAsync()V

    .line 696
    return-void
.end method

.method public prepareMidAD()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 869
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->prepareMidAD()V

    .line 872
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KMn;->isReleased:Z

    .line 712
    invoke-direct {p0}, Lc8/KMn;->_release()V

    .line 713
    const/16 v0, 0x8

    iput v0, p0, Lc8/KMn;->mMPState:I

    iput v0, p0, Lc8/KMn;->mMPLastState:I

    .line 714
    iget-object v0, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 717
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lc8/KMn;->sPlayer:Lc8/KMn;

    .line 718
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 722
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->reset()V

    .line 724
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lc8/KMn;->mMPState:I

    iput v0, p0, Lc8/KMn;->mMPLastState:I

    .line 725
    return-void
.end method

.method public resetPanoramic()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->resetPanoramic()V

    .line 1074
    :cond_0
    return-void
.end method

.method public screenShotMultiFramesBegin(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
    .locals 12
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
    .line 1123
    sget-object v1, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "------> screenShotOneFrame outPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , logoPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1124
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v1, :cond_0

    .line 1125
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lc8/xNn;->screenShotMultiFramesBegin(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I

    move-result v1

    .line 1128
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public screenShotMultiFramesEnd()I
    .locals 1

    .prologue
    .line 1131
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    .line 1132
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->screenShotMultiFramesEnd()I

    move-result v0

    .line 1135
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I
    .locals 12
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
    .line 1113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenShotOneFrame outPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , logoPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1114
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lc8/xNn;->screenShotOneFrame(Landroid/content/res/AssetManager;Ljava/lang/String;IIILjava/lang/String;IIII)I

    move-result v1

    .line 1118
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 729
    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 734
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->seekTo(I)V

    .line 735
    iget v0, p0, Lc8/KMn;->mMPState:I

    iput v0, p0, Lc8/KMn;->mMPLastState:I

    .line 737
    return-void
.end method

.method public setAudioEnhance(Z)V
    .locals 1
    .param p1, "enhance"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setAudioEnhance(Z)V

    .line 985
    :cond_0
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 2
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 740
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 741
    iget v0, p0, Lc8/KMn;->mMPState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 742
    iput p1, p0, Lc8/KMn;->mAudioStreamType:I

    .line 746
    :goto_0
    return-void

    .line 744
    :cond_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setAudioStreamType(I)V

    goto :goto_0
.end method

.method public setBinocularMode(Z)V
    .locals 1
    .param p1, "sw"    # Z

    .prologue
    .line 1139
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1140
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    .line 1141
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setBinocularMode(Z)V

    .line 1143
    :cond_0
    return-void
.end method

.method public setDRM(Z)V
    .locals 0
    .param p1, "isDRM"    # Z

    .prologue
    .line 1916
    iput-boolean p1, p0, Lc8/KMn;->isDRM:Z

    .line 1917
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xa

    const/16 v5, 0x9

    const/16 v2, 0x8

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 783
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 785
    iput-object p1, p0, Lc8/KMn;->mPath:Ljava/lang/String;

    .line 786
    invoke-direct {p0}, Lc8/KMn;->createInnerPlayer()V

    .line 787
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    instance-of v0, v0, Lc8/WNn;

    if-nez v0, :cond_f

    .line 788
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v3

    .line 789
    .local v4, "sysVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 790
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v7

    .line 816
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/nEj;->PRE_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/nEj;->mContext:Landroid/content/Context;

    .line 817
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, p0, Lc8/KMn;->isHLS:Z

    if-eqz v1, :cond_e

    :goto_1
    iget-boolean v5, p0, Lc8/KMn;->isHLS:Z

    move-object v1, p1

    .line 816
    invoke-virtual/range {v0 .. v5}, Lc8/xNn;->setDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 822
    .end local v4    # "sysVersion":I
    :goto_2
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useHardwareDecode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/KMn;->useHardwareDecode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isHLS:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/KMn;->isHLS:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    iput v6, p0, Lc8/KMn;->mMPState:I

    iput v6, p0, Lc8/KMn;->mMPLastState:I

    .line 825
    return-void

    .line 791
    .restart local v4    # "sysVersion":I
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    .line 792
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v5

    goto :goto_0

    .line 793
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_4

    .line 795
    :cond_3
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v2

    goto :goto_0

    .line 796
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    .line 797
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x7

    aget v4, v0, v1

    goto :goto_0

    .line 798
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 799
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x6

    aget v4, v0, v1

    goto/16 :goto_0

    .line 800
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_7

    .line 801
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x5

    aget v4, v0, v1

    goto/16 :goto_0

    .line 802
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_9

    .line 804
    :cond_8
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x4

    aget v4, v0, v1

    goto/16 :goto_0

    .line 805
    :cond_9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    .line 808
    :cond_a
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x3

    aget v4, v0, v1

    goto/16 :goto_0

    .line 809
    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v7, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_d

    .line 811
    :cond_c
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v6

    goto/16 :goto_0

    .line 812
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_0

    .line 813
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x1

    aget v4, v0, v1

    goto/16 :goto_0

    .line 817
    :cond_e
    iget-boolean v3, p0, Lc8/KMn;->useHardwareDecode:Z

    goto/16 :goto_1

    .line 821
    .end local v4    # "sysVersion":I
    :cond_f
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    iget-object v1, p0, Lc8/KMn;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/xNn;->setDataSource(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 749
    iput-object p1, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    .line 750
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    iget-object v1, p0, Lc8/KMn;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lc8/xNn;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KMn;->mInnerDisplaySet:Z

    .line 762
    :cond_0
    return-void
.end method

.method public setEnhanceMode(ZFF)V
    .locals 2
    .param p1, "isEnhance"    # Z
    .param p2, "percent"    # F
    .param p3, "ratio"    # F

    .prologue
    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnhanceMode isEnhance :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / percent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " / ratio : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 958
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2, p3}, Lc8/xNn;->setEnhanceMode(ZFF)V

    .line 961
    :cond_0
    return-void
.end method

.method public setGyroscope(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .prologue
    .line 1047
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc8/xNn;->setGyroscope(FFFF)V

    .line 1050
    :cond_0
    return-void
.end method

.method public setGyroscopeActive(Z)V
    .locals 1
    .param p1, "isOpen"    # Z

    .prologue
    .line 1041
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1042
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setGyroscopeActive(Z)V

    .line 1044
    :cond_0
    return-void
.end method

.method public setHLS(Z)V
    .locals 0
    .param p1, "isHLS"    # Z

    .prologue
    .line 1889
    iput-boolean p1, p0, Lc8/KMn;->isHLS:Z

    .line 1890
    return-void
.end method

.method public setHardwareDecode(Z)V
    .locals 0
    .param p1, "useHardwareDecode"    # Z

    .prologue
    .line 1893
    iput-boolean p1, p0, Lc8/KMn;->useHardwareDecode:Z

    .line 1894
    return-void
.end method

.method public setHttpUserAgent(Ljava/lang/String;)V
    .locals 1
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
    .line 568
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setHttpUserAgent(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public setInterfaceOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1065
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setInterfaceOrientation(I)V

    .line 1068
    :cond_0
    return-void
.end method

.method public setMidADDataSource(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x15

    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 829
    iput-object p1, p0, Lc8/KMn;->mPath:Ljava/lang/String;

    .line 830
    invoke-direct {p0}, Lc8/KMn;->createInnerPlayer()V

    .line 831
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_1

    .line 832
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v3

    .line 833
    .local v4, "sysVersion":I
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_2

    .line 834
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v6

    .line 859
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/nEj;->PRE_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lc8/nEj;->mContext:Landroid/content/Context;

    .line 863
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/lib/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, p0, Lc8/KMn;->isHLS:Z

    if-eqz v1, :cond_f

    :goto_1
    iget-boolean v5, p0, Lc8/KMn;->isHLS:Z

    move-object v1, p1

    .line 859
    invoke-virtual/range {v0 .. v5}, Lc8/xNn;->setMidADDataSource(Ljava/lang/String;Ljava/lang/String;ZIZ)V

    .line 866
    .end local v4    # "sysVersion":I
    :cond_1
    return-void

    .line 835
    .restart local v4    # "sysVersion":I
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_3

    .line 836
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v5

    goto :goto_0

    .line 837
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 839
    :cond_4
    sget-object v0, Lc8/KMn;->Versions:[I

    aget v4, v0, v2

    goto :goto_0

    .line 840
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_6

    .line 841
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x7

    aget v4, v0, v1

    goto :goto_0

    .line 842
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_7

    .line 843
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x6

    aget v4, v0, v1

    goto :goto_0

    .line 844
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_8

    .line 845
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x5

    aget v4, v0, v1

    goto :goto_0

    .line 846
    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-eq v0, v1, :cond_9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_a

    .line 848
    :cond_9
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x4

    aget v4, v0, v1

    goto/16 :goto_0

    .line 849
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_c

    .line 852
    :cond_b
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x3

    aget v4, v0, v1

    goto/16 :goto_0

    .line 853
    :cond_c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v0, v6, :cond_d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v5, :cond_e

    .line 855
    :cond_d
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x2

    aget v4, v0, v1

    goto/16 :goto_0

    .line 856
    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v2, :cond_0

    .line 857
    sget-object v0, Lc8/KMn;->Versions:[I

    const/4 v1, 0x1

    aget v4, v0, v1

    goto/16 :goto_0

    .line 863
    :cond_f
    iget-boolean v3, p0, Lc8/KMn;->useHardwareDecode:Z

    goto/16 :goto_1
.end method

.method public setNightMode(FF)V
    .locals 1
    .param p1, "lumRatio"    # F
    .param p2, "colorRatio"    # F

    .prologue
    .line 964
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->setNightMode(FF)V

    .line 967
    :cond_0
    return-void
.end method

.method public setOnADCountListener(Lc8/QMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/QMn;

    .prologue
    .line 1797
    iput-object p1, p0, Lc8/KMn;->mOnADCountListener:Lc8/QMn;

    .line 1798
    return-void
.end method

.method public setOnADPlayListener(Lc8/RMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/RMn;

    .prologue
    .line 1519
    iput-object p1, p0, Lc8/KMn;->mADPlayListener:Lc8/RMn;

    .line 1520
    return-void
.end method

.method public setOnBufferPercentUpdateListener(Lc8/SMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/SMn;

    .prologue
    .line 1814
    iput-object p1, p0, Lc8/KMn;->mOnBufferPercentUpdateListener:Lc8/SMn;

    .line 1815
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 923
    iput-object p1, p0, Lc8/KMn;->mOuterBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 924
    return-void
.end method

.method public setOnCdnSwitchListener(Lc8/TMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/TMn;

    .prologue
    .line 1850
    iput-object p1, p0, Lc8/KMn;->mOnCdnSwitchListener:Lc8/TMn;

    .line 1851
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 927
    iput-object p1, p0, Lc8/KMn;->mOuterCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 928
    return-void
.end method

.method public setOnConnectDelayListener(Lc8/UMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/UMn;

    .prologue
    .line 1871
    iput-object p1, p0, Lc8/KMn;->mOnConnectDelayListener:Lc8/UMn;

    .line 1872
    return-void
.end method

.method public setOnCpuUsageListener(Lc8/VMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/VMn;

    .prologue
    .line 1787
    iput-object p1, p0, Lc8/KMn;->mOnCpuUsageListener:Lc8/VMn;

    .line 1788
    return-void
.end method

.method public setOnCurrentPositionUpdateListener(Lc8/WMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/WMn;

    .prologue
    .line 1552
    iput-object p1, p0, Lc8/KMn;->mOnCurrentPositionUpdateListener:Lc8/WMn;

    .line 1553
    return-void
.end method

.method public setOnDropVideoFramesListener(Lc8/XMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/XMn;

    .prologue
    .line 1779
    iput-object p1, p0, Lc8/KMn;->mOnDropVideoFramesListener:Lc8/XMn;

    .line 1780
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 931
    iput-object p1, p0, Lc8/KMn;->mOuterErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 932
    return-void
.end method

.method public setOnHttp302DelayListener(Lc8/YMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/YMn;

    .prologue
    .line 1875
    iput-object p1, p0, Lc8/KMn;->mOnHttp302DelayListener:Lc8/YMn;

    .line 1876
    return-void
.end method

.method public setOnHwDecodeErrorListener(Lc8/ZMn;)V
    .locals 0
    .param p1, "listener"    # Lc8/ZMn;

    .prologue
    .line 1867
    iput-object p1, p0, Lc8/KMn;->mOnHwDecodeErrorListener:Lc8/ZMn;

    .line 1868
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 935
    iput-object p1, p0, Lc8/KMn;->mOuterInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 936
    return-void
.end method

.method public setOnInfoListener(Lc8/aNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/aNn;

    .prologue
    .line 1783
    iput-object p1, p0, Lc8/KMn;->mOnInfoListener:Lc8/aNn;

    .line 1784
    return-void
.end method

.method public setOnIsInitialListener(Lc8/bNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/bNn;

    .prologue
    .line 1823
    iput-object p1, p0, Lc8/KMn;->mOnIsInitialListener:Lc8/bNn;

    .line 1824
    return-void
.end method

.method public setOnLodingStatusListener(Lc8/cNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/cNn;

    .prologue
    .line 1600
    iput-object p1, p0, Lc8/KMn;->mOnLodingStatusListener:Lc8/cNn;

    .line 1601
    return-void
.end method

.method public setOnMidADPlayListener(Lc8/eNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/eNn;

    .prologue
    .line 1533
    iput-object p1, p0, Lc8/KMn;->mMidADPlayListener:Lc8/eNn;

    .line 1534
    return-void
.end method

.method public setOnNetworkErrorListener(Lc8/hNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/hNn;

    .prologue
    .line 1542
    iput-object p1, p0, Lc8/KMn;->mOnNetworkErrorListener:Lc8/hNn;

    .line 1543
    return-void
.end method

.method public setOnNetworkSpeedListener(Lc8/iNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/iNn;

    .prologue
    .line 1806
    iput-object p1, p0, Lc8/KMn;->mOnNetworkSpeedListener:Lc8/iNn;

    .line 1807
    return-void
.end method

.method public setOnNetworkSpeedPerMinute(Lc8/jNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/jNn;

    .prologue
    .line 1810
    iput-object p1, p0, Lc8/KMn;->mOnNetworkSpeedPerMinute:Lc8/jNn;

    .line 1811
    return-void
.end method

.method public setOnPreLoadPlayListener(Lc8/lNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/lNn;

    .prologue
    .line 1523
    iput-object p1, p0, Lc8/KMn;->mOnPreLoadPlayListener:Lc8/lNn;

    .line 1524
    return-void
.end method

.method public setOnPreparedListener(Lc8/mNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/mNn;

    .prologue
    .line 939
    iput-object p1, p0, Lc8/KMn;->mOuterPreparedListener:Lc8/mNn;

    .line 940
    return-void
.end method

.method public setOnQualityChangeListener(Lc8/oNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/oNn;

    .prologue
    .line 1775
    iput-object p1, p0, Lc8/KMn;->mOnQualityChangeListener:Lc8/oNn;

    .line 1776
    return-void
.end method

.method public setOnRealVideoStartListener(Lc8/pNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/pNn;

    .prologue
    .line 1832
    iput-object p1, p0, Lc8/KMn;->mOnRealVideoStartListener:Lc8/pNn;

    .line 1833
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 943
    iput-object p1, p0, Lc8/KMn;->mOuterSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 944
    return-void
.end method

.method public setOnTimeoutListener(Lc8/sNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/sNn;

    .prologue
    .line 1858
    iput-object p1, p0, Lc8/KMn;->mOnTimeoutListener:Lc8/sNn;

    .line 1859
    return-void
.end method

.method public setOnVideoCurrentIndexUpdateListener(Lc8/uNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/uNn;

    .prologue
    .line 1846
    iput-object p1, p0, Lc8/KMn;->mOnVideoCurrentIndexUpdateListener:Lc8/uNn;

    .line 1847
    return-void
.end method

.method public setOnVideoIndexUpdateListener(Lc8/vNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/vNn;

    .prologue
    .line 1842
    iput-object p1, p0, Lc8/KMn;->mOnVideoIndexUpdateListener:Lc8/vNn;

    .line 1843
    return-void
.end method

.method public setOnVideoRealIpUpdateListener(Lc8/wNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/wNn;

    .prologue
    .line 1854
    iput-object p1, p0, Lc8/KMn;->mOnVideoRealIpUpdateListener:Lc8/wNn;

    .line 1855
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 953
    iput-object p1, p0, Lc8/KMn;->mOuterVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 954
    return-void
.end method

.method public setPlayRate(I)V
    .locals 1
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1025
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setPlayRate(I)V

    .line 1027
    :cond_0
    return-void
.end method

.method public setPlaySpeed(D)V
    .locals 3
    .param p1, "playSpeed"    # D

    .prologue
    .line 1099
    :try_start_0
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v1, :cond_0

    .line 1100
    sget-object v1, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPlaySpeed --> playSpeed :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1101
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v1, p1, p2}, Lc8/xNn;->setPlaySpeed(D)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    :cond_0
    :goto_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaPlayerProxy"

    invoke-static {v1, v0}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPlayerTimeoutProperty(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1912
    .local p1, "mPlayerTimeoutProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/KMn;->mPlayerTimeoutProperty:Ljava/util/Map;

    .line 1913
    return-void
.end method

.method public setPositionFrequency(Ljava/lang/String;)V
    .locals 0
    .param p1, "frequency"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lc8/KMn;->positionFrequency:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setProperty(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "sec"    # Ljava/lang/String;

    .prologue
    .line 705
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->setProperty(ILjava/lang/String;)V

    .line 708
    :cond_0
    return-void
.end method

.method public setRenderVideo(Z)V
    .locals 1
    .param p1, "renderVideo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 881
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    .line 882
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setRenderVideo(Z)V

    .line 885
    :cond_0
    return-void
.end method

.method public setRotationMatrix(I[F)V
    .locals 1
    .param p1, "length"    # I
    .param p2, "rotationMatrix"    # [F

    .prologue
    .line 1146
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1147
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->setRotationMatrix(I[F)V

    .line 1149
    :cond_0
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 765
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setScreenOnWhilePlaying(Z)V

    .line 768
    :cond_0
    return-void
.end method

.method public setTextureViewSurface(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 772
    iput-object p1, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    .line 773
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<********> mInnerPlayer.setTextureViewSurface()---"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    iget-object v1, p0, Lc8/KMn;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lc8/xNn;->setSurface(Landroid/view/Surface;)V

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/KMn;->mInnerDisplaySet:Z

    .line 778
    :cond_0
    return-void
.end method

.method public setTimeout(II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "sec"    # I

    .prologue
    .line 699
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2}, Lc8/xNn;->setTimeout(II)V

    .line 702
    :cond_0
    return-void
.end method

.method public setUseAliPlayer(Z)V
    .locals 0
    .param p1, "useAliPlayer"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lc8/KMn;->useAliPlayer:Z

    .line 60
    return-void
.end method

.method public setVideoOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 574
    iput p1, p0, Lc8/KMn;->mCurrentOrientation:I

    .line 575
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->setVideoOrientation(I)V

    .line 576
    return-void
.end method

.method public setVideoRendCutMode(IFF)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "xoffset"    # F
    .param p3, "yoffset"    # F

    .prologue
    .line 1179
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1, p2, p3}, Lc8/xNn;->setVideoRendCutMode(IFF)V

    .line 1181
    :cond_0
    return-void
.end method

.method public setmOnLodingStatusListenerNoTrack(Lc8/dNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/dNn;

    .prologue
    .line 1610
    iput-object p1, p0, Lc8/KMn;->mOnLodingStatusListenerNoTrack:Lc8/dNn;

    .line 1611
    return-void
.end method

.method public setmOnNativeShotDownListener(Lc8/gNn;)V
    .locals 0
    .param p1, "listener"    # Lc8/gNn;

    .prologue
    .line 947
    iput-object p1, p0, Lc8/KMn;->mOnNativeShotDownListener:Lc8/gNn;

    .line 948
    return-void
.end method

.method public setsystemMediaplayerClose(Z)V
    .locals 0
    .param p1, "systemMediaplayerClose"    # Z

    .prologue
    .line 1935
    iput-boolean p1, p0, Lc8/KMn;->systemMediaplayerClose:Z

    .line 1936
    return-void
.end method

.method public skipAd(I)V
    .locals 1
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 916
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->skipAd(I)V

    .line 919
    :cond_0
    return-void
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 904
    const/16 v0, 0x5f

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 905
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->start()V

    .line 906
    const/4 v0, 0x5

    iput v0, p0, Lc8/KMn;->mMPState:I

    iput v0, p0, Lc8/KMn;->mMPLastState:I

    .line 907
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
    .line 910
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lc8/KMn;->verifyState(I)V

    .line 911
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0}, Lc8/xNn;->stop()V

    .line 912
    const/4 v0, 0x7

    iput v0, p0, Lc8/KMn;->mMPState:I

    iput v0, p0, Lc8/KMn;->mMPLastState:I

    .line 913
    return-void
.end method

.method public stopVideoSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 1898
    :try_start_0
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v1, :cond_0

    .line 1899
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v1, p1}, Lc8/xNn;->stopVideoSurface(Landroid/view/Surface;)V

    .line 1900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVideoSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1902
    :catch_0
    move-exception v0

    .line 1903
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
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
    .line 896
    sget-object v0, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    .line 897
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v0, p1}, Lc8/xNn;->switchDataSource(Ljava/lang/String;)I

    move-result v0

    .line 900
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public switchPlayerMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1077
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/KMn;->switchPlayerMode(II)V

    .line 1078
    return-void
.end method

.method public switchPlayerMode(II)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "vrType"    # I

    .prologue
    .line 1082
    :try_start_0
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    if-eqz v1, :cond_0

    .line 1083
    sget-object v1, Lc8/YLn;->TAG_PLAYER:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchPlayerMode --> mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / vrType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1084
    iget-boolean v1, p0, Lc8/KMn;->useHardwareDecode:Z

    if-nez v1, :cond_0

    .line 1085
    iget-object v1, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    invoke-virtual {v1, p1, p2}, Lc8/xNn;->switchPlayerMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1088
    :catch_0
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "MediaPlayerProxy"

    invoke-static {v1, v0}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public testGetKey()V
    .locals 1

    .prologue
    .line 1921
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    instance-of v0, v0, Lc8/QLn;

    if-eqz v0, :cond_0

    .line 1922
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    check-cast v0, Lc8/QLn;

    invoke-virtual {v0}, Lc8/QLn;->testGetKey()V

    .line 1925
    :cond_0
    return-void
.end method

.method public testPutKey()V
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    instance-of v0, v0, Lc8/QLn;

    if-eqz v0, :cond_0

    .line 1929
    iget-object v0, p0, Lc8/KMn;->mInnerPlayer:Lc8/xNn;

    check-cast v0, Lc8/QLn;

    invoke-virtual {v0}, Lc8/QLn;->testPutKey()V

    .line 1932
    :cond_0
    return-void
.end method
