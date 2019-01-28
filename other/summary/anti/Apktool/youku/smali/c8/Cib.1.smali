.class public Lc8/Cib;
.super Lc8/Aib;
.source "LoginAfterOpenTb.java"


# instance fields
.field private loginCallback:Lc8/xgb;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/xgb;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginCallback"    # Lc8/xgb;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/Aib;-><init>(Landroid/app/Activity;)V

    .line 31
    iput-object p2, p0, Lc8/Cib;->loginCallback:Lc8/xgb;

    .line 32
    return-void
.end method


# virtual methods
.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    sget-object v1, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_FAILED:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v1}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v0, "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "code"

    const-string/jumbo v2, "10010"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v1, "message"

    const-string/jumbo v2, "exception"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vhb;

    sget-object v2, Lc8/oib;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 87
    iget-object v1, p0, Lc8/Cib;->loginCallback:Lc8/xgb;

    const/16 v2, 0x271a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/Wgb;->create(I[Ljava/lang/Object;)Lc8/Wgb;

    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V

    .line 89
    return-void
.end method

.method protected doWhenResultFail(ILjava/lang/String;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 36
    iget-object v1, p0, Lc8/Cib;->loginCallback:Lc8/xgb;

    if-eqz v1, :cond_1

    .line 37
    iget-object v1, p0, Lc8/Cib;->loginCallback:Lc8/xgb;

    invoke-interface {v1, p1, p2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
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

    .line 40
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    const-string/jumbo v1, "message"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    :cond_0
    const-class v1, Lc8/vhb;

    invoke-static {v1}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/vhb;

    sget-object v2, Lc8/oib;->E_TB_LOGIN_FAILURE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 45
    .end local v0    # "json":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    sget-object v1, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v1, :cond_2

    .line 46
    sget-object v1, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    invoke-interface {v1, p1, p2}, Lc8/xgb;->onFailure(ILjava/lang/String;)V

    .line 48
    :cond_2
    sget-object v1, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_FAILED:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v1}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 49
    iget-object v1, p0, Lc8/Cib;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/Cib;->activity:Landroid/app/Activity;

    instance-of v1, v1, Lcom/ali/auth/third/ui/LoginActivity;

    if-eqz v1, :cond_3

    .line 50
    const/4 v1, 0x0

    sput-object v1, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 51
    iget-object v1, p0, Lc8/Cib;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 53
    :cond_3
    return-void
.end method

.method protected doWhenResultOk()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lc8/Cib;->loginCallback:Lc8/xgb;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lc8/Cib;->loginCallback:Lc8/xgb;

    sget-object v1, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 62
    const-class v0, Lc8/vhb;

    invoke-static {v0}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vhb;

    sget-object v1, Lc8/oib;->E_TB_LOGIN_SUCCESS:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    :cond_0
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    if-eqz v0, :cond_1

    .line 65
    sget-object v0, Lc8/mjb;->mGlobalLoginCallback:Lc8/xgb;

    sget-object v1, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v1}, Lc8/rhb;->getSession()Lc8/ahb;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/xgb;->onSuccess(Lc8/ahb;)V

    .line 67
    :cond_1
    sget-object v0, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGIN_SUCCESS:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v0}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 68
    iget-object v0, p0, Lc8/Cib;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/Cib;->activity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/ali/auth/third/ui/LoginActivity;

    if-eqz v0, :cond_2

    .line 69
    sput-object v2, Lc8/mjb;->activity:Ljava/lang/ref/WeakReference;

    .line 70
    iget-object v0, p0, Lc8/Cib;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 72
    :cond_2
    return-void
.end method

.method protected login([Ljava/lang/String;)Lc8/Zgb;
    .locals 2
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
    .line 76
    sget-object v0, Lc8/eib;->INSTANCE:Lc8/eib;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lc8/eib;->loginByCode(Ljava/lang/String;)Lc8/Zgb;

    move-result-object v0

    return-object v0
.end method
