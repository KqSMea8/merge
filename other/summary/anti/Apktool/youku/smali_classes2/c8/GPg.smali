.class public Lc8/GPg;
.super Ljava/lang/Object;
.source "TypefaceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createTypeface(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fontFamily"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "fallbackTypeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 20
    invoke-static {p0}, Lc8/zPg;->getInstance(Landroid/content/Context;)Lc8/zPg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/zPg;->getFontFamilyInfo(Ljava/lang/String;)Lc8/uPg;

    move-result-object v0

    .line 22
    .local v0, "fontFamilyInfo":Lc8/uPg;
    const/4 v1, 0x0

    .line 23
    .local v1, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0, p2}, Lc8/uPg;->findBestMatch(I)Lc8/EPg;

    move-result-object v2

    .line 26
    .local v2, "typefaceInfo":Lc8/EPg;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc8/EPg;->checkAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v2}, Lc8/EPg;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 32
    .end local v2    # "typefaceInfo":Lc8/EPg;
    :cond_0
    if-nez v1, :cond_1

    move-object v1, p3

    .line 33
    :cond_1
    if-nez v1, :cond_2

    and-int/lit8 v3, p2, 0x1

    if-lez v3, :cond_3

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 35
    :cond_2
    :goto_0
    return-object v1

    .line 33
    :cond_3
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method
