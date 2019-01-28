.class public interface abstract Lc8/Zcg;
.super Ljava/lang/Object;
.source "DragHelper.java"


# virtual methods
.method public abstract isDragExcluded(Lc8/Qv;)Z
    .param p1    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract isDraggable()Z
.end method

.method public abstract isLongPressDragEnabled()Z
.end method

.method public abstract onDragEnd(Lc8/tbg;II)V
    .param p1    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDragStart(Lc8/tbg;I)V
    .param p1    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onDragging(II)V
.end method

.method public abstract setDragExcluded(Lc8/Qv;Z)V
    .param p1    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setDraggable(Z)V
.end method

.method public abstract setLongPressDragEnabled(Z)V
.end method

.method public abstract startDrag(Lc8/Qv;)V
    .param p1    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
