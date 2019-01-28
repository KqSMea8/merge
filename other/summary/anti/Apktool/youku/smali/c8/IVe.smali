.class public Lc8/IVe;
.super Ljava/lang/Object;
.source "UtdidBroadcastMgr.java"


# static fields
.field private static mInstance:Lc8/IVe;

.field private static mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lc8/IVe;->mInstance:Lc8/IVe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/IVe;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lc8/IVe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/IVe;->mInstance:Lc8/IVe;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lc8/IVe;

    invoke-direct {v0}, Lc8/IVe;-><init>()V

    sput-object v0, Lc8/IVe;->mInstance:Lc8/IVe;

    .line 33
    :cond_0
    sget-object v0, Lc8/IVe;->mInstance:Lc8/IVe;
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
.method public sendBroadCast(Ljava/lang/String;)V
    .locals 6
    .param p1, "utdid"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v4

    invoke-virtual {v4}, Lc8/oVe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 59
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 60
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.action.utdid"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    .local v2, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v3, "intentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "utdid"

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string/jumbo v4, "appkey"

    invoke-static {}, Lc8/oVe;->getInstance()Lc8/oVe;

    move-result-object v5

    invoke-virtual {v5}, Lc8/oVe;->getAppkey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string/jumbo v4, "appName"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "data":Ljava/lang/String;
    const-string/jumbo v4, "data"

    invoke-static {v1}, Lc8/aWe;->getEncodedContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v4, "sign"

    invoke-static {v1}, Lc8/nWe;->getHmacMd5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 70
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "intentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public startBroadCastReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v1, Lc8/IVe;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 38
    new-instance v1, Lc8/KVe;

    invoke-direct {v1}, Lc8/KVe;-><init>()V

    sput-object v1, Lc8/IVe;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 39
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.action.utdid"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    sget-object v1, Lc8/IVe;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 42
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public stopBroadCastReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    sget-object v0, Lc8/IVe;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 46
    sget-object v0, Lc8/IVe;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lc8/IVe;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    :cond_0
    return-void
.end method
