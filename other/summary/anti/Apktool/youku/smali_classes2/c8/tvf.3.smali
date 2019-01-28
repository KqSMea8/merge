.class public Lc8/tvf;
.super Ljava/lang/Object;
.source "BytesPoolBuilder.java"

# interfaces
.implements Lc8/rvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/rvf",
        "<",
        "Lc8/JNf;",
        ">;"
    }
.end annotation


# instance fields
.field private mBytesPool:Lc8/JNf;

.field private mComponentCallbacks:Landroid/content/ComponentCallbacks2;

.field private mHaveBuilt:Z

.field private mMaxSize:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private registerComponentCallbacks(Lc8/JNf;)Lc8/JNf;
    .locals 3
    .param p1, "bytesPool"    # Lc8/JNf;

    .prologue
    .line 51
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 52
    new-instance v1, Lc8/svf;

    invoke-direct {v1, p0, p1}, Lc8/svf;-><init>(Lc8/tvf;Lc8/JNf;)V

    iput-object v1, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    .line 68
    iget-object v1, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 70
    :cond_0
    return-object p1
.end method


# virtual methods
.method public declared-synchronized build()Lc8/JNf;
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/tvf;->mHaveBuilt:Z

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lc8/tvf;->mBytesPool:Lc8/JNf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :goto_0
    monitor-exit p0

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc8/tvf;->mHaveBuilt:Z

    .line 40
    iget-object v0, p0, Lc8/tvf;->mBytesPool:Lc8/JNf;

    if-nez v0, :cond_3

    .line 41
    new-instance v1, Lc8/Cvf;

    iget-object v0, p0, Lc8/tvf;->mMaxSize:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/tvf;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-direct {v1, v0}, Lc8/Cvf;-><init>(I)V

    iput-object v1, p0, Lc8/tvf;->mBytesPool:Lc8/JNf;

    .line 45
    :cond_1
    :goto_2
    iget-object v0, p0, Lc8/tvf;->mBytesPool:Lc8/JNf;

    invoke-direct {p0, v0}, Lc8/tvf;->registerComponentCallbacks(Lc8/JNf;)Lc8/JNf;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_2
    const/high16 v0, 0x100000

    goto :goto_1

    .line 42
    :cond_3
    iget-object v0, p0, Lc8/tvf;->mMaxSize:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lc8/tvf;->mBytesPool:Lc8/JNf;

    iget-object v1, p0, Lc8/tvf;->mMaxSize:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lc8/JNf;->resize(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lc8/tvf;->build()Lc8/JNf;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 76
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    .end local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 80
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    .line 81
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    if-eqz v2, :cond_1

    .line 82
    iget-object v2, p0, Lc8/tvf;->mComponentCallbacks:Landroid/content/ComponentCallbacks2;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 84
    :cond_1
    throw v1
.end method

.method public maxSize(Ljava/lang/Integer;)Lc8/tvf;
    .locals 2
    .param p1, "maxSize"    # Ljava/lang/Integer;

    .prologue
    .line 29
    iget-boolean v0, p0, Lc8/tvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "BytesPoolBuilder has been built, not allow maxSize() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lc8/tvf;->mMaxSize:Ljava/lang/Integer;

    .line 31
    return-object p0

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lc8/rvf;
    .locals 1

    .prologue
    .line 15
    check-cast p1, Lc8/JNf;

    invoke-virtual {p0, p1}, Lc8/tvf;->with(Lc8/JNf;)Lc8/tvf;

    move-result-object v0

    return-object v0
.end method

.method public with(Lc8/JNf;)Lc8/tvf;
    .locals 2
    .param p1, "item"    # Lc8/JNf;

    .prologue
    .line 23
    iget-boolean v0, p0, Lc8/tvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "BytesPoolBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 24
    iput-object p1, p0, Lc8/tvf;->mBytesPool:Lc8/JNf;

    .line 25
    return-object p0

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
