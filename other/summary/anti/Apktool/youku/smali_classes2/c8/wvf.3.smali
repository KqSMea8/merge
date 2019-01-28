.class public Lc8/wvf;
.super Ljava/lang/Object;
.source "FileLoaderBuilder.java"

# interfaces
.implements Lc8/rvf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/rvf",
        "<",
        "Lc8/Axf;",
        ">;"
    }
.end annotation


# instance fields
.field private mFileLoader:Lc8/Axf;

.field private mHaveBuilt:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized build()Lc8/Axf;
    .locals 1

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/wvf;->mHaveBuilt:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lc8/wvf;->mFileLoader:Lc8/Axf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :goto_0
    monitor-exit p0

    return-object v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc8/wvf;->mHaveBuilt:Z

    .line 24
    iget-object v0, p0, Lc8/wvf;->mFileLoader:Lc8/Axf;

    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lc8/zxf;

    invoke-direct {v0}, Lc8/zxf;-><init>()V

    iput-object v0, p0, Lc8/wvf;->mFileLoader:Lc8/Axf;

    .line 27
    :cond_1
    iget-object v0, p0, Lc8/wvf;->mFileLoader:Lc8/Axf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lc8/wvf;->build()Lc8/Axf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic with(Ljava/lang/Object;)Lc8/rvf;
    .locals 1

    .prologue
    .line 7
    check-cast p1, Lc8/Axf;

    invoke-virtual {p0, p1}, Lc8/wvf;->with(Lc8/Axf;)Lc8/wvf;

    move-result-object v0

    return-object v0
.end method

.method public with(Lc8/Axf;)Lc8/wvf;
    .locals 2
    .param p1, "fileLoader"    # Lc8/Axf;

    .prologue
    .line 13
    iget-boolean v0, p0, Lc8/wvf;->mHaveBuilt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "FileLoaderBuilder has been built, not allow with() now"

    invoke-static {v0, v1}, Lc8/LNf;->checkState(ZLjava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lc8/wvf;->mFileLoader:Lc8/Axf;

    .line 15
    return-object p0

    .line 13
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
