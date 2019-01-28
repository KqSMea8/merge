.class public Lc8/afg;
.super Lc8/Qw;
.source "ExtendedStaggeredGridLayoutManager.java"


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "spanCount"    # I
    .param p2, "orientation"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lc8/Qw;-><init>(II)V

    .line 35
    return-void
.end method


# virtual methods
.method public onItemsRemoved(Lc8/Rv;II)V
    .locals 2
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 39
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExtendedStaggeredGridLayoutManager: onItemsRemoved  Error Invalid Index : positionStart :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  itemCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExtendedStaggeredGridLayoutManager: onItemsRemoved  positionStart :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  itemCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lc8/Qw;->onItemsRemoved(Lc8/Rv;II)V

    goto :goto_0
.end method
