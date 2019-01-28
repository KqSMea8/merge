.class public abstract Lcom/youku/phone/skin/data/SkinDataBase;
.super Ljava/lang/Object;
.source "SkinDataBase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final SKIN_BASE_IMG_COUNT:I = 0x2


# instance fields
.field public bottomNaviImgSelected:Landroid/graphics/Bitmap;

.field public bottomNaviImgUnselectd:Landroid/graphics/Bitmap;

.field public bottom_navi_small_ns_img:Ljava/lang/String;

.field public bottom_navi_small_s_img:Ljava/lang/String;

.field public bottom_wd_color:Ljava/lang/String;

.field public bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/youku/phone/skin/data/SkinDataBase;->bundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract getImgsCount()I
.end method

.method public isBottomNaviImgReady()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataBase;->bottomNaviImgUnselectd:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataBase;->bottomNaviImgSelected:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBottomNaviInited()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataBase;->bottom_navi_small_ns_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataBase;->bottom_navi_small_s_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isResourceInited()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SkinDataBase unimg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataBase;->bottom_navi_small_ns_img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " img = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataBase;->bottom_navi_small_s_img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
