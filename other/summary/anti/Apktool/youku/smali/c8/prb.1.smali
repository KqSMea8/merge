.class public Lc8/prb;
.super Lc8/MXf;
.source "WXAudioModule.java"

# interfaces
.implements Lc8/irb;
.implements Lc8/uXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/krb;,
        Lc8/mrb;,
        Lc8/nrb;,
        Lc8/orb;
    }
.end annotation


# instance fields
.field private autoStartPlayWhenReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lc8/EWf;",
            ">;"
        }
    .end annotation
.end field

.field private generateId:Ljava/util/concurrent/atomic/AtomicLong;

.field handler:Landroid/os/Handler;

.field private instancePlayerIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private loopWhenPlayEnded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mAudioManager:Landroid/media/AudioManager;

.field mCompletionListener:Lc8/mrb;

.field mErrorListener:Lc8/nrb;

.field mHasErrorInGainAudioFocus:Z

.field mPreparedListener:Lc8/orb;

.field private mWXAudioFocusListener:Lc8/krb;

.field private optionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private pausedWhenLoseAudioFocus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private playerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private statusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc8/prb;->generateId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/prb;->instancePlayerIdMap:Ljava/util/Map;

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    .line 244
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    .line 246
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/prb;->callbackMap:Ljava/util/Map;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/prb;->autoStartPlayWhenReady:Ljava/util/List;

    .line 249
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/prb;->loopWhenPlayEnded:Ljava/util/List;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/prb;->pausedWhenLoseAudioFocus:Ljava/util/List;

    .line 252
    iput-object v1, p0, Lc8/prb;->mAudioManager:Landroid/media/AudioManager;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/prb;->mHasErrorInGainAudioFocus:Z

    .line 255
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lc8/prb;->handler:Landroid/os/Handler;

    .line 367
    new-instance v0, Lc8/orb;

    invoke-direct {v0, p0, v1}, Lc8/orb;-><init>(Lc8/prb;Lc8/jrb;)V

    iput-object v0, p0, Lc8/prb;->mPreparedListener:Lc8/orb;

    .line 390
    new-instance v0, Lc8/nrb;

    invoke-direct {v0, p0, v1}, Lc8/nrb;-><init>(Lc8/prb;Lc8/jrb;)V

    iput-object v0, p0, Lc8/prb;->mErrorListener:Lc8/nrb;

    .line 403
    new-instance v0, Lc8/mrb;

    invoke-direct {v0, p0, v1}, Lc8/mrb;-><init>(Lc8/prb;Lc8/jrb;)V

    iput-object v0, p0, Lc8/prb;->mCompletionListener:Lc8/mrb;

    .line 594
    new-instance v0, Lc8/krb;

    invoke-direct {v0, p0}, Lc8/krb;-><init>(Lc8/prb;)V

    iput-object v0, p0, Lc8/prb;->mWXAudioFocusListener:Lc8/krb;

    .line 595
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 6

    .prologue
    .line 579
    const/4 v1, 0x1

    .line 580
    .local v1, "noOneIsPlaying":Z
    :try_start_0
    iget-object v3, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 581
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 582
    const/4 v1, 0x0

    goto :goto_0

    .line 585
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_1
    if-eqz v1, :cond_2

    .line 586
    invoke-direct {p0}, Lc8/prb;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lc8/prb;->mWXAudioFocusListener:Lc8/krb;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_2
    :goto_1
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "error in abandonAudioFocus"

    invoke-static {v3, v0}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$100(Lc8/prb;Landroid/media/MediaPlayer;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lc8/prb;
    .param p1, "x1"    # Landroid/media/MediaPlayer;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lc8/prb;->getIdByPlayer(Landroid/media/MediaPlayer;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lc8/prb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/prb;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/prb;->loopWhenPlayEnded:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1100(Lc8/prb;)V
    .locals 0
    .param p0, "x0"    # Lc8/prb;

    .prologue
    .line 237
    invoke-direct {p0}, Lc8/prb;->abandonAudioFocus()V

    return-void
.end method

.method static synthetic access$1200(Lc8/prb;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/prb;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lc8/prb;Ljava/lang/Long;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lc8/prb;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lc8/prb;->getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lc8/prb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/prb;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/prb;->pausedWhenLoseAudioFocus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/prb;Ljava/lang/Long;I)V
    .locals 0
    .param p0, "x0"    # Lc8/prb;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # I

    .prologue
    .line 237
    invoke-direct {p0, p1, p2}, Lc8/prb;->changeStatus(Ljava/lang/Long;I)V

    return-void
.end method

.method static synthetic access$300(Lc8/prb;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/prb;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/prb;->autoStartPlayWhenReady:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lc8/prb;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/prb;

    .prologue
    .line 237
    iget-object v0, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lc8/prb;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/prb;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lc8/prb;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lc8/prb;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lc8/prb;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/prb;
    .param p1, "x1"    # Ljava/lang/Long;
    .param p2, "x2"    # Ljava/lang/Integer;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private changeStatus(Ljava/lang/Long;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "status"    # I

    .prologue
    .line 451
    iget-object v0, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    return-void
.end method

.method private collectPlayerIdByInstanceId(Ljava/lang/String;J)V
    .locals 2
    .param p1, "instanceId"    # Ljava/lang/String;
    .param p2, "id"    # J

    .prologue
    .line 484
    iget-object v1, p0, Lc8/prb;->instancePlayerIdMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 485
    .local v0, "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .restart local v0    # "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v1, p0, Lc8/prb;->instancePlayerIdMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 490
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_1
    return-void
.end method

.method private doPlayInner(Ljava/lang/Long;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 542
    :try_start_0
    invoke-direct {p0, p1}, Lc8/prb;->getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 543
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lc8/prb;->changeStatus(Ljava/lang/Long;I)V

    .line 544
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-direct {p0, p1, v1, v2}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :goto_0
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "error in play"

    invoke-static {v1, v0}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 547
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "error in start play"

    invoke-direct {p0, p1, v1, v2}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "status"    # Ljava/lang/Integer;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 444
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "id"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string/jumbo v1, "status"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v1, "value"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    return-object v0
.end method

.method private generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "status"    # Ljava/lang/Integer;
    .param p3, "errCode"    # Ljava/lang/String;
    .param p4, "errMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 436
    .local v0, "err":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    invoke-direct {p0, p1, p2, v0}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 3

    .prologue
    .line 357
    :try_start_0
    iget-object v1, p0, Lc8/prb;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 358
    iget-object v1, p0, Lc8/prb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lc8/prb;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/prb;->mAudioManager:Landroid/media/AudioManager;

    return-object v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "error in getSystemService of audio"

    invoke-static {v1, v0}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 362
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/prb;->mHasErrorInGainAudioFocus:Z

    goto :goto_0
.end method

.method private getIdByPlayer(Landroid/media/MediaPlayer;)Ljava/lang/Long;
    .locals 4
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 475
    iget-object v1, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 476
    .local v0, "one":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/media/MediaPlayer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 477
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 480
    .end local v0    # "one":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Landroid/media/MediaPlayer;>;"
    :goto_0
    return-object v1

    :cond_1
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method private getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;
    .locals 2
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 466
    iget-object v1, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaPlayer;

    .line 467
    .local v0, "p":Landroid/media/MediaPlayer;
    if-nez v0, :cond_0

    .line 468
    new-instance v0, Landroid/media/MediaPlayer;

    .end local v0    # "p":Landroid/media/MediaPlayer;
    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 469
    .restart local v0    # "p":Landroid/media/MediaPlayer;
    iget-object v1, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_0
    return-object v0
.end method

.method private invokeCallbackAndKeepAlive(Ljava/util/Map;)V
    .locals 3
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
    .line 455
    .local p1, "callback":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 458
    :cond_1
    const-string/jumbo v2, "id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 459
    .local v1, "id":Ljava/lang/Long;
    iget-object v2, p0, Lc8/prb;->callbackMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/EWf;

    .line 460
    .local v0, "cb":Lc8/EWf;
    if-eqz v0, :cond_0

    .line 461
    invoke-interface {v0, p1}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private tryToGainAudioFocus(I)Z
    .locals 8
    .param p1, "duration"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 553
    const/4 v0, 0x2

    .line 554
    .local v0, "durationHint":I
    const v5, 0x186a0

    if-le p1, v5, :cond_1

    .line 555
    const/4 v0, 0x1

    .line 560
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lc8/prb;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v5

    iget-object v6, p0, Lc8/prb;->mWXAudioFocusListener:Lc8/krb;

    const/4 v7, 0x3

    invoke-virtual {v5, v6, v7, v0}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 563
    .local v2, "result":I
    if-ne v2, v3, :cond_2

    .line 573
    .end local v2    # "result":I
    :goto_1
    return v3

    .line 556
    :cond_1
    if-lez p1, :cond_0

    const/16 v5, 0x9c4

    if-ge p1, v5, :cond_0

    .line 557
    const/4 v0, 0x3

    goto :goto_0

    .line 565
    .restart local v2    # "result":I
    :cond_2
    if-nez v2, :cond_3

    move v3, v4

    .line 566
    goto :goto_1

    :cond_3
    move v3, v4

    .line 568
    goto :goto_1

    .line 570
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "error in tryToGainAudioFocus"

    invoke-static {v5, v1}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 572
    iput-boolean v3, p0, Lc8/prb;->mHasErrorInGainAudioFocus:Z

    move v3, v4

    .line 573
    goto :goto_1
.end method


# virtual methods
.method public canPlayType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "mediaType"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 260
    const-string/jumbo v0, "audio/wav"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "audio/x-wav"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    :cond_0
    const-string/jumbo v0, "probably"

    .line 272
    :goto_0
    return-object v0

    .line 262
    :cond_1
    const-string/jumbo v0, "audio/mp3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 263
    const-string/jumbo v0, "probably"

    goto :goto_0

    .line 264
    :cond_2
    const-string/jumbo v0, "audio/aac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "audio/mp4"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 265
    :cond_3
    const-string/jumbo v0, "probably"

    goto :goto_0

    .line 266
    :cond_4
    const-string/jumbo v0, "audio/amr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 267
    const-string/jumbo v0, "probably"

    goto :goto_0

    .line 268
    :cond_5
    const-string/jumbo v0, "application/octet-stream"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    const-string/jumbo v0, ""

    goto :goto_0

    .line 272
    :cond_6
    const-string/jumbo v0, "maybe"

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 759
    iget-object v3, p0, Lc8/prb;->mWXSDKInstance:Lc8/nVf;

    if-nez v3, :cond_0

    .line 760
    const-string/jumbo v3, "in WXAudioModule destory() mWXSDKInstance is null."

    invoke-static {v3}, Lc8/xgg;->w(Ljava/lang/String;)V

    .line 781
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v3, p0, Lc8/prb;->instancePlayerIdMap:Ljava/util/Map;

    iget-object v4, p0, Lc8/prb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 764
    .local v2, "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v2, :cond_2

    .line 766
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 767
    .local v0, "id":Ljava/lang/Long;
    iget-object v4, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v4, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 769
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_1

    .line 770
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 772
    :cond_1
    iget-object v4, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v4, p0, Lc8/prb;->callbackMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 777
    .end local v0    # "id":Ljava/lang/Long;
    .end local v1    # "mp":Landroid/media/MediaPlayer;
    :cond_2
    iget-object v3, p0, Lc8/prb;->instancePlayerIdMap:Ljava/util/Map;

    iget-object v4, p0, Lc8/prb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    invoke-direct {p0}, Lc8/prb;->abandonAudioFocus()V

    goto :goto_0
.end method

.method public load(Ljava/util/Map;Lc8/EWf;)V
    .locals 12
    .param p2, "statusCallback"    # Lc8/EWf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lc8/EWf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    .line 279
    const-wide/16 v2, -0x1

    .line 280
    .local v2, "id":J
    new-instance v1, Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 281
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 282
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "5"

    const-string/jumbo v10, "empty option"

    invoke-direct {p0, v7, v8, v9, v10}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    .line 353
    :goto_0
    return-void

    .line 286
    :cond_0
    const-string/jumbo v7, "id"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    .line 287
    iget-object v7, p0, Lc8/prb;->generateId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    .line 291
    :goto_1
    const-string/jumbo v7, "id"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v7, "url"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 294
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "4"

    const-string/jumbo v10, "empty option url"

    invoke-direct {p0, v7, v8, v9, v10}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto :goto_0

    .line 289
    :cond_1
    const-string/jumbo v7, "id"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_1

    .line 297
    :cond_2
    const-string/jumbo v7, "url"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 298
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    move-result v7

    if-nez v7, :cond_3

    .line 299
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "4"

    const-string/jumbo v10, "not a vaild url"

    invoke-direct {p0, v7, v8, v9, v10}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto :goto_0

    .line 304
    :cond_3
    iget-object v7, p0, Lc8/prb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v7}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v2, v3}, Lc8/prb;->collectPlayerIdByInstanceId(Ljava/lang/String;J)V

    .line 305
    iget-object v7, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 306
    iget-object v7, p0, Lc8/prb;->autoStartPlayWhenReady:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 307
    iget-object v7, p0, Lc8/prb;->loopWhenPlayEnded:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 311
    :goto_2
    iget-object v7, p0, Lc8/prb;->callbackMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v7, v11}, Lc8/prb;->changeStatus(Ljava/lang/Long;I)V

    .line 313
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/prb;->getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v4

    .line 316
    .local v4, "player":Landroid/media/MediaPlayer;
    const-string/jumbo v7, "volume"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 317
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 319
    .local v6, "volume":Ljava/lang/Float;
    :try_start_0
    const-string/jumbo v7, "volume"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 323
    :goto_3
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 324
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 327
    .end local v6    # "volume":Ljava/lang/Float;
    :cond_4
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "autoplay"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 328
    iget-object v7, p0, Lc8/prb;->autoStartPlayWhenReady:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    :cond_5
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "loop"

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 331
    iget-object v7, p0, Lc8/prb;->loopWhenPlayEnded:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_6
    :try_start_1
    invoke-direct {p0}, Lc8/prb;->getAudioManager()Landroid/media/AudioManager;

    .line 339
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->reset()V

    .line 340
    iget-object v7, p0, Lc8/prb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v7}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 341
    iget-object v7, p0, Lc8/prb;->mCompletionListener:Lc8/mrb;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 342
    iget-object v7, p0, Lc8/prb;->mErrorListener:Lc8/nrb;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 343
    iget-object v7, p0, Lc8/prb;->mPreparedListener:Lc8/orb;

    invoke-virtual {v4, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 344
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-direct {p0, v7, v8, v9}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    .line 347
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {p0, v7, v10}, Lc8/prb;->changeStatus(Ljava/lang/Long;I)V

    .line 351
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string/jumbo v9, "5"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v8, v9, v10}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    invoke-direct {p0, v7}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "player":Landroid/media/MediaPlayer;
    :cond_7
    iget-object v7, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .restart local v4    # "player":Landroid/media/MediaPlayer;
    .restart local v6    # "volume":Ljava/lang/Float;
    :catch_1
    move-exception v7

    goto/16 :goto_3
