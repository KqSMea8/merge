.class public Lcom/youku/phone/skin/data/SkinDataDiscover;
.super Lcom/youku/phone/skin/data/SkinDataBase;
.source "SkinDataDiscover.java"


# static fields
.field public static final SKIN_DISCOVER_IMG_COUNT:I = 0x2


# instance fields
.field public search_icon_ns_img:Ljava/lang/String;

.field public search_icon_s_img:Ljava/lang/String;

.field public title_wd_color:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/youku/phone/skin/data/SkinDataBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getImgsCount()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x4

    return v0
.end method

.method public isResourceInited()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataDiscover;->search_icon_ns_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataDiscover;->search_icon_s_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataDiscover;->title_wd_color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-super {p0}, Lcom/youku/phone/skin/data/SkinDataBase;->isBottomNaviInited()Z

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
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SkinDataDiscover, search ns = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataDiscover;->search_icon_ns_img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
