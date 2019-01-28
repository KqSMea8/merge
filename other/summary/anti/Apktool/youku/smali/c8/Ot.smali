.class public final Lc8/Ot;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mt;,
        Lc8/Nt;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lc8/Ot;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lc8/Nt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Rv;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/Nt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc8/Ot;->sGapWorker:Ljava/lang/ThreadLocal;

    .line 187
    new-instance v0, Lc8/Lt;

    invoke-direct {v0}, Lc8/Lt;-><init>()V

    sput-object v0, Lc8/Ot;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method private buildTaskList()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 214
    iget-object v10, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 215
    .local v8, "viewCount":I
    const/4 v5, 0x0

    .line 216
    .local v5, "totalTaskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 217
    iget-object v10, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Rv;

    .line 218
    .local v7, "view":Lc8/Rv;
    invoke-virtual {v7}, Lc8/Rv;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_0

    .line 219
    iget-object v10, v7, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    invoke-virtual {v10, v7, v11}, Lc8/Mt;->collectPrefetchPositionsFromView(Lc8/Rv;Z)V

    .line 220
    iget-object v10, v7, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    iget v10, v10, Lc8/Mt;->mCount:I

    add-int/2addr v5, v10

    .line 216
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v7    # "view":Lc8/Rv;
    :cond_1
    iget-object v10, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 226
    const/4 v6, 0x0

    .line 227
    .local v6, "totalTaskIndex":I
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v8, :cond_5

    .line 228
    iget-object v10, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Rv;

    .line 229
    .restart local v7    # "view":Lc8/Rv;
    invoke-virtual {v7}, Lc8/Rv;->getWindowVisibility()I

    move-result v10

    if-nez v10, :cond_4

    .line 234
    iget-object v3, v7, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    .line 235
    .local v3, "prefetchRegistry":Lc8/Mt;
    iget v10, v3, Lc8/Mt;->mPrefetchDx:I

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v12, v3, Lc8/Mt;->mPrefetchDy:I

    .line 236
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v9, v10, v12

    .line 237
    .local v9, "viewVelocity":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v10, v3, Lc8/Mt;->mCount:I

    shl-int/lit8 v10, v10, 0x1

    if-ge v2, v10, :cond_4

    .line 239
    iget-object v10, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v6, v10, :cond_2

    .line 240
    new-instance v4, Lc8/Nt;

    invoke-direct {v4}, Lc8/Nt;-><init>()V

    .line 241
    .local v4, "task":Lc8/Nt;
    iget-object v10, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    :goto_3
    iget-object v10, v3, Lc8/Mt;->mPrefetchArray:[I

    add-int/lit8 v12, v2, 0x1

    aget v0, v10, v12

    .line 247
    .local v0, "distanceToItem":I
    if-gt v0, v9, :cond_3

    const/4 v10, 0x1

    :goto_4
    iput-boolean v10, v4, Lc8/Nt;->immediate:Z

    .line 248
    iput v9, v4, Lc8/Nt;->viewVelocity:I

    .line 249
    iput v0, v4, Lc8/Nt;->distanceToItem:I

    .line 250
    iput-object v7, v4, Lc8/Nt;->view:Lc8/Rv;

    .line 251
    iget-object v10, v3, Lc8/Mt;->mPrefetchArray:[I

    aget v10, v10, v2

    iput v10, v4, Lc8/Nt;->position:I

    .line 253
    add-int/lit8 v6, v6, 0x1

    .line 237
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 243
    .end local v0    # "distanceToItem":I
    .end local v4    # "task":Lc8/Nt;
    :cond_2
    iget-object v10, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Nt;

    .restart local v4    # "task":Lc8/Nt;
    goto :goto_3

    .restart local v0    # "distanceToItem":I
    :cond_3
    move v10, v11

    .line 247
    goto :goto_4

    .line 227
    .end local v0    # "distanceToItem":I
    .end local v2    # "j":I
    .end local v3    # "prefetchRegistry":Lc8/Mt;
    .end local v4    # "task":Lc8/Nt;
    .end local v9    # "viewVelocity":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    .end local v7    # "view":Lc8/Rv;
    :cond_5
    iget-object v10, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    sget-object v11, Lc8/Ot;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 259
    return-void
.end method

.method private flushTaskWithDeadline(Lc8/Nt;J)V
    .locals 6
    .param p1, "task"    # Lc8/Nt;
    .param p2, "deadlineNs"    # J

    .prologue
    .line 335
    iget-boolean v1, p1, Lc8/Nt;->immediate:Z

    if-eqz v1, :cond_1

    const-wide v2, 0x7fffffffffffffffL

    .line 336
    .local v2, "taskDeadlineNs":J
    :goto_0
    iget-object v1, p1, Lc8/Nt;->view:Lc8/Rv;

    iget v4, p1, Lc8/Nt;->position:I

    invoke-direct {p0, v1, v4, v2, v3}, Lc8/Ot;->prefetchPositionWithDeadline(Lc8/Rv;IJ)Lc8/Qv;

    move-result-object v0

    .line 338
    .local v0, "holder":Lc8/Qv;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lc8/Qv;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, v0, Lc8/Qv;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Rv;

    invoke-direct {p0, v1, p2, p3}, Lc8/Ot;->prefetchInnerRecyclerViewWithDeadline(Lc8/Rv;J)V

    .line 341
    :cond_0
    return-void

    .end local v0    # "holder":Lc8/Qv;
    .end local v2    # "taskDeadlineNs":J
    :cond_1
    move-wide v2, p2

    .line 335
    goto :goto_0
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3
    .param p1, "deadlineNs"    # J

    .prologue
    .line 344
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 345
    iget-object v2, p0, Lc8/Ot;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Nt;

    .line 346
    .local v1, "task":Lc8/Nt;
    iget-object v2, v1, Lc8/Nt;->view:Lc8/Rv;

    if-eqz v2, :cond_0

    .line 349
    invoke-direct {p0, v1, p1, p2}, Lc8/Ot;->flushTaskWithDeadline(Lc8/Nt;J)V

    .line 350
    invoke-virtual {v1}, Lc8/Nt;->clear()V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "task":Lc8/Nt;
    :cond_0
    return-void
.end method

.method static isPrefetchPositionAttached(Lc8/Rv;I)Z
    .locals 5
    .param p0, "view"    # Lc8/Rv;
    .param p1, "position"    # I

    .prologue
    .line 262
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v1

    .line 263
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 264
    iget-object v4, p0, Lc8/Rv;->mChildHelper:Lc8/ht;

    invoke-virtual {v4, v3}, Lc8/ht;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "attachedView":Landroid/view/View;
    invoke-static {v0}, Lc8/Rv;->getChildViewHolderInt(Landroid/view/View;)Lc8/Qv;

    move-result-object v2

    .line 267
    .local v2, "holder":Lc8/Qv;
    iget v4, v2, Lc8/Qv;->mPosition:I

    if-ne v4, p1, :cond_0

    invoke-virtual {v2}, Lc8/Qv;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 268
    const/4 v4, 0x1

    .line 271
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lc8/Qv;
    :goto_1
    return v4

    .line 263
    .restart local v0    # "attachedView":Landroid/view/View;
    .restart local v2    # "holder":Lc8/Qv;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "attachedView":Landroid/view/View;
    .end local v2    # "holder":Lc8/Qv;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lc8/Rv;J)V
    .locals 6
    .param p1, "innerView"    # Lc8/Rv;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "deadlineNs"    # J

    .prologue
    .line 303
    if-nez p1, :cond_1

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-boolean v3, p1, Lc8/Rv;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lc8/Rv;->mChildHelper:Lc8/ht;

    .line 308
    invoke-virtual {v3}, Lc8/ht;->getUnfilteredChildCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 311
    invoke-virtual {p1}, Lc8/Rv;->removeAndRecycleViews()V

    .line 315
    :cond_2
    iget-object v2, p1, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    .line 316
    .local v2, "innerPrefetchRegistry":Lc8/Mt;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lc8/Mt;->collectPrefetchPositionsFromView(Lc8/Rv;Z)V

    .line 318
    iget v3, v2, Lc8/Mt;->mCount:I

    if-eqz v3, :cond_0

    .line 320
    :try_start_0
    const-string/jumbo v3, "RV Nested Prefetch"

    invoke-static {v3}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 321
    iget-object v3, p1, Lc8/Rv;->mState:Lc8/Nv;

    iget-object v4, p1, Lc8/Rv;->mAdapter:Lc8/iv;

    invoke-virtual {v3, v4}, Lc8/Nv;->prepareForNestedPrefetch(Lc8/iv;)V

    .line 322
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, v2, Lc8/Mt;->mCount:I

    shl-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_3

    .line 325
    iget-object v3, v2, Lc8/Mt;->mPrefetchArray:[I

    aget v1, v3, v0

    .line 326
    .local v1, "innerPosition":I
    invoke-direct {p0, p1, v1, p2, p3}, Lc8/Ot;->prefetchPositionWithDeadline(Lc8/Rv;IJ)Lc8/Qv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 329
    .end local v1    # "innerPosition":I
    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .end local v0    # "i":I
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v3
.end method

.method private prefetchPositionWithDeadline(Lc8/Rv;IJ)Lc8/Qv;
    .locals 5
    .param p1, "view"    # Lc8/Rv;
    .param p2, "position"    # I
    .param p3, "deadlineNs"    # J

    .prologue
    const/4 v3, 0x0

    .line 276
    invoke-static {p1, p2}, Lc8/Ot;->isPrefetchPositionAttached(Lc8/Rv;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 278
    const/4 v0, 0x0

    .line 298
    :cond_0
    :goto_0
    return-object v0

    .line 281
    :cond_1
    iget-object v1, p1, Lc8/Rv;->mRecycler:Lc8/Fv;

    .line 282
    .local v1, "recycler":Lc8/Fv;
    invoke-virtual {v1, p2, v3, p3, p4}, Lc8/Fv;->tryGetViewHolderForPositionByDeadline(IZJ)Lc8/Qv;

    move-result-object v0

    .line 285
    .local v0, "holder":Lc8/Qv;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lc8/Qv;->isBound()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, v0, Lc8/Qv;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc8/Fv;->recycleView(Landroid/view/View;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v1, v0, v3}, Lc8/Fv;->addViewHolderToRecycledViewPool(Lc8/Qv;Z)V

    goto :goto_0
.end method


# virtual methods
.method public add(Lc8/Rv;)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 160
    iget-object v0, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method postFromTraversal(Lc8/Rv;II)V
    .locals 4
    .param p1, "recyclerView"    # Lc8/Rv;
    .param p2, "prefetchDx"    # I
    .param p3, "prefetchDy"    # I

    .prologue
    .line 174
    invoke-virtual {p1}, Lc8/Rv;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-wide v0, p0, Lc8/Ot;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lc8/Rv;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Ot;->mPostTimeNs:J

    .line 180
    invoke-virtual {p1, p0}, Lc8/Rv;->post(Ljava/lang/Runnable;)Z

    .line 184
    :cond_0
    iget-object v0, p1, Lc8/Rv;->mPrefetchRegistry:Lc8/Mt;

    invoke-virtual {v0, p2, p3}, Lc8/Mt;->setPrefetchVector(II)V

    .line 185
    return-void
.end method

.method prefetch(J)V
    .locals 1
    .param p1, "deadlineNs"    # J

    .prologue
    .line 355
    invoke-direct {p0}, Lc8/Ot;->buildTaskList()V

    .line 356
    invoke-direct {p0, p1, p2}, Lc8/Ot;->flushTasksWithDeadline(J)V

    .line 357
    return-void
.end method

.method public remove(Lc8/Rv;)V
    .locals 1
    .param p1, "recyclerView"    # Lc8/Rv;

    .prologue
    .line 164
    iget-object v0, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 362
    :try_start_0
    const-string/jumbo v7, "RV Prefetch"

    invoke-static {v7}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 364
    iget-object v7, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    iput-wide v12, p0, Lc8/Ot;->mPostTimeNs:J

    .line 392
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 393
    :goto_0
    return-void

    .line 371
    :cond_0
    :try_start_1
    iget-object v7, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 372
    .local v1, "size":I
    const-wide/16 v2, 0x0

    .line 373
    .local v2, "latestFrameVsyncMs":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 374
    iget-object v7, p0, Lc8/Ot;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Rv;

    .line 375
    .local v6, "view":Lc8/Rv;
    invoke-virtual {v6}, Lc8/Rv;->getWindowVisibility()I

    move-result v7

    if-nez v7, :cond_1

    .line 376
    invoke-virtual {v6}, Lc8/Rv;->getDrawingTime()J

    move-result-wide v8

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    .line 373
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    .end local v6    # "view":Lc8/Rv;
    :cond_2
    cmp-long v7, v2, v12

    if-nez v7, :cond_3

    .line 391
    iput-wide v12, p0, Lc8/Ot;->mPostTimeNs:J

    .line 392
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 385
    :cond_3
    :try_start_2
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    iget-wide v10, p0, Lc8/Ot;->mFrameIntervalNs:J

    add-long v4, v8, v10

    .line 387
    .local v4, "nextFrameNs":J
    invoke-virtual {p0, v4, v5}, Lc8/Ot;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    iput-wide v12, p0, Lc8/Ot;->mPostTimeNs:J

    .line 392
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 391
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "latestFrameVsyncMs":J
    .end local v4    # "nextFrameNs":J
    :catchall_0
    move-exception v7

    iput-wide v12, p0, Lc8/Ot;->mPostTimeNs:J

    .line 392
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    throw v7
.end method
