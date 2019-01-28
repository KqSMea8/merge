.class public Lc8/jGo;
.super Lc8/SFo;
.source "VipConfigSetting.java"


# static fields
.field private static final VIP_CONFIG_SETTING:Ljava/lang/String; = "VIP_CONFIG_SETTING"

.field private static final VIP_CONFIG_SETTING_NAME:Ljava/lang/String; = "vip_config_setting_name"

.field private static mInstance:Lc8/jGo;

.field private static mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/jGo;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lc8/SFo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private getConfigKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nameSpace"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VIP_CONFIG_SETTING_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lc8/jGo;
    .locals 4

    .prologue
    .line 23
    sget-object v0, Lc8/jGo;->mInstance:Lc8/jGo;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lc8/jGo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lc8/jGo;->mInstance:Lc8/jGo;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lc8/jGo;

    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    const-string/jumbo v3, "vip_config_setting_name"

    invoke-direct {v0, v2, v3}, Lc8/jGo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lc8/jGo;->mInstance:Lc8/jGo;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lc8/jGo;->mInstance:Lc8/jGo;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getConfigSetting(Ljava/lang/String;)Lcom/youku/vip/lib/config/model/VipConfigModel;
    .locals 2
    .param p1, "nameSpace"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lc8/jGo;->getConfigKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/youku/vip/lib/config/model/VipConfigModel;

    invoke-virtual {p0, v0, v1}, Lc8/jGo;->getModel(Ljava/lang/String;Ljava/lang/Class;)Lcom/youku/vip/lib/model/VipBaseModel;

    move-result-object v0

    check-cast v0, Lcom/youku/vip/lib/config/model/VipConfigModel;

    return-object v0
.end method

.method public saveConfigSetting(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "nameSpace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 61
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v0, Lcom/youku/vip/lib/config/model/VipConfigModel;

    invoke-direct {v0}, Lcom/youku/vip/lib/config/model/VipConfigModel;-><init>()V

    .line 59
    .local v0, "vipConfigModel":Lcom/youku/vip/lib/config/model/VipConfigModel;
    invoke-virtual {v0, p2}, Lcom/youku/vip/lib/config/model/VipConfigModel;->setConfigMap(Ljava/util/Map;)V

    .line 60
    invoke-direct {p0, p1}, Lc8/jGo;->getConfigKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lc8/jGo;->putModel(Ljava/lang/String;Lcom/youku/vip/lib/model/VipBaseModel;)Z

    goto :goto_0
.end method
