.class public Lc8/pf;
.super Lc8/qd;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lc8/qd",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Lc8/qf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Lc8/qd;-><init>()V

    .line 30
    iput v0, p0, Lc8/pf;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Lc8/pf;->mTempLeftRightOffset:I

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Lc8/qd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lc8/pf;->mTempTopBottomOffset:I

    .line 31
    iput v0, p0, Lc8/pf;->mTempLeftRightOffset:I

    .line 37
    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    invoke-virtual {v0}, Lc8/qf;->getLeftAndRightOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    .prologue
    .line 85
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    invoke-virtual {v0}, Lc8/qf;->getTopAndBottomOffset()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected layoutChild(Lc8/yd;Landroid/view/View;I)V
    .locals 0
    .param p1, "parent"    # Lc8/yd;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/yd;",
            "TV;I)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p1, p2, p3}, Lc8/yd;->onLayoutChild(Landroid/view/View;I)V

    .line 64
    return-void
.end method

.method public onLayoutChild(Lc8/yd;Landroid/view/View;I)Z
    .locals 3
    .param p1, "parent"    # Lc8/yd;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/yd;",
            "TV;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v2, 0x0

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lc8/pf;->layoutChild(Lc8/yd;Landroid/view/View;I)V

    .line 44
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/qf;

    invoke-direct {v0, p2}, Lc8/qf;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    .line 47
    :cond_0
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    invoke-virtual {v0}, Lc8/qf;->onViewLayout()V

    .line 49
    iget v0, p0, Lc8/pf;->mTempTopBottomOffset:I

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    iget v1, p0, Lc8/pf;->mTempTopBottomOffset:I

    invoke-virtual {v0, v1}, Lc8/qf;->setTopAndBottomOffset(I)Z

    .line 51
    iput v2, p0, Lc8/pf;->mTempTopBottomOffset:I

    .line 53
    :cond_1
    iget v0, p0, Lc8/pf;->mTempLeftRightOffset:I

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    iget v1, p0, Lc8/pf;->mTempLeftRightOffset:I

    invoke-virtual {v0, v1}, Lc8/qf;->setLeftAndRightOffset(I)Z

    .line 55
    iput v2, p0, Lc8/pf;->mTempLeftRightOffset:I

    .line 58
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 76
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    invoke-virtual {v0, p1}, Lc8/qf;->setLeftAndRightOffset(I)Z

    move-result v0

    .line 81
    :goto_0
    return v0

    .line 79
    :cond_0
    iput p1, p0, Lc8/pf;->mTempLeftRightOffset:I

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 67
    .local p0, "this":Lc8/pf;, "Landroid/support/design/widget/ViewOffsetBehavior<TV;>;"
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lc8/pf;->mViewOffsetHelper:Lc8/qf;

    invoke-virtual {v0, p1}, Lc8/qf;->setTopAndBottomOffset(I)Z

    move-result v0

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_0
    iput p1, p0, Lc8/pf;->mTempTopBottomOffset:I

    .line 72
    const/4 v0, 0x0

    goto :goto_0
.end method
