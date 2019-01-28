.class public Lc8/wpf;
.super Ljava/lang/Object;
.source "VisaDataManager.java"


# static fields
.field private static final VISA_CONFIG_APPINFO_LIST_KEY:Ljava/lang/String; = "VisaConfig_Appinfo_list"

.field private static final VISA_CONFIG_GREENCARD_KEY:Ljava/lang/String; = "VisaConfig_GreenCard"

.field private static final VISA_CONFIG_PREFERENCES_FILE:Ljava/lang/String; = "ALibc_FlowCustoms_VisaConfig"

.field private static final VISA_INFO_EXPIRATION_STEP:J = -0x65813800L

.field private static final VISA_LIST_PREFERENCES_FILE:Ljava/lang/String; = "ALibc_FlowCustoms_VisaInfoList"

.field public static appInfoList:Lc8/tpf;

.field public static firstSwitch:Z

.field public static greenCard:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static visaConfigSP:Landroid/content/SharedPreferences;

.field public static visaInfoLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/flowcustoms/visa/VisaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static visaListSP:Landroid/content/SharedPreferences;

.field public static visaSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 39
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lc8/wpf;->visaInfoLruCache:Landroid/util/LruCache;

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/wpf;->greenCard:Ljava/util/Set;

    .line 45
    new-instance v0, Lc8/tpf;

    invoke-direct {v0}, Lc8/tpf;-><init>()V

    sput-object v0, Lc8/wpf;->appInfoList:Lc8/tpf;

    .line 47
    sput-boolean v2, Lc8/wpf;->visaSwitch:Z

    .line 48
    sput-boolean v2, Lc8/wpf;->firstSwitch:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addVisaInfo(Lcom/taobao/flowcustoms/visa/VisaInfo;)V
    .locals 4
    .param p0, "visaInfo"    # Lcom/taobao/flowcustoms/visa/VisaInfo;

    .prologue
    .line 162
    const-string/jumbo v2, "AlibcVisa"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "visa addVisaInfo -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p0, :cond_1

    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    :cond_0
    :goto_1
    return-void

    .line 162
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/visa/VisaInfo;->toJsonString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 168
    :cond_2
    sget-object v1, Lc8/wpf;->visaInfoLruCache:Landroid/util/LruCache;

    iget-object v2, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lc8/wpf;->getVisaListSP()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 170
    .local v0, "visaListEditor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/taobao/flowcustoms/visa/VisaInfo;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1
.end method

.method private static declared-synchronized cleanVisaSharePreferences()V
    .locals 12

    .prologue
    .line 275
    const-class v7, Lc8/wpf;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lc8/wpf;->getVisaListSP()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 276
    .local v0, "allPreferences":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {}, Lc8/wpf;->getVisaListSP()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 277
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 280
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 281
    .local v5, "visaInfoString":Ljava/lang/String;
    invoke-static {v5}, Lcom/taobao/flowcustoms/visa/VisaInfo;->getVisaInfo(Ljava/lang/String;)Lcom/taobao/flowcustoms/visa/VisaInfo;

    move-result-object v4

    .line 282
    .local v4, "visaInfo":Lcom/taobao/flowcustoms/visa/VisaInfo;
    iget-wide v8, v4, Lcom/taobao/flowcustoms/visa/VisaInfo;->updateTime:J

    const-wide/32 v10, -0x65813800

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_0

    .line 283
    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 275
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "visaInfo":Lcom/taobao/flowcustoms/visa/VisaInfo;
    .end local v5    # "visaInfoString":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 286
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 287
    monitor-exit v7

    return-void
.end method

.method public static firstIsForce()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lc8/wpf;->firstSwitch:Z

    return v0
.end method

