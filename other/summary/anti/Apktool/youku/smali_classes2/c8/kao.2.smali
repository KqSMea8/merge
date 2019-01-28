.class public Lc8/kao;
.super Lc8/iao;
.source "PageInfo.java"


# instance fields
.field private currTotal:I

.field private page_no:I

.field private page_size:I

.field private totalSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/iao;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput v0, p0, Lc8/kao;->page_no:I

    .line 33
    iput p1, p0, Lc8/kao;->page_no:I

    .line 34
    iput p2, p0, Lc8/kao;->page_size:I

    .line 35
    return-void
.end method


# virtual methods
.method public assemblePageParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 79
    .local v0, "pageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "pageSize"

    iget v2, p0, Lc8/kao;->page_size:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v1, "pageNo"

    iget v2, p0, Lc8/kao;->page_no:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lc8/kao;->page_size:I

    return v0
.end method

.method public getRealSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lc8/kao;->currTotal:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lc8/kao;->totalSize:I

    return v0
.end method

.method public isFirstPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 64
    iget v1, p0, Lc8/kao;->page_no:I

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetPage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lc8/kao;->page_no:I

    .line 57
    iput v1, p0, Lc8/kao;->currTotal:I

    .line 58
    iput v1, p0, Lc8/kao;->totalSize:I

    .line 59
    invoke-virtual {p0, v1}, Lc8/kao;->setLoaded(Z)V

    .line 60
    return-void
.end method

.method public toNextPage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    iget v0, p0, Lc8/kao;->page_no:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/kao;->page_no:I

    .line 50
    iput v1, p0, Lc8/kao;->currTotal:I

    .line 51
    invoke-virtual {p0, v1}, Lc8/kao;->setLoaded(Z)V

    .line 52
    return-void
.end method

.method public update(Lc8/iao;)V
    .locals 1
    .param p1, "remotePage"    # Lc8/iao;

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Lc8/iao;->getRealSize()I

    move-result v0

    iput v0, p0, Lc8/kao;->currTotal:I

    .line 71
    invoke-virtual {p1}, Lc8/iao;->getTotalSize()I

    move-result v0

    iput v0, p0, Lc8/kao;->totalSize:I

    .line 73
    :cond_0
    return-void
.end method
