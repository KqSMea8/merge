.class public Lanetwork/channel/http/NetworkSdkSetting;
.super Ljava/lang/Object;
.source "NetworkSdkSetting.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static CURRENT_ENV:Lanet/channel/entity/ENV; = null

.field private static final TAG:Ljava/lang/String; = "anet.NetworkSdkSetting"

.field private static context:Landroid/content/Context;

.field private static isInit:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lanet/channel/entity/ENV;->ONLINE:Lanet/channel/entity/ENV;

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->CURRENT_ENV:Lanet/channel/entity/ENV;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string/jumbo v2, "ttid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "ttid":Ljava/lang/String;
    invoke-static {v1}, Lc8/TI;->setTtid(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lanetwork/channel/http/NetworkSdkSetting;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v1    # "ttid":Ljava/lang/String;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "anet.NetworkSdkSetting"

    const-string/jumbo v3, "Network SDK initial failed!"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v0, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 37
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    sget-object v1, Lanetwork/channel/http/NetworkSdkSetting;->isInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    sput-object p0, Lanetwork/channel/http/NetworkSdkSetting;->context:Landroid/content/Context;

    .line 43
    invoke-static {}, Lanetwork/channel/http/NetworkSdkSetting;->initTaobaoAdapter()V

    .line 44
    invoke-static {}, Lc8/RN;->init()V

    .line 45
    invoke-static {}, Lc8/qN;->init()V

    .line 46
    invoke-static {p0}, Lc8/rN;->setup(Landroid/content/Context;)V

    .line 47
    invoke-static {p0}, Lanet/channel/SessionCenter;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "anet.NetworkSdkSetting"

    const-string/jumbo v2, "Network SDK initial failed!"

    const/4 v3, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static initTaobaoAdapter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 74
    :try_start_0
    const-string/jumbo v2, "anet.channel.TaobaoNetworkAdapter"

    const-string/jumbo v3, "init"

    const/4 v4, 0x0

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v1}, Lc8/eM;->invokeStaticMethodThrowException(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v1, "anet.NetworkSdkSetting"

    const-string/jumbo v2, "init taobao adapter success"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 77
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "anet.NetworkSdkSetting"

    const-string/jumbo v2, "initTaobaoAdapter failed. maybe not taobao app"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1, v2, v5, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setTtid(Ljava/lang/String;)V
    .locals 0
    .param p0, "ttid"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0}, Lc8/TI;->setTtid(Ljava/lang/String;)V

    .line 66
    return-void
.end method
