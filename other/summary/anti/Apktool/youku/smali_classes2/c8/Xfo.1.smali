.class public Lc8/Xfo;
.super Ljava/lang/Object;
.source "YoukuSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static app_market_control()Z
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "app_market_control"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static create_desktop_icon_switch()Z
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "create_desktop_icon_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static flow_package_switch()Z
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "flow_package_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static game_center_icon_switch()Z
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "game_center_icon_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static game_switch()Z
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "game_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getArea_code()I
    .locals 2

    .prologue
    .line 111
    const-string/jumbo v0, "com.youku.config.YoukuSwitch"

    const-string/jumbo v1, "getArea_code"

    invoke-static {v0, v1}, Lc8/vro;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getH5PayUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    const-string/jumbo v0, "com.youku.config.YoukuSwitch"

    const-string/jumbo v1, "getH5PayUrl"

    invoke-static {v0, v1}, Lc8/vro;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getSharePreference()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 233
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_preferences"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 234
    .local v0, "preference":Landroid/content/SharedPreferences;
    return-object v0
.end method

.method public static getSubscribeUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "com.youku.config.YoukuSwitch"

    const-string/jumbo v1, "getSubscribeUrl"

    invoke-static {v0, v1}, Lc8/vro;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getVipcenterUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "com.youku.config.YoukuSwitch"

    const-string/jumbo v1, "getVipcenterUrl"

    invoke-static {v0, v1}, Lc8/vro;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static h5_subscription_tab_switch()Z
    .locals 1

    .prologue
    .line 45
    const-string/jumbo v0, "h5_subscription_tab_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static invokeStaticSwitch(Ljava/lang/String;)Z
    .locals 1
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 17
    const-string/jumbo v0, "com.youku.config.YoukuSwitch"

    invoke-static {v0, p0}, Lc8/vro;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static is3GAllowPlay()Z
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lc8/Xfo;->getSharePreference()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 225
    .local v0, "preference":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "allowONline3G"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGameCenterSearchPageDisplay()Z
    .locals 1

    .prologue
    .line 21
    const-string/jumbo v0, "isGameCenterSearchPageDisplay"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isGamecenterDisplay()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 175
    :try_start_0
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v3, "GamecenterControl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "isGamecenterShow"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 177
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 178
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isH5PersonalChannelSwitch()Z
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "isH5PersonalChannelSwitch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isH5SubscriptionSwitch()Z
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "isH5SubscriptionSwitch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isHomePageCanGoTop()Z
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "isHomePageCanGoTop"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPushServiceRecoverSwitch()Z
    .locals 1

    .prologue
    .line 33
    const-string/jumbo v0, "isPushServiceRecoverSwitch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isShowAppExchange()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 151
    :try_start_0
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v3, "AppStoreControl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "appstoreControl"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 153
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 154
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isShowH5Pay_switch()Z
    .locals 1

    .prologue
    .line 102
    const-string/jumbo v0, "isShowH5Pay_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isShowNetMenu()Z
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "isShowNetMenu"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isStartOfflineAdSDK()Z
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "isStartOfflineAdSDK"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUserCenterGamecenterCardDisplay()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 199
    :try_start_0
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v3, "GamecenterControl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "isUserCenterGamecenterCardDisplay"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 202
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static navigation_game_entrance()Z
    .locals 1

    .prologue
    .line 53
    const-string/jumbo v0, "navigation_game_entrance"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static personal_center_game_card()Z
    .locals 1

    .prologue
    .line 94
    const-string/jumbo v0, "personal_center_game_card"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static player_h265()Z
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "player_h265"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static player_qxd()Z
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "player_qxd"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static set3GAllowPlay(Z)Z
    .locals 3
    .param p0, "flag"    # Z

    .prologue
    .line 209
    invoke-static {}, Lc8/Xfo;->getSharePreference()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 211
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 212
    const-string/jumbo v2, "allowONline3G"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 214
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setGamecenterDisplay(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 165
    :try_start_0
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v2, "GamecenterControl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "isGamecenterShow"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-void

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setShowAppExchange(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 141
    :try_start_0
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v2, "AppStoreControl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "appstoreControl"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setUserCenterGamecenterCardDisplay(Z)V
    .locals 4
    .param p0, "flag"    # Z

    .prologue
    .line 189
    :try_start_0
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v2, "GamecenterControl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "isUserCenterGamecenterCardDisplay"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static sm_statistics_switch()Z
    .locals 1

    .prologue
    .line 98
    const-string/jumbo v0, "sm_statistics_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static tv_telecontroller_switch()Z
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "tv_telecontroller_switch"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static youku_guess()Z
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "youku_guess"

    invoke-static {v0}, Lc8/Xfo;->invokeStaticSwitch(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
