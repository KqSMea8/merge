.class public Lc8/VYo;
.super Landroid/widget/RelativeLayout;
.source "ChannelCellImageLayout.java"


# instance fields
.field private ratio_type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    invoke-direct {p0, p2}, Lc8/VYo;->initattrs(Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method private initattrs(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-virtual {p0}, Lc8/VYo;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/youku/phone/R$styleable;->ChannelCellImageLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 27
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    sget v1, Lcom/youku/phone/R$styleable;->ChannelCellImageLayout_ratio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lc8/VYo;->ratio_type:I

    .line 28
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 32
    invoke-static {v3, p1}, Lc8/VYo;->getDefaultSize(II)I

    move-result v2

    invoke-static {v3, p2}, Lc8/VYo;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lc8/VYo;->setMeasuredDimension(II)V

    .line 33
    invoke-virtual {p0}, Lc8/VYo;->getMeasuredWidth()I

    move-result v1

    .line 35
    .local v1, "childWidthSize":I
    iget v2, p0, Lc8/VYo;->ratio_type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 36
    invoke-virtual {p0}, Lc8/VYo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Mzo;->isPad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    div-int/lit8 v0, v2, 0x2

    .line 54
    .local v0, "childHeightSize":I
    :goto_0
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 55
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 56
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 57
    return-void

    .line 39
    .end local v0    # "childHeightSize":I
    :cond_0
    div-int/lit8 v0, v1, 0x3

    .restart local v0    # "childHeightSize":I
    goto :goto_0

    .line 41
    .end local v0    # "childHeightSize":I
    :cond_1
    iget v2, p0, Lc8/VYo;->ratio_type:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 42
    invoke-virtual {p0}, Lc8/VYo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Mzo;->isPad(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v2, v2, 0x10

    div-int/lit8 v0, v2, 0x2

    .restart local v0    # "childHeightSize":I
    goto :goto_0

    .line 45
    .end local v0    # "childHeightSize":I
    :cond_2
    mul-int/lit8 v2, v1, 0x7

    div-int/lit8 v0, v2, 0xf

    .restart local v0    # "childHeightSize":I
    goto :goto_0

    .line 47
    .end local v0    # "childHeightSize":I
    :cond_3
    iget v2, p0, Lc8/VYo;->ratio_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 48
    mul-int/lit8 v2, v1, 0x7

    div-int/lit8 v0, v2, 0xf

    .restart local v0    # "childHeightSize":I
    goto :goto_0

    .line 49
    .end local v0    # "childHeightSize":I
    :cond_4
    iget v2, p0, Lc8/VYo;->ratio_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    .line 50
    mul-int/lit8 v2, v1, 0x3

    div-int/lit8 v0, v2, 0x2

    .restart local v0    # "childHeightSize":I
    goto :goto_0

    .line 52
    .end local v0    # "childHeightSize":I
    :cond_5
    mul-int/lit8 v2, v1, 0x9

    div-int/lit8 v0, v2, 0x10

    .restart local v0    # "childHeightSize":I
    goto :goto_0
.end method
