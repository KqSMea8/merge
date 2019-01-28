.class public Lc8/Zvf;
.super Lc8/Yvf;
.source "ReleasableBitmapDrawable.java"


# instance fields
.field private mLastCallbackRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mReferenceListener:Lc8/awf;

.field private mReleased:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "padding"    # Landroid/graphics/Rect;
    .param p4, "memoryCacheKey"    # Ljava/lang/String;
    .param p5, "diskCacheKey"    # Ljava/lang/String;
    .param p6, "diskCacheCatalog"    # I
    .param p7, "diskPriority"    # I

    .prologue
    .line 26
    invoke-direct/range {p0 .. p7}, Lc8/Yvf;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V

    .line 27
    return-void
.end method


# virtual methods
.method public convert2NinePatchDrawable()Landroid/graphics/drawable/NinePatchDrawable;
    .locals 2

    .prologue
    .line 34
    invoke-super {p0}, Lc8/Yvf;->convert2NinePatchDrawable()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v0

    .line 35
    .local v0, "drawable":Landroid/graphics/drawable/NinePatchDrawable;
    monitor-enter p0

    .line 36
    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    invoke-interface {v1, p0}, Lc8/awf;->onReferenceDowngrade2Passable(Lc8/Zvf;)V

    .line 39
    :cond_0
    monitor-exit p0

    .line 40
    return-object v0

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized downgrade2Passable()V
    .locals 1

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    invoke-interface {v0, p0}, Lc8/awf;->onReferenceDowngrade2Passable(Lc8/Zvf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    iget-boolean v2, p0, Lc8/Zvf;->mReleased:Z

    if-eqz v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "ReleasableBitmapDrawable has been released before drawing!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lc8/Yvf;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p0}, Lc8/Zvf;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    .line 69
    .local v1, "nowCallback":Landroid/graphics/drawable/Drawable$Callback;
    const/4 v0, 0x0

    .line 72
    .local v0, "lastCallback":Landroid/graphics/drawable/Drawable$Callback;
    iget-object v2, p0, Lc8/Zvf;->mLastCallbackRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/Zvf;->mLastCallbackRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "lastCallback":Landroid/graphics/drawable/Drawable$Callback;
    check-cast v0, Landroid/graphics/drawable/Drawable$Callback;

    .restart local v0    # "lastCallback":Landroid/graphics/drawable/Drawable$Callback;
    if-ne v0, v1, :cond_1

    .line 84
    :goto_0
    return-void

    .line 77
    :cond_1
    monitor-enter p0

    .line 78
    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    if-eqz v2, :cond_2

    .line 79
    iget-object v2, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    invoke-interface {v2, p0}, Lc8/awf;->onReferenceDowngrade2Passable(Lc8/Zvf;)V

    .line 81
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lc8/Zvf;->mLastCallbackRef:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public release()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/Zvf;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Zvf;->mReleased:Z

    .line 52
    monitor-enter p0

    .line 53
    :try_start_0
    iget-object v0, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;

    invoke-interface {v0, p0}, Lc8/awf;->onReferenceReleased(Lc8/Zvf;)V

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized setReleasableReferenceListener(Lc8/awf;)V
    .locals 1
    .param p1, "referenceListener"    # Lc8/awf;

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lc8/Zvf;->mReferenceListener:Lc8/awf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