.method public static declared-synchronized getCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 239
    const-class v1, Lc8/wpf;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "AlibcVisa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "visa getCache -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "defaultValue":Ljava/lang/String;
    :goto_0
    monitor-exit v1

    return-object p1

    .restart local p1    # "defaultValue":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/wpf;->getVisaConfigSP()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getDefaultGreenCard()Ljava/lang/String;
    .locals 2

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-static {}, Lc8/rpf;->getTipsVisa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static declared-synchronized getVisaConfigSP()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 200
    const-class v1, Lc8/wpf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/wpf;->visaConfigSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 201
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    const-string/jumbo v2, "ALibc_FlowCustoms_VisaConfig"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc8/wpf;->visaConfigSP:Landroid/content/SharedPreferences;

    .line 204
    :cond_0
    sget-object v0, Lc8/wpf;->visaConfigSP:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getVisaInfoForCache(Landroid/content/Context;Ljava/lang/String;)Lcom/taobao/flowcustoms/visa/VisaInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "visaCode"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string/jumbo v3, "AlibcVisa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visa getVisaInfoForCache -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_0

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 137
    :goto_1
    return-object v0

    :cond_0
    move-object v2, p1

    .line 115
    goto :goto_0

    .line 122
    :cond_1
    sget-object v2, Lc8/wpf;->visaInfoLruCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/flowcustoms/visa/VisaInfo;

    .line 125
    .local v0, "visaInfo":Lcom/taobao/flowcustoms/visa/VisaInfo;
    if-nez v0, :cond_2

    .line 126
    invoke-static {}, Lc8/wpf;->getVisaListSP()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "visaInfoString":Ljava/lang/String;
    invoke-static {v1}, Lcom/taobao/flowcustoms/visa/VisaInfo;->getVisaInfo(Ljava/lang/String;)Lcom/taobao/flowcustoms/visa/VisaInfo;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    sget-object v2, Lc8/wpf;->visaInfoLruCache:Landroid/util/LruCache;

    iget-object v3, v0, Lcom/taobao/flowcustoms/visa/VisaInfo;->code:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    .end local v1    # "visaInfoString":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lc8/vpf;->getInstance()Lc8/vpf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/vpf;->fetchConfigIfExpired()Z

    .line 135
    const-string/jumbo v3, "AlibcVisa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visa getVisaInfoForCache -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_3

    const-string/jumbo v2, "null"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/taobao/flowcustoms/visa/VisaInfo;->toJsonString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method

.method private static declared-synchronized getVisaListSP()Landroid/content/SharedPreferences;
    .locals 4

    .prologue
    .line 208
    const-class v1, Lc8/wpf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/wpf;->visaListSP:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 209
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v0, v0, Lc8/unf;->application:Landroid/app/Application;

    const-string/jumbo v2, "ALibc_FlowCustoms_VisaInfoList"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lc8/wpf;->visaListSP:Landroid/content/SharedPreferences;

    .line 212
    :cond_0
    sget-object v0, Lc8/wpf;->visaListSP:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static init()V
    .locals 4

    .prologue
    .line 57
    const-string/jumbo v0, "AlibcVisa"

    const-string/jumbo v1, "visa init config -> "

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lc8/wpf;->getVisaConfigSP()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "VisaConfig_GreenCard"

    invoke-static {}, Lc8/wpf;->getDefaultGreenCard()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/ipf;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lc8/wpf;->parserGreenCard(Lorg/json/JSONArray;)V

    .line 60
    sget-object v0, Lc8/wpf;->appInfoList:Lc8/tpf;

    invoke-static {}, Lc8/wpf;->getVisaConfigSP()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "VisaConfig_Appinfo_list"

    const-string/jumbo v3, "[]"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/ipf;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/tpf;->update(Lorg/json/JSONArray;)V

    .line 62
    const-string/jumbo v0, "AlibcVisa"

    const-string/jumbo v1, "visa init config -> 1"

    invoke-static {v0, v1}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lc8/vpf;->getInstance()Lc8/vpf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/vpf;->fetchConfigIfExpired()Z

    .line 64
    return-void
.end method

.method public static isGreenCard(Ljava/lang/String;)Z
    .locals 1
    .param p0, "visaCode"    # Ljava/lang/String;

    .prologue
    .line 180
    sget-object v0, Lc8/wpf;->greenCard:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOpenVisaVerify()Z
    .locals 1

    .prologue
    .line 188
    sget-boolean v0, Lc8/wpf;->visaSwitch:Z

    return v0
