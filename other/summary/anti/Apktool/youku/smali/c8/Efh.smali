.class public Lc8/Efh;
.super Ljava/lang/Object;
.source "YoukuSwitch.java"


# static fields
.field public static actionbarInfo:Lcom/youku/vo/Initial$HomeInit;

.field private static all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

.field public static initial:Lcom/youku/vo/Initial;

.field public static mActionBars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/youku/vo/Initial$HomeInit$SubTag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/youku/vo/Initial;

    invoke-direct {v0}, Lcom/youku/vo/Initial;-><init>()V

    sput-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    .line 23
    sget-object v0, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    sput-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adv_switch()I
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->adv_switch:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static allow_play_audio_switch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 158
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->allow_play_audio:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static app_market_control()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->app_market_control:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static create_desktop_icon_switch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->create_desktop_icon_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static flow_package_switch()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 118
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->flow_package_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static game_center_icon_switch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 126
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->game_center_icon_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static game_switch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->game_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getArea_code()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public static getDiscoverSwitch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 395
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 396
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->discover_switch:I

    goto :goto_0
.end method

.method public static getH5PayUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Lc8/Efh;->isShowH5Pay_switch()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->vippay_url:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getH5VipTabURL()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Lc8/Efh;->isH5VipTab()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget-object v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->vip:Lcom/youku/vo/Initial$Vip;

    iget-object v0, v0, Lcom/youku/vo/Initial$Vip;->h5_url:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static varargs getInitialField(Ljava/lang/Object;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "fieldNames"    # [Ljava/lang/String;

    .prologue
    .line 238
    move-object v2, p0

    .line 240
    :goto_0
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v3, p1

    if-lez v3, :cond_0

    .line 242
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "result":Ljava/lang/Object;
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    new-array v1, v3, [Ljava/lang/String;

    .line 245
    .local v1, "fieldNamesTemp":[Ljava/lang/String;
    const/4 v3, 0x1

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {p1, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    move-object p1, v1

    goto :goto_0

    .line 247
    .end local v1    # "fieldNamesTemp":[Ljava/lang/String;
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 249
    .restart local v2    # "result":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public static getSubscribeUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 218
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->subscribe_url:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getVipcenterUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->vipcenter_url:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static h5_subscription_tab_switch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->h5_subscription_tab_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasAdvMessage()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 204
    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->play_tips:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v1, v1, Lcom/youku/vo/Initial;->adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget v1, v1, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->state:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasAlipayAdvMessage()Z
    .locals 1

    .prologue
    .line 208
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->alipay_adv_message:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasAll_switchs()Z
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasHomeInit()Z
    .locals 1

    .prologue
    .line 196
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->home_init:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPlayTips()Z
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->play_tips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is3GAllowPlay()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    return v0
.end method

.method public static isAtYoukuShow()Z
    .locals 1

    .prologue
    .line 318
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->play_tips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->at_youku:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v0, v0, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    invoke-static {v0}, Lc8/Efh;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCMSPlaypageSwitch()I
    .locals 1

    .prologue
    .line 383
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->cms_playpage_switch:I

    .line 386
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isDetailCooperation()Z
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->detail_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 410
    if-eqz p0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "null"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 411
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 412
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 413
    .local v0, "c":C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    .line 414
    const/4 v2, 0x0

    .line 420
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 411
    .restart local v0    # "c":C
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static isGameCenterSearchPageDisplay()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->search_page_game_card:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGamecenterDisplay()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "GamecenterControl"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "isGamecenterShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGoneHomePagerVipTab()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget-object v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->vip:Lcom/youku/vo/Initial$Vip;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget-object v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->vip:Lcom/youku/vo/Initial$Vip;

    iget v0, v0, Lcom/youku/vo/Initial$Vip;->vip_tab:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isH5PersonalChannelSwitch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 101
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->h5_personal_channel_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isH5SubscriptionSwitch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->h5_subscription_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isH5VipTab()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 77
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->vip_tab_style:I

    if-nez v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget-object v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->vip:Lcom/youku/vo/Initial$Vip;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget-object v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->vip:Lcom/youku/vo/Initial$Vip;

    iget-object v0, v0, Lcom/youku/vo/Initial$Vip;->h5_url:Ljava/lang/String;

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

.method public static isHomePageCanGoTop()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->personalized_homepage_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHotStartEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 399
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->isHotStartEnabled:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIntroductoionShow()Z
    .locals 1

    .prologue
    .line 325
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->play_tips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->introduction:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->introduction:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v0, v0, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    invoke-static {v0}, Lc8/Efh;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiddlePageCooperation()Z
    .locals 1

    .prologue
    .line 368
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->middle_page_cooperation:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOverSeas()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 340
    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->is_abroad:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPlanetSwitch()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->planet_switch:I

    if-nez v0, :cond_0

    .line 404
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPushServiceRecoverSwitch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 50
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->push_service_recover_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowAppExchange()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "AppStoreControl"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "appstoreControl"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowH5Pay_switch()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 182
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->vippay_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->vippay_url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowNetMenu()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lc8/Efh;->mActionBars:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->mActionBars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowSubscribeBubble()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 134
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->subscribe_bubble:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isStartOfflineAdSDK()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 54
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->offline_ad_switch:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTopicWeiboShow()Z
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->play_tips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->topic_weibo:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v0, v0, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    invoke-static {v0}, Lc8/Efh;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUCBrowser()Z
    .locals 1

    .prologue
    .line 347
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->uc_browser:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUCContent()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 375
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->uc_content:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUCHeadline()Z
    .locals 1

    .prologue
    .line 354
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->uc_headline:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicomMessageShow()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->unicom_message:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUseNewCMS()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 57
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->cms_switch:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUserCenterGamecenterCardDisplay()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 288
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "GamecenterControl"

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "isUserCenterGamecenterCardDisplay"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isVoiceIntroductionShow()Z
    .locals 1

    .prologue
    .line 332
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->play_tips:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->vioce_introduction:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget-object v0, v0, Lcom/youku/vo/Initial;->vioce_introduction:Lcom/youku/vo/Initial$PlayTip$AdvMessage;

    iget-object v0, v0, Lcom/youku/vo/Initial$PlayTip$AdvMessage;->content:Ljava/lang/String;

    invoke-static {v0}, Lc8/Efh;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static navigation_game_entrance()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 105
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->navigation_game_entrance:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static personal_center_game_card()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 170
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->personal_center_game_card:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static player_h265()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 146
    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->player_h265:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static player_qxd()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 138
    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iget v1, v1, Lcom/youku/vo/Initial;->player_qxd:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static set3GAllowPlay(Z)Z
    .locals 5
    .param p0, "flag"    # Z

    .prologue
    .line 292
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 293
    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_preferences"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 294
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 295
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "allowONline3G"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    return v2
.end method

.method public static setGamecenterDisplay(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 272
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "GamecenterControl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isGamecenterShow"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    return-void
.end method

.method public static setInitial(Lcom/youku/vo/Initial;)V
    .locals 1
    .param p0, "init"    # Lcom/youku/vo/Initial;

    .prologue
    .line 29
    .line 30
    sput-object p0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/youku/vo/Initial;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    sput-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    .line 31
    :cond_0
    return-void
.end method

.method public static setPlayer_qxd(I)V
    .locals 1
    .param p0, "player_qxd"    # I

    .prologue
    .line 142
    sget-object v0, Lc8/Efh;->initial:Lcom/youku/vo/Initial;

    iput p0, v0, Lcom/youku/vo/Initial;->player_qxd:I

    .line 143
    return-void
.end method

.method public static setShowAppExchange(Z)V
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 261
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "AppStoreControl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "appstoreControl"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method public static setUserCenterGamecenterCardDisplay(Z)V
    .locals 3
    .param p0, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 284
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v1, "GamecenterControl"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isUserCenterGamecenterCardDisplay"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    return-void
.end method

.method public static sm_statistics_switch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->sm_statistics_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static switch_for_playerChange()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 166
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->switch_for_playerChange:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static tv_telecontroller_switch()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->tv_telecontroller_switch:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static video_player_monitor_switch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->video_player_monitor_switch:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static yi_plus_switch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v0, v0, Lcom/youku/vo/Initial$AllSwitchs;->yi_plus:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static youku_guess()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 114
    invoke-static {}, Lc8/Efh;->hasAll_switchs()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lc8/Efh;->all_switchs:Lcom/youku/vo/Initial$AllSwitchs;

    iget v1, v1, Lcom/youku/vo/Initial$AllSwitchs;->youku_guess:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
