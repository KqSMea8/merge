.class public Lc8/OZo;
.super Landroid/widget/ImageView;
.source "HomeImageView.java"


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 26
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 27
    .local v1, "w":I
    invoke-virtual {p0}, Lc8/OZo;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lc8/OZo;->type:I

    invoke-static {v2, v1, v3}, Lc8/Nyo;->getHeight(Landroid/content/Context;II)I

    move-result v0

    .line 28
    .local v0, "value":I
    invoke-virtual {p0, v1, v0}, Lc8/OZo;->setMeasuredDimension(II)V

    .line 29
    return-void
.end method

.method public setScale(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 22
    iput p1, p0, Lc8/OZo;->type:I

    .line 23
    return-void
.end method
