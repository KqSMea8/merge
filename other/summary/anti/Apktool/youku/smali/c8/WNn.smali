.class public Lc8/WNn;
.super Lc8/xNn;
.source "SystemMediaPlayer.java"

# interfaces
.implements Lc8/LMn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/VNn;,
        Lc8/UNn;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static RELEASE_TIMEOUT:I = 0x0

.field private static final SEEKING_DELAYED:I = 0x2

.field private static final SEEKING_IN_PROGRESS:I = 0x1

.field private static final SEEKING_NONE:I

.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentItemIndex:I

.field private mCurrentPlayer:Landroid/media/MediaPlayer;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mIsPlaylistPrepared:Z

.field private mLastSeekPositionInMills:I

.field private mNeedAnotherSeek:Z

.field private mPath:Ljava/lang/String;

.field private mPlayerState:I

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private mSeekPositionInMills:I

.field private mSeekingState:I

.field private mTotalDurationInMills:I

.field private mUrlList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lc8/UNn;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private released:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lc8/WNn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/WNn;->$assertionsDisabled:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lc8/WNn;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 28
    const/16 v0, 0xa

    sput v0, Lc8/WNn;->RELEASE_TIMEOUT:I

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lc8/YLn;->TAG_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lc8/WNn;

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/WNn;->TAG:Ljava/lang/String;

    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 243
    invoke-direct {p0}, Lc8/xNn;-><init>()V

    .line 41
    iput v5, p0, Lc8/WNn;->mPlayerState:I

    .line 44
    iput v5, p0, Lc8/WNn;->mCurrentItemIndex:I

    .line 45
    iput v5, p0, Lc8/WNn;->mTotalDurationInMills:I

    .line 46
    iput v5, p0, Lc8/WNn;->mSeekPositionInMills:I

    .line 47
    iput v5, p0, Lc8/WNn;->mLastSeekPositionInMills:I

    .line 48
    iput-boolean v5, p0, Lc8/WNn;->mNeedAnotherSeek:Z

    .line 49
    iput-boolean v5, p0, Lc8/WNn;->mIsPlaylistPrepared:Z

    .line 54
    iput v5, p0, Lc8/WNn;->mSeekingState:I

    .line 56
    iput-object v1, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 57
    iput-object v1, p0, Lc8/WNn;->mPath:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lc8/WNn;->mHolder:Landroid/view/SurfaceHolder;

    .line 63
    iput-object v1, p0, Lc8/WNn;->mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 64
    iput-object v1, p0, Lc8/WNn;->mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 65
    iput-object v1, p0, Lc8/WNn;->mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 66
    iput-object v1, p0, Lc8/WNn;->mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 67
    iput-object v1, p0, Lc8/WNn;->mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 68
    iput-object v1, p0, Lc8/WNn;->mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 69
    iput-object v1, p0, Lc8/WNn;->mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 111
    new-instance v1, Lc8/GNn;

    invoke-direct {v1, p0}, Lc8/GNn;-><init>(Lc8/WNn;)V

    iput-object v1, p0, Lc8/WNn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 126
    new-instance v1, Lc8/INn;

    invoke-direct {v1, p0}, Lc8/INn;-><init>(Lc8/WNn;)V

    iput-object v1, p0, Lc8/WNn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 150
    new-instance v1, Lc8/KNn;

    invoke-direct {v1, p0}, Lc8/KNn;-><init>(Lc8/WNn;)V

    iput-object v1, p0, Lc8/WNn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 166
    new-instance v1, Lc8/MNn;

    invoke-direct {v1, p0}, Lc8/MNn;-><init>(Lc8/WNn;)V

    iput-object v1, p0, Lc8/WNn;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 181
    new-instance v1, Lc8/ONn;

    invoke-direct {v1, p0}, Lc8/ONn;-><init>(Lc8/WNn;)V

    iput-object v1, p0, Lc8/WNn;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 205
    new-instance v1, Lc8/QNn;

    invoke-direct {v1, p0}, Lc8/QNn;-><init>(Lc8/WNn;)V

    iput-object v1, p0, Lc8/WNn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 227
    new-instance v1, Lc8/SNn;

    invoke-direct {v1, p0}, Lc8/SNn;-><init>(Lc8/WNn;)V

    iput-object v1, p0, Lc8/WNn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 246
    :try_start_0
    sget-object v1, Lc8/WNn;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget v2, Lc8/WNn;->RELEASE_TIMEOUT:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Lcom/youku/uplayer/ReleaseTimeoutException;

    const-string/jumbo v2, "SystemMediaPlayer release timeout"

    invoke-direct {v1, v2}, Lcom/youku/uplayer/ReleaseTimeoutException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lc8/WNn;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const-string/jumbo v1, "SystemMediaPlayer() "

    invoke-direct {p0, v1}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 257
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lc8/WNn;->mHandler:Landroid/os/Handler;

    .line 258
    iput v5, p0, Lc8/WNn;->mCurrentItemIndex:I

    .line 259
    iput v5, p0, Lc8/WNn;->mPlayerState:I

    .line 260
    iput v5, p0, Lc8/WNn;->mSeekingState:I

    .line 261
    iput v5, p0, Lc8/WNn;->mSeekPositionInMills:I

    .line 262
    iput v5, p0, Lc8/WNn;->mLastSeekPositionInMills:I

    .line 263
    iput-boolean v5, p0, Lc8/WNn;->mNeedAnotherSeek:Z

    .line 264
    iput-boolean v5, p0, Lc8/WNn;->mIsPlaylistPrepared:Z

    .line 266
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    .line 268
    invoke-virtual {p0}, Lc8/WNn;->setListeners()V

    .line 269
    return-void

    .line 249
    :cond_0
    :try_start_1
    sget-object v1, Lc8/WNn;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private _seekTo(I)V
    .locals 2
    .param p1, "posInMills"    # I

    .prologue
    .line 411
    iput p1, p0, Lc8/WNn;->mSeekPositionInMills:I

    .line 412
    const/4 v0, 0x1

    iput v0, p0, Lc8/WNn;->mSeekingState:I

    .line 413
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lc8/WNn;->mSeekPositionInMills:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 430
    return-void