.end method

.method public pause(Ljava/lang/Long;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Long;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 646
    if-nez p1, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    iget-object v2, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 653
    invoke-direct {p0, p1}, Lc8/prb;->getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 654
    .local v1, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 658
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 659
    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lc8/prb;->changeStatus(Ljava/lang/Long;I)V

    .line 660
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {p0, p1, v2, v3}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "error in pause"

    invoke-static {v2, v0}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 663
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "error in pause"

    invoke-direct {p0, p1, v2, v3}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public play(Ljava/lang/Long;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Long;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    const/4 v6, 0x6

    .line 497
    if-nez p1, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    iget-object v4, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 504
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 506
    .local v0, "duration":Ljava/lang/Integer;
    :try_start_0
    iget-object v4, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 507
    iget-object v4, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string/jumbo v5, "duration"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 512
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lc8/prb;->tryToGainAudioFocus(I)Z

    move-result v3

    .line 514
    .local v3, "result":Z
    if-nez v3, :cond_3

    iget-boolean v4, p0, Lc8/prb;->mHasErrorInGainAudioFocus:Z

    if-eqz v4, :cond_7

    .line 516
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lc8/prb;->getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 517
    .local v2, "player":Landroid/media/MediaPlayer;
    const/4 v5, 0x3

    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v5, v4, :cond_0

    .line 518
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_0

    .line 520
    const/4 v5, 0x2

    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v5, v4, :cond_4

    const/4 v5, 0x4

    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    .line 521
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_5

    .line 522
    :cond_4
    invoke-direct {p0, p1}, Lc8/prb;->doPlayInner(Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 530
    .end local v2    # "player":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception occur. IllegalStateException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 532
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 531
    invoke-direct {p0, p1, v4, v5}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 523
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "player":Landroid/media/MediaPlayer;
    :cond_5
    const/4 v5, 0x5

    :try_start_2
    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_6

    .line 524
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 525
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 526
    invoke-direct {p0, p1}, Lc8/prb;->doPlayInner(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 527
    :cond_6
    const/4 v5, 0x1

    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 528
    iget-object v4, p0, Lc8/prb;->autoStartPlayWhenReady:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 535
    .end local v2    # "player":Landroid/media/MediaPlayer;
    :cond_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "request audio focus failed. maybe there is a high prior audio task is playing"

    invoke-direct {p0, p1, v4, v5}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto/16 :goto_0

    .end local v3    # "result":Z
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method public seek(Ljava/lang/Long;I)V
    .locals 7
    .param p1, "id"    # Ljava/lang/Long;
    .param p2, "seekTime"    # I
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    const/4 v6, 0x6

    .line 696
    if-nez p1, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    iget-object v4, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 703
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 705
    .local v0, "duration":Ljava/lang/Integer;
    :try_start_0
    iget-object v4, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 706
    iget-object v4, p0, Lc8/prb;->optionsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string/jumbo v5, "duration"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 712
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lc8/prb;->tryToGainAudioFocus(I)Z

    move-result v3

    .line 713
    .local v3, "result":Z
    if-nez v3, :cond_3

    iget-boolean v4, p0, Lc8/prb;->mHasErrorInGainAudioFocus:Z

    if-eqz v4, :cond_8

    .line 715
    :cond_3
    :try_start_1
    invoke-direct {p0, p1}, Lc8/prb;->getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v2

    .line 716
    .local v2, "player":Landroid/media/MediaPlayer;
    const/4 v5, 0x3

    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v5, v4, :cond_4

    .line 717
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 719
    :cond_4
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 720
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 721
    invoke-direct {p0, p1}, Lc8/prb;->doPlayInner(Ljava/lang/Long;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 731
    .end local v2    # "player":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    .line 732
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exception occur. IllegalStateException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 733
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 732
    invoke-direct {p0, p1, v4, v5}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 722
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "player":Landroid/media/MediaPlayer;
    :cond_5
    const/4 v5, 0x2

    :try_start_2
    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v5, v4, :cond_6

    const/4 v5, 0x4

    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    .line 723
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_7

    .line 724
    :cond_6
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 725
    invoke-direct {p0, p1}, Lc8/prb;->doPlayInner(Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 726
    :cond_7
    const/4 v5, 0x5

    iget-object v4, p0, Lc8/prb;->statusMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v5, v4, :cond_0

    .line 727
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->pause()V

    .line 728
    invoke-virtual {v2, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 729
    invoke-direct {p0, p1}, Lc8/prb;->doPlayInner(Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 736
    .end local v2    # "player":Landroid/media/MediaPlayer;
    :cond_8
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "request audio focus failed. maybe there is a high prior audio task is playing"

    invoke-direct {p0, p1, v4, v5}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto/16 :goto_0

    .end local v3    # "result":Z
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method public setVolume(F)V
    .locals 5
    .param p1, "volume"    # F
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 744
    iget-object v3, p0, Lc8/prb;->instancePlayerIdMap:Ljava/util/Map;

    iget-object v4, p0, Lc8/prb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 745
    .local v2, "playerIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-nez v2, :cond_1

    .line 755
    :cond_0
    return-void

    .line 749
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 750
    .local v0, "id":Ljava/lang/Long;
    iget-object v4, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 751
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-eqz v1, :cond_2

    .line 752
    invoke-virtual {v1, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0
.end method

.method public stop(Ljava/lang/Long;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/Long;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 670
    if-nez p1, :cond_1

    .line 691
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v2, p0, Lc8/prb;->playerMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 677
    invoke-direct {p0, p1}, Lc8/prb;->getPlayer(Ljava/lang/Long;)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 678
    .local v1, "player":Landroid/media/MediaPlayer;
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 682
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 683
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 684
    const/4 v2, 0x5

    invoke-direct {p0, p1, v2}, Lc8/prb;->changeStatus(Ljava/lang/Long;I)V

    .line 685
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {p0, p1, v2, v3}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    .line 686
    invoke-direct {p0}, Lc8/prb;->abandonAudioFocus()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "error in stop"

    invoke-static {v2, v0}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 689
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "error in stop"

    invoke-direct {p0, p1, v2, v3}, Lc8/prb;->generateCallbackValue(Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/prb;->invokeCallbackAndKeepAlive(Ljava/util/Map;)V

    goto :goto_0
.end method
