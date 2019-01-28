.class public Lc8/Wdo;
.super Landroid/widget/ImageView;
.source "YoukuImageView.java"


# instance fields
.field private enableRatio:Z

.field private heightRatio:I

.field private widthRatio:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    const/16 v0, 0x9

    iput v0, p0, Lc8/Wdo;->widthRatio:I

    .line 20
    const/16 v0, 0x10

    iput v0, p0, Lc8/Wdo;->heightRatio:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Wdo;->enableRatio:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const/16 v0, 0x9

    iput v0, p0, Lc8/Wdo;->widthRatio:I

    .line 20
    const/16 v0, 0x10

    iput v0, p0, Lc8/Wdo;->heightRatio:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Wdo;->enableRatio:Z

    .line 55
    return-void
.end method


# virtual methods
.method public isEnableRatio()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lc8/Wdo;->enableRatio:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 60
    iget-boolean v2, p0, Lc8/Wdo;->enableRatio:Z

    if-eqz v2, :cond_0

    .line 61
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 62
    .local v1, "w":I
    iget v2, p0, Lc8/Wdo;->widthRatio:I

    mul-int/2addr v2, v1

    iget v3, p0, Lc8/Wdo;->heightRatio:I

    div-int v0, v2, v3

    .line 63
    .local v0, "h":I
    invoke-virtual {p0, v1, v0}, Lc8/Wdo;->setMeasuredDimension(II)V

    .line 71
    .end local v0    # "h":I
    .end local v1    # "w":I
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setEnableRatio(Z)V
    .locals 0
    .param p1, "enableRatio"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lc8/Wdo;->enableRatio:Z

    .line 79
    invoke-virtual {p0}, Lc8/Wdo;->invalidate()V

    .line 80
    return-void
.end method

.method public setRatio(II)V
    .locals 0
    .param p1, "heightRatio"    # I
    .param p2, "widthRatio"    # I

    .prologue
    .line 34
    iput p1, p0, Lc8/Wdo;->heightRatio:I

    .line 35
    iput p2, p0, Lc8/Wdo;->widthRatio:I

    .line 36
    invoke-virtual {p0}, Lc8/Wdo;->invalidate()V

    .line 37
    return-void
.end method

.method public setWidthRatio(I)V
    .locals 0
    .param p1, "widthRatio"    # I

    .prologue
    .line 45
    iput p1, p0, Lc8/Wdo;->widthRatio:I

    .line 46
    invoke-virtual {p0}, Lc8/Wdo;->postInvalidate()V

    .line 47
    return-void
.end method