.end method

.method private static parserGreenCard(Lorg/json/JSONArray;)V
    .locals 5
    .param p0, "greenCardJsonObject"    # Lorg/json/JSONArray;

    .prologue
    .line 261
    const-string/jumbo v3, "AlibcVisa"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "visa parserGreenCard  -> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p0, :cond_0

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 263
    .local v1, "tempGreenCard":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 264
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_1

    .line 265
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    .end local v1    # "tempGreenCard":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 268
    .restart local v1    # "tempGreenCard":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    sput-object v1, Lc8/wpf;->greenCard:Ljava/util/Set;

    .line 269
    return-void
.end method

.method public static declared-synchronized putCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 221
    const-class v3, Lc8/wpf;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    if-nez p1, :cond_1

    .line 230
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 224
    :cond_1
    :try_start_1
    invoke-static {}, Lc8/wpf;->getVisaConfigSP()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 225
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 226
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized remove(Ljava/lang/String;)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 248
    const-class v2, Lc8/wpf;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    :goto_0
    monitor-exit v2

    return-void

    .line 250
    :cond_0
    :try_start_1
    invoke-static {}, Lc8/wpf;->getVisaConfigSP()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 251
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static update(Lorg/json/JSONObject;)V
    .locals 10
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 72
    const-string/jumbo v8, "AlibcVisa"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "visa datamanager update config -> "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-nez p0, :cond_0

    const-string/jumbo v7, "null"

    :goto_0
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    if-nez p0, :cond_1

    .line 105
    :goto_1
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 78
    :cond_1
    const-string/jumbo v7, "visaInfo"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 79
    .local v5, "visaInfoJsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    .line 81
    invoke-static {}, Lc8/wpf;->getVisaListSP()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 82
    .local v6, "visaListEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_2
    if-ltz v1, :cond_2

    .line 84
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 85
    .local v4, "visaInfoJson":Lorg/json/JSONObject;
    const-string/jumbo v7, "AlibcVisa"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "visa datamanager update visaInfo "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string/jumbo v7, "code"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 88
    .end local v4    # "visaInfoJson":Lorg/json/JSONObject;
    :cond_2
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    .end local v1    # "i":I
    .end local v6    # "visaListEditor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-static {}, Lc8/wpf;->getVisaConfigSP()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 92
    .local v3, "visaConfgEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "partnerAppInfo"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 93
    .local v2, "partnerAppInfoJsonObject":Lorg/json/JSONArray;
    if-eqz v2, :cond_4

    .line 94
    sget-object v7, Lc8/wpf;->appInfoList:Lc8/tpf;

    invoke-virtual {v7, v2}, Lc8/tpf;->update(Lorg/json/JSONArray;)V

    .line 95
    const-string/jumbo v7, "VisaConfig_Appinfo_list"

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_4
    const-string/jumbo v7, "greenCard"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 99
    .local v0, "greenCardJsonObject":Lorg/json/JSONArray;
    if-eqz v0, :cond_5

    .line 100
    invoke-static {v0}, Lc8/wpf;->parserGreenCard(Lorg/json/JSONArray;)V

    .line 101
    const-string/jumbo v7, "VisaConfig_GreenCard"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    :cond_5
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_1
.end method

.method public static updateViseSwitch(Lorg/json/JSONObject;)V
    .locals 3
    .param p0, "visaSwitchJson"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    const-string/jumbo v1, "AlibcVisa"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "visa updateViseSwitch -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/fpf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-nez p0, :cond_1

    .line 154
    :goto_1
    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_1
    const-string/jumbo v0, "switch"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/mpf;->str2Boolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc8/wpf;->visaSwitch:Z

    .line 153
    const-string/jumbo v0, "firstSwitch"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/mpf;->str2Boolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lc8/wpf;->firstSwitch:Z

    goto :goto_1
.end method
