.class public Lc8/Ndo;
.super Landroid/view/SurfaceView;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mdo;
    }
.end annotation


# static fields
.field private static final MUSIC_SERVICE_COMMAND_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand"

.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private bg:Landroid/graphics/Bitmap;

.field private endPosition:I

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private isListening:Z

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mContext:Landroid/content/Context;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mDuration:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaController:Landroid/widget/MediaController;

.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private onProgressChangeListener:Lc8/Mdo;

.field private onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

.field private startPosition:I

.field private videoPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 37
    const-string/jumbo v0, "SimpleVideoPlayerView"

    iput-object v0, p0, Lc8/Ndo;->TAG:Ljava/lang/String;

    .line 50
    iput v1, p0, Lc8/Ndo;->mCurrentState:I

    .line 51
    iput v1, p0, Lc8/Ndo;->mTargetState:I

    .line 53
    iput-object v2, p0, Lc8/Ndo;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v2, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 75
    iput v1, p0, Lc8/Ndo;->startPosition:I

    .line 76
    iput v1, p0, Lc8/Ndo;->endPosition:I

    .line 304
    new-instance v0, Lc8/Edo;

    invoke-direct {v0, p0}, Lc8/Edo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 317
    new-instance v0, Lc8/Fdo;

    invoke-direct {v0, p0}, Lc8/Fdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 367
    new-instance v0, Lc8/Gdo;

    invoke-direct {v0, p0}, Lc8/Gdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 385
    new-instance v0, Lc8/Hdo;

    invoke-direct {v0, p0}, Lc8/Hdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 404
    new-instance v0, Lc8/Ido;

    invoke-direct {v0, p0}, Lc8/Ido;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 415
    new-instance v0, Lc8/Jdo;

    invoke-direct {v0, p0}, Lc8/Jdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 468
    new-instance v0, Lc8/Kdo;

    invoke-direct {v0, p0}, Lc8/Kdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 595
    iput-boolean v1, p0, Lc8/Ndo;->isListening:Z

    .line 99
    iput-object p1, p0, Lc8/Ndo;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lc8/Ndo;->initVideoView()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Ndo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    iput-object p1, p0, Lc8/Ndo;->mContext:Landroid/content/Context;

    .line 106
    invoke-direct {p0}, Lc8/Ndo;->initVideoView()V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-string/jumbo v0, "SimpleVideoPlayerView"

    iput-object v0, p0, Lc8/Ndo;->TAG:Ljava/lang/String;

    .line 50
    iput v1, p0, Lc8/Ndo;->mCurrentState:I

    .line 51
    iput v1, p0, Lc8/Ndo;->mTargetState:I

    .line 53
    iput-object v2, p0, Lc8/Ndo;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 54
    iput-object v2, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 75
    iput v1, p0, Lc8/Ndo;->startPosition:I

    .line 76
    iput v1, p0, Lc8/Ndo;->endPosition:I

    .line 304
    new-instance v0, Lc8/Edo;

    invoke-direct {v0, p0}, Lc8/Edo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 317
    new-instance v0, Lc8/Fdo;

    invoke-direct {v0, p0}, Lc8/Fdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 367
    new-instance v0, Lc8/Gdo;

    invoke-direct {v0, p0}, Lc8/Gdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 385
    new-instance v0, Lc8/Hdo;

    invoke-direct {v0, p0}, Lc8/Hdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 404
    new-instance v0, Lc8/Ido;

    invoke-direct {v0, p0}, Lc8/Ido;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 415
    new-instance v0, Lc8/Jdo;

    invoke-direct {v0, p0}, Lc8/Jdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 468
    new-instance v0, Lc8/Kdo;

    invoke-direct {v0, p0}, Lc8/Kdo;-><init>(Lc8/Ndo;)V

    iput-object v0, p0, Lc8/Ndo;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 595
    iput-boolean v1, p0, Lc8/Ndo;->isListening:Z

    .line 111
    iput-object p1, p0, Lc8/Ndo;->mContext:Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lc8/Ndo;->initVideoView()V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lc8/Ndo;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$1000(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1002(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$102(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$1100(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->mTargetState:I

    return v0
.end method

.method static synthetic access$1102(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->mTargetState:I

    return p1
.end method

.method static synthetic access$1200(Lc8/Ndo;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1300(Lc8/Ndo;)Lc8/Mdo;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->onProgressChangeListener:Lc8/Mdo;

    return-object v0
.end method

.method static synthetic access$1400(Lc8/Ndo;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1502(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$1600(Lc8/Ndo;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object v0
.end method

.method static synthetic access$1700(Lc8/Ndo;)Landroid/media/MediaPlayer$OnSeekCompleteListener;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    return-object v0
.end method

.method static synthetic access$1800(Lc8/Ndo;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$1802(Lc8/Ndo;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 36
    iput-object p1, p0, Lc8/Ndo;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$1900(Lc8/Ndo;)V
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/Ndo;->openVideo()V

    return-void
.end method

.method static synthetic access$200(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$2000(Lc8/Ndo;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lc8/Ndo;->release(Z)V

    return-void
.end method

.method static synthetic access$202(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$2102(Lc8/Ndo;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lc8/Ndo;->isListening:Z

    return p1
.end method

.method static synthetic access$2200(Lc8/Ndo;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->mCurrentState:I

    return p1
.end method

.method static synthetic access$400(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->endPosition:I

    return v0
.end method

.method static synthetic access$402(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->endPosition:I

    return p1
.end method

.method static synthetic access$500(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->startPosition:I

    return v0
.end method

.method static synthetic access$600(Lc8/Ndo;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Lc8/Ndo;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$800(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$900(Lc8/Ndo;)I
    .locals 1
    .param p0, "x0"    # Lc8/Ndo;

    .prologue
    .line 36
    iget v0, p0, Lc8/Ndo;->mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$902(Lc8/Ndo;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Ndo;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lc8/Ndo;->mSurfaceWidth:I

    return p1
.end method

.method private attachMediaController()V
    .locals 3

    .prologue
    .line 295
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 297
    invoke-virtual {p0}, Lc8/Ndo;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lc8/Ndo;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 299
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 300
    iget-object v1, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 302
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    :cond_1
    move-object v0, p0

    .line 298
    goto :goto_0
.end method

.method private initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc8/Ndo;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 184
    iput v2, p0, Lc8/Ndo;->mVideoWidth:I

    .line 185
    iput v2, p0, Lc8/Ndo;->mVideoHeight:I

    .line 186
    invoke-virtual {p0}, Lc8/Ndo;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lc8/Ndo;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 187
    invoke-virtual {p0}, Lc8/Ndo;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 188
    invoke-virtual {p0, v3}, Lc8/Ndo;->setFocusable(Z)V

    .line 189
    invoke-virtual {p0, v3}, Lc8/Ndo;->setFocusableInTouchMode(Z)V

    .line 190
    invoke-virtual {p0}, Lc8/Ndo;->requestFocus()Z

    .line 191
    iput v2, p0, Lc8/Ndo;->mCurrentState:I

    .line 192
    iput v2, p0, Lc8/Ndo;->mTargetState:I

    .line 193
    return-void
.end method

.method private isInPlaybackState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 724
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/Ndo;->mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lc8/Ndo;->mCurrentState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/Ndo;->mCurrentState:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openVideo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 227
    iget-object v1, p0, Lc8/Ndo;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Ndo;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lc8/Ndo;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    invoke-direct {p0, v6}, Lc8/Ndo;->release(Z)V

    .line 241
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 242
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 243
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 244
    const/4 v1, -0x1

    iput v1, p0, Lc8/Ndo;->mDuration:I

    .line 245
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 246
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 247
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 248
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->onSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 249
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 250
    iget-object v1, p0, Lc8/Ndo;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v2, Lc8/Ddo;

    invoke-direct {v2, p0}, Lc8/Ddo;-><init>(Lc8/Ndo;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 258
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lc8/Ndo;->mCurrentBufferPercentage:I

    .line 260
    iget-object v1, p0, Lc8/Ndo;->videoPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 261
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->videoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 265
    :goto_1
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lc8/Ndo;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 266
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 267
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 268
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 271
    const/4 v1, 0x1

    iput v1, p0, Lc8/Ndo;->mCurrentState:I

    .line 272
    invoke-direct {p0}, Lc8/Ndo;->attachMediaController()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 274
    :catch_0
    move-exception v1

    iput v5, p0, Lc8/Ndo;->mCurrentState:I

    .line 275
    iput v5, p0, Lc8/Ndo;->mTargetState:I

    .line 276
    iget-object v1, p0, Lc8/Ndo;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 263
    :cond_3
    :try_start_1
    iget-object v1, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lc8/Ndo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lc8/Ndo;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Lc8/Ndo;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 279
    :catch_1
    move-exception v1

    iput v5, p0, Lc8/Ndo;->mCurrentState:I

    .line 280
    iput v5, p0, Lc8/Ndo;->mTargetState:I

    .line 281
    iget-object v1, p0, Lc8/Ndo;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v7, v6}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private release(Z)V
    .locals 2
    .param p1, "clearTargetState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 507
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 508
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 509
    iput v1, p0, Lc8/Ndo;->mCurrentState:I

    .line 510
    if-eqz p1, :cond_0

    .line 511
    iput v1, p0, Lc8/Ndo;->mTargetState:I

    .line 514
    :cond_0
    return-void
.end method

.method private toggleMediaControlsShowOrHide()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 593
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lc8/Ndo;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lc8/Ndo;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, Lc8/Ndo;->mCanSeekForward:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 762
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 718
    iget v0, p0, Lc8/Ndo;->mCurrentBufferPercentage:I

    .line 720
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 692
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    iget v0, p0, Lc8/Ndo;->endPosition:I

    iget v1, p0, Lc8/Ndo;->startPosition:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lc8/Ndo;->startPosition:I

    sub-int/2addr v0, v1

    .line 697
    :goto_0
    return v0

    .line 694
    :cond_0
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    .line 697
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 675
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 676
    iget v0, p0, Lc8/Ndo;->endPosition:I

    iget v1, p0, Lc8/Ndo;->startPosition:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 677
    iget v0, p0, Lc8/Ndo;->endPosition:I

    iget v1, p0, Lc8/Ndo;->startPosition:I

    sub-int/2addr v0, v1

    .line 687
    :goto_0
    return v0

    .line 680
    :cond_0
    iget v0, p0, Lc8/Ndo;->mDuration:I

    if-lez v0, :cond_1

    .line 681
    iget v0, p0, Lc8/Ndo;->mDuration:I

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lc8/Ndo;->mDuration:I

    .line 684
    iget v0, p0, Lc8/Ndo;->mDuration:I

    goto :goto_0

    .line 686
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lc8/Ndo;->mDuration:I

    .line 687
    iget v0, p0, Lc8/Ndo;->mDuration:I

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 712
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 549
    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/16 v2, 0x18

    if-eq p1, v2, :cond_2

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    const/16 v2, 0x52

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_2

    const/4 v2, 0x6

    if-eq p1, v2, :cond_2

    move v0, v1

    .line 555
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    iget-object v2, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_8

    .line 556
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_0

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4

    .line 558
    :cond_0
    iget-object v2, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    invoke-virtual {p0}, Lc8/Ndo;->pause()V

    .line 560
    iget-object v2, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 584
    :cond_1
    :goto_1
    return v1

    .line 549
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 562
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_3
    invoke-virtual {p0}, Lc8/Ndo;->start()V

    .line 563
    iget-object v2, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 566
    :cond_4
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_5

    .line 567
    iget-object v2, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 568
    invoke-virtual {p0}, Lc8/Ndo;->start()V

    .line 569
    iget-object v2, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 572
    :cond_5
    const/16 v2, 0x56

    if-eq p1, v2, :cond_6

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_7

    .line 574
    :cond_6
    iget-object v2, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 575
    invoke-virtual {p0}, Lc8/Ndo;->pause()V

    .line 576
    iget-object v2, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_1

    .line 580
    :cond_7
    invoke-direct {p0}, Lc8/Ndo;->toggleMediaControlsShowOrHide()V

    .line 584
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 134
    iget v2, p0, Lc8/Ndo;->mVideoWidth:I

    invoke-static {v2, p1}, Lc8/Ndo;->getDefaultSize(II)I

    move-result v1

    .line 135
    .local v1, "width":I
    iget v2, p0, Lc8/Ndo;->mVideoHeight:I

    invoke-static {v2, p2}, Lc8/Ndo;->getDefaultSize(II)I

    move-result v0

    .line 136
    .local v0, "height":I
    iget v2, p0, Lc8/Ndo;->mVideoWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Lc8/Ndo;->mVideoHeight:I

    if-lez v2, :cond_0

    .line 137
    iget v2, p0, Lc8/Ndo;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lc8/Ndo;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    .line 139
    iget v2, p0, Lc8/Ndo;->mVideoHeight:I

    mul-int/2addr v2, v1

    iget v3, p0, Lc8/Ndo;->mVideoWidth:I

    div-int v0, v2, v3

    .line 150
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lc8/Ndo;->setMeasuredDimension(II)V

    .line 151
    return-void

    .line 140
    :cond_1
    iget v2, p0, Lc8/Ndo;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lc8/Ndo;->mVideoHeight:I

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    .line 142
    iget v2, p0, Lc8/Ndo;->mVideoWidth:I

    mul-int/2addr v2, v0

    iget v3, p0, Lc8/Ndo;->mVideoHeight:I

    div-int v1, v2, v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 533
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 534
    invoke-direct {p0}, Lc8/Ndo;->toggleMediaControlsShowOrHide()V

    .line 536
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 541
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 542
    invoke-direct {p0}, Lc8/Ndo;->toggleMediaControlsShowOrHide()V

    .line 544
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 656
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 659
    iput v1, p0, Lc8/Ndo;->mCurrentState:I

    .line 662
    :cond_0
    iput v1, p0, Lc8/Ndo;->mTargetState:I

    .line 663
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 523
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 525
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 526
    iput v1, p0, Lc8/Ndo;->mCurrentState:I

    .line 527
    iput v1, p0, Lc8/Ndo;->mTargetState:I

    .line 529
    :cond_0
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 3
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 154
    move v0, p1

    .line 155
    .local v0, "result":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 156
    .local v1, "specMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 158
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_0

    .line 179
    :goto_0
    return v0

    .line 163
    :sswitch_0
    move v0, p1

    .line 164
    goto :goto_0

    .line 171
    :sswitch_1
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 172
    goto :goto_0

    .line 176
    :sswitch_2
    move v0, v2

    goto :goto_0

    .line 158
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 670
    invoke-direct {p0}, Lc8/Ndo;->openVideo()V

    .line 671
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "msec"    # I

    .prologue
    .line 702
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lc8/Ndo;->startPosition:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Lc8/Ndo;->mSeekWhenPrepared:I

    .line 708
    :goto_0
    return-void

    .line 706
    :cond_0
    iput p1, p0, Lc8/Ndo;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    iput-object p1, p0, Lc8/Ndo;->bg:Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {p0}, Lc8/Ndo;->invalidate()V

    .line 118
    return-void
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 287
    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 290
    :cond_0
    iput-object p1, p0, Lc8/Ndo;->mMediaController:Landroid/widget/MediaController;

    .line 291
    invoke-direct {p0}, Lc8/Ndo;->attachMediaController()V

    .line 292
    return-void
.end method

.method public setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .prologue
    .line 445
    iput-object p1, p0, Lc8/Ndo;->mOnBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 446
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 441
    iput-object p1, p0, Lc8/Ndo;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 442
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 465
    iput-object p1, p0, Lc8/Ndo;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 466
    return-void
.end method

.method public setOnInfoLisetener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 453
    iput-object p1, p0, Lc8/Ndo;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 454
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 431
    iput-object p1, p0, Lc8/Ndo;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 432
    return-void
.end method

.method public setOnProgressChangeListener(Lc8/Mdo;)V
    .locals 0
    .param p1, "onProgressChangeListener"    # Lc8/Mdo;

    .prologue
    .line 94
    iput-object p1, p0, Lc8/Ndo;->onProgressChangeListener:Lc8/Mdo;

    .line 95
    return-void
.end method

.method public setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .prologue
    .line 449
    iput-object p1, p0, Lc8/Ndo;->mOnSeekCompleteListener:Landroid/media/MediaPlayer$OnSeekCompleteListener;

    .line 450
    return-void
.end method

.method public setVideoBg(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bg"    # Landroid/graphics/Bitmap;
    .annotation build Lc8/N;
        api = 0x10
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Lc8/Ndo;->invalidate()V

    .line 123
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lc8/Ndo;->videoPath:Ljava/lang/String;

    .line 197
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Ndo;->setVideoURI(Landroid/net/Uri;)V

    .line 198
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/Ndo;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 202
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/Ndo;->mUri:Landroid/net/Uri;

    .line 209
    iput-object p2, p0, Lc8/Ndo;->mHeaders:Ljava/util/Map;

    .line 210
    const/4 v0, 0x0

    iput v0, p0, Lc8/Ndo;->mSeekWhenPrepared:I

    .line 211
    invoke-direct {p0}, Lc8/Ndo;->openVideo()V

    .line 212
    invoke-virtual {p0}, Lc8/Ndo;->requestLayout()V

    .line 213
    invoke-virtual {p0}, Lc8/Ndo;->invalidate()V

    .line 214
    return-void
.end method

.method public setVolume(FF)V
    .locals 1
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 126
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 129
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 599
    invoke-direct {p0}, Lc8/Ndo;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 601
    iget v0, p0, Lc8/Ndo;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Lc8/Ndo;->startPosition:I

    if-ge v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lc8/Ndo;->startPosition:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 604
    :cond_0
    iput v2, p0, Lc8/Ndo;->mCurrentState:I

    .line 606
    iget-boolean v0, p0, Lc8/Ndo;->isListening:Z

    if-nez v0, :cond_1

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ndo;->isListening:Z

    .line 609
    iget-object v0, p0, Lc8/Ndo;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc8/Ldo;

    invoke-direct {v1, p0}, Lc8/Ldo;-><init>(Lc8/Ndo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 651
    :cond_1
    iput v2, p0, Lc8/Ndo;->mTargetState:I

    .line 652
    return-void
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 219
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 221
    iput v1, p0, Lc8/Ndo;->mCurrentState:I

    .line 222
    iput v1, p0, Lc8/Ndo;->mTargetState:I

    .line 224
    :cond_0
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lc8/Ndo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 520
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/Ndo;->release(Z)V

    .line 667
    return-void
.end method
