.class public Lc8/Jqm;
.super Ljava/lang/Object;
.source "PWAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Iqm;,
        Lc8/Hqm;
    }
.end annotation


# static fields
.field public static final STATE_ERROR:I = 0x3ef

.field public static final STATE_IDLE:I = 0x3e9

.field public static final STATE_PAUSED:I = 0x3ec

.field public static final STATE_PLAYING:I = 0x3eb

.field public static final STATE_PLAY_COMPLETED:I = 0x3ee

.field public static final STATE_STOPPED:I = 0x3ed

.field private static mPWAudioPlayer:Lc8/Jqm;


# instance fields
.field private context:Landroid/content/Context;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lc8/Iqm;

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHasErrorInGainAudioFocus:Z

.field private volatile mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mWXAudioFocusListener:Lc8/Hqm;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x3e9

    iput v0, p0, Lc8/Jqm;->mCurrState:I

    .line 29
    new-instance v0, Lc8/Eqm;

    invoke-direct {v0, p0}, Lc8/Eqm;-><init>(Lc8/Jqm;)V

    iput-object v0, p0, Lc8/Jqm;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 40
    new-instance v0, Lc8/Fqm;

    invoke-direct {v0, p0}, Lc8/Fqm;-><init>(Lc8/Jqm;)V

    iput-object v0, p0, Lc8/Jqm;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 52
    new-instance v0, Lc8/Gqm;

    invoke-direct {v0, p0}, Lc8/Gqm;-><init>(Lc8/Jqm;)V

    iput-object v0, p0, Lc8/Jqm;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Jqm;->mHasErrorInGainAudioFocus:Z

    .line 66
    new-instance v0, Lc8/Hqm;

    invoke-direct {v0, p0}, Lc8/Hqm;-><init>(Lc8/Jqm;)V

    iput-object v0, p0, Lc8/Jqm;->mWXAudioFocusListener:Lc8/Hqm;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jqm;->context:Landroid/content/Context;

    .line 72
    iput-object p1, p0, Lc8/Jqm;->context:Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Lc8/Jqm;->createPlayer()V

    .line 74
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .prologue
    .line 100
    :try_start_0
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0}, Lc8/Jqm;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lc8/Jqm;->mWXAudioFocusListener:Lc8/Hqm;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/Jqm;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lc8/Jqm;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Lc8/Jqm;I)I
    .locals 0
    .param p0, "x0"    # Lc8/Jqm;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lc8/Jqm;->mCurrState:I

    return p1
.end method

.method static synthetic access$200(Lc8/Jqm;)Lc8/Iqm;
    .locals 1
    .param p0, "x0"    # Lc8/Jqm;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/Jqm;->mCallback:Lc8/Iqm;

    return-object v0
.end method

.method static synthetic access$300(Lc8/Jqm;)V
    .locals 0
    .param p0, "x0"    # Lc8/Jqm;

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/Jqm;->abandonAudioFocus()V

    return-void
.end method

.method private createPlayer()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 261
    :cond_0
    monitor-exit p0

    .line 264
    :cond_1
    return-void

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Lc8/Jqm;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lc8/Jqm;->context:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lc8/Jqm;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/Jqm;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    .line 114
    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Jqm;->mHasErrorInGainAudioFocus:Z

    goto :goto_0
.end method

.method public static getIns(Landroid/content/Context;)Lc8/Jqm;
    .locals 3
    .param p0, "contenxt"    # Landroid/content/Context;

    .prologue
    .line 77
    sget-object v0, Lc8/Jqm;->mPWAudioPlayer:Lc8/Jqm;

    if-nez v0, :cond_1

    .line 78
    const-class v1, Lc8/Jqm;

    monitor-enter v1

    .line 79
    :try_start_0
    sget-object v0, Lc8/Jqm;->mPWAudioPlayer:Lc8/Jqm;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lc8/Jqm;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lc8/Jqm;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Jqm;->mPWAudioPlayer:Lc8/Jqm;

    .line 82
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_1
    new-instance v0, Lc8/Jqm;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/Jqm;-><init>(Landroid/content/Context;)V

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private tryToGainAudioFocus(I)Z
    .locals 7
    .param p1, "duration"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x1

    .line 90
    .local v0, "e":B
    :try_start_0
    invoke-direct {p0}, Lc8/Jqm;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lc8/Jqm;->mWXAudioFocusListener:Lc8/Hqm;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    .local v1, "result":I
    if-ne v1, v2, :cond_0

    .line 94
    .end local v1    # "result":I
    :goto_0
    return v2

    .line 91
    .restart local v1    # "result":I
    :cond_0
    if-nez v1, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0

    .line 93
    .end local v1    # "result":I
    :catch_0
    move-exception v4

    iput-boolean v2, p0, Lc8/Jqm;->mHasErrorInGainAudioFocus:Z

    move v2, v3

    .line 94
    goto :goto_0
