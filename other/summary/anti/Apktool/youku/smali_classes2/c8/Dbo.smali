.class public abstract Lc8/Dbo;
.super Ljava/lang/Object;
.source "IStreamPagePrestener.java"

# interfaces
.implements Lc8/ybo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Cbo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/ybo;"
    }
.end annotation


# instance fields
.field private mCacheResponse:Lc8/Ibo;

.field private mExecutor:Lc8/wbo;

.field protected mIsAvail:Z

.field protected mIsPreLoad:Z

.field private mLock:Ljava/lang/Object;

.field private mPageInfo:Lc8/iao;

.field private mPaginationView:Lc8/oao;


# direct methods
.method public constructor <init>(Lc8/oao;)V
    .locals 1
    .param p1, "view"    # Lc8/oao;

    .prologue
    .line 41
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Dbo;->mLock:Ljava/lang/Object;

    .line 42
    iput-object p1, p0, Lc8/Dbo;->mPaginationView:Lc8/oao;

    .line 43
    invoke-virtual {p0}, Lc8/Dbo;->createPageInfo()Lc8/iao;

    move-result-object v0

    iput-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    .line 44
    new-instance v0, Lc8/wbo;

    invoke-direct {v0}, Lc8/wbo;-><init>()V

    iput-object v0, p0, Lc8/Dbo;->mExecutor:Lc8/wbo;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lc8/Dbo;)Lc8/iao;
    .locals 1
    .param p0, "x0"    # Lc8/Dbo;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    return-object v0
.end method

.method static synthetic access$102(Lc8/Dbo;Lc8/Ibo;)Lc8/Ibo;
    .locals 0
    .param p0, "x0"    # Lc8/Dbo;
    .param p1, "x1"    # Lc8/Ibo;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/Dbo;->mCacheResponse:Lc8/Ibo;

    return-object p1
.end method

.method static synthetic access$200(Lc8/Dbo;)Lc8/oao;
    .locals 1
    .param p0, "x0"    # Lc8/Dbo;

    .prologue
    .line 18
    iget-object v0, p0, Lc8/Dbo;->mPaginationView:Lc8/oao;

    return-object v0
.end method


# virtual methods
.method protected createPageInfo()Lc8/iao;
    .locals 3

    .prologue
    .line 48
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    new-instance v0, Lc8/Ebo;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lc8/Ebo;-><init>(II)V

    return-object v0
.end method

.method protected doError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 166
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v0, p0, Lc8/Dbo;->mPaginationView:Lc8/oao;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lc8/oao;->onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method protected doSuccess(Lc8/Ibo;)V
    .locals 3
    .param p1, "pageResponse"    # Lc8/Ibo;

    .prologue
    .line 159
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v0, p0, Lc8/Dbo;->mPaginationView:Lc8/oao;

    iget-object v1, p1, Lc8/Ibo;->t:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/oao;->onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 160
    return-void
.end method

.method public executeDefault(Lc8/Vlq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    .local p1, "observable":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    iget-object v0, p0, Lc8/Dbo;->mExecutor:Lc8/wbo;

    new-instance v1, Lc8/Bbo;

    invoke-direct {v1, p0}, Lc8/Bbo;-><init>(Lc8/Dbo;)V

    invoke-virtual {p1, v1}, Lc8/Vlq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v1

    new-instance v2, Lc8/Cbo;

    invoke-direct {v2, p0}, Lc8/Cbo;-><init>(Lc8/Dbo;)V

    invoke-virtual {v0, v1, v2}, Lc8/wbo;->execute(Lc8/Vlq;Lc8/Omq;)Lc8/Pmq;

    .line 187
    return-void
.end method

.method public getCurPage()I
    .locals 1

    .prologue
    .line 104
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->getRealSize()I

    move-result v0

    return v0
.end method

.method public getPageInfo()Lc8/iao;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    return-object v0
.end method

.method public getPaginationView()Lc8/oao;
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v0, p0, Lc8/Dbo;->mPaginationView:Lc8/oao;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->isHasNext()Z

    move-result v0

    return v0
.end method

.method public varargs loadFirst([Ljava/lang/Object;)V
    .locals 4
    .param p1, "var1"    # [Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v1, p0, Lc8/Dbo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 66
    :try_start_0
    const-string/jumbo v0, "IStreamPagePrestener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IStreamPagePrestener--loadFirst--mIsPreLoad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lc8/Dbo;->mIsPreLoad:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-boolean v0, p0, Lc8/Dbo;->mIsPreLoad:Z

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dbo;->mIsAvail:Z

    .line 69
    monitor-exit v1

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dbo;->mIsAvail:Z

    .line 73
    const-string/jumbo v0, "IStreamPagePrestener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IStreamPagePrestener---loadFirst--mCacheResponse"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Dbo;->mCacheResponse:Lc8/Ibo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lc8/Dbo;->mCacheResponse:Lc8/Ibo;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lc8/Dbo;->mPaginationView:Lc8/oao;

    iget-object v2, p0, Lc8/Dbo;->mCacheResponse:Lc8/Ibo;

    iget-object v2, v2, Lc8/Ibo;->t:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lc8/oao;->onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Dbo;->mCacheResponse:Lc8/Ibo;

    .line 77
    monitor-exit v1

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 79
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->resetPage()V

    .line 80
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {p0, v0, p1}, Lc8/Dbo;->request(Lc8/iao;[Ljava/lang/Object;)V

    .line 81
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public varargs loadNext([Ljava/lang/Object;)V
    .locals 2
    .param p1, "var1"    # [Ljava/lang/Object;

    .prologue
    .line 87
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v1, p0, Lc8/Dbo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 88
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lc8/Dbo;->mIsAvail:Z

    .line 89
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->toNextPage()V

    .line 93
    :cond_0
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {p0, v0, p1}, Lc8/Dbo;->request(Lc8/iao;[Ljava/lang/Object;)V

    .line 94
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract mapper(Ljava/lang/Object;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List;"
        }
    .end annotation
.end method

.method public varargs preLoad([Ljava/lang/Object;)V
    .locals 3
    .param p1, "var1"    # [Ljava/lang/Object;

    .prologue
    .line 53
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    iget-object v1, p0, Lc8/Dbo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->resetPage()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Dbo;->mIsPreLoad:Z

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Dbo;->mIsAvail:Z

    .line 57
    iget-object v0, p0, Lc8/Dbo;->mPageInfo:Lc8/iao;

    invoke-virtual {p0, v0, p1}, Lc8/Dbo;->request(Lc8/iao;[Ljava/lang/Object;)V

    .line 58
    const-string/jumbo v0, "IStreamPagePrestener"

    const-string/jumbo v2, "IStreamPagePrestener---preLoad"

    invoke-static {v0, v2}, Lc8/wHf;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected varargs abstract request(Lc8/iao;[Ljava/lang/Object;)V
.end method

.method protected updatePage(Lc8/Ibo;)V
    .locals 0
    .param p1, "pageInfoWrapper"    # Lc8/Ibo;

    .prologue
    .line 121
    .local p0, "this":Lc8/Dbo;, "Lcom/youku/us/baseuikit/stream/IStreamPagePrestener<TT;>;"
    return-void
.end method
