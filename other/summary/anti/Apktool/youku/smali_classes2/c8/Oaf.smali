.class public Lc8/Oaf;
.super Ljava/lang/Object;
.source "ScreenTool.java"


# static fields
.field private static DENSITY:F = 0.0f

.field private static final SUFFIX_AP:Ljava/lang/String; = "ap"

.field private static final SUFFIX_NP:Ljava/lang/String; = "np"

.field private static final WIDTH_REFER:I = 0x177

.field private static WIDTH_SCREEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, -0x1

    sput v0, Lc8/Oaf;->WIDTH_SCREEN:I

    .line 26
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lc8/Oaf;->DENSITY:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 88
    .local v0, "scale":F
    mul-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method private static getDensity(Landroid/content/Context;)F
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    sget v1, Lc8/Oaf;->DENSITY:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 65
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    sput v1, Lc8/Oaf;->DENSITY:F

    .line 68
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget v1, Lc8/Oaf;->DENSITY:F

    return v1
.end method

.method public static getPx(Landroid/content/Context;Ljava/lang/Object;I)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrValue"    # Ljava/lang/Object;
    .param p2, "defaultValue"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x43bb8000    # 375.0f

    .line 29
    instance-of v6, p1, Ljava/lang/String;

    if-nez v6, :cond_0

    .line 57
    .end local p1    # "attrValue":Ljava/lang/Object;
    .end local p2    # "defaultValue":I
    :goto_0
    return p2

    .restart local p1    # "attrValue":Ljava/lang/Object;
    .restart local p2    # "defaultValue":I
    :cond_0
    move-object v6, p1

    .line 33
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "attrValueStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    const-string/jumbo v6, "Dinamic"

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "size\u5c5e\u6027\u4e3a\u7a7a\u5b57\u7b26\u4e32"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lc8/taf;->d(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    invoke-static {p0}, Lc8/Oaf;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    .line 41
    .local v5, "width":I
    invoke-static {p0}, Lc8/Oaf;->getDensity(Landroid/content/Context;)F

    move-result v1

    .line 43
    .local v1, "density":F
    const-string/jumbo v6, "np"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    const-string/jumbo v6, "np"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 45
    .local v2, "dp":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    mul-float/2addr v6, v1

    float-to-int p2, v6

    goto :goto_0

    .line 46
    .end local v2    # "dp":Ljava/lang/Float;
    :cond_2
    const-string/jumbo v6, "ap"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 47
    const-string/jumbo v6, "ap"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 48
    .local v3, "pt":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v6

    div-float v4, v6, v8

    .line 49
    .local v4, "scale":F
    int-to-float v6, v5

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result p2

    goto :goto_0

    .line 52
    .end local v3    # "pt":Ljava/lang/Float;
    .end local v4    # "scale":F
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 53
    .local v3, "pt":F
    div-float v4, v3, v8

    .line 54
    .restart local v4    # "scale":F
    int-to-float v6, v5

    mul-float/2addr v6, v4

    float-to-int p2, v6

    goto :goto_0

    .line 56
    .end local v1    # "density":F
    .end local v3    # "pt":F
    .end local v4    # "scale":F
    .end local v5    # "width":I
    :catch_0
    move-exception v6

    const-string/jumbo v6, "Dinamic"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    .end local p1    # "attrValue":Ljava/lang/Object;
    aput-object p1, v7, v9

    const-string/jumbo v8, "\u5199\u6cd5\u9519\u8bef\uff0c\u89e3\u6790\u51fa\u9519"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lc8/taf;->w(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    sget v1, Lc8/Oaf;->WIDTH_SCREEN:I

    if-gez v1, :cond_0

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 77
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    sput v1, Lc8/Oaf;->WIDTH_SCREEN:I

    .line 80
    .end local v0    # "metrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget v1, Lc8/Oaf;->WIDTH_SCREEN:I

    return v1
.end method

.method public static px2sp(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 100
    .local v0, "fontScale":F
    div-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "spValue"    # F

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 112
    .local v0, "fontScale":F
    mul-float v1, p1, v0

    float-to-int v1, v1

    return v1
.end method
