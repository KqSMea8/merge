.class public Lc8/efg;
.super Lc8/Rv;
.source "WXRecyclerView.java"

# interfaces
.implements Lc8/Ueg;


# static fields
.field public static final TYPE_GRID_LAYOUT:I = 0x2

.field public static final TYPE_LINEAR_LAYOUT:I = 0x1

.field public static final TYPE_STAGGERED_GRID_LAYOUT:I = 0x3


# instance fields
.field private hasTouch:Z

.field private mGesture:Lc8/Teg;

.field private scrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lc8/Rv;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/efg;->scrollable:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/efg;->hasTouch:Z

    .line 50
    return-void
.end method


# virtual methods
.method public initView(Landroid/content/Context;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 65
    const/4 v3, 0x1

    const/high16 v4, 0x42000000    # 32.0f

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lc8/efg;->initView(Landroid/content/Context;IIFI)V

    .line 66
    return-void
.end method

.method public initView(Landroid/content/Context;IIFI)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "columnCount"    # I
    .param p4, "columnGap"    # F
    .param p5, "orientation"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 78
    new-instance v0, Lc8/mu;

    invoke-direct {v0, p1, p3, p5, v1}, Lc8/mu;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {p0, v0}, Lc8/efg;->setLayoutManager(Lc8/xv;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 80
    new-instance v0, Lc8/afg;

    invoke-direct {v0, p3, p5}, Lc8/afg;-><init>(II)V

    invoke-virtual {p0, v0}, Lc8/efg;->setLayoutManager(Lc8/xv;)V

    goto :goto_0

    .line 81
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 82
    new-instance v0, Lc8/Zeg;

    invoke-direct {v0, p1, p5, v1}, Lc8/Zeg;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p0, v0}, Lc8/efg;->setLayoutManager(Lc8/xv;)V

    goto :goto_0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lc8/efg;->scrollable:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 93
    iget-boolean v1, p0, Lc8/efg;->scrollable:Z

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    iput-boolean v0, p0, Lc8/efg;->hasTouch:Z

    .line 97
    invoke-super {p0, p1}, Lc8/Rv;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 98
    .local v0, "result":Z
    iget-object v1, p0, Lc8/efg;->mGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lc8/efg;->mGesture:Lc8/Teg;

    invoke-virtual {v1, p0, p1}, Lc8/Teg;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 62
    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Lc8/Rv;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    iput-object p1, p0, Lc8/efg;->mGesture:Lc8/Teg;

    .line 89
    return-void
.end method

.method public scrollTo(ZIII)V
    .locals 2
    .param p1, "smooth"    # Z
    .param p2, "position"    # I
    .param p3, "offset"    # I
    .param p4, "orientation"    # I

    .prologue
    .line 106
    if-nez p1, :cond_2

    .line 107
    invoke-virtual {p0}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v0

    .line 108
    .local v0, "layoutManager":Lc8/xv;
    instance-of v1, v0, Lc8/wu;

    if-eqz v1, :cond_1

    .line 110
    check-cast v0, Lc8/wu;

    .end local v0    # "layoutManager":Lc8/xv;
    neg-int v1, p3

    invoke-virtual {v0, p2, v1}, Lc8/wu;->scrollToPositionWithOffset(II)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local v0    # "layoutManager":Lc8/xv;
    :cond_1
    instance-of v1, v0, Lc8/Qw;

    if-eqz v1, :cond_0

    .line 112
    check-cast v0, Lc8/Qw;

    .end local v0    # "layoutManager":Lc8/xv;
    neg-int v1, p3

    invoke-virtual {v0, p2, v1}, Lc8/Qw;->scrollToPositionWithOffset(II)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p0, p2}, Lc8/efg;->smoothScrollToPosition(I)V

    .line 117
    if-eqz p3, :cond_0

    .line 118
    new-instance v1, Lc8/cfg;

    invoke-direct {v1, p0, p4, p3}, Lc8/cfg;-><init>(Lc8/efg;II)V

    invoke-virtual {p0, v1}, Lc8/efg;->setOnSmoothScrollEndListener(Lc8/Xeg;)V

    goto :goto_0
.end method

.method public setOnSmoothScrollEndListener(Lc8/Xeg;)V
    .locals 2
    .param p1, "onSmoothScrollEndListener"    # Lc8/Xeg;

    .prologue
    .line 138
    invoke-virtual {p0}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v1

    instance-of v1, v1, Lc8/Zeg;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lc8/efg;->hasTouch:Z

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {p0}, Lc8/efg;->getLayoutManager()Lc8/xv;

    move-result-object v0

    check-cast v0, Lc8/Zeg;

    .line 140
    .local v0, "extendedLinearLayoutManager":Lc8/Zeg;
    invoke-virtual {v0, p1}, Lc8/Zeg;->setOnScrollEndListener(Lc8/Xeg;)V

    .line 154
    .end local v0    # "extendedLinearLayoutManager":Lc8/Zeg;
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v1, Lc8/dfg;

    invoke-direct {v1, p0, p1}, Lc8/dfg;-><init>(Lc8/efg;Lc8/Xeg;)V

    invoke-virtual {p0, v1}, Lc8/efg;->addOnScrollListener(Lc8/Cv;)V

    goto :goto_0
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lc8/efg;->scrollable:Z

    .line 58
    return-void
.end method
