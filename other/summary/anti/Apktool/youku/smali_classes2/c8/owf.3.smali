.class public Lc8/owf;
.super Ljava/lang/Object;
.source "SizeUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findBestSampleSize(IIII)I
    .locals 12
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 22
    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 23
    .local v6, "wr":D
    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    .line 24
    .local v0, "hr":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 25
    .local v4, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    .local v2, "n":F
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-gtz v3, :cond_0

    .line 27
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0

    .line 30
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method public static getBitmapSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 73
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 76
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getResizedDimension(IIII)I
    .locals 8
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I

    .prologue
    .line 47
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 66
    .end local p2    # "actualPrimary":I
    :goto_0
    return p2

    .line 52
    .restart local p2    # "actualPrimary":I
    :cond_0
    if-nez p0, :cond_1

    .line 53
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 54
    .local v0, "ratio":D
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int p2, v4

    goto :goto_0

    .line 57
    .end local v0    # "ratio":D
    :cond_1
    if-nez p1, :cond_2

    move p2, p0

    .line 58
    goto :goto_0

    .line 61
    :cond_2
    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 63
    .restart local v0    # "ratio":D
    move v2, p0

    .local v2, "resized":I
    int-to-double v4, p0

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 64
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    :cond_3
    move p2, v2

    .line 66
    goto :goto_0
.end method

.method public static getSplitHeight(I)I
    .locals 1
    .param p0, "merged"    # I

    .prologue
    .line 17
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method public static getSplitWidth(I)I
    .locals 1
    .param p0, "merged"    # I

    .prologue
    .line 13
    shr-int/lit8 v0, p0, 0x10

    return v0
.end method

.method public static mergeWH(II)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 9
    shl-int/lit8 v0, p0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    return v0
.end method
