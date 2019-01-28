.class public Lc8/eXf;
.super Ljava/lang/Object;
.source "WXServiceManager.java"


# static fields
.field private static sInstanceJSServiceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/LXf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/eXf;->sInstanceJSServiceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execAllCacheJsService()V
    .locals 6

    .prologue
    .line 74
    sget-object v3, Lc8/eXf;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "serviceName":Ljava/lang/String;
    sget-object v3, Lc8/eXf;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/LXf;

    .line 76
    .local v1, "service":Lc8/LXf;
    invoke-virtual {v1}, Lc8/LXf;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lc8/LXf;->getScript()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lc8/LXf;->getOptions()Ljava/util/Map;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/eXf;->registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    .line 78
    .end local v1    # "service":Lc8/LXf;
    .end local v2    # "serviceName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static registerService(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "serviceScript"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 37
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    move v7, v8

    .line 57
    :goto_0
    return v7

    .line 39
    :cond_1
    const-string/jumbo v2, "register: global.registerService, unregister: global.unregisterService"

    .line 40
    .local v2, "param1":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "serviceName: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "param2":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 43
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 44
    .local v6, "value":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    .end local v1    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    const-string/jumbo v9, ";(function(service, options){ ;%s; })({ %s }, { %s });"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v8

    aput-object v2, v10, v7

    const/4 v8, 0x2

    aput-object v3, v10, v8

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "serviceJs":Ljava/lang/String;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 49
    new-instance v4, Lc8/LXf;

    invoke-direct {v4}, Lc8/LXf;-><init>()V

    .line 50
    .local v4, "service":Lc8/LXf;
    invoke-virtual {v4, p0}, Lc8/LXf;->setName(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v4, p1}, Lc8/LXf;->setScript(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4, p2}, Lc8/LXf;->setOptions(Ljava/util/Map;)V

    .line 53
    sget-object v8, Lc8/eXf;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v8, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .end local v4    # "service":Lc8/LXf;
    :cond_3
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v8

    invoke-virtual {v8, v5}, Lc8/ZWf;->execJSService(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static unRegisterService(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 69
    :goto_0
    return v1

    .line 63
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 64
    sget-object v3, Lc8/eXf;->sInstanceJSServiceMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    const-string/jumbo v3, "global.unregisterService( \"%s\" );"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "js":Ljava/lang/String;
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/ZWf;->execJSService(Ljava/lang/String;)V

    move v1, v2

    .line 69
    goto :goto_0
.end method
