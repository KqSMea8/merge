.class public Lc8/TGd;
.super Lc8/VGd;
.source "Logger.java"

# interfaces
.implements Lc8/PGd;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/VGd",
        "<",
        "Lc8/PGd;",
        ">;",
        "Lc8/PGd;"
    }
.end annotation


# static fields
.field private static sInstance:Lc8/TGd;


# instance fields
.field private mInitialized:Z


# direct methods
.method protected constructor <init>(Lc8/PGd;)V
    .locals 1
    .param p1, "innerImpl"    # Lc8/PGd;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lc8/VGd;-><init>(Ljava/lang/Object;)V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/TGd;->mInitialized:Z

    .line 17
    return-void
.end method

.method public static get()Lc8/TGd;
    .locals 3

    .prologue
    .line 20
    sget-object v0, Lc8/TGd;->sInstance:Lc8/TGd;

    if-nez v0, :cond_1

    .line 21
    const-class v1, Lc8/TGd;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lc8/TGd;->sInstance:Lc8/TGd;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lc8/TGd;

    new-instance v2, Lc8/HGd;

    invoke-direct {v2}, Lc8/HGd;-><init>()V

    invoke-direct {v0, v2}, Lc8/TGd;-><init>(Lc8/PGd;)V

    sput-object v0, Lc8/TGd;->sInstance:Lc8/TGd;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lc8/TGd;->sInstance:Lc8/TGd;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1, p2}, Lc8/PGd;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1, p2}, Lc8/PGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 70
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1, p2, p3}, Lc8/PGd;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    return-void
.end method

.method public flush(Z)V
    .locals 1
    .param p1, "async"    # Z

    .prologue
    .line 90
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1}, Lc8/PGd;->flush(Z)V

    .line 91
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1, p2}, Lc8/PGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 36
    iget-boolean v0, p0, Lc8/TGd;->mInitialized:Z

    if-nez v0, :cond_0

    .line 37
    iput-boolean v1, p0, Lc8/TGd;->mInitialized:Z

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0, v1}, Lc8/TGd;->setDebugMode(Z)V

    .line 43
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/Android/data/pushSdk/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0, v0}, Lc8/TGd;->setFilePath(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/TGd;->setDebugMode(Z)V

    goto :goto_0
.end method

.method public isDebugMode()Z
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0}, Lc8/PGd;->isDebugMode()Z

    move-result v0

    return v0
.end method

.method public setCacheCount(I)V
    .locals 1
    .param p1, "counter"    # I

    .prologue
    .line 80
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1}, Lc8/PGd;->setCacheCount(I)V

    .line 81
    return-void
.end method

.method public setCacheDuration(J)V
    .locals 1
    .param p1, "seconds"    # J

    .prologue
    .line 75
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1, p2}, Lc8/PGd;->setCacheDuration(J)V

    .line 76
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1
    .param p1, "debug"    # Z

    .prologue
    .line 95
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1}, Lc8/PGd;->setDebugMode(Z)V

    .line 96
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1}, Lc8/PGd;->setFilePath(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0}, Lc8/TGd;->getImpl()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/PGd;

    invoke-interface {v0, p1, p2}, Lc8/PGd;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