.end method


# virtual methods
.method public canResume()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/16 v0, 0x3ec

    iget v1, p0, Lc8/Jqm;->mCurrState:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 248
    const/16 v0, 0x3eb

    iget v1, p0, Lc8/Jqm;->mCurrState:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

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

.method public playDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    invoke-direct {p0}, Lc8/Jqm;->abandonAudioFocus()V

    .line 199
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lc8/Jqm;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 204
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Lc8/Jqm;->mCurrState:I

    .line 205
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 206
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 207
    iput-object v1, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 209
    :cond_1
    iput-object v1, p0, Lc8/Jqm;->context:Landroid/content/Context;

    .line 210
    return-void
.end method

.method public playPause()V
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lc8/Jqm;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 149
    const/16 v0, 0x3ec

    iput v0, p0, Lc8/Jqm;->mCurrState:I

    .line 155
    :cond_0
    return-void
.end method

.method public playReset()V
    .locals 2

    .prologue
    const/16 v1, 0x3e9

    .line 180
    iget v0, p0, Lc8/Jqm;->mCurrState:I

    if-eq v1, v0, :cond_2

    .line 181
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 183
    :try_start_0
    invoke-virtual {p0}, Lc8/Jqm;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 187
    :cond_0
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :cond_1
    :goto_0
    iput v1, p0, Lc8/Jqm;->mCurrState:I

    .line 195
    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public playResume()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 160
    const/16 v0, 0x3eb

    iput v0, p0, Lc8/Jqm;->mCurrState:I

    .line 165
    :cond_0
    return-void
.end method

.method public playStart(Ljava/lang/String;)V
    .locals 4
    .param p1, "mediaPath"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lc8/Jqm;->tryToGainAudioFocus(I)Z

    move-result v0

    .line 125
    .local v0, "result":Z
    if-nez v0, :cond_1

    iget-boolean v2, p0, Lc8/Jqm;->mHasErrorInGainAudioFocus:Z

    if-nez v2, :cond_1

    .line 144
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v0    # "result":Z
    :cond_1
    iget-object v2, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_2

    .line 129
    invoke-direct {p0}, Lc8/Jqm;->createPlayer()V

    .line 132
    :cond_2
    invoke-virtual {p0}, Lc8/Jqm;->playReset()V

    .line 133
    iget-object v2, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 135
    iget-object v2, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lc8/Jqm;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 136
    iget-object v2, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lc8/Jqm;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 137
    iget-object v2, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lc8/Jqm;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 138
    iget-object v2, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    .end local v0    # "result":Z
    :catch_0
    move-exception v1

    .line 140
    .local v1, "var3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public playStop()V
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lc8/Jqm;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 170
    const/16 v0, 0x3ed

    iput v0, p0, Lc8/Jqm;->mCurrState:I

    .line 174
    invoke-direct {p0}, Lc8/Jqm;->abandonAudioFocus()V

    .line 177
    :cond_0
    return-void
.end method

.method public setPlayerListener(Lc8/Iqm;)V
    .locals 0
    .param p1, "playerListener"    # Lc8/Iqm;

    .prologue
    .line 252
    iput-object p1, p0, Lc8/Jqm;->mCallback:Lc8/Iqm;

    .line 253
    return-void
.end method

.method public setVolume(F)V
    .locals 1
    .param p1, "volume"    # F

    .prologue
    .line 267
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lc8/Jqm;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 270
    :cond_0
    return-void
.end method
