.class public Lcom/youku/phone/skin/data/SkinDataHome;
.super Lcom/youku/phone/skin/data/SkinDataBase;
.source "SkinDataHome.java"


# static fields
.field public static final SKIN_HOME_IMG_COUNT:I = 0xb


# instance fields
.field public all_navi_ns_img:Ljava/lang/String;

.field public all_navi_s_img:Ljava/lang/String;

.field public cache_icon_ns_img:Ljava/lang/String;

.field public cache_icon_s_img:Ljava/lang/String;

.field public filter_small_ns_icon:Ljava/lang/String;

.field public filter_small_s_icon:Ljava/lang/String;

.field public filter_wd_color:Ljava/lang/String;

.field public his_icon_ns_img:Ljava/lang/String;

.field public his_icon_s_img:Ljava/lang/String;

.field public msg_icon_ns_img:Ljava/lang/String;

.field public msg_icon_s_img:Ljava/lang/String;

.field public search_box_color:Ljava/lang/String;

.field public search_box_in_img:Ljava/lang/String;

.field public search_box_wd_color:Ljava/lang/String;

.field public separator_color:Ljava/lang/String;


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
    .line 117
    const/16 v0, 0xd

    return v0
.end method

.method public isResourceInited()Z
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->his_icon_ns_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->his_icon_s_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->cache_icon_ns_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->cache_icon_s_img:Ljava/lang/String;

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->msg_icon_ns_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->msg_icon_s_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->search_box_in_img:Ljava/lang/String;

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->search_box_color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->search_box_wd_color:Ljava/lang/String;

    .line 105
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->all_navi_ns_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->all_navi_s_img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->filter_small_ns_icon:Ljava/lang/String;

    .line 106
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->filter_small_s_icon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->filter_wd_color:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/youku/phone/skin/data/SkinDataHome;->separator_color:Ljava/lang/String;

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

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
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SkinDataHome, his = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/youku/phone/skin/data/SkinDataHome;->his_icon_ns_img:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
