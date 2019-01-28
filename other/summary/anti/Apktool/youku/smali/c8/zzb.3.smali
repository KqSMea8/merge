.class public Lc8/zzb;
.super Lc8/Gzb;
.source "SystemConfigMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xzb;,
        Lc8/yzb;
    }
.end annotation


# static fields
.field private static final DELAY:Ljava/lang/String; = "delay"

.field private static mInstance:Lc8/zzb;


# instance fields
.field private final mKVStore:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/xzb;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSystemDelayItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/yzb;",
            ">;"
        }
    .end annotation
.end field

.field private final namespace:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lc8/zzb;->mInstance:Lc8/zzb;

    return-void
.end method

.method private constructor <init>()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 55
    invoke-direct {p0}, Lc8/Gzb;-><init>()V

    .line 45
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    .line 46
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    iput-object v4, p0, Lc8/zzb;->mListeners:Ljava/util/Map;

    .line 47
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "utap_system"

    aput-object v5, v4, v10

    iput-object v4, p0, Lc8/zzb;->namespace:[Ljava/lang/String;

    .line 50
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    .line 57
    :try_start_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 58
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v4

    const-class v5, Lc8/wzb;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 59
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfig;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 60
    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    .line 61
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 62
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/wzb;

    iget-object v5, v4, Lc8/wzb;->key:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/wzb;

    iget-object v4, v4, Lc8/wzb;->value:Ljava/lang/String;

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, v3}, Lc8/zzb;->updateConfig(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfig;>;"
    .end local v2    # "i":I
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_1
    return-void

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Throwable;
    new-array v4, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v4}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private checkDelay(Ljava/util/Map;I)Z
    .locals 4
    .param p2, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/yzb;

    .line 269
    .local v1, "uTSystemDelayItem":Lc8/yzb;
    if-eqz v1, :cond_1

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "arg1":Ljava/lang/String;
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ARG1:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "arg1":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 274
    .restart local v0    # "arg1":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Lc8/yzb;->checkDelay(Ljava/lang/String;)Z

    move-result v2

    .line 276
    .end local v0    # "arg1":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private dispathch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v2, p0, Lc8/zzb;->mListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 160
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;>;"
    if-eqz v1, :cond_0

    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 162
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/xzb;

    invoke-interface {v2, p1, p2}, Lc8/xzb;->onChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/zzb;
    .locals 2

    .prologue
    .line 74
    const-class v1, Lc8/zzb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/zzb;->mInstance:Lc8/zzb;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lc8/zzb;

    invoke-direct {v0}, Lc8/zzb;-><init>()V

    sput-object v0, Lc8/zzb;->mInstance:Lc8/zzb;

    .line 77
    :cond_0
    sget-object v0, Lc8/zzb;->mInstance:Lc8/zzb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private mapToList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lc8/Xzb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 170
    .local v1, "es":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/db/Entity;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 171
    .local v3, "key":Ljava/lang/String;
    new-instance v0, Lc8/wzb;

    invoke-direct {v0}, Lc8/wzb;-><init>()V

    .line 172
    .local v0, "config":Lc8/wzb;
    iput-object v3, v0, Lc8/wzb;->key:Ljava/lang/String;

    .line 173
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v0, Lc8/wzb;->value:Ljava/lang/String;

    .line 174
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    .end local v0    # "config":Lc8/wzb;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private updateConfig(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lc8/zzb;->updateSystemDelayItemMap(Ljava/util/Map;)V

    .line 143
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 144
    .local v2, "temp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 145
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 146
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 147
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 148
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 149
    :cond_1
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lc8/zzb;->dispathch(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_2
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    .end local v1    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 154
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lc8/zzb;->dispathch(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 156
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private declared-synchronized updateSystemDelayItemMap(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v7, "delay"

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 193
    :cond_0
    iget-object v7, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    if-eqz v7, :cond_1

    .line 194
    iget-object v7, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_2
    :try_start_1
    iget-object v7, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    const-string/jumbo v8, "delay"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "delay"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    const-string/jumbo v9, "delay"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 198
    :cond_3
    iget-object v7, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    if-eqz v7, :cond_1

    .line 199
    iget-object v7, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 201
    const-string/jumbo v7, "delay"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    .local v1, "delayJson":Ljava/lang/String;
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "delayContent":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 205
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 208
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 209
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 210
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 211
    .local v6, "value":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 212
    invoke-static {v6}, Lc8/yzb;->parseJson(Ljava/lang/String;)Lc8/yzb;

    move-result-object v5

    .line 213
    .local v5, "uTSampleItem":Lc8/yzb;
    if-eqz v5, :cond_4

    .line 214
    iget-object v7, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {v7, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 218
    .end local v0    # "delayContent":Lorg/json/JSONObject;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "uTSampleItem":Lc8/yzb;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 192
    .end local v1    # "delayJson":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public declared-synchronized checkDelayLog(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    move v2, v3

    .line 263
    :goto_0
    monitor-exit p0

    return v2

    .line 231
    :cond_1
    const/4 v1, -0x1

    .line 232
    .local v1, "eventId":I
    :try_start_1
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    :try_start_2
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 240
    :cond_2
    :goto_1
    :try_start_3
    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 241
    invoke-direct {p0, p1, v1}, Lc8/zzb;->checkDelay(Ljava/util/Map;I)Z

    move-result v2

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 227
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "eventId":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 244
    .restart local v1    # "eventId":I
    :cond_3
    :try_start_4
    rem-int/lit8 v2, v1, 0xa

    sub-int/2addr v1, v2

    .line 245
    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 246
    invoke-direct {p0, p1, v1}, Lc8/zzb;->checkDelay(Ljava/util/Map;I)Z

    move-result v2

    goto :goto_0

    .line 249
    :cond_4
    rem-int/lit8 v2, v1, 0x64

    sub-int/2addr v1, v2

    .line 250
    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 251
    invoke-direct {p0, p1, v1}, Lc8/zzb;->checkDelay(Ljava/util/Map;I)Z

    move-result v2

    goto :goto_0

    .line 254
    :cond_5
    rem-int/lit16 v2, v1, 0x3e8

    sub-int/2addr v1, v2

    .line 255
    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 256
    invoke-direct {p0, p1, v1}, Lc8/zzb;->checkDelay(Ljava/util/Map;I)Z

    move-result v2

    goto :goto_0

    .line 259
    :cond_6
    const/4 v1, -0x1

    .line 260
    iget-object v2, p0, Lc8/zzb;->mSystemDelayItemMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 261
    invoke-direct {p0, p1, v1}, Lc8/zzb;->checkDelay(Ljava/util/Map;I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 263
    goto/16 :goto_0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p0, p1}, Lc8/zzb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 183
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 188
    :cond_0
    :goto_0
    return v1

    .line 185
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getOrangeGroupnames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lc8/zzb;->namespace:[Ljava/lang/String;

    return-object v0
.end method

.method public onOrangeConfigurationArrive(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "aConfName"    # Ljava/lang/String;
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
    .line 133
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "utap_system"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0, p2}, Lc8/zzb;->updateConfig(Ljava/util/Map;)V

    .line 135
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/wzb;

    invoke-virtual {v0, v1}, Lc8/Wzb;->clear(Ljava/lang/Class;)V

    .line 136
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    iget-object v1, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-direct {p0, v1}, Lc8/zzb;->mapToList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Wzb;->insert(Ljava/util/List;)V

    .line 138
    :cond_0
    return-void
.end method

.method public register(Ljava/lang/String;Lc8/xzb;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/xzb;

    .prologue
    .line 98
    iget-object v2, p0, Lc8/zzb;->mListeners:Ljava/util/Map;

    monitor-enter v2

    .line 100
    :try_start_0
    iget-object v1, p0, Lc8/zzb;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;>;"
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lc8/zzb;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    monitor-exit v2

    return-void

    .line 103
    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;>;"
    :cond_0
    iget-object v1, p0, Lc8/zzb;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .restart local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;>;"
    goto :goto_0

    .line 107
    .end local v0    # "listeners":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unRegister(Ljava/lang/String;Lc8/xzb;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "listener"    # Lc8/xzb;

    .prologue
    .line 117
    iget-object v1, p0, Lc8/zzb;->mListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 118
    .local v0, "lists":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/config/SystemConfigMgr$IKVChangeListener;>;"
    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 121
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 122
    :cond_1
    iget-object v1, p0, Lc8/zzb;->mKVStore:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_2
    return-void
.end method
