.class public final Lc8/fqd;
.super Ljava/lang/Object;
.source "OverscrollHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isAndroidOverScrollEnabled(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static overScrollBy(Lc8/oqd;IIIIFZ)V
    .locals 3
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRange"    # I
    .param p4, "fuzzyThreshold"    # I
    .param p5, "scaleFactor"    # F
    .param p6, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oqd",
            "<*>;IIIIFZ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "view":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;"
    invoke-virtual {p0}, Lc8/oqd;->isPullToRefreshOverScrollEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    invoke-virtual {p0}, Lc8/oqd;->getMode()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    move-result-object v0

    .line 102
    .local v0, "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    sget-object v2, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->DISABLED:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    if-eq v0, v2, :cond_0

    if-nez p6, :cond_0

    if-eqz p1, :cond_0

    .line 103
    add-int v1, p1, p2

    .line 110
    .local v1, "newY":I
    rsub-int/lit8 v2, p4, 0x0

    if-ge v1, v2, :cond_1

    .line 113
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullDown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-virtual {p0}, Lc8/oqd;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, p5

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lc8/oqd;->setHeaderScroll(I)V

    .line 128
    .end local v0    # "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .end local v1    # "newY":I
    :cond_0
    :goto_0
    return-void

    .line 116
    .restart local v0    # "mode":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;
    .restart local v1    # "newY":I
    :cond_1
    add-int v2, p3, p4

    if-le v1, v2, :cond_2

    .line 119
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->canPullUp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {p0}, Lc8/oqd;->getScrollY()I

    move-result v2

    add-int/2addr v2, v1

    sub-int/2addr v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, p5

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lc8/oqd;->setHeaderScroll(I)V

    goto :goto_0

    .line 122
    :cond_2
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, p4, :cond_3

    sub-int v2, v1, p3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, p4, :cond_0

    .line 124
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lc8/oqd;->smoothScrollToLonger(I)V

    goto :goto_0
.end method

.method static overScrollBy(Lc8/oqd;IIIZ)V
    .locals 7
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "scrollRange"    # I
    .param p4, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oqd",
            "<*>;IIIZ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "view":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIIIFZ)V

    .line 68
    return-void
.end method

.method public static overScrollBy(Lc8/oqd;IIZ)V
    .locals 1
    .param p1, "deltaY"    # I
    .param p2, "scrollY"    # I
    .param p3, "isTouchEvent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oqd",
            "<*>;IIZ)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "view":Lc8/oqd;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lc8/fqd;->overScrollBy(Lc8/oqd;IIIZ)V

    .line 44
    return-void
.end method
