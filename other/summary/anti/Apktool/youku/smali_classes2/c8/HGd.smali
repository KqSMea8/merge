.class public Lc8/HGd;
.super Ljava/lang/Object;
.source "DefaultLog.java"

# interfaces
.implements Lc8/PGd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/GGd;
    }
.end annotation


# instance fields
.field private mCacheCounter:I

.field private mCacheDuration:J

.field private mCachedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/GGd;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDebugMode:Z

.field private mDelayHandler:Landroid/os/Handler;

.field private mPath:Ljava/lang/String;

.field private mPid:Ljava/lang/String;

.field private mWriter:Lc8/MGd;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-wide/16 v0, 0x3c

    iput-wide v0, p0, Lc8/HGd;->mCacheDuration:J

    .line 24
    const/16 v0, 0xa

    iput v0, p0, Lc8/HGd;->mCacheCounter:I

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/HGd;->mDebugMode:Z

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/HGd;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/HGd;->mDelayHandler:Landroid/os/Handler;

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/data/pushSdk/defaultLog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/HGd;->mPath:Ljava/lang/String;

    .line 35
    new-instance v0, Lc8/MGd;

    invoke-direct {v0}, Lc8/MGd;-><init>()V

    iput-object v0, p0, Lc8/HGd;->mWriter:Lc8/MGd;

    .line 36
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/HGd;->mPid:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lc8/HGd;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/HGd;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lc8/HGd;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/HGd;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/HGd;->mDelayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lc8/HGd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/HGd;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/HGd;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/HGd;)Lc8/MGd;
    .locals 1
    .param p0, "x0"    # Lc8/HGd;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/HGd;->mWriter:Lc8/MGd;

    return-object v0
.end method

.method static synthetic access$400(Lc8/HGd;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lc8/HGd;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/HGd;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$500(Lc8/HGd;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/HGd;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/HGd;->mPid:Ljava/lang/String;

    return-object v0
.end method

.method private addLogInfo(Lc8/GGd;)V
    .locals 4
    .param p1, "logInfo"    # Lc8/GGd;

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "add logInfo error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkLogCount()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lc8/HGd;->mCacheCounter:I

    if-ne v0, v1, :cond_0

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/HGd;->flush(Z)V

    .line 56
    :cond_0
    return-void
.end method

.method private startDelayTimer()V
    .locals 6

    .prologue
    .line 41
    iget-object v0, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/HGd;->mDelayHandler:Landroid/os/Handler;

    new-instance v1, Lc8/EGd;

    invoke-direct {v1, p0}, Lc8/EGd;-><init>(Lc8/HGd;)V

    iget-wide v2, p0, Lc8/HGd;->mCacheDuration:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v1, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 64
    :try_start_0
    invoke-direct {p0}, Lc8/HGd;->startDelayTimer()V

    .line 65
    new-instance v0, Lc8/GGd;

    const-string/jumbo v2, "D"

    invoke-direct {v0, p0, v2, p1, p2}, Lc8/GGd;-><init>(Lc8/HGd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/HGd;->addLogInfo(Lc8/GGd;)V

    .line 66
    invoke-direct {p0}, Lc8/HGd;->checkLogCount()V

    .line 67
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-boolean v0, p0, Lc8/HGd;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 100
    :try_start_0
    invoke-direct {p0}, Lc8/HGd;->startDelayTimer()V

    .line 101
    new-instance v0, Lc8/GGd;

    const-string/jumbo v2, "E"

    invoke-direct {v0, p0, v2, p1, p2}, Lc8/GGd;-><init>(Lc8/HGd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/HGd;->addLogInfo(Lc8/GGd;)V

    .line 102
    invoke-direct {p0}, Lc8/HGd;->checkLogCount()V

    .line 103
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    iget-boolean v0, p0, Lc8/HGd;->mDebugMode:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_0
    iget-object v1, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-direct {p0}, Lc8/HGd;->startDelayTimer()V

    .line 113
    new-instance v0, Lc8/GGd;

    const-string/jumbo v2, "E"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, p1, v3}, Lc8/GGd;-><init>(Lc8/HGd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/HGd;->addLogInfo(Lc8/GGd;)V

    .line 114
    invoke-direct {p0}, Lc8/HGd;->checkLogCount()V

    .line 115
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush(Z)V
    .locals 2
    .param p1, "async"    # Z

    .prologue
    .line 135
    new-instance v0, Lc8/FGd;

    invoke-direct {v0, p0}, Lc8/FGd;-><init>(Lc8/HGd;)V

    .line 160
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz p1, :cond_0

    .line 161
    invoke-static {}, Lc8/OGd;->get()Lc8/OGd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/OGd;->execute(Ljava/lang/Runnable;)V

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v1, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 76
    :try_start_0
    invoke-direct {p0}, Lc8/HGd;->startDelayTimer()V

    .line 77
    new-instance v0, Lc8/GGd;

    const-string/jumbo v2, "I"

    invoke-direct {v0, p0, v2, p1, p2}, Lc8/GGd;-><init>(Lc8/HGd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/HGd;->addLogInfo(Lc8/GGd;)V

    .line 78
    invoke-direct {p0}, Lc8/HGd;->checkLogCount()V

    .line 79
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lc8/HGd;->mDebugMode:Z

    return v0
.end method

.method public setCacheCount(I)V
    .locals 0
    .param p1, "counter"    # I

    .prologue
    .line 125
    iput p1, p0, Lc8/HGd;->mCacheCounter:I

    .line 126
    return-void
.end method

.method public setCacheDuration(J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lc8/HGd;->mCacheDuration:J

    .line 121
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lc8/HGd;->mDebugMode:Z

    .line 170
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lc8/HGd;->mPath:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v1, p0, Lc8/HGd;->mCachedList:Ljava/util/List;

    monitor-enter v1

    .line 88
    :try_start_0
    invoke-direct {p0}, Lc8/HGd;->startDelayTimer()V

    .line 89
    new-instance v0, Lc8/GGd;

    const-string/jumbo v2, "W"

    invoke-direct {v0, p0, v2, p1, p2}, Lc8/GGd;-><init>(Lc8/HGd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lc8/HGd;->addLogInfo(Lc8/GGd;)V

    .line 90
    invoke-direct {p0}, Lc8/HGd;->checkLogCount()V

    .line 91
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
