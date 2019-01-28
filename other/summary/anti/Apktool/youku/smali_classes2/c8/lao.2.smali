.class public abstract Lc8/lao;
.super Ljava/lang/Object;
.source "APaginationPresenter.java"

# interfaces
.implements Lc8/bao;
.implements Lc8/nao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/bao",
        "<",
        "Lc8/sao",
        "<TE;>;>;",
        "Lc8/nao;"
    }
.end annotation


# static fields
.field public static final PAGE_SIZE_DEFAULT:I = 0x14


# instance fields
.field protected iPaginationView:Lc8/oao;

.field public pageInfo:Lc8/iao;


# direct methods
.method public constructor <init>(Lc8/oao;)V
    .locals 1
    .param p1, "activitiesView"    # Lc8/oao;

    .prologue
    .line 43
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lc8/lao;->iPaginationView:Lc8/oao;

    .line 45
    invoke-virtual {p0}, Lc8/lao;->createPageInfo()Lc8/iao;

    move-result-object v0

    iput-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    .line 46
    return-void
.end method

.method public constructor <init>(Lc8/oao;Lc8/iao;)V
    .locals 0
    .param p1, "activitiesView"    # Lc8/oao;
    .param p2, "pageInfo"    # Lc8/iao;

    .prologue
    .line 48
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/lao;->iPaginationView:Lc8/oao;

    .line 50
    iput-object p2, p0, Lc8/lao;->pageInfo:Lc8/iao;

    .line 51
    return-void
.end method


# virtual methods
.method protected createPageInfo()Lc8/iao;
    .locals 3

    .prologue
    .line 59
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    new-instance v0, Lc8/kao;

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lc8/kao;-><init>(II)V

    return-object v0
.end method

.method protected abstract getListResult(Lc8/sao;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/sao",
            "<TE;>;)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation
.end method

.method public getPageInfo()Lc8/iao;
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    return-object v0
.end method

.method protected isEmptyResult(Lc8/sao;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/sao",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    .local p1, "apiResponse":Lc8/sao;, "Lcom/youku/us/baseframework/server/response/ApiResponse<TE;>;"
    invoke-virtual {p0, p1}, Lc8/lao;->getListResult(Lc8/sao;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public varargs loadFirstPage([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 64
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->resetPage()V

    .line 65
    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {p0, v0, p0, p1}, Lc8/lao;->request(Lc8/iao;Lc8/bao;[Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public varargs loadNextPage([Ljava/lang/Object;)V
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 75
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->toNextPage()V

    .line 78
    :cond_0
    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {p0, v0, p0, p1}, Lc8/lao;->request(Lc8/iao;Lc8/bao;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public onFailure(Lc8/aao;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/aao",
            "<",
            "Lc8/sao",
            "<TE;>;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    .local p1, "call":Lc8/aao;, "Lcom/youku/us/baseframework/server/api/CallWrapper<Lcom/youku/us/baseframework/server/response/ApiResponse<TE;>;>;"
    invoke-virtual {p0, p2}, Lc8/lao;->onLoadError(Ljava/lang/Throwable;)V

    .line 115
    return-void
.end method

.method protected onLoadError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 142
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    iget-object v0, p0, Lc8/lao;->iPaginationView:Lc8/oao;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lc8/oao;->onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 143
    return-void
.end method

.method protected onLoadSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<TR;>;"
    iget-object v0, p0, Lc8/lao;->iPaginationView:Lc8/oao;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lc8/oao;->onLoadComplete(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public onResponse(Lc8/aao;Lc8/eao;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/aao",
            "<",
            "Lc8/sao",
            "<TE;>;>;",
            "Lc8/eao",
            "<",
            "Lc8/sao",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    .local p1, "call":Lc8/aao;, "Lcom/youku/us/baseframework/server/api/CallWrapper<Lcom/youku/us/baseframework/server/response/ApiResponse<TE;>;>;"
    .local p2, "response":Lc8/eao;, "Lcom/youku/us/baseframework/server/api/ResponseWrapper<Lcom/youku/us/baseframework/server/response/ApiResponse<TE;>;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lc8/eao;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {p2}, Lc8/eao;->body()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/sao;

    .line 85
    .local v0, "apiResponse":Lc8/sao;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/sao;->data:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0, v0}, Lc8/lao;->updatePageInfo(Lc8/sao;)V

    .line 87
    invoke-virtual {p0, v0}, Lc8/lao;->getListResult(Lc8/sao;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/lao;->onLoadSuccess(Ljava/util/List;)V

    .line 94
    .end local v0    # "apiResponse":Lc8/sao;
    :goto_0
    return-void

    .line 89
    .restart local v0    # "apiResponse":Lc8/sao;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/lao;->onLoadError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 92
    .end local v0    # "apiResponse":Lc8/sao;
    :cond_1
    new-instance v1, Ljava/net/ConnectException;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc8/lao;->onLoadError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected varargs abstract request(Lc8/iao;Lc8/bao;[Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/iao;",
            "Lc8/bao",
            "<",
            "Lc8/sao",
            "<TE;>;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation
.end method

.method protected updatePageInfo(Lc8/sao;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/sao",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/lao;, "Lcom/youku/us/baseframework/server/presenter/APaginationPresenter<TE;TR;>;"
    .local p1, "apiResponse":Lc8/sao;, "Lcom/youku/us/baseframework/server/response/ApiResponse<TE;>;"
    const/4 v1, 0x1

    .line 101
    iget-object v0, p1, Lc8/sao;->data:Ljava/lang/Object;

    instance-of v0, v0, Lc8/tao;

    if-eqz v0, :cond_0

    .line 102
    iget-object v2, p0, Lc8/lao;->pageInfo:Lc8/iao;

    iget-object v0, p1, Lc8/sao;->data:Ljava/lang/Object;

    check-cast v0, Lc8/tao;

    iget-object v0, v0, Lc8/tao;->pageInfo:Lc8/iao;

    invoke-virtual {v2, v0}, Lc8/iao;->update(Lc8/iao;)V

    .line 105
    :cond_0
    iget-object v2, p0, Lc8/lao;->pageInfo:Lc8/iao;

    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {v0}, Lc8/iao;->getPageSize()I

    move-result v0

    iget-object v3, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {v3}, Lc8/iao;->getRealSize()I

    move-result v3

    if-gt v0, v3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lc8/iao;->setHasNext(Z)V

    .line 107
    invoke-virtual {p0, p1}, Lc8/lao;->isEmptyResult(Lc8/sao;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lc8/lao;->pageInfo:Lc8/iao;

    invoke-virtual {v0, v1}, Lc8/iao;->setLoaded(Z)V

    .line 110
    :cond_1
    return-void

    .line 105
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
