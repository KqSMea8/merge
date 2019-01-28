.class public Lcom/youku/phone/skin/data/SkinDataCommon;
.super Lcom/youku/phone/skin/data/SkinDataBase;
.source "SkinDataCommon.java"


# instance fields
.field public android_img:Ljava/lang/String;

.field public background:Ljava/lang/String;

.field public background_color:Ljava/lang/String;

.field public bottomBgImg:Landroid/graphics/Bitmap;

.field public bottom_navi_small_img:Ljava/lang/String;

.field public navi_wd_color:Ljava/lang/String;

.field public navi_wdn_color:Ljava/lang/String;

.field public sbar_location_color:Ljava/lang/String;

.field public topBgImg:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/youku/phone/skin/data/SkinDataBase;-><init>()V

    return-void
.end method

.method private isBgResourceInited()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "isBgInited":Z
    const-string/jumbo v3, "color"

    iget-object v4, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 85
    iget-object v3, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background_color:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 89
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v2

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    const-string/jumbo v3, "img"

    iget-object v4, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    iget-object v3, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->android_img:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private isTopBgImgReady()Z
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "isBgReady":Z
    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const-string/jumbo v1, "color"

    iget-object v2, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    const/4 v0, 0x1

    .line 109
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    const-string/jumbo v1, "img"

    iget-object v2, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->topBgImg:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getImgsCount()I
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/youku/phone/skin/data/SkinDataCommon;->isBgImg()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x2

    .line 79
    .local v0, "commonImgCount":I
    :goto_0
    return v0

    .line 77
    .end local v0    # "commonImgCount":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "commonImgCount":I
    goto :goto_0
.end method

.method public isBgImg()Z
    .locals 2

    .prologue
    .line 93
    const-string/jumbo v0, "img"

    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 96
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResourceInited()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->navi_wdn_color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->navi_wd_color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->sbar_location_color:Ljava/lang/String;

    .line 62
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->bottom_navi_small_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0}, Lcom/youku/phone/skin/data/SkinDataCommon;->isBgResourceInited()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SkinDataCommon, background = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataCommon;->background:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
