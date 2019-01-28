.class public Lc8/Eeo;
.super Landroid/widget/Scroller;
.source "ViewPagerScroller.java"


# instance fields
.field private mScrollDuration:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    .line 12
    const/16 v0, 0x190

    iput v0, p0, Lc8/Eeo;->mScrollDuration:I

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 12
    const/16 v0, 0x190

    iput v0, p0, Lc8/Eeo;->mScrollDuration:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 12
    const/16 v0, 0x190

    iput v0, p0, Lc8/Eeo;->mScrollDuration:I

    .line 32
    return-void
.end method


# virtual methods
.method public getScrollDuration()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lc8/Eeo;->mScrollDuration:I

    return v0
.end method

.method public setScrollDuration(I)V
    .locals 0
    .param p1, "mScrollDuration"    # I

    .prologue
    .line 19
    iput p1, p0, Lc8/Eeo;->mScrollDuration:I

    .line 20
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 41
    iget v5, p0, Lc8/Eeo;->mScrollDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 42
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    .line 36
    iget v5, p0, Lc8/Eeo;->mScrollDuration:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 37
    return-void
.end method
