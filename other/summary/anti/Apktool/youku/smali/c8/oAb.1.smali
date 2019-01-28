.class public Lc8/oAb;
.super Ljava/lang/Object;
.source "LogPriorityMgr.java"

# interfaces
.implements Lc8/xzb;


# static fields
.field private static final TAG_KEY:Ljava/lang/String; = "loglevel"

.field private static instance:Lc8/oAb;


# instance fields
.field private mLogLevelMap:Ljava/util/Map;
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


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lc8/oAb;->mLogLevelMap:Ljava/util/Map;

    .line 24
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v1

    const-string/jumbo v2, "loglevel"

    invoke-virtual {v1, v2, p0}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V

    .line 25
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v1

    const-string/jumbo v2, "loglevel"

    invoke-virtual {v1, v2}, Lc8/zzb;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "loglevel"

    invoke-virtual {p0, v1, v0}, Lc8/oAb;->onChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/oAb;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lc8/oAb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/oAb;->instance:Lc8/oAb;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lc8/oAb;

    invoke-direct {v0}, Lc8/oAb;-><init>()V

    sput-object v0, Lc8/oAb;->instance:Lc8/oAb;

    .line 33
    :cond_0
    sget-object v0, Lc8/oAb;->instance:Lc8/oAb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getConfigLogLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v1, p0, Lc8/oAb;->mLogLevelMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 47
    .local v0, "level":Ljava/lang/String;
    return-object v0
.end method

.method public getLogLevel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "eventId"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lc8/oAb;->getConfigLogLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "level":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    .end local v0    # "level":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "level":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "3"

    goto :goto_0
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v4, p0, Lc8/oAb;->mLogLevelMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 54
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    .local v3, "valueObj":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 60
    .local v1, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 62
    .local v0, "k":Ljava/lang/String;
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "level":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    iget-object v4, p0, Lc8/oAb;->mLogLevelMap:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    .end local v0    # "k":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "level":Ljava/lang/String;
    .end local v3    # "valueObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
