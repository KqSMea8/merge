.class public Lc8/Vpb;
.super Lc8/HYf;
.source "WXMaskDomObject.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultStyle()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lc8/Vpb;->getDomContext()Lc8/pYf;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lc8/Vpb;->getDomContext()Lc8/pYf;

    move-result-object v7

    invoke-interface {v7}, Lc8/pYf;->getUIContext()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_1

    .line 226
    :cond_0
    invoke-super {p0}, Lc8/HYf;->getDefaultStyle()Ljava/util/Map;

    move-result-object v5

    .line 252
    :goto_0
    return-object v5

    .line 229
    :cond_1
    invoke-virtual {p0}, Lc8/Vpb;->getDomContext()Lc8/pYf;

    move-result-object v7

    invoke-interface {v7}, Lc8/pYf;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lc8/Jgg;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    .line 230
    .local v1, "height":I
    invoke-virtual {p0}, Lc8/Vpb;->getDomContext()Lc8/pYf;

    move-result-object v7

    invoke-interface {v7}, Lc8/pYf;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lc8/Jgg;->getScreenWidth(Landroid/content/Context;)I

    move-result v6

    .line 231
    .local v6, "width":I
    invoke-virtual {p0}, Lc8/Vpb;->getDomContext()Lc8/pYf;

    move-result-object v7

    invoke-interface {v7}, Lc8/pYf;->getUIContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 232
    .local v3, "resources":Landroid/content/res/Resources;
    if-eqz v3, :cond_2

    .line 233
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v6, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 234
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v1, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 237
    :cond_2
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 238
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 240
    .local v0, "context":Landroid/app/Application;
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "status_bar_height"

    const-string/jumbo v9, "dimen"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 241
    .local v2, "resourceId":I
    if-lez v2, :cond_3

    .line 242
    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 243
    .local v4, "statusBarHeight":I
    sub-int/2addr v1, v4

    .line 247
    .end local v0    # "context":Landroid/app/Application;
    .end local v2    # "resourceId":I
    .end local v4    # "statusBarHeight":I
    :cond_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v5, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "position"

    const-string/jumbo v8, "absolute"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string/jumbo v7, "width"

    int-to-float v8, v6

    invoke-virtual {p0}, Lc8/Vpb;->getViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string/jumbo v7, "height"

    int-to-float v8, v1

    invoke-virtual {p0}, Lc8/Vpb;->getViewPortWidth()I

    move-result v9

    invoke-static {v8, v9}, Lc8/Jgg;->getWebPxByWidth(FI)F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string/jumbo v7, "top"

    const-string/jumbo v8, "0"

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
