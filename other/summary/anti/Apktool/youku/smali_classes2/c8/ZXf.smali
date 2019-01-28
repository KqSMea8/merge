.class public Lc8/ZXf;
.super Lc8/HYf;
.source "BasicEditTextDomObject.java"


# instance fields
.field private mLineHeight:I

.field private mPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    .line 37
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lc8/ZXf;->mPaint:Landroid/text/TextPaint;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lc8/ZXf;->mLineHeight:I

    .line 45
    iget-object v0, p0, Lc8/ZXf;->mPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {p0}, Lc8/ZXf;->getViewPortWidth()I

    move-result v2

    invoke-static {v1, v2}, Lc8/Jgg;->getRealPxByWidth(FI)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 46
    new-instance v0, Lc8/YXf;

    invoke-direct {v0, p0}, Lc8/YXf;-><init>(Lc8/ZXf;)V

    invoke-virtual {p0, v0}, Lc8/ZXf;->setMeasureFunction(Lc8/BZf;)V

    .line 56
    return-void
.end method


# virtual methods
.method protected getMeasureHeight()F
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lc8/ZXf;->getMeasuredLineHeight()F

    move-result v0

    return v0
.end method

.method protected final getMeasuredLineHeight()F
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lc8/ZXf;->mLineHeight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lc8/ZXf;->mLineHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lc8/ZXf;->mLineHeight:I

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/ZXf;->mPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    goto :goto_0
.end method

.method public layoutBefore()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lc8/HYf;->layoutBefore()V

    .line 61
    invoke-virtual {p0}, Lc8/ZXf;->updateStyleAndAttrs()V

    .line 62
    return-void
.end method

.method protected updateStyleAndAttrs()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 73
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/PYf;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 74
    const/4 v1, -0x1

    .local v1, "fontSize":I
    const/4 v2, -0x1

    .local v2, "fontStyle":I
    const/4 v3, -0x1

    .line 75
    .local v3, "fontWeight":I
    const/4 v0, 0x0

    .line 76
    .local v0, "fontFamily":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    const-string/jumbo v6, "fontSize"

    invoke-virtual {v5, v6}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 77
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {p0}, Lc8/ZXf;->getViewPortWidth()I

    move-result v6

    invoke-static {v5, v6}, Lc8/PYf;->getFontSize(Ljava/util/Map;I)I

    move-result v1

    .line 80
    :cond_0
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    const-string/jumbo v6, "fontFamily"

    invoke-virtual {v5, v6}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-static {v5}, Lc8/PYf;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    const-string/jumbo v6, "fontStyle"

    invoke-virtual {v5, v6}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-static {v5}, Lc8/PYf;->getFontStyle(Ljava/util/Map;)I

    move-result v2

    .line 88
    :cond_2
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    const-string/jumbo v6, "fontWeight"

    invoke-virtual {v5, v6}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 89
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-static {v5}, Lc8/PYf;->getFontWeight(Ljava/util/Map;)I

    move-result v3

    .line 92
    :cond_3
    invoke-virtual {p0}, Lc8/ZXf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {p0}, Lc8/ZXf;->getViewPortWidth()I

    move-result v6

    invoke-static {v5, v6}, Lc8/PYf;->getLineHeight(Ljava/util/Map;I)I

    move-result v4

    .line 93
    .local v4, "lineHeight":I
    if-eq v4, v7, :cond_4

    .line 94
    iput v4, p0, Lc8/ZXf;->mLineHeight:I

    .line 96
    :cond_4
    if-eq v1, v7, :cond_5

    .line 97
    iget-object v5, p0, Lc8/ZXf;->mPaint:Landroid/text/TextPaint;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 99
    :cond_5
    if-eqz v0, :cond_6

    .line 100
    iget-object v5, p0, Lc8/ZXf;->mPaint:Landroid/text/TextPaint;

    invoke-static {v5, v2, v3, v0}, Lc8/ngg;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    .line 103
    :cond_6
    invoke-virtual {p0}, Lc8/ZXf;->dirty()V

    .line 105
    .end local v0    # "fontFamily":Ljava/lang/String;
    .end local v1    # "fontSize":I
    .end local v2    # "fontStyle":I
    .end local v3    # "fontWeight":I
    .end local v4    # "lineHeight":I
    :cond_7
    return-void
.end method
