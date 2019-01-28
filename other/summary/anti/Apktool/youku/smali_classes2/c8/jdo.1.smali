.class public Lc8/jdo;
.super Landroid/widget/RelativeLayout;
.source "CellImageLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;
    }
.end annotation


# instance fields
.field private height:I

.field private ratio_type:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    iput v0, p0, Lc8/jdo;->width:I

    .line 19
    iput v0, p0, Lc8/jdo;->height:I

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v0, p0, Lc8/jdo;->width:I

    .line 19
    iput v0, p0, Lc8/jdo;->height:I

    .line 36
    invoke-direct {p0, p2}, Lc8/jdo;->initattrs(Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method private initattrs(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-virtual {p0}, Lc8/jdo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/youku/phone/R$styleable;->CellImageLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->CellImageLayout_baseuikit_ratioRype:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/jdo;->ratio_type:I

    .line 43
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 44
    return-void
.end method


# virtual methods
.method public getRatio_type()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lc8/jdo;->ratio_type:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 48
    invoke-static {v3, p1}, Lc8/jdo;->getDefaultSize(II)I

    move-result v2

    invoke-static {v3, p2}, Lc8/jdo;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lc8/jdo;->setMeasuredDimension(II)V

    .line 49
    invoke-virtual {p0}, Lc8/jdo;->getMeasuredWidth()I

    move-result v1

    .line 50
    .local v1, "childWidthSize":I
    move v0, p2

    .line 51
    .local v0, "childHeightSize":I
    iget v2, p0, Lc8/jdo;->ratio_type:I

    if-nez v2, :cond_1

    .line 52
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v0, v2, 0x10

    .line 65
    :cond_0
    :goto_0
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 66
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 68
    return-void

    .line 53
    :cond_1
    iget v2, p0, Lc8/jdo;->ratio_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 54
    div-int/lit8 v0, v1, 0x3

    goto :goto_0

    .line 55
    :cond_2
    iget v2, p0, Lc8/jdo;->ratio_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 56
    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v0, v2, 0x2

    goto :goto_0

    .line 57
    :cond_3
    iget v2, p0, Lc8/jdo;->ratio_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 58
    move v0, v1

    goto :goto_0

    .line 59
    :cond_4
    iget v2, p0, Lc8/jdo;->ratio_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 60
    iget v2, p0, Lc8/jdo;->height:I

    mul-int/2addr v2, v1

    iget v3, p0, Lc8/jdo;->width:I

    div-int v0, v2, v3

    goto :goto_0

    .line 61
    :cond_5
    iget v2, p0, Lc8/jdo;->ratio_type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 63
    invoke-virtual {p0}, Lc8/jdo;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 23
    iput p1, p0, Lc8/jdo;->height:I

    .line 24
    return-void
.end method

.method public setRatioType(Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;)V
    .locals 1
    .param p1, "ratioType"    # Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;

    .prologue
    .line 75
    invoke-static {p1}, Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;->access$000(Lcom/youku/us/baseuikit/widget/CellImageLayout$RatioType;)I

    move-result v0

    iput v0, p0, Lc8/jdo;->ratio_type:I

    .line 76
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 27
    iput p1, p0, Lc8/jdo;->width:I

    .line 28
    return-void
.end method
