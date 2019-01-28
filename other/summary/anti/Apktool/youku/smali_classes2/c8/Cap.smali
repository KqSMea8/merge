.class public Lc8/Cap;
.super Landroid/view/ViewGroup;
.source "SimpleViewSwitcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/Cap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-virtual {p0}, Lc8/Cap;->getChildCount()I

    move-result v1

    .line 46
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 47
    invoke-virtual {p0, v2}, Lc8/Cap;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 49
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 46
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 53
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Lc8/Cap;->getChildCount()I

    move-result v1

    .line 28
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 29
    .local v3, "maxHeight":I
    const/4 v4, 0x0

    .line 30
    .local v4, "maxWidth":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 31
    invoke-virtual {p0, v2}, Lc8/Cap;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 32
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lc8/Cap;->measureChild(Landroid/view/View;II)V

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 36
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {p0, v4, v3}, Lc8/Cap;->setMeasuredDimension(II)V

    .line 39
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-virtual {p0}, Lc8/Cap;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lc8/Cap;->removeViewAt(I)V

    .line 59
    :cond_0
    invoke-virtual {p0, p1, v1}, Lc8/Cap;->addView(Landroid/view/View;I)V

    .line 60
    return-void
.end method
