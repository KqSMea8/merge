.class public Lc8/qeg;
.super Landroid/widget/FrameLayout;
.source "WXFrameLayout.java"

# interfaces
.implements Lc8/Ueg;
.implements Lc8/aeg;
.implements Lc8/beg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lc8/aeg",
        "<",
        "Lc8/xbg;",
        ">;",
        "Lc8/beg",
        "<",
        "Lc8/xbg;",
        ">;",
        "Lc8/Ueg;"
    }
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lc8/xbg;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ldg;",
            ">;"
        }
    .end annotation
.end field

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    :try_start_0
    iget-object v3, p0, Lc8/qeg;->mWidgets:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    invoke-virtual {p0}, Lc8/qeg;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lc8/qeg;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 103
    iget-object v3, p0, Lc8/qeg;->mWidgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Ldg;

    .line 104
    .local v2, "widget":Lc8/Ldg;
    invoke-interface {v2, p1}, Lc8/Ldg;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "widget":Lc8/Ldg;
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "FlatGUI Crashed when dispatchDraw"

    invoke-static {v0}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 106
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 108
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-static {p0, p1}, Lc8/Jgg;->clipCanvasWithinBorderBox(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 109
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public bridge synthetic getComponent()Lc8/tbg;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lc8/qeg;->getComponent()Lc8/xbg;

    move-result-object v0

    return-object v0
.end method

.method public getComponent()Lc8/xbg;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lc8/qeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xbg;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic holdComponent(Lc8/tbg;)V
    .locals 0
    .param p1, "x0"    # Lc8/tbg;

    .prologue
    .line 41
    check-cast p1, Lc8/xbg;

    .end local p1    # "x0":Lc8/tbg;
    invoke-virtual {p0, p1}, Lc8/qeg;->holdComponent(Lc8/xbg;)V

    return-void
.end method

.method public holdComponent(Lc8/xbg;)V
    .locals 1
    .param p1, "component"    # Lc8/xbg;

    .prologue
    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/qeg;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method

.method public mountFlatGUI(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Ldg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/flat/widget/Widget;>;"
    iput-object p1, p0, Lc8/qeg;->mWidgets:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lc8/qeg;->mWidgets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/qeg;->setWillNotDraw(Z)V

    .line 83
    :cond_0
    invoke-virtual {p0}, Lc8/qeg;->invalidate()V

    .line 84
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 61
    .local v0, "result":Z
    iget-object v1, p0, Lc8/qeg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lc8/qeg;->wxGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 64
    :cond_0
    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/qeg;->wxGesture:Lc8/Teg;

    .line 56
    return-void
.end method

.method public unmountFlatGUI()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/qeg;->mWidgets:Ljava/util/List;

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/qeg;->setWillNotDraw(Z)V

    .line 89
    invoke-virtual {p0}, Lc8/qeg;->invalidate()V

    .line 90
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    iget-object v0, p0, Lc8/qeg;->mWidgets:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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
