.class public Lc8/hGo;
.super Lc8/RFo;
.source "VipConfigManager.java"


# static fields
.field private static mInstance:Lc8/hGo;

.field private static final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/hGo;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/RFo;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/hGo;
    .locals 2

    .prologue
    .line 26
    sget-object v0, Lc8/hGo;->mInstance:Lc8/hGo;

    if-nez v0, :cond_1

    .line 27
    sget-object v1, Lc8/hGo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lc8/hGo;->mInstance:Lc8/hGo;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lc8/hGo;

    invoke-direct {v0}, Lc8/hGo;-><init>()V

    sput-object v0, Lc8/hGo;->mInstance:Lc8/hGo;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lc8/hGo;->mInstance:Lc8/hGo;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 87
    .local v0, "config":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lc8/hGo;->getConfigFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    if-eqz p3, :cond_0

    if-eqz p3, :cond_2

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lc8/hGo;->getConfigFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 91
    :cond_1
    move-object v0, p3

    .line 101
    :cond_2
    :goto_0
    return-object v0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_3
    move-object v0, p3

    goto :goto_0
.end method

.method public getConfigFromCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/hGo;->getConfigsFromCache(Ljava/lang/String;)Ljava/util/Map;

    .line 134
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 139
    .end local p3    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 135
    .restart local p3    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConfigFromLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nameSpace"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 173
    const/4 v1, 0x0

    .line 175
    .local v1, "config":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lc8/jGo;->getInstance()Lc8/jGo;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/jGo;->getConfigSetting(Ljava/lang/String;)Lcom/youku/vip/lib/config/model/VipConfigModel;

    move-result-object v2

    .line 176
    .local v2, "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/youku/vip/lib/config/model/VipConfigModel;->getConfigMap()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 177
    invoke-virtual {v2}, Lcom/youku/vip/lib/config/model/VipConfigModel;->getConfigMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 178
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 179
    :cond_0
    move-object v1, p3

    .line 191
    .end local v2    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :cond_1
    :goto_0
    return-object v1

    .line 182
    .restart local v2    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :cond_2
    move-object v1, p3

    goto :goto_0

    .line 184
    .end local v2    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    :cond_3
    move-object v1, p3

    goto :goto_0
.end method

.method public getConfigs(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .param p1, "nameSpace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 111
    invoke-virtual {p0, p1}, Lc8/hGo;->getConfigsFromCache(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 112
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p0, p1}, Lc8/hGo;->getConfigsFromLocal(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 116
    :cond_1
    if-nez v0, :cond_2

    .line 117
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 120
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-object v0
.end method

.method public getConfigsFromCache(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .param p1, "nameSpace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 152
    invoke-static {}, Lc8/jGo;->getInstance()Lc8/jGo;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lc8/jGo;->saveConfigSetting(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    if-nez v1, :cond_0

    .line 158
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 161
    .restart local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getConfigsFromLocal(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p1, "nameSpace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :try_start_0
    invoke-static {}, Lc8/jGo;->getInstance()Lc8/jGo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/jGo;->getConfigSetting(Ljava/lang/String;)Lcom/youku/vip/lib/config/model/VipConfigModel;

    move-result-object v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    new-instance v1, Lcom/youku/vip/lib/config/model/VipConfigModel;

    invoke-direct {v1}, Lcom/youku/vip/lib/config/model/VipConfigModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v0    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    .local v1, "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v3}, Lcom/youku/vip/lib/config/model/VipConfigModel;->setConfigMap(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 211
    .end local v1    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    .restart local v0    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 212
    new-instance v0, Lcom/youku/vip/lib/config/model/VipConfigModel;

    .end local v0    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    invoke-direct {v0}, Lcom/youku/vip/lib/config/model/VipConfigModel;-><init>()V

    .line 214
    .restart local v0    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :cond_1
    invoke-virtual {v0}, Lcom/youku/vip/lib/config/model/VipConfigModel;->getConfigMap()Ljava/util/Map;

    move-result-object v3

    if-nez v3, :cond_2

    .line 215
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v3}, Lcom/youku/vip/lib/config/model/VipConfigModel;->setConfigMap(Ljava/util/Map;)V

    .line 218
    :cond_2
    invoke-virtual {v0}, Lcom/youku/vip/lib/config/model/VipConfigModel;->getConfigMap()Ljava/util/Map;

    move-result-object v3

    return-object v3

    .line 208
    :catch_0
    move-exception v2

    .line 209
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 208
    .end local v0    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    .restart local v0    # "configModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    goto :goto_1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public registerConfigListener([Ljava/lang/String;Lc8/iGo;)V
    .locals 2
    .param p1, "nameSpaces"    # [Ljava/lang/String;
    .param p2, "listener"    # Lc8/iGo;

    .prologue
    .line 38
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    new-instance v1, Lc8/gGo;

    invoke-direct {v1, p0, p2}, Lc8/gGo;-><init>(Lc8/hGo;Lc8/iGo;)V

    invoke-virtual {v0, p1, v1}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 51
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public unRegisterConfigListener([Ljava/lang/String;)V
    .locals 1
    .param p1, "nameSpaces"    # [Ljava/lang/String;

    .prologue
    .line 59
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/ctf;->unregisterListener([Ljava/lang/String;)V

    .line 60
    return-void
.end method
