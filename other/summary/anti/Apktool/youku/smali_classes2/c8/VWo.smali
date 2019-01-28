.class public Lc8/VWo;
.super Landroid/text/DynamicLayout;
.source "PlanetDynamicLayout.java"


# instance fields
.field private mMaxLines:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 1
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 22
    invoke-direct/range {p0 .. p7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 19
    const/16 v0, 0x28

    iput v0, p0, Lc8/VWo;->mMaxLines:I

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 1
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 26
    invoke-direct/range {p0 .. p8}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 19
    const/16 v0, 0x28

    iput v0, p0, Lc8/VWo;->mMaxLines:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 1
    .param p1, "base"    # Ljava/lang/CharSequence;
    .param p2, "display"    # Ljava/lang/CharSequence;
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I
    .param p5, "align"    # Landroid/text/Layout$Alignment;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .prologue
    .line 31
    invoke-direct/range {p0 .. p10}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 19
    const/16 v0, 0x28

    iput v0, p0, Lc8/VWo;->mMaxLines:I

    .line 32
    return-void
.end method


# virtual methods
.method public getEllipsisCount(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 44
    iget v0, p0, Lc8/VWo;->mMaxLines:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-le v0, p1, :cond_0

    .line 45
    const/4 v0, 0x5

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 52
    iget v0, p0, Lc8/VWo;->mMaxLines:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-super {p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-le v0, p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lc8/VWo;->getLineEnd(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lc8/VWo;->getLineStart(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lc8/VWo;->mMaxLines:I

    if-le v0, v1, :cond_0

    .line 37
    iget v0, p0, Lc8/VWo;->mMaxLines:I

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/text/DynamicLayout;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxLines"    # I

    .prologue
    .line 59
    iput p1, p0, Lc8/VWo;->mMaxLines:I

    .line 60
    return-void
.end method
