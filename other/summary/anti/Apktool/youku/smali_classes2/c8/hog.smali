.class public Lc8/hog;
.super Lcom/ut/mini/module/plugin/UTPlugin;
.source "AntUTPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ut/mini/module/plugin/UTPlugin;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 3

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    new-instance v2, Lc8/hog;

    invoke-direct {v2}, Lc8/hog;-><init>()V

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTAnalytics;->registerPlugin(Lcom/ut/mini/module/plugin/UTPlugin;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .local v0, "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 84
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 85
    .restart local v0    # "t":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getAttentionEventIds()[I
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x7d1
        0x835
        0x899
    .end array-data
.end method

.method public onEventDispatch(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .param p1, "aPageName"    # Ljava/lang/String;
    .param p2, "aEventID"    # I
    .param p3, "aArg1"    # Ljava/lang/String;
    .param p4, "aArg2"    # Ljava/lang/String;
    .param p5, "aArg3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 40
    .local v0, "attachInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Lc8/iog;->getInstance()Lc8/iog;

    move-result-object v7

    invoke-virtual {v7}, Lc8/iog;->getServerABTest()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 42
    .local v4, "serverABTestArgs":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_0
    invoke-static {}, Lc8/Tng;->getInstance()Lc8/Sng;

    move-result-object v7

    invoke-interface {v7, p1}, Lc8/Sng;->getExperimentsByPageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "clientABTestArgs":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 55
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 56
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "abtest"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "\\"

    const-string/jumbo v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, "utParam":Ljava/lang/String;
    const-string/jumbo v7, "utparam-cnt"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const/16 v7, 0x7d1

    if-ne p2, v7, :cond_2

    .line 62
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/ut/mini/UTTracker;->updateNextPageUtparam(Ljava/lang/String;)V

    .line 65
    :cond_2
    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "AntUTPlugin PageName: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .end local p1    # "aPageName":Ljava/lang/String;
    :goto_1
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " EventID: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " ABTest: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v9

    invoke-static {v8}, Lc8/log;->info([Ljava/lang/String;)V

    .line 74
    .end local v1    # "clientABTestArgs":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "serverABTestArgs":Ljava/lang/String;
    .end local v6    # "utParam":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v0

    .line 50
    .restart local v1    # "clientABTestArgs":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "serverABTestArgs":Ljava/lang/String;
    .restart local p1    # "aPageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_1

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 70
    .end local v1    # "clientABTestArgs":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "serverABTestArgs":Ljava/lang/String;
    .end local p1    # "aPageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 71
    .local v5, "t":Ljava/lang/Throwable;
    const-string/jumbo v7, "AntUTPlugin"

    invoke-static {v7, v5}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 65
    .end local v5    # "t":Ljava/lang/Throwable;
    .restart local v1    # "clientABTestArgs":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v4    # "serverABTestArgs":Ljava/lang/String;
    .restart local v6    # "utParam":Ljava/lang/String;
    .restart local p1    # "aPageName":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo p1, ""

    goto :goto_1

    .end local p1    # "aPageName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, ""
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
