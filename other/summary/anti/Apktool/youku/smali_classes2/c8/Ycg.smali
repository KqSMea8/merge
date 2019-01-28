.class public Lc8/Ycg;
.super Ljava/lang/Object;
.source "DefaultDragHelper.java"

# interfaces
.implements Lc8/Zcg;


# static fields
.field private static final EVENT_END_DRAG:Ljava/lang/String; = "dragend"

.field private static final EVENT_START_DRAG:Ljava/lang/String; = "dragstart"

.field private static final TAG:Ljava/lang/String; = "WXListExComponent"

.field private static final TAG_EXCLUDED:Ljava/lang/String; = "drag_excluded"


# instance fields
.field private isDraggable:Z

.field private final mDataSource:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTrigger:Lc8/bdg;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItemTouchHelper:Lc8/Mx;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLongPressEnabled:Z

.field private final mRecyclerView:Lc8/Rv;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lc8/Rv;Lc8/bdg;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recyclerView"    # Lc8/Rv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "trigger"    # Lc8/bdg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;",
            "Lc8/Rv;",
            "Lc8/bdg;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "dataSource":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Ycg;->isDraggable:Z

    .line 65
    iput-object p1, p0, Lc8/Ycg;->mDataSource:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lc8/Ycg;->mEventTrigger:Lc8/bdg;

    .line 67
    iput-object p2, p0, Lc8/Ycg;->mRecyclerView:Lc8/Rv;

    .line 70
    new-instance v0, Lc8/Mx;

    new-instance v1, Lc8/adg;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lc8/adg;-><init>(Lc8/Zcg;Z)V

    invoke-direct {v0, v1}, Lc8/Mx;-><init>(Lc8/Gx;)V

    iput-object v0, p0, Lc8/Ycg;->mItemTouchHelper:Lc8/Mx;

    .line 72
    :try_start_0
    iget-object v0, p0, Lc8/Ycg;->mItemTouchHelper:Lc8/Mx;

    iget-object v1, p0, Lc8/Ycg;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v0, v1}, Lc8/Mx;->attachToRecyclerView(Lc8/Rv;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private buildEvent(Ljava/lang/String;II)Ljava/util/Map;
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 167
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "target"

    if-nez p1, :cond_0

    const-string/jumbo p1, "unknown"

    .end local p1    # "target":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v1, "fromIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v1, "toIndex"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object v0
.end method


# virtual methods
.method public isDragExcluded(Lc8/Qv;)Z
    .locals 3
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 157
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v1, "WXListExComponent"

    const-string/jumbo v2, "[error] viewHolder.itemView is null"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "drag_excluded"

    iget-object v2, p1, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lc8/Ycg;->isDraggable:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lc8/Ycg;->mLongPressEnabled:Z

    return v0
.end method

.method public onDragEnd(Lc8/tbg;II)V
    .locals 3
    .param p1, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "from"    # I
    .param p3, "to"    # I

    .prologue
    .line 88
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "WXListExComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "list on drag end : from index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lc8/Ycg;->mEventTrigger:Lc8/bdg;

    const-string/jumbo v1, "dragend"

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lc8/Ycg;->buildEvent(Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/bdg;->triggerEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public onDragStart(Lc8/tbg;I)V
    .locals 4
    .param p1, "component"    # Lc8/tbg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "from"    # I

    .prologue
    .line 80
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "WXListExComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "list on drag start : from index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lc8/Ycg;->mEventTrigger:Lc8/bdg;

    const-string/jumbo v1, "dragstart"

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {p0, v2, p2, v3}, Lc8/Ycg;->buildEvent(Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/bdg;->triggerEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public onDragging(II)V
    .locals 4
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I

    .prologue
    .line 96
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "WXListExComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "list on dragging : from index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lc8/Ycg;->mRecyclerView:Lc8/Rv;

    invoke-virtual {v1}, Lc8/Rv;->getAdapter()Lc8/iv;

    move-result-object v0

    .line 101
    .local v0, "adapter":Lc8/iv;
    if-nez v0, :cond_2

    .line 102
    const-string/jumbo v1, "WXListExComponent"

    const-string/jumbo v2, "drag failed because of RecyclerView#Adapter is not bound"

    invoke-static {v1, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    if-ltz p1, :cond_1

    iget-object v1, p0, Lc8/Ycg;->mDataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lc8/Ycg;->mDataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_1

    .line 107
    iget-object v1, p0, Lc8/Ycg;->mDataSource:Ljava/util/List;

    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 108
    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemMoved(II)V

    goto :goto_0
.end method

.method public setDragExcluded(Lc8/Qv;Z)V
    .locals 2
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isExcluded"    # Z

    .prologue
    .line 141
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 142
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "WXListExComponent"

    const-string/jumbo v1, "[error] viewHolder.itemView is null"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p2, :cond_2

    .line 148
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    const-string/jumbo v1, "drag_excluded"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p1, Lc8/Qv;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lc8/Ycg;->isDraggable:Z

    .line 137
    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lc8/Ycg;->mLongPressEnabled:Z

    .line 120
    return-void
.end method

.method public startDrag(Lc8/Qv;)V
    .locals 1
    .param p1, "viewHolder"    # Lc8/Qv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    iget-boolean v0, p0, Lc8/Ycg;->isDraggable:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lc8/Ycg;->mItemTouchHelper:Lc8/Mx;

    invoke-virtual {v0, p1}, Lc8/Mx;->startDrag(Lc8/Qv;)V

    .line 127
    :cond_0
    return-void
.end method
