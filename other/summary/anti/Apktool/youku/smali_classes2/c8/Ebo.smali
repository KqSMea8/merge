.class public Lc8/Ebo;
.super Lc8/iao;
.source "PageInfoWrapper.java"


# instance fields
.field public curPage:I

.field public isLoaded:Z

.field public pageSize:I

.field protected totalSize:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "pageNo"    # I
    .param p2, "pageSize"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/iao;-><init>()V

    .line 24
    iput p2, p0, Lc8/Ebo;->pageSize:I

    .line 25
    iput p1, p0, Lc8/Ebo;->curPage:I

    .line 26
    return-void
.end method


# virtual methods
.method public assemblePageParams()Ljava/util/Map;
    .locals 1
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
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageSize()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lc8/Ebo;->pageSize:I

    return v0
.end method

.method public getRealSize()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lc8/Ebo;->curPage:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lc8/Ebo;->totalSize:I

    return v0
.end method

.method public isFirstPage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 67
    iget v1, p0, Lc8/Ebo;->curPage:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetPage()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput v0, p0, Lc8/Ebo;->curPage:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Ebo;->isLoaded:Z

    .line 63
    return-void
.end method

.method public toNextPage()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lc8/Ebo;->curPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Ebo;->curPage:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Ebo;->isLoaded:Z

    .line 57
    return-void
.end method

.method public update(Lc8/iao;)V
    .locals 1
    .param p1, "aPageInfo"    # Lc8/iao;

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 73
    invoke-virtual {p1}, Lc8/iao;->getRealSize()I

    move-result v0

    iput v0, p0, Lc8/Ebo;->curPage:I

    .line 74
    invoke-virtual {p1}, Lc8/iao;->getTotalSize()I

    move-result v0

    iput v0, p0, Lc8/Ebo;->totalSize:I

    .line 76
    :cond_0
    return-void
.end method
