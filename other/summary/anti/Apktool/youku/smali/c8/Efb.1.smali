.class public Lc8/Efb;
.super Ljava/lang/Object;
.source "GammaEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static EOCF_sRGB(F)F
    .locals 4
    .param p0, "srgb"    # F

    .prologue
    .line 24
    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float v0, p0, v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr v0, p0

    const v1, 0x3f870a3d    # 1.055f

    div-float/2addr v0, v1

    float-to-double v0, v0

    const-wide v2, 0x4003333340000000L    # 2.4000000953674316

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private static OECF_sRGB(F)F
    .locals 4
    .param p0, "linear"    # F

    .prologue
    .line 16
    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    mul-float/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    float-to-double v0, p0

    const-wide v2, 0x3fdaaaaaa0000000L    # 0.4166666567325592

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff0e147a0000000L    # 1.0549999475479126

    mul-double/2addr v0, v2

    const-wide v2, 0x3fac28f5c0000000L    # 0.054999999701976776

    sub-double/2addr v0, v2

    double-to-float v0, v0

    .line 16
    goto :goto_0
.end method

.method public static evaluate(FII)I
    .locals 15
    .param p0, "fraction"    # F
    .param p1, "startInt"    # I
    .param p2, "endInt"    # I

    .prologue
    .line 28
    ushr-int/lit8 v13, p1, 0x18

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v9, v13, v14

    .line 29
    .local v9, "startA":F
    shr-int/lit8 v13, p1, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v12, v13, v14

    .line 30
    .local v12, "startR":F
    shr-int/lit8 v13, p1, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v11, v13, v14

    .line 31
    .local v11, "startG":F
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v10, v13, v14

    .line 33
    .local v10, "startB":F
    ushr-int/lit8 v13, p2, 0x18

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v3, v13, v14

    .line 34
    .local v3, "endA":F
    shr-int/lit8 v13, p2, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v6, v13, v14

    .line 35
    .local v6, "endR":F
    shr-int/lit8 v13, p2, 0x8

    and-int/lit16 v13, v13, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v5, v13, v14

    .line 36
    .local v5, "endG":F
    move/from16 v0, p2

    and-int/lit16 v13, v0, 0xff

    int-to-float v13, v13

    const/high16 v14, 0x437f0000    # 255.0f

    div-float v4, v13, v14

    .line 39
    .local v4, "endB":F
    invoke-static {v12}, Lc8/Efb;->EOCF_sRGB(F)F

    move-result v12

    .line 40
    invoke-static {v11}, Lc8/Efb;->EOCF_sRGB(F)F

    move-result v11

    .line 41
    invoke-static {v10}, Lc8/Efb;->EOCF_sRGB(F)F

    move-result v10

    .line 43
    invoke-static {v6}, Lc8/Efb;->EOCF_sRGB(F)F

    move-result v6

    .line 44
    invoke-static {v5}, Lc8/Efb;->EOCF_sRGB(F)F

    move-result v5

    .line 45
    invoke-static {v4}, Lc8/Efb;->EOCF_sRGB(F)F

    move-result v4

    .line 48
    sub-float v13, v3, v9

    mul-float/2addr v13, p0

    add-float v1, v9, v13

    .line 49
    .local v1, "a":F
    sub-float v13, v6, v12

    mul-float/2addr v13, p0

    add-float v8, v12, v13

    .line 50
    .local v8, "r":F
    sub-float v13, v5, v11

    mul-float/2addr v13, p0

    add-float v7, v11, v13

    .line 51
    .local v7, "g":F
    sub-float v13, v4, v10

    mul-float/2addr v13, p0

    add-float v2, v10, v13

    .line 54
    .local v2, "b":F
    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v1, v13

    .line 55
    invoke-static {v8}, Lc8/Efb;->OECF_sRGB(F)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v8, v13, v14

    .line 56
    invoke-static {v7}, Lc8/Efb;->OECF_sRGB(F)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v7, v13, v14

    .line 57
    invoke-static {v2}, Lc8/Efb;->OECF_sRGB(F)F

    move-result v13

    const/high16 v14, 0x437f0000    # 255.0f

    mul-float v2, v13, v14

    .line 59
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v13

    shl-int/lit8 v13, v13, 0x18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v13, v14

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v14

    shl-int/lit8 v14, v14, 0x8

    or-int/2addr v13, v14

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    or-int/2addr v13, v14

    return v13
.end method