.end method

.method static synthetic access$000(Lc8/WNn;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/WNn;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lc8/WNn;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lc8/WNn;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1002(Lc8/WNn;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .param p0, "x0"    # Lc8/WNn;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lc8/WNn;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/WNn;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lc8/WNn;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lc8/WNn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lc8/WNn;)V
    .locals 0
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/WNn;->resetData()V

    return-void
.end method

.method static synthetic access$200(Lc8/WNn;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lc8/WNn;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$400(Lc8/WNn;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$500(Lc8/WNn;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$600(Lc8/WNn;)Z
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-boolean v0, p0, Lc8/WNn;->mIsPlaylistPrepared:Z

    return v0
.end method

.method static synthetic access$602(Lc8/WNn;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/WNn;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/WNn;->mIsPlaylistPrepared:Z

    return p1
.end method

.method static synthetic access$700(Lc8/WNn;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/WNn;->mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$800(Lc8/WNn;)I
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget v0, p0, Lc8/WNn;->mSeekingState:I

    return v0
.end method

.method static synthetic access$802(Lc8/WNn;I)I
    .locals 0
    .param p0, "x0"    # Lc8/WNn;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lc8/WNn;->mSeekingState:I

    return p1
.end method

.method static synthetic access$900(Lc8/WNn;)I
    .locals 1
    .param p0, "x0"    # Lc8/WNn;

    .prologue
    .line 26
    iget v0, p0, Lc8/WNn;->mSeekPositionInMills:I

    return v0
.end method

.method private calcSeekCoord(I)I
    .locals 2
    .param p1, "posInMills"    # I

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/WNn;->mUrlList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lc8/WNn;->mUrlList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/UNn;

    iget v1, v1, Lc8/UNn;->offset:I

    if-ge v1, p1, :cond_0

    .line 404
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :cond_0
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method private changeVideo()V
    .locals 4

    .prologue
    .line 91
    sget-boolean v2, Lc8/WNn;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 94
    :cond_0
    iget-object v2, p0, Lc8/WNn;->mUrlList:Ljava/util/Vector;

    iget v3, p0, Lc8/WNn;->mCurrentItemIndex:I

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/UNn;

    iget-object v1, v2, Lc8/UNn;->url:Ljava/lang/String;

    .line 98
    .local v1, "strPath":Ljava/lang/String;
    const/4 v2, 0x1

    :try_start_0
    iput v2, p0, Lc8/WNn;->mPlayerState:I

    .line 99
    iget-object v2, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V

    .line 100
    iget-object v2, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lc8/WNn;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 102
    iget-object v2, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 104
    const/4 v2, 0x0

    iput v2, p0, Lc8/WNn;->mPlayerState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lc8/WNn;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private myLogger(Ljava/lang/String;)V
    .locals 2
    .param p1, "strLog"    # Ljava/lang/String;

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is called."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    return-void
.end method

.method private resetData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 357
    iput-object v1, p0, Lc8/WNn;->mPath:Ljava/lang/String;

    .line 358
    iput-object v1, p0, Lc8/WNn;->mUrlList:Ljava/util/Vector;

    .line 359
    iput v0, p0, Lc8/WNn;->mCurrentItemIndex:I

    .line 360
    iput v0, p0, Lc8/WNn;->mTotalDurationInMills:I

    .line 361
    iput v0, p0, Lc8/WNn;->mSeekPositionInMills:I

    .line 362
    iput v0, p0, Lc8/WNn;->mLastSeekPositionInMills:I

    .line 363
    iput-boolean v0, p0, Lc8/WNn;->mNeedAnotherSeek:Z

    .line 364
    iput-boolean v0, p0, Lc8/WNn;->mIsPlaylistPrepared:Z

    .line 366
    iput v0, p0, Lc8/WNn;->mPlayerState:I

    .line 367
    iput v0, p0, Lc8/WNn;->mSeekingState:I

    .line 368
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 3

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "pos":I
    iget-object v1, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 301
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 302
    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 306
    const-string/jumbo v0, "getDuration "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 317
    const-string/jumbo v0, "getVideoHeight "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 322
    const-string/jumbo v0, "getVideoWidth "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 327
    const-string/jumbo v0, "isLooping "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 334
    .local v0, "isPlaying":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/WNn;->myLogger(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    .end local v0    # "isPlaying":Z
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 342
    const-string/jumbo v0, "pause "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 344
    return-void
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
    .line 347
    const-string/jumbo v0, "prepare "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 349
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
    .line 352
    const-string/jumbo v0, "prepareAsync "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 354
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 371
    iget-boolean v0, p0, Lc8/WNn;->released:Z

    if-eqz v0, :cond_0

    .line 393
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/WNn;->released:Z

    .line 374
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/TNn;

    invoke-direct {v1, p0}, Lc8/TNn;-><init>(Lc8/WNn;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 396
    const-string/jumbo v0, "reset "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 398
    invoke-direct {p0}, Lc8/WNn;->resetData()V

    .line 399
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "locationInMills"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "seekTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, p1}, Lc8/WNn;->_seekTo(I)V

    .line 441
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .param p1, "streamtype"    # I

    .prologue
    .line 444
    const-string/jumbo v0, "setAudioStreamType "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 446
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 450
    const-string/jumbo v0, "setDataSource "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 451
    iput-object p1, p0, Lc8/WNn;->mPath:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    sget-object v1, Lc8/nEj;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 499
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "sh"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 502
    const-string/jumbo v0, "setDisplay "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 503
    iput-object p1, p0, Lc8/WNn;->mHolder:Landroid/view/SurfaceHolder;

    .line 504
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 505
    return-void
.end method

.method setListeners()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lc8/WNn;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 82
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lc8/WNn;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 83
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lc8/WNn;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 84
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lc8/WNn;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 85
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lc8/WNn;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 86
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lc8/WNn;->mSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 87
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lc8/WNn;->mVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 88
    return-void
.end method

.method public setLooping(Z)V
    .locals 1
    .param p1, "looping"    # Z

    .prologue
    .line 288
    const-string/jumbo v0, "setLooping "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 290
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 508
    const-string/jumbo v0, "setOnBufferingUpdateListener "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 509
    iput-object p1, p0, Lc8/WNn;->mExternalBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 510
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 513
    const-string/jumbo v0, "setOnCompletionListener "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 514
    iput-object p1, p0, Lc8/WNn;->mExternalCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 515
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 518
    const-string/jumbo v0, "setOnErrorListener "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 519
    iput-object p1, p0, Lc8/WNn;->mExternalErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 520
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 523
    const-string/jumbo v0, "setOnInfoListener "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 524
    iput-object p1, p0, Lc8/WNn;->mExternalInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 525
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 528
    const-string/jumbo v0, "setOnPreparedListener "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 529
    iput-object p1, p0, Lc8/WNn;->mExternalPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 530
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 533
    const-string/jumbo v0, "setOnSeekCompleteListener "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 534
    iput-object p1, p0, Lc8/WNn;->mExternalSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 535
    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .prologue
    .line 539
    const-string/jumbo v0, "setOnVideoSizeChangedListener "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 540
    iput-object p1, p0, Lc8/WNn;->mExternalVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 541
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .prologue
    .line 283
    const-string/jumbo v0, "setScreenOnWhilePlaying "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 285
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 273
    const-string/jumbo v0, "setSurface "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 275
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 293
    const-string/jumbo v0, "setVolume "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 295
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 278
    const-string/jumbo v0, "setWakeMode "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setWakeMode(Landroid/content/Context;I)V

    .line 280
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
    .line 544
    const-string/jumbo v0, "start "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 546
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
    .line 549
    const-string/jumbo v0, "stop "

    invoke-direct {p0, v0}, Lc8/WNn;->myLogger(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lc8/WNn;->mCurrentPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 551
    return-void
.end method
