.class public Lc8/seg;
.super Landroid/widget/HorizontalScrollView;
.source "WXHorizontalScrollView.java"

# interfaces
.implements Lc8/Ueg;
.implements Lc8/ceg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/reg;
    }
.end annotation


# instance fields
.field private mScrollViewListener:Lc8/reg;

.field private mScrollViewListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/reg;",
            ">;"
        }
    .end annotation
.end field

.field private scrollable:Z

.field private wxGesture:Lc8/Teg;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/seg;->scrollable:Z

    .line 49
    invoke-direct {p0}, Lc8/seg;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/seg;->scrollable:Z

    .line 59
    invoke-direct {p0}, Lc8/seg;->init()V

    .line 60
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/seg;->setWillNotDraw(Z)V

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lc8/seg;->setOverScrollMode(I)V

    .line 55
    return-void
.end method


# virtual methods
.method public addScrollViewListener(Lc8/reg;)V
    .locals 1
    .param p1, "scrollViewListener"    # Lc8/reg;

    .prologue
    .line 85
    iget-object v0, p0, Lc8/seg;->mScrollViewListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/seg;->mScrollViewListeners:Ljava/util/List;

    .line 88
    :cond_0
    iget-object v0, p0, Lc8/seg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lc8/seg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public getContentFrame()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lc8/seg;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lc8/seg;->computeVerticalScrollRange()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public isScrollable()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lc8/seg;->scrollable:Z

    return v0
.end method

.method protected onScrollChanged(IIII)V
    .locals 7
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onScrollChanged(IIII)V

    .line 65
    iget-object v1, p0, Lc8/seg;->mScrollViewListener:Lc8/reg;

    if-eqz v1, :cond_0

    .line 66
    iget-object v0, p0, Lc8/seg;->mScrollViewListener:Lc8/reg;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lc8/reg;->onScrollChanged(Lc8/seg;IIII)V

    .line 68
    :cond_0
    iget-object v1, p0, Lc8/seg;->mScrollViewListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lc8/seg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/reg;

    .local v0, "listener":Lc8/reg;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 70
    invoke-interface/range {v0 .. v5}, Lc8/reg;->onScrollChanged(Lc8/seg;IIII)V

    goto :goto_0

    .line 73
    .end local v0    # "listener":Lc8/reg;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 104
    iget-boolean v1, p0, Lc8/seg;->scrollable:Z

    if-nez v1, :cond_1

    .line 105
    const/4 v0, 0x1

    .line 111
    :cond_0
    :goto_0
    return v0

    .line 107
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 108
    .local v0, "result":Z
    iget-object v1, p0, Lc8/seg;->wxGesture:Lc8/Teg;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lc8/seg;->wxGesture:Lc8/Teg;

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
    .line 44
    invoke-static {p1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/HorizontalScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public registerGestureListener(Lc8/Teg;)V
    .locals 0
    .param p1, "wxGesture"    # Lc8/Teg;

    .prologue
    .line 99
    iput-object p1, p0, Lc8/seg;->wxGesture:Lc8/Teg;

    .line 100
    return-void
.end method

.method public removeScrollViewListener(Lc8/reg;)V
    .locals 1
    .param p1, "scrollViewListener"    # Lc8/reg;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/seg;->mScrollViewListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setScrollViewListener(Lc8/reg;)V
    .locals 0
    .param p1, "scrollViewListener"    # Lc8/reg;

    .prologue
    .line 76
    iput-object p1, p0, Lc8/seg;->mScrollViewListener:Lc8/reg;

    .line 77
    return-void
.end method

.method public setScrollable(Z)V
    .locals 0
    .param p1, "scrollable"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lc8/seg;->scrollable:Z

    .line 125
    return-void
.end method
