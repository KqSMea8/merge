.class public Lc8/gib;
.super Ljava/lang/Object;
.source "LoginLifecycleAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Member.LoginLifecycleAdapter"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 22
    const-string/jumbo v3, "Member.LoginLifecycleAdapter"

    const-string/jumbo v4, "LoginLifecycle init "

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-class v3, Lc8/thb;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/thb;

    sput-object v3, Lc8/rib;->rpcService:Lc8/thb;

    .line 24
    const-class v3, Lc8/rhb;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/rhb;

    sput-object v3, Lc8/rib;->credentialService:Lc8/rhb;

    .line 25
    const-class v3, Ljava/util/concurrent/ExecutorService;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    sput-object v3, Lc8/rib;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 26
    const-class v3, Lc8/uhb;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/uhb;

    sput-object v3, Lc8/rib;->storageService:Lc8/uhb;

    .line 28
    new-instance v2, Lc8/xib;

    invoke-direct {v2}, Lc8/xib;-><init>()V

    .line 33
    .local v2, "resultHandler":Lc8/xib;
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/njb;

    aput-object v4, v3, v6

    const-string/jumbo v4, "requestCodeKey"

    sget v5, Lc8/nib;->OPEN_H5_LOGIN:I

    .line 34
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 33
    invoke-static {v3, v2, v4}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 36
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/njb;

    aput-object v4, v3, v6

    const-string/jumbo v4, "requestCodeKey"

    sget v5, Lc8/nib;->OPEN_TAOBAO:I

    .line 37
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 36
    invoke-static {v3, v2, v4}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 40
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/njb;

    aput-object v4, v3, v6

    const-string/jumbo v4, "requestCodeKey"

    sget v5, Lc8/nib;->OPEN_DOUBLE_CHECK:I

    .line 41
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 40
    invoke-static {v3, v2, v4}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 44
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/njb;

    aput-object v4, v3, v6

    const-string/jumbo v4, "requestCodeKey"

    sget v5, Lc8/nib;->OPEN_QR_LOGIN:I

    .line 45
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 44
    invoke-static {v3, v2, v4}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 47
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/njb;

    aput-object v4, v3, v6

    const-string/jumbo v4, "requestCodeKey"

    sget v5, Lc8/nib;->OPEN_QR_LOGIN_CONFIRM:I

    .line 48
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 47
    invoke-static {v3, v2, v4}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 51
    const-string/jumbo v3, "$isv_scope$"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 52
    .local v1, "loginServicePropertiess":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/mib;

    invoke-direct {v0}, Lc8/mib;-><init>()V

    .line 53
    .local v0, "loginService":Lc8/hib;
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/hib;

    aput-object v4, v3, v6

    invoke-static {v3, v0, v1}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 55
    invoke-static {}, Lc8/Bgb;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/Pib;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method
