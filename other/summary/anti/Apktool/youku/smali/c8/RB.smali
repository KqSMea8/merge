.class public Lc8/RB;
.super Ljava/lang/Object;
.source "ApiUrlManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static configUrlMap:Ljava/util/Map;
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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string/jumbo v0, "core.ApiUrlManager"

    sput-object v0, Lc8/RB;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lc8/RB;->configUrlMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "apiName"    # Ljava/lang/String;
    .param p1, "bizType"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "url":Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v3, v2

    .line 57
    :goto_0
    return-object v3

    .line 41
    :cond_0
    sget-object v3, Lc8/RB;->configUrlMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "url":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 42
    .restart local v2    # "url":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 43
    invoke-static {v2}, Lc8/RB;->logUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 45
    :cond_1
    sget-object v4, Lc8/RB;->TAG:Ljava/lang/String;

    monitor-enter v4

    .line 47
    :try_start_0
    sget-object v3, Lc8/RB;->configUrlMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 48
    if-eqz v2, :cond_2

    .line 49
    invoke-static {v2}, Lc8/RB;->logUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 52
    :cond_2
    :try_start_1
    new-instance v1, Lc8/fC;

    invoke-direct {v1}, Lc8/fC;-><init>()V

    .line 53
    .local v1, "request":Lc8/fC;
    const-string/jumbo v3, "biztype"

    invoke-virtual {v1, v3, p1}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v3, "api"

    invoke-virtual {v1, v3, p0}, Lc8/fC;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-class v3, Lc8/SB;

    invoke-static {v1, v3}, Lc8/iC;->formatUrl(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 56
    sget-object v3, Lc8/RB;->configUrlMap:Ljava/util/Map;

    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v2}, Lc8/RB;->logUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static logUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lc8/RB;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "config url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-object p0
.end method
