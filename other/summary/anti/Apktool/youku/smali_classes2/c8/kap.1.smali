.class public Lc8/kap;
.super Landroid/widget/HorizontalScrollView;
.source "PageHorizontalScrollView.java"


# instance fields
.field _bt_left:Landroid/widget/ImageView;

.field _bt_right:Landroid/widget/ImageView;

.field cover_left:Landroid/widget/ImageView;

.field cover_right:Landroid/widget/ImageView;

.field private currentPos:I

.field private screenWidth:I

.field private totalPos:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 40
    invoke-virtual {p0}, Lc8/kap;->computeHorizontalScrollOffset()I

    move-result v0

    iput v0, p0, Lc8/kap;->currentPos:I

    .line 41
    invoke-virtual {p0}, Lc8/kap;->computeHorizontalScrollRange()I

    move-result v0

    iput v0, p0, Lc8/kap;->totalPos:I

    .line 45
    iget v0, p0, Lc8/kap;->totalPos:I

    iget v3, p0, Lc8/kap;->screenWidth:I

    if-gt v0, v3, :cond_4

    .line 46
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    :cond_0
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    :cond_1
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_2
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 56
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    :cond_3
    :goto_0
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->computeScroll()V

    .line 103
    return-void

    .line 59
    :cond_4
    iget v0, p0, Lc8/kap;->currentPos:I

    if-nez v0, :cond_8

    .line 60
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 61
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :cond_5
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 64
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 66
    :cond_6
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 67
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    :cond_7
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 70
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :cond_8
    iget v0, p0, Lc8/kap;->currentPos:I

    if-lez v0, :cond_10

    move v0, v1

    :goto_1
    iget v3, p0, Lc8/kap;->currentPos:I

    iget v4, p0, Lc8/kap;->totalPos:I

    iget v5, p0, Lc8/kap;->screenWidth:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_11

    :goto_2
    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 74
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    .line 75
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 77
    :cond_9
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    .line 78
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    :cond_a
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 81
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 83
    :cond_b
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    .line 84
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    :cond_c
    iget v0, p0, Lc8/kap;->currentPos:I

    iget v1, p0, Lc8/kap;->totalPos:I

    iget v3, p0, Lc8/kap;->screenWidth:I

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_3

    .line 88
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    .line 89
    iget-object v0, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    :cond_d
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_e

    .line 92
    iget-object v0, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :cond_e
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    .line 95
    iget-object v0, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    :cond_f
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_10
    move v0, v2

    .line 73
    goto :goto_1

    :cond_11
    move v1, v2

    goto :goto_2
.end method

.method public scrollToCurrent(IILandroid/view/View;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "tabView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-ge p1, p2, :cond_0

    if-lez p2, :cond_0

    .line 123
    if-eqz p3, :cond_1

    .line 124
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, Lc8/kap;->screenWidth:I

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 125
    .local v0, "scrollPos":I
    invoke-virtual {p0, v0, v1}, Lc8/kap;->smoothScrollTo(II)V

    .line 130
    .end local v0    # "scrollPos":I
    .end local p1    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 127
    .restart local p1    # "index":I
    :cond_1
    if-gez p1, :cond_2

    move p1, v1

    .end local p1    # "index":I
    :cond_2
    iget v2, p0, Lc8/kap;->totalPos:I

    div-int/2addr v2, p2

    mul-int/2addr v2, p1

    invoke-virtual {p0, v2, v1}, Lc8/kap;->scrollTo(II)V

    goto :goto_0
.end method

.method public setCoverLeftImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "cover_left"    # Landroid/widget/ImageView;

    .prologue
    .line 114
    iput-object p1, p0, Lc8/kap;->cover_left:Landroid/widget/ImageView;

    .line 115
    return-void
.end method

.method public setCoverRightImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "cover_right"    # Landroid/widget/ImageView;

    .prologue
    .line 118
    iput-object p1, p0, Lc8/kap;->cover_right:Landroid/widget/ImageView;

    .line 119
    return-void
.end method

.method public setLeftButton(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "bt1"    # Landroid/widget/ImageView;

    .prologue
    .line 106
    iput-object p1, p0, Lc8/kap;->_bt_left:Landroid/widget/ImageView;

    .line 107
    return-void
.end method

.method public setRightButton(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "bt2"    # Landroid/widget/ImageView;

    .prologue
    .line 110
    iput-object p1, p0, Lc8/kap;->_bt_right:Landroid/widget/ImageView;

    .line 111
    return-void
.end method

.method public setScreenWidth(I)V
    .locals 1
    .param p1, "screenWidth"    # I

    .prologue
    .line 32
    iput p1, p0, Lc8/kap;->screenWidth:I

    .line 33
    invoke-virtual {p0}, Lc8/kap;->computeHorizontalScrollOffset()I

    move-result v0

    iput v0, p0, Lc8/kap;->currentPos:I

    .line 34
    invoke-virtual {p0}, Lc8/kap;->computeHorizontalScrollRange()I

    move-result v0

    iput v0, p0, Lc8/kap;->totalPos:I

    .line 35
    return-void
.end method
