.class public Lc8/Rfb;
.super Ljava/lang/Object;
.source "AccountLinkLifecycleAdapter.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Member.AccountLinkLifecycleAdapter"


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
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 22
    const-string/jumbo v3, "Member.AccountLinkLifecycleAdapter"

    const-string/jumbo v4, "AccountLinkLifecycleAdapter init "

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-class v3, Lc8/thb;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/thb;

    sput-object v3, Lc8/Zfb;->rpcService:Lc8/thb;

    .line 24
    const-class v3, Lc8/rhb;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/rhb;

    sput-object v3, Lc8/Zfb;->credentialService:Lc8/rhb;

    .line 25
    const-class v3, Lc8/shb;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/shb;

    sput-object v3, Lc8/Zfb;->executorService:Lc8/shb;

    .line 26
    const-class v3, Lc8/hib;

    invoke-static {v3, v5}, Lc8/Bgb;->getService(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/hib;

    sput-object v3, Lc8/Zfb;->loginService:Lc8/hib;

    .line 28
    new-instance v2, Lc8/xib;

    invoke-direct {v2}, Lc8/xib;-><init>()V

    .line 31
    .local v2, "resultHandler":Lc8/xib;
    const-string/jumbo v3, "$isv_scope$"

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 32
    .local v1, "accountLinkServicePropertiess":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lc8/Ufb;

    invoke-direct {v0}, Lc8/Ufb;-><init>()V

    .line 33
    .local v0, "accountLinkService":Lc8/Ufb;
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/Sfb;

    aput-object v4, v3, v6

    invoke-static {v3, v0, v1}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 35
    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Lc8/njb;

    aput-object v4, v3, v6

    const-string/jumbo v4, "requestCodeKey"

    sget v5, Lc8/nib;->OPEN_H5_UNBIND:I

    .line 36
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 35
    invoke-static {v3, v2, v4}, Lc8/Bgb;->registerService([Ljava/lang/Class;Ljava/lang/Object;Ljava/util/Map;)Lc8/dhb;

    .line 37
    return-void
.end method
