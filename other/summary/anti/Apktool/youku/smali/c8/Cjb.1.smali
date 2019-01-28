.class public Lc8/Cjb;
.super Ljava/lang/Object;
.source "UserTrackerImpl.java"

# interfaces
.implements Lc8/vhb;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    :try_start_0
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setContext(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    sget-object v0, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v1, v0}, Lcom/ut/mini/UTAnalytics;->setAppApplicationInstance(Landroid/app/Application;)V

    .line 26
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    new-instance v1, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;

    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ut/mini/UTAnalytics;->setRequestAuthentication(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V

    .line 27
    invoke-direct {p0}, Lc8/Cjb;->baichuanReport()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 31
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private baichuanReport()V
    .locals 6

    .prologue
    .line 35
    new-instance v1, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    const-string/jumbo v4, "80001"

    invoke-direct {v1, v4}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v1, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "info":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "model"

    const-string/jumbo v5, "auth"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v4, "version"

    sget-object v5, Lc8/zgb;->SDK_VERSION:Lc8/Agb;

    invoke-virtual {v5}, Lc8/Agb;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 41
    invoke-virtual {v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 42
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    const-string/jumbo v5, "25"

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v3

    .line 43
    .local v3, "tracker":Lcom/ut/mini/UTTracker;
    invoke-virtual {v3, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 44
    return-void
.end method

.method private static getAppInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-object v0
.end method


# virtual methods
.method public send(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
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
    .line 48
    .local p2, "prop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;

    invoke-direct {v1, p1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, "lHitBuilder":Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;
    invoke-static {}, Lc8/Cjb;->getAppInfo()Ljava/util/Map;

    move-result-object v0

    .line 50
    .local v0, "app":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 51
    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 52
    :cond_0
    invoke-virtual {v1, v0}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->setProperties(Ljava/util/Map;)Lcom/ut/mini/UTHitBuilders$UTHitBuilder;

    .line 53
    invoke-virtual {v1}, Lcom/ut/mini/UTHitBuilders$UTCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 54
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v4

    const-string/jumbo v5, "onesdk"

    invoke-virtual {v4, v5}, Lcom/ut/mini/UTAnalytics;->getTracker(Ljava/lang/String;)Lcom/ut/mini/UTTracker;

    move-result-object v3

    .line 55
    .local v3, "tracker":Lcom/ut/mini/UTTracker;
    invoke-virtual {v3, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    .line 56
    return-void
.end method
