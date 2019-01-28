.class public Lc8/PMn;
.super Ljava/lang/Object;
.source "NetCacheSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OMn;
    }
.end annotation


# static fields
.field private static final MSG_PRELOAD_FAIL:I = 0xbba

.field private static final MSG_PRELOAD_SUCCESS:I = 0xbb9

.field private static final TAG:Ljava/lang/String;

.field public static isloaded:Z = false

.field private static netcachesource:Lc8/PMn; = null

.field public static final preload_size:J = 0x32L


# instance fields
.field private eventHandler:Landroid/os/Handler;

.field private mNativeContext:I

.field private mOnPreLoadDoneListener:Lc8/kNn;

.field wk:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/PMn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lc8/PMn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/PMn;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    iput v1, p0, Lc8/PMn;->mNativeContext:I

    .line 50
    sget-boolean v1, Lc8/PMn;->isloaded:Z

    if-nez v1, :cond_0

    .line 51
    const-string/jumbo v1, "aliplayer-1.1.7"

    invoke-static {v1}, Lc8/TOm;->loadLibrary(Ljava/lang/String;)V

    .line 52
    const-string/jumbo v1, "uplayer24-1.1.7"

    invoke-static {v1}, Lc8/TOm;->loadLibrary(Ljava/lang/String;)V

    .line 53
    const/4 v1, 0x1

    sput-boolean v1, Lc8/PMn;->isloaded:Z

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 56
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    .line 57
    new-instance v1, Lc8/OMn;

    invoke-direct {v1, p0, v0}, Lc8/OMn;-><init>(Lc8/PMn;Landroid/os/Looper;)V

    iput-object v1, p0, Lc8/PMn;->eventHandler:Landroid/os/Handler;

    .line 59
    :cond_1
    invoke-static {}, Lc8/PMn;->initPlayerNative()V

    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lc8/PMn;->wk:Ljava/lang/ref/WeakReference;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lc8/PMn;)Lc8/kNn;
    .locals 1
    .param p0, "x0"    # Lc8/PMn;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/PMn;->mOnPreLoadDoneListener:Lc8/kNn;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lc8/PMn;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInitPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 129
    const-string/jumbo v2, ""

    .line 131
    .local v2, "path":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lc8/nEj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 132
    sget-object v3, Lc8/nEj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "absPath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExternalCacheDir().getAbsolutePath():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/youku_video_cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    .end local v0    # "absPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 137
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lc8/PMn;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lc8/PMn;->netcachesource:Lc8/PMn;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lc8/PMn;

    invoke-direct {v0}, Lc8/PMn;-><init>()V

    sput-object v0, Lc8/PMn;->netcachesource:Lc8/PMn;

    .line 46
    :cond_0
    sget-object v0, Lc8/PMn;->netcachesource:Lc8/PMn;

    return-object v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/PMn;->getInitPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_preload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static initPlayerNative()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4090000000000000L    # 1024.0

    .line 110
    const-wide/16 v1, 0x0

    .line 112
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

    .line 113
    invoke-static {}, Lc8/YOm;->getSdAvailableSize()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v8, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    div-double/2addr v4, v10

    double-to-long v1, v4

    .line 114
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

    .line 121
    :cond_0
    :goto_0
    invoke-static {}, Lc8/PMn;->getInitPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lc8/PMn;->getPath()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-static/range {v0 .. v5}, Lc8/PMn;->native_preload_init(Ljava/lang/String;JLjava/lang/String;J)V

    .line 122
    return-void

    .line 117
    :catch_0
    move-exception v6

    .line 119
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static native native_preload_init(Ljava/lang/String;JLjava/lang/String;J)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "mediaplayer_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 146
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "mediaplayer_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/PMn;

    .line 147
    .local v1, "mp":Lc8/PMn;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postEventFromNative  mp--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    if-eqz v1, :cond_0

    iget v2, v1, Lc8/PMn;->mNativeContext:I

    if-nez v2, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v2, v1, Lc8/PMn;->eventHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, v1, Lc8/PMn;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Lc8/PMn;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public native native_preload_setup(Ljava/lang/Object;)V
.end method

.method public native preloadNetCacheSource(Ljava/lang/String;I)I
.end method

.method public native preloadNetCacheSourceRelease()V
.end method

.method public release()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-object v0, Lc8/PMn;->netcachesource:Lc8/PMn;

    .line 106
    invoke-virtual {p0}, Lc8/PMn;->preloadNetCacheSourceRelease()V

    .line 107
    return-void
.end method

.method public setOnPreLoadDoneListener(Lc8/kNn;)V
    .locals 0
    .param p1, "onPreLoadDoneListener"    # Lc8/kNn;

    .prologue
    .line 90
    iput-object p1, p0, Lc8/PMn;->mOnPreLoadDoneListener:Lc8/kNn;

    .line 91
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 93
    invoke-virtual {p0}, Lc8/PMn;->preloadNetCacheSourceRelease()V

    .line 94
    iget-object v0, p0, Lc8/PMn;->wk:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0, v0}, Lc8/PMn;->native_preload_setup(Ljava/lang/Object;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "native_preload_setup this "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/PMn;->wk:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc8/PMn;->preloadNetCacheSource(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    .line 97
    iget-object v0, p0, Lc8/PMn;->mOnPreLoadDoneListener:Lc8/kNn;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/PMn;->mOnPreLoadDoneListener:Lc8/kNn;

    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Lc8/kNn;->onPreloadFail(Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method
