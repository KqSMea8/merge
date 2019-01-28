.class public Lc8/LHg;
.super Ljava/lang/Object;
.source "AnalyticsAgent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    return-void
.end method

.method public static addVvlink(Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1165
    .local p1, "pageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Youku_Analytics_UT"

    const-string/jumbo v5, "addVvlink\u63a5\u53e3"

    invoke-static {v4, v5}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1168
    .local v3, "vvlinkMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/ut/mini/UTTracker;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1171
    .local v1, "currentPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string/jumbo v4, "vvlink"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1173
    const-string/jumbo v4, "vvlink"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1175
    .local v0, "currentJsonVVlink":Ljava/lang/String;
    invoke-static {v0}, Lc8/WHg;->convertJsonToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 1176
    .local v2, "currentVvlinkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1177
    const-string/jumbo v4, "vvlink"

    invoke-static {v2}, Lc8/WHg;->convertMapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V

    .line 1180
    invoke-static {v2}, Lc8/WHg;->convertMapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/YHg;->setVvlink(Ljava/lang/String;)V

    .line 1191
    .end local v0    # "currentJsonVVlink":Ljava/lang/String;
    .end local v1    # "currentPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "currentVvlinkMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "vvlinkMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 1183
    .restart local v1    # "currentPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "vvlinkMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v4, "vvlink"

    invoke-static {p1}, Lc8/WHg;->convertMapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V

    .line 1186
    invoke-static {p1}, Lc8/WHg;->convertMapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/YHg;->setVvlink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1190
    .end local v1    # "currentPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "vvlinkMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public static clearVVlink(Ljava/lang/Object;)V
    .locals 3
    .param p0, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 1240
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "clearVVlink\u63a5\u53e3"

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/ut/mini/UTTracker;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1244
    .local v0, "currentPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "vvlink"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1245
    const-string/jumbo v1, "vvlink"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1251
    .end local v0    # "currentPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1250
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static getLastControlArgsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "pid"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 744
    const-string/jumbo v0, "*********************\u521d\u59cb\u5316\u7edf\u8ba1sdk:*********************"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 745
    const-string/jumbo v0, "SDK\u7248\u672c\u4e3a2.3"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "userAgent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "appName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 750
    invoke-static {p0, p3, p2}, Lc8/LHg;->unionInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    return-void
.end method

.method public static initUTSDK(Landroid/app/Application;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDebug"    # Z
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;
    .param p5, "pid"    # Ljava/lang/String;

    .prologue
    .line 954
    sget-boolean v2, Lc8/QHg;->isUtEnabled:Z

    if-eqz v2, :cond_0

    .line 956
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->turnOffAutoPageTrack()V

    .line 958
    invoke-static {p0, p1, p2, p3, p4}, Lc8/LHg;->setAppApplicationInstance(Landroid/app/Application;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "pid"

    invoke-virtual {v2, v3, p5}, Lcom/ut/mini/UTTracker;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "guid"

    invoke-static {p1}, Lc8/LHg;->unionGetGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/UTTracker;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    const-string/jumbo v3, "rguid"

    invoke-static {p1}, Lc8/LHg;->unionGetRguid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ut/mini/UTTracker;->setGlobalProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    if-eqz p2, :cond_0

    .line 965
    invoke-static {p1}, Lc8/LHg;->openRealTimeValidation(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 967
    :catch_0
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initUTSDK().isUtEnabled().Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto :goto_0

    .line 970
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 971
    .local v1, "error":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->printStackTrace()V

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initUTSDK().isUtEnabled().Error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static onCreate(Lc8/MHg;)V
    .locals 4
    .param p0, "utVVTrackInterface"    # Lc8/MHg;

    .prologue
    .line 1072
    const-string/jumbo v1, "Youku_Analytics_UT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate\u63a5\u53e3,UtSdkTools.getLastControlArgsMap().get(\"spm-url\"):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1073
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "spm-url"

    .line 1074
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1072
    invoke-static {v1, v0}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "spm-url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setSpm_urlForVV(Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "track_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setTrack_info_urlForVV(Ljava/lang/String;)V

    .line 1080
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "scg_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setScgid(Ljava/lang/String;)V

    .line 1082
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "scm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setScm(Ljava/lang/String;)V

    .line 1084
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "utparam-url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setUtParamUrl(Ljava/lang/String;)V

    .line 1085
    return-void
.end method

.method public static onDestroy(Lc8/MHg;)V
    .locals 2
    .param p0, "utVVTrackInterface"    # Lc8/MHg;

    .prologue
    .line 1144
    const-string/jumbo v0, "Youku_Analytics_UT"

    const-string/jumbo v1, "onDestroy\u63a5\u53e3"

    invoke-static {v0, v1}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string/jumbo v0, ""

    invoke-interface {p0, v0}, Lc8/MHg;->setSpm_urlForVV(Ljava/lang/String;)V

    .line 1148
    const-string/jumbo v0, ""

    invoke-interface {p0, v0}, Lc8/MHg;->setVvlink(Ljava/lang/String;)V

    .line 1150
    const-string/jumbo v0, ""

    invoke-interface {p0, v0}, Lc8/MHg;->setTrack_info_urlForVV(Ljava/lang/String;)V

    .line 1152
    const-string/jumbo v0, ""

    invoke-interface {p0, v0}, Lc8/MHg;->setScgid(Ljava/lang/String;)V

    .line 1154
    const-string/jumbo v0, ""

    invoke-interface {p0, v0}, Lc8/MHg;->setScm(Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method public static onKillProcess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userID"    # Ljava/lang/String;

    .prologue
    .line 721
    invoke-static {}, Lc8/LHg;->unionOnClose()V

    .line 722
    return-void
.end method

.method public static onPlay(Lc8/MHg;Z)V
    .locals 4
    .param p0, "utVVTrackInterface"    # Lc8/MHg;
    .param p1, "isAuto"    # Z

    .prologue
    .line 1114
    const-string/jumbo v0, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlay\u63a5\u53e3,isAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-static {}, Lc8/YHg;->getPreLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "vvlink"

    invoke-interface {p0}, Lc8/MHg;->getVvlink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    invoke-static {}, Lc8/YHg;->getPreLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p0, v0}, Lc8/MHg;->setLastControlArgsMap(Ljava/util/HashMap;)V

    .line 1118
    if-nez p1, :cond_0

    .line 1120
    const-string/jumbo v1, "Youku_Analytics_UT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPlay\u63a5\u53e3,UtSdkTools.getLastControlArgsMap().get(\"spm-url\"):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1121
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v3, "spm-url"

    .line 1122
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    invoke-static {v1, v0}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "spm-url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setSpm_urlForVV(Ljava/lang/String;)V

    .line 1125
    const-string/jumbo v0, ""

    invoke-interface {p0, v0}, Lc8/MHg;->setVvlink(Ljava/lang/String;)V

    .line 1127
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "track_info"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setTrack_info_urlForVV(Ljava/lang/String;)V

    .line 1129
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "scg_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setScgid(Ljava/lang/String;)V

    .line 1131
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "scm"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setScm(Ljava/lang/String;)V

    .line 1133
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "utparam-url"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Lc8/MHg;->setUtParamUrl(Ljava/lang/String;)V

    .line 1135
    :cond_0
    return-void
.end method

.method public static onResume(Lc8/MHg;Ljava/lang/Object;)V
    .locals 4
    .param p0, "utVVTrackInterface"    # Lc8/MHg;
    .param p1, "aPageObject"    # Ljava/lang/Object;

    .prologue
    .line 1095
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "onResume\u63a5\u53e3"

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ut/mini/UTTracker;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 1099
    .local v0, "currentPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    const-string/jumbo v1, "vvlink"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    invoke-interface {p0}, Lc8/MHg;->getVvlink()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1101
    const-string/jumbo v2, "Youku_Analytics_UT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "currentPageProperties.get(\"vvlink\"):"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v1, "vvlink"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string/jumbo v1, "vvlink"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Lc8/MHg;->setVvlink(Ljava/lang/String;)V

    .line 1104
    :cond_0
    return-void
.end method

.method private static openRealTimeValidation(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1057
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1058
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "debug_api_url"

    const-string/jumbo v2, "https://service-usertrack.alibaba-inc.com/upload_records_from_client"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    const-string/jumbo v1, "Youku_Analytics_UT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5c06guid\u8d4b\u503c\u4e3adebug_key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lc8/LHg;->unionGetGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string/jumbo v1, "debug_key"

    invoke-static {p0}, Lc8/LHg;->unionGetGuid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string/jumbo v1, "debug_sampling_option"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-static {}, Lcom/ut/mini/internal/UTTeamWork;->getInstance()Lcom/ut/mini/internal/UTTeamWork;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ut/mini/internal/UTTeamWork;->turnOnRealTimeDebug(Ljava/util/Map;)V

    .line 1063
    return-void
.end method

.method public static pageClick(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "refercode"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 540
    .local p6, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p4, p6}, Lc8/LHg;->processPageClickForUt(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 541
    return-void
.end method

.method public static pageClickWithSession(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/lang/String;
    .param p4, "refercode"    # Ljava/lang/String;
    .param p5, "userID"    # Ljava/lang/String;
    .param p6, "session"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p7, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p4, p7}, Lc8/LHg;->processPageClickForUt(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 522
    return-void
.end method

.method private static processPageClickForUt(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 7
    .param p0, "refercode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Youku_Analytics_UT"

    const-string/jumbo v5, "processPageClickForUt"

    invoke-static {v4, v5}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-boolean v4, Lc8/QHg;->isUtEnabled:Z

    if-nez v4, :cond_1

    .line 552
    const-string/jumbo v4, "Youku_Analytics_UT"

    const-string/jumbo v5, "utsdk\u6ca1\u5f00\u542f,\u63a7\u4ef6\u57cb\u70b9\u4e0d\u751f\u6548"

    invoke-static {v4, v5}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p0}, Lc8/YHg;->isRefercodeRight(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 557
    invoke-static {p0}, Lc8/YHg;->getRefercodeForSpm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    .local v3, "splitRefercode":Ljava/lang/String;
    const-string/jumbo v4, "Youku_Analytics_UT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "splitRefercode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    sget-object v4, Lc8/XHg;->spmMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 560
    const-string/jumbo v4, "Youku_Analytics_UT"

    const-string/jumbo v5, "spmMap\u6ca1\u547d\u4e2d\u524d\u7aef\u4f20\u5165\u7684refercode,\u4e0d\u4e0a\u62a5ut\u6570\u636e,\u76f4\u63a5\u8fd4\u56de"

    invoke-static {v4, v5}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 592
    .end local v3    # "splitRefercode":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 564
    .restart local v3    # "splitRefercode":Ljava/lang/String;
    :cond_2
    sget-object v4, Lc8/XHg;->pageNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 565
    .local v2, "pageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 566
    const-string/jumbo v4, "Youku_Analytics_UT"

    const-string/jumbo v5, "ut\u63a7\u4ef6\u57cb\u70b9,\u9875\u9762\u540d\u79f0\u4e3a\u7a7a,\u4e0d\u53d1\u9001\u6570\u636e,\u8fd4\u56de."

    invoke-static {v4, v5}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    .end local v2    # "pageName":Ljava/lang/String;
    .end local v3    # "splitRefercode":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_0

    .line 570
    .restart local v2    # "pageName":Ljava/lang/String;
    .restart local v3    # "splitRefercode":Ljava/lang/String;
    :cond_3
    sget-object v4, Lc8/XHg;->pluginMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 571
    .local v1, "controlName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 572
    const-string/jumbo v4, "Youku_Analytics_UT"

    const-string/jumbo v5, "ut\u63a7\u4ef6\u57cb\u70b9,\u63a7\u4ef6\u540d\u79f0\u4e3a\u7a7a,\u4e0d\u53d1\u9001\u6570\u636e,\u8fd4\u56de."

    invoke-static {v4, v5}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    :cond_4
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;

    invoke-direct {v0, v2, v1}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .local v0, "builder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    invoke-static {p0, p1, v0}, Lc8/YHg;->transferYoukuPageClickRefercodeAndExtend2UtArgs(Ljava/lang/String;Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V

    .line 580
    invoke-static {v2, v1, p1, v0}, Lc8/YHg;->printUtControlData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V

    .line 583
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 586
    invoke-static {p0}, Lc8/YHg;->setLastControlArgsMap(Ljava/lang/String;)V

    .line 587
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    .line 588
    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v5

    .line 587
    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0
.end method

.method private static setAppApplicationInstance(Landroid/app/Application;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isDebug"    # Z
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "channelId"    # Ljava/lang/String;

    .prologue
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initUTSDK().context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 988
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    new-instance v1, Lc8/KHg;

    invoke-direct {v1, p1, p4, p3, p2}, Lc8/KHg;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, p0, v1}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;Lcom/ut/mini/IUTApplication;)V

    .line 1049
    return-void
.end method

.method public static setDebugMode(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 351
    invoke-static {p0}, Lc8/LHg;->unionSetDebugMode(Z)V

    .line 352
    return-void
.end method

.method public static setTest(Z)V
    .locals 0
    .param p0, "isTest"    # Z

    .prologue
    .line 800
    invoke-static {p0}, Lc8/LHg;->unionIsLogging(Z)V

    .line 801
    return-void
.end method

.method public static setTestHost(Z)V
    .locals 0
    .param p0, "isTest"    # Z

    .prologue
    .line 790
    invoke-static {p0}, Lc8/LHg;->unionSetTestMode(Z)V

    .line 791
    return-void
.end method

.method public static setTrackLocation(Z)V
    .locals 0
    .param p0, "isTrack"    # Z

    .prologue
    .line 710
    invoke-static {p0}, Lc8/LHg;->unionSetTrackLocation(Z)V

    .line 711
    return-void
.end method

.method public static startSessionForUt(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "pageSpm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p3, "extend":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "Youku_Analytics_UT"

    const-string/jumbo v3, "\u6d4b\u8bd5utsdk\u9875\u9762\u57cb\u70b9startSessionForUt"

    invoke-static {v2, v3}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    sget-boolean v2, Lc8/QHg;->isUtEnabled:Z

    if-nez v2, :cond_0

    .line 281
    const-string/jumbo v2, "Youku_Analytics_UT"

    const-string/jumbo v3, "utsdk\u6ca1\u5f00\u542f,\u9875\u9762\u57cb\u70b9\u4e0d\u751f\u6548"

    invoke-static {v2, v3}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return-void

    .line 284
    :cond_0
    if-nez p0, :cond_1

    .line 285
    const-string/jumbo v2, "Youku_Analytics_UT"

    const-string/jumbo v3, "unexpected null context in startSessionForUt"

    invoke-static {v2, v3}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 290
    :cond_1
    invoke-static {p1}, Lc8/YHg;->setPageForVV(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/ut/mini/UTTracker;->getPageProperties(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 297
    .local v0, "lastControlArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 298
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "lastControlArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .restart local v0    # "lastControlArgsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 301
    const-string/jumbo v2, "spm-cnt"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_3
    const-string/jumbo v1, "{\"abtest\":\"0\"}"

    .line 305
    .local v1, "utParamCnt":Ljava/lang/String;
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 306
    invoke-interface {v0, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 307
    const-string/jumbo v2, "utparam-cnt"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 308
    const-string/jumbo v2, "utparam-cnt"

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "utParamCnt":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 311
    .restart local v1    # "utParamCnt":Ljava/lang/String;
    :cond_4
    invoke-static {v1}, Lc8/YHg;->setUtparamCnt(Ljava/lang/String;)V

    .line 312
    const-string/jumbo v2, "utparam-cnt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-static {p1, v0, p3}, Lc8/YHg;->printUtPageData(Ljava/lang/String;Ljava/util/Map;Ljava/util/HashMap;)V

    .line 317
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static unionGetGuid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {p0}, Lc8/WHg;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unionGetRguid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {p0}, Lc8/WHg;->getRGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unionInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "pid"    # Ljava/lang/String;

    .prologue
    .line 60
    if-nez p0, :cond_1

    .line 61
    const-string/jumbo v0, "input context can\'t be null."

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 62
    const-string/jumbo v0, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {p0}, Lc8/WHg;->setContext(Landroid/content/Context;)V

    .line 66
    const-string/jumbo v0, "\u6dfb\u52a0\u5bf9\u76d1\u542c\u7f51\u7edc\u8fde\u63a5\u72b6\u6001\u6539\u53d8\u7684\u6ce8\u518c"

    invoke-static {v0}, Lc8/SHg;->i(Ljava/lang/String;)I

    .line 67
    invoke-static {}, Lc8/WHg;->registerConnectionChangeReceiver()V

    .line 69
    invoke-static {p0}, Lc8/WHg;->getInitInfo(Landroid/content/Context;)V

    .line 71
    sget-boolean v0, Lc8/QHg;->isTest:Z

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "\u6d4b\u8bd5\u6a21\u5f0f\u5f00\u542f\uff0c\u6253\u5370\u521d\u59cb\u5316\u4fe1\u606f:"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 73
    invoke-static {p0}, Lc8/WHg;->printDeviceInfo(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static unionIsLogging(Z)V
    .locals 0
    .param p0, "isLog"    # Z

    .prologue
    .line 140
    sput-boolean p0, Lc8/QHg;->isTest:Z

    .line 141
    return-void
.end method

.method public static unionOnClose()V
    .locals 0

    .prologue
    .line 250
    invoke-static {}, Lc8/WHg;->unregisterConnectionChangeReceiver()V

    .line 251
    return-void
.end method

.method public static unionSetDebugMode(Z)V
    .locals 0
    .param p0, "isDebugMode"    # Z

    .prologue
    .line 149
    sput-boolean p0, Lc8/QHg;->isDebugMode:Z

    .line 150
    invoke-static {p0}, Lc8/SHg;->setDebug(Z)V

    .line 151
    return-void
.end method

.method public static unionSetTestMode(Z)V
    .locals 0
    .param p0, "isTestMode"    # Z

    .prologue
    .line 131
    sput-boolean p0, Lc8/QHg;->isTestMode:Z

    .line 132
    return-void
.end method

.method public static unionSetTrackLocation(Z)V
    .locals 0
    .param p0, "isTrackLocation"    # Z

    .prologue
    .line 159
    sput-boolean p0, Lc8/QHg;->isTrackLocation:Z

    .line 160
    return-void
.end method

.method public static updateH5Args(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "targetUrl"    # Ljava/lang/String;
    .param p1, "sourceUrl"    # Ljava/lang/String;

    .prologue
    .line 1260
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1261
    const-string/jumbo v4, "updateH5Args"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "spm"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1268
    .local v3, "spm":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1272
    new-instance v2, Ljava/util/HashMap;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1273
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "h5url"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    new-instance v0, Ljava/util/HashMap;

    const/4 v4, 0x2

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 1276
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "spm"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-string/jumbo v4, "track_info"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    invoke-static {v0}, Lc8/YHg;->setLastControlArgsMap(Ljava/util/HashMap;)V

    .line 1282
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v4

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1283
    .end local v0    # "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "spm":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1284
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "getQueryParameter error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 1285
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateVVlink(Ljava/lang/Object;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "aPageObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1223
    .local p1, "pageProperties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "updateVVlink\u63a5\u53e3"

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1226
    .local v0, "vvlinkMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "vvlink"

    invoke-static {p1}, Lc8/WHg;->convertMapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 1231
    .end local v0    # "vvlinkMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    .line 1230
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static utControlClick(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 3
    .param p0, "page"    # Ljava/lang/String;
    .param p1, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p2, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "utControlClick"

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    sget-boolean v1, Lc8/QHg;->isUtEnabled:Z

    if-nez v1, :cond_0

    .line 605
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "utsdk\u6ca1\u5f00\u542f,\u63a7\u4ef6\u57cb\u70b9\u4e0d\u751f\u6548"

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :goto_0
    return-void

    .line 610
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "ut\u63a7\u4ef6\u57cb\u70b9,\u9875\u9762\u540d\u79f0\u4e3a\u7a7a,\u4e0d\u53d1\u9001\u6570\u636e,\u8fd4\u56de."

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    :catch_0
    move-exception v1

    goto :goto_0

    .line 615
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "ut\u63a7\u4ef6\u57cb\u70b9,\u63a7\u4ef6\u540d\u79f0\u4e3a\u7a7a,\u4e0d\u53d1\u9001\u6570\u636e,\u8fd4\u56de."

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 634
    :catch_1
    move-exception v1

    goto :goto_0

    .line 619
    :cond_2
    new-instance v0, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;

    invoke-direct {v0, p0, p1}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    .local v0, "builder":Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;
    invoke-static {p2, v0}, Lc8/YHg;->transferFromMap2Builder(Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V

    .line 622
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lc8/YHg;->printUtControlData(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;)V

    .line 625
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/UTHitBuilders$UTControlHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 628
    invoke-static {p2}, Lc8/YHg;->setLastControlArgsMap(Ljava/util/HashMap;)V

    .line 630
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-static {}, Lc8/YHg;->getLastControlArgsMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->updateNextPageProperties(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0
.end method

.method public static utCustomEvent(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "aPage"    # Ljava/lang/String;
    .param p1, "aEventId"    # I
    .param p2, "aArg1"    # Ljava/lang/String;
    .param p3, "aArg2"    # Ljava/lang/String;
    .param p4, "aArg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p5, "aHitMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "utCustomEvent"

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sget-boolean v1, Lc8/QHg;->isUtEnabled:Z

    if-nez v1, :cond_0

    .line 650
    const-string/jumbo v1, "Youku_Analytics_UT"

    const-string/jumbo v2, "utsdk\u6ca1\u5f00\u542f,\u81ea\u5b9a\u4e49\u4e8b\u4ef6\u57cb\u70b9\u4e0d\u751f\u6548"

    invoke-static {v1, v2}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :goto_0
    return-void

    .line 654
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p5}, Lc8/YHg;->printUtCustomData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 655
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 657
    .local v0, "uTOriginalCustomHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 660
    .end local v0    # "uTOriginalCustomHitBuilder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 661
    :catch_1
    move-exception v1

    goto :goto_0
.end method
