.class public Lc8/adg;
.super Lc8/Gx;
.source "DragSupportCallback.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WXListExComponent"


# instance fields
.field private dragFrom:I

.field private dragTo:I

.field private final mDragHelper:Lc8/Zcg;

.field private mEnableDifferentViewTypeDrag:Z


# direct methods
.method constructor <init>(Lc8/Zcg;)V
    .locals 2
    .param p1, "DragHelper"    # Lc8/Zcg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 48
    invoke-direct {p0}, Lc8/Gx;-><init>()V

    .line 41
    iput-boolean v1, p0, Lc8/adg;->mEnableDifferentViewTypeDrag:Z

    .line 43
    iput v0, p0, Lc8/adg;->dragFrom:I

    .line 44
    iput v0, p0, Lc8/adg;->dragTo:I

    .line 49
    iput-object p1, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    .line 50
    iput-boolean v1, p0, Lc8/adg;->mEnableDifferentViewTypeDrag:Z

    .line 51
    return-void
.end method

.method constructor <init>(Lc8/Zcg;Z)V
    .locals 2
    .param p1, "DragHelper"    # Lc8/Zcg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "enableDifferentViewTypeDrag"    # Z

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Lc8/Gx;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/adg;->mEnableDifferentViewTypeDrag:Z

    .line 43
    iput v1, p0, Lc8/adg;->dragFrom:I

    .line 44
    iput v1, p0, Lc8/adg;->dragTo:I

    .line 54
    iput-object p1, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    .line 55
    iput-boolean p2, p0, Lc8/adg;->mEnableDifferentViewTypeDrag:Z

    .line 56
    return-void
.end method


# virtual methods
.method public clearView(Lc8/Rv;Lc8/Qv;)V
    .locals 6
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    const/4 v5, -0x1

    .line 132
    invoke-super {p0, p1, p2}, Lc8/Gx;->clearView(Lc8/Rv;Lc8/Qv;)V

    .line 134
    instance-of v1, p2, Lc8/hfg;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 135
    check-cast v0, Lc8/hfg;

    .line 136
    .local v0, "vh":Lc8/hfg;
    invoke-virtual {v0}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    iget v1, p0, Lc8/adg;->dragFrom:I

    if-eq v1, v5, :cond_0

    iget v1, p0, Lc8/adg;->dragTo:I

    if-eq v1, v5, :cond_0

    .line 138
    iget-object v1, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    invoke-virtual {v0}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v2

    iget v3, p0, Lc8/adg;->dragFrom:I

    iget v4, p0, Lc8/adg;->dragTo:I

    invoke-interface {v1, v2, v3, v4}, Lc8/Zcg;->onDragEnd(Lc8/tbg;II)V

    .line 144
    .end local v0    # "vh":Lc8/hfg;
    :cond_0
    iput v5, p0, Lc8/adg;->dragTo:I

    iput v5, p0, Lc8/adg;->dragFrom:I

    .line 145
    return-void
.end method

.method public getMovementFlags(Lc8/Rv;Lc8/Qv;)I
    .locals 3
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;

    .prologue
    .line 60
    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v2

    instance-of v2, v2, Lc8/mu;

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lc8/Rv;->getLayoutManager()Lc8/xv;

    move-result-object v2

    instance-of v2, v2, Lc8/Qw;

    if-eqz v2, :cond_1

    .line 61
    :cond_0
    const/16 v0, 0xf

    .line 62
    .local v0, "dragFlags":I
    const/4 v1, 0x0

    .line 63
    .local v1, "swipeFlags":I
    invoke-static {v0, v1}, Lc8/adg;->makeMovementFlags(II)I

    move-result v2

    .line 67
    :goto_0
    return v2

    .line 65
    .end local v0    # "dragFlags":I
    .end local v1    # "swipeFlags":I
    :cond_1
    const/4 v0, 0x3

    .line 66
    .restart local v0    # "dragFlags":I
    const/16 v1, 0x30

    .line 67
    .restart local v1    # "swipeFlags":I
    invoke-static {v0, v1}, Lc8/adg;->makeMovementFlags(II)I

    move-result v2

    goto :goto_0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v0}, Lc8/Zcg;->isDraggable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v0}, Lc8/Zcg;->isLongPressDragEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMove(Lc8/Rv;Lc8/Qv;Lc8/Qv;)Z
    .locals 6
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "viewHolder"    # Lc8/Qv;
    .param p3, "target"    # Lc8/Qv;

    .prologue
    const/4 v3, 0x0

    .line 73
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v3

    .line 77
    :cond_1
    iget-boolean v4, p0, Lc8/adg;->mEnableDifferentViewTypeDrag:Z

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lc8/Qv;->getItemViewType()I

    move-result v4

    invoke-virtual {p3}, Lc8/Qv;->getItemViewType()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 81
    :cond_2
    iget-object v4, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v4, p2}, Lc8/Zcg;->isDragExcluded(Lc8/Qv;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p2}, Lc8/Qv;->getAdapterPosition()I

    move-result v1

    .line 87
    .local v1, "fromPos":I
    invoke-virtual {p3}, Lc8/Qv;->getAdapterPosition()I

    move-result v2

    .line 89
    .local v2, "toPos":I
    iget v4, p0, Lc8/adg;->dragFrom:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 90
    iput v1, p0, Lc8/adg;->dragFrom:I

    .line 92
    :cond_3
    iput v2, p0, Lc8/adg;->dragTo:I

    .line 94
    iget-object v4, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    invoke-interface {v4, v1, v2}, Lc8/Zcg;->onDragging(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    const/4 v3, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "fromPos":I
    .end local v2    # "toPos":I
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "WXListExComponent"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSelectedChanged(Lc8/Qv;I)V
    .locals 4
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "actionState"    # I

    .prologue
    .line 119
    if-eqz p2, :cond_0

    instance-of v1, p1, Lc8/hfg;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 120
    check-cast v0, Lc8/hfg;

    .line 121
    .local v0, "vh":Lc8/hfg;
    invoke-virtual {v0}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lc8/adg;->mDragHelper:Lc8/Zcg;

    invoke-virtual {v0}, Lc8/hfg;->getComponent()Lc8/tbg;

    move-result-object v2

    invoke-virtual {v0}, Lc8/hfg;->getAdapterPosition()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lc8/Zcg;->onDragStart(Lc8/tbg;I)V

    .line 126
    .end local v0    # "vh":Lc8/hfg;
    :cond_0
    invoke-super {p0, p1, p2}, Lc8/Gx;->onSelectedChanged(Lc8/Qv;I)V

    .line 127
    return-void
.end method

.method public onSwiped(Lc8/Qv;I)V
    .locals 0
    .param p1, "viewHolder"    # Lc8/Qv;
    .param p2, "direction"    # I

    .prologue
    .line 110
    return-void
.end method
