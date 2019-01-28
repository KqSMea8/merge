.class public Lc8/Hib;
.super Lc8/Aib;
.source "LoginByReTokenTask.java"


# instance fields
.field private loginCallback:Lc8/xgb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/xgb;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lc8/Aib;-><init>(Landroid/app/Activity;)V

    .line 30
    iput-object p2, p0, Lc8/Hib;->loginCallback:Lc8/xgb;

    .line 31
    return-void
.end method


# virtual methods
.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 70
    .local v0, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    const-string/jumbo v2, "10010"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "exception"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vhb;

    sget-object v2, Lc8/oib;->E_AUTO_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    iget-object v1, p0, Lc8/Hib;->loginCallback:Lc8/xgb;

    const/16 v2, 0x271a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/Wgb;->create(I[Ljava/lang/Object;)Lc8/Wgb;

    move-result-object v2

    .line 73
    invoke-static {v1, v2}, Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V

    .line 76
    return-void
.end method

.method protected doWhenResultFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    iget-object v1, p0, Lc8/Hib;->loginCallback:Lc8/xgb;

    if-eqz v1, :cond_1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    :cond_0
    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vhb;

    sget-object v2, Lc8/oib;->E_AUTO_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 43
    iget-object v1, p0, Lc8/Hib;->loginCallback:Lc8/xgb;

    if-eqz v1, :cond_1

    .line 44
    iget-object v1, p0, Lc8/Hib;->loginCallback:Lc8/xgb;

    invoke-interface {v1, p1, p2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 47
    .end local v0    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void
.end method

.method protected doWhenResultOk()V
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 55
    iget-object v0, p0, Lc8/Hib;->loginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 56
    const-class v0, Lc8/vhb;

    invoke-static {v0}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vhb;

    sget-object v1, Lc8/oib;->E_AUTO_LOGIN_SUCCESS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    iget-object v0, p0, Lc8/Hib;->loginCallback:Lc8/xgb;

    sget-object v1, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 59
    :cond_0
    return-void
.end method

.method protected login([Ljava/lang/String;)Lc8/Zgb;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lc8/Zgb",
            "<",
            "Lc8/Vgb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lc8/eib;->INSTANCE:Lc8/eib;

    invoke-static {}, Lc8/eib;->loginByRefreshToken()Lc8/Zgb;

    move-result-object v0

    return-object v0
.end method
