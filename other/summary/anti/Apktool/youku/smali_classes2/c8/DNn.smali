.class public Lc8/DNn;
.super Ljava/lang/Object;
.source "PreLoadJNI.java"


# static fields
.field private static final MSG_PRELOAD_FAIL:I = 0x1

.field private static final MSG_PRELOAD_SUCCESS:I

.field private static final TAG:Ljava/lang/String;

.field private static preLoadJNI:Lc8/DNn;


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private mOnPreLoadDoneListener:Lc8/kNn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lc8/DNn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/DNn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lc8/CNn;

    invoke-direct {v0, p0}, Lc8/CNn;-><init>(Lc8/DNn;)V

    iput-object v0, p0, Lc8/DNn;->eventHandler:Landroid/os/Handler;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lc8/DNn;)Lc8/kNn;
    .locals 1
    .param p0, "x0"    # Lc8/DNn;

    .prologue
    .line 16
    iget-object v0, p0, Lc8/DNn;->mOnPreLoadDoneListener:Lc8/kNn;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lc8/DNn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lc8/DNn;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lc8/DNn;->preLoadJNI:Lc8/DNn;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lc8/DNn;

    invoke-direct {v0}, Lc8/DNn;-><init>()V

    sput-object v0, Lc8/DNn;->preLoadJNI:Lc8/DNn;

    .line 31
    :cond_0
    sget-object v0, Lc8/DNn;->preLoadJNI:Lc8/DNn;

    return-object v0
.end method

.method private static initPlayerNative()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 83
    :try_start_0
    const-string/jumbo v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lc8/nEj;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    sget-object v4, Lc8/nEj;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "absPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getExternalCacheDir().getAbsolutePath():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/youku_video_cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    invoke-static {}, Lc8/YOm;->getSdAvailableSize()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v4, v6

    div-double/2addr v4, v8

    div-double/2addr v4, v8

    double-to-long v2, v4

    .line 88
    .local v2, "size":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v2    # "size":J
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 101
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/DNn;

    .line 102
    .local v1, "mp":Lc8/DNn;
    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    iget-object v2, v1, Lc8/DNn;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, v1, Lc8/DNn;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 108
    .local v0, "m":Landroid/os/Message;
    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 120
    sget-object v2, Lc8/DNn;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown message type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/HOm;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :pswitch_0
    iget-object v2, v1, Lc8/DNn;->mOnPreLoadDoneListener:Lc8/kNn;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, v1, Lc8/DNn;->mOnPreLoadDoneListener:Lc8/kNn;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3}, Lc8/kNn;->onPreloadSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v2, v1, Lc8/DNn;->mOnPreLoadDoneListener:Lc8/kNn;

    if-eqz v2, :cond_0

    .line 116
    iget-object v2, v1, Lc8/DNn;->mOnPreLoadDoneListener:Lc8/kNn;

    const-string/jumbo v3, ""

    invoke-interface {v2, v3}, Lc8/kNn;->onPreloadFail(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static release()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    sput-object v0, Lc8/DNn;->preLoadJNI:Lc8/DNn;

    .line 78
    return-void
.end method

.method public static start(Ljava/lang/String;)V
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-static {}, Lc8/DNn;->getInstance()Lc8/DNn;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 73
    .local v1, "wk":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/youku/uplayer/PreLoadJNI;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Lc8/DNn;->postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 74
    return-void

    .line 69
    .end local v1    # "wk":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/youku/uplayer/PreLoadJNI;>;"
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public setOnPreLoadDoneListener(Lc8/kNn;)V
    .locals 0
    .param p1, "onPreLoadDoneListener"    # Lc8/kNn;

    .prologue
    .line 24
    iput-object p1, p0, Lc8/DNn;->mOnPreLoadDoneListener:Lc8/kNn;

    .line 25
    return-void
.end method
