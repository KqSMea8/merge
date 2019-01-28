.class public Lc8/zXo;
.super Landroid/support/v4/view/ViewPager;
.source "ViewPagerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yXo;
    }
.end annotation


# static fields
.field private static final MAX_PROGRESS:I = 0x3e8


# instance fields
.field private mScrollEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/zXo;->mScrollEnabled:Z

    .line 125
    new-instance v0, Lc8/yXo;

    invoke-direct {v0, p0}, Lc8/yXo;-><init>(Lc8/zXo;)V

    invoke-virtual {p0, v0}, Lc8/zXo;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lc8/zXo;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lc8/zXo;

    .prologue
    .line 28
    invoke-virtual {p0}, Lc8/zXo;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addViewToAdapter(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/yXo;->addView(Landroid/view/View;)V

    .line 171
    return-void
.end method

.method addViewToAdapter(Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 166
    invoke-virtual {p0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/yXo;->addView(Landroid/view/View;I)V

    .line 167
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lc8/yXo;
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Lc8/yXo;

    return-object v0
.end method

.method getIndexFromAdapter(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 186
    invoke-virtual {p0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    invoke-static {v0}, Lc8/yXo;->access$100(Lc8/yXo;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method getViewCountInAdapter()I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    invoke-virtual {v0}, Lc8/yXo;->getCount()I

    move-result v0

    return v0
.end method

.method getViewFromAdapter(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 182
    invoke-virtual {p0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/yXo;->getViewAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-boolean v1, p0, Lc8/zXo;->mScrollEnabled:Z

    if-nez v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 148
    iget-boolean v0, p0, Lc8/zXo;->mScrollEnabled:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 152
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method removeViewFromAdapter(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 174
    invoke-virtual {p0}, Lc8/zXo;->getAdapter()Lc8/yXo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/yXo;->removeView(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .param p1, "scrollEnabled"    # Z

    .prologue
    .line 162
    iput-boolean p1, p0, Lc8/zXo;->mScrollEnabled:Z

    .line 163
    return-void
.end method
