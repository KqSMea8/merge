.class public Lc8/bYo;
.super Landroid/widget/LinearLayout;
.source "AdaptiveLinearLayout.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lc8/bYo;->type:I

    .line 16
    sget v0, Lcom/youku/phone/R$string;->current_namespace:I

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/4 v2, 0x4

    .line 16
    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lc8/bYo;->type:I

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 27
    .local v2, "w":I
    invoke-virtual {p0}, Lc8/bYo;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lc8/bYo;->type:I

    invoke-static {v3, v2, v4}, Lc8/Nyo;->getHeight(Landroid/content/Context;II)I

    move-result v0

    .line 28
    .local v0, "value":I
    iget v3, p0, Lc8/bYo;->type:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    iget v3, p0, Lc8/bYo;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 29
    :cond_0
    iget v3, p0, Lc8/bYo;->type:I

    invoke-static {v3}, Lc8/Nyo;->getWidth(I)I

    move-result v1

    .line 30
    .local v1, "valuewidth":I
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 31
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 30
    invoke-super {p0, v3, v4}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 37
    .end local v1    # "valuewidth":I
    :goto_0
    return-void

    .line 36
    :cond_1
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 35
    invoke-super {p0, p1, v3}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public setScal(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 21
    iput p1, p0, Lc8/bYo;->type:I

    .line 22
    return-void
.end method
