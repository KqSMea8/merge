.class public abstract Lc8/Ew;
.super Lc8/qv;
.source "SimpleItemAnimator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field mSupportsChangeAnimations:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/qv;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ew;->mSupportsChangeAnimations:Z

    return-void
.end method


# virtual methods
.method public abstract animateAdd(Lc8/Qv;)Z
.end method

.method public animateAppearance(Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .locals 6
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    if-eqz p2, :cond_1

    iget v0, p2, Lc8/pv;->left:I

    iget v1, p3, Lc8/pv;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lc8/pv;->top:I

    iget v1, p3, Lc8/pv;->top:I

    if-eq v0, v1, :cond_1

    .line 108
    :cond_0
    iget v2, p2, Lc8/pv;->left:I

    iget v3, p2, Lc8/pv;->top:I

    iget v4, p3, Lc8/pv;->left:I

    iget v5, p3, Lc8/pv;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Ew;->animateMove(Lc8/Qv;IIII)Z

    move-result v0

    .line 114
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lc8/Ew;->animateAdd(Lc8/Qv;)Z

    move-result v0

    goto :goto_0
.end method

.method public abstract animateChange(Lc8/Qv;Lc8/Qv;IIII)Z
.end method

.method public animateChange(Lc8/Qv;Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .locals 7
    .param p1, "oldHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "postInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 139
    iget v3, p3, Lc8/pv;->left:I

    .line 140
    .local v3, "fromLeft":I
    iget v4, p3, Lc8/pv;->top:I

    .line 142
    .local v4, "fromTop":I
    invoke-virtual {p2}, Lc8/Qv;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget v5, p3, Lc8/pv;->left:I

    .line 144
    .local v5, "toLeft":I
    iget v6, p3, Lc8/pv;->top:I

    .local v6, "toTop":I
    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 149
    invoke-virtual/range {v0 .. v6}, Lc8/Ew;->animateChange(Lc8/Qv;Lc8/Qv;IIII)Z

    move-result v0

    return v0

    .line 146
    .end local v5    # "toLeft":I
    .end local v6    # "toTop":I
    :cond_0
    iget v5, p4, Lc8/pv;->left:I

    .line 147
    .restart local v5    # "toLeft":I
    iget v6, p4, Lc8/pv;->top:I

    .restart local v6    # "toTop":I
    goto :goto_0
.end method

.method public animateDisappearance(Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .locals 7
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 78
    iget v2, p2, Lc8/pv;->left:I

    .line 79
    .local v2, "oldLeft":I
    iget v3, p2, Lc8/pv;->top:I

    .line 80
    .local v3, "oldTop":I
    iget-object v6, p1, Lc8/Qv;->itemView:Landroid/view/View;

    .line 81
    .local v6, "disappearingItemView":Landroid/view/View;
    if-nez p3, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 82
    .local v4, "newLeft":I
    :goto_0
    if-nez p3, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 83
    .local v5, "newTop":I
    :goto_1
    invoke-virtual {p1}, Lc8/Qv;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_3

    if-ne v2, v4, :cond_0

    if-eq v3, v5, :cond_3

    .line 85
    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v4

    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v5

    .line 84
    invoke-virtual {v6, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 90
    invoke-virtual/range {v0 .. v5}, Lc8/Ew;->animateMove(Lc8/Qv;IIII)Z

    move-result v0

    .line 95
    :goto_2
    return v0

    .line 81
    .end local v4    # "newLeft":I
    .end local v5    # "newTop":I
    :cond_1
    iget v4, p3, Lc8/pv;->left:I

    goto :goto_0

    .line 82
    .restart local v4    # "newLeft":I
    :cond_2
    iget v5, p3, Lc8/pv;->top:I

    goto :goto_1

    .line 95
    .restart local v5    # "newTop":I
    :cond_3
    invoke-virtual {p0, p1}, Lc8/Ew;->animateRemove(Lc8/Qv;)Z

    move-result v0

    goto :goto_2
.end method

.method public abstract animateMove(Lc8/Qv;IIII)Z
.end method

.method public animatePersistence(Lc8/Qv;Lc8/pv;Lc8/pv;)Z
    .locals 6
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postInfo"    # Lc8/pv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    iget v0, p2, Lc8/pv;->left:I

    iget v1, p3, Lc8/pv;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Lc8/pv;->top:I

    iget v1, p3, Lc8/pv;->top:I

    if-eq v0, v1, :cond_1

    .line 126
    :cond_0
    iget v2, p2, Lc8/pv;->left:I

    iget v3, p2, Lc8/pv;->top:I

    iget v4, p3, Lc8/pv;->left:I

    iget v5, p3, Lc8/pv;->top:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Ew;->animateMove(Lc8/Qv;IIII)Z

    move-result v0

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_1
    invoke-virtual {p0, p1}, Lc8/Ew;->dispatchMoveFinished(Lc8/Qv;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract animateRemove(Lc8/Qv;)Z
.end method

.method public canReuseUpdatedViewHolder(Lc8/Qv;)Z
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 72
    iget-boolean v0, p0, Lc8/Ew;->mSupportsChangeAnimations:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/Qv;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final dispatchAddFinished(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 288
    invoke-virtual {p0, p1}, Lc8/Ew;->onAddFinished(Lc8/Qv;)V

    .line 289
    invoke-virtual {p0, p1}, Lc8/Ew;->dispatchAnimationFinished(Lc8/Qv;)V

    .line 290
    return-void
.end method

.method public final dispatchAddStarting(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lc8/Ew;->onAddStarting(Lc8/Qv;)V

    .line 332
    return-void
.end method

.method public final dispatchChangeFinished(Lc8/Qv;Z)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;
    .param p2, "oldItem"    # Z

    .prologue
    .line 303
    invoke-virtual {p0, p1, p2}, Lc8/Ew;->onChangeFinished(Lc8/Qv;Z)V

    .line 304
    invoke-virtual {p0, p1}, Lc8/Ew;->dispatchAnimationFinished(Lc8/Qv;)V

    .line 305
    return-void
.end method

.method public final dispatchChangeStarting(Lc8/Qv;Z)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;
    .param p2, "oldItem"    # Z

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lc8/Ew;->onChangeStarting(Lc8/Qv;Z)V

    .line 345
    return-void
.end method

.method public final dispatchMoveFinished(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lc8/Ew;->onMoveFinished(Lc8/Qv;)V

    .line 279
    invoke-virtual {p0, p1}, Lc8/Ew;->dispatchAnimationFinished(Lc8/Qv;)V

    .line 280
    return-void
.end method

.method public final dispatchMoveStarting(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lc8/Ew;->onMoveStarting(Lc8/Qv;)V

    .line 323
    return-void
.end method

.method public final dispatchRemoveFinished(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lc8/Ew;->onRemoveFinished(Lc8/Qv;)V

    .line 265
    invoke-virtual {p0, p1}, Lc8/Ew;->dispatchAnimationFinished(Lc8/Qv;)V

    .line 266
    return-void
.end method

.method public final dispatchRemoveStarting(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lc8/Ew;->onRemoveStarting(Lc8/Qv;)V

    .line 314
    return-void
.end method

.method public getSupportsChangeAnimations()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lc8/Ew;->mSupportsChangeAnimations:Z

    return v0
.end method

.method public onAddFinished(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 391
    return-void
.end method

.method public onAddStarting(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 380
    return-void
.end method

.method public onChangeFinished(Lc8/Qv;Z)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;
    .param p2, "oldItem"    # Z

    .prologue
    .line 441
    return-void
.end method

.method public onChangeStarting(Lc8/Qv;Z)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;
    .param p2, "oldItem"    # Z

    .prologue
    .line 428
    return-void
.end method

.method public onMoveFinished(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 414
    return-void
.end method

.method public onMoveStarting(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 403
    return-void
.end method

.method public onRemoveFinished(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 368
    return-void
.end method

.method public onRemoveStarting(Lc8/Qv;)V
    .locals 0
    .param p1, "item"    # Lc8/Qv;

    .prologue
    .line 357
    return-void
.end method

.method public setSupportsChangeAnimations(Z)V
    .locals 0
    .param p1, "supportsChangeAnimations"    # Z

    .prologue
    .line 59
    iput-boolean p1, p0, Lc8/Ew;->mSupportsChangeAnimations:Z

    .line 60
    return-void
.end method
