.class public Lc8/Kib;
.super Lc8/Ihb;
.source "LogoutTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ihb",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mLogoutCallback:Lc8/qib;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lc8/qib;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "logoutCallback"    # Lc8/qib;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lc8/Ihb;-><init>(Landroid/app/Activity;)V

    .line 24
    iput-object p2, p0, Lc8/Kib;->mLogoutCallback:Lc8/qib;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lc8/Kib;)Lc8/qib;
    .locals 1
    .param p0, "x0"    # Lc8/Kib;

    .prologue
    .line 19
    iget-object v0, p0, Lc8/Kib;->mLogoutCallback:Lc8/qib;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic asyncExecute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/Kib;->asyncExecute([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs asyncExecute([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 30
    :try_start_0
    const-string/jumbo v2, "logout task"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "into logout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v4}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Sgb;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v2, Lc8/whb;->INSTANCE:Lc8/whb;

    invoke-virtual {v2}, Lc8/whb;->getInternalSession()Lc8/Sgb;

    move-result-object v2

    iget-object v2, v2, Lc8/Sgb;->user:Lc8/chb;

    iget-object v2, v2, Lc8/chb;->userId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 32
    sget-object v2, Lc8/eib;->INSTANCE:Lc8/eib;

    invoke-static {}, Lc8/eib;->logout()Lc8/Zgb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 37
    sget-object v2, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v2}, Lc8/rhb;->logout()Lc8/Wgb;

    move-result-object v1

    .line 38
    .local v1, "resultCode":Lc8/Wgb;
    sget-object v2, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    invoke-virtual {v2, v1}, Lc8/Wgb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    sget-object v2, Lc8/rib;->rpcService:Lc8/thb;

    invoke-interface {v2}, Lc8/thb;->logout()V

    .line 40
    sget-object v2, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v2}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 41
    sget-object v2, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v3, Lc8/Jib;

    invoke-direct {v3, p0}, Lc8/Jib;-><init>(Lc8/Kib;)V

    invoke-interface {v2, v3}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 52
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 49
    :cond_1
    iget-object v2, p0, Lc8/Kib;->mLogoutCallback:Lc8/qib;

    invoke-static {v2, v1}, Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V

    goto :goto_0

    .line 33
    .end local v1    # "resultCode":Lc8/Wgb;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 37
    sget-object v2, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v2}, Lc8/rhb;->logout()Lc8/Wgb;

    move-result-object v1

    .line 38
    .restart local v1    # "resultCode":Lc8/Wgb;
    sget-object v2, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    invoke-virtual {v2, v1}, Lc8/Wgb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    sget-object v2, Lc8/rib;->rpcService:Lc8/thb;

    invoke-interface {v2}, Lc8/thb;->logout()V

    .line 40
    sget-object v2, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v2}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 41
    sget-object v2, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v3, Lc8/Jib;

    invoke-direct {v3, p0}, Lc8/Jib;-><init>(Lc8/Kib;)V

    invoke-interface {v2, v3}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v2, p0, Lc8/Kib;->mLogoutCallback:Lc8/qib;

    invoke-static {v2, v1}, Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "resultCode":Lc8/Wgb;
    :catchall_0
    move-exception v2

    invoke-static {}, Lc8/Pib;->resetLoginFlag()V

    .line 37
    sget-object v3, Lc8/rib;->credentialService:Lc8/rhb;

    invoke-interface {v3}, Lc8/rhb;->logout()Lc8/Wgb;

    move-result-object v1

    .line 38
    .restart local v1    # "resultCode":Lc8/Wgb;
    sget-object v3, Lc8/Wgb;->SUCCESS:Lc8/Wgb;

    invoke-virtual {v3, v1}, Lc8/Wgb;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 39
    sget-object v3, Lc8/rib;->rpcService:Lc8/thb;

    invoke-interface {v3}, Lc8/thb;->logout()V

    .line 40
    sget-object v3, Lcom/ali/auth/third/core/broadcast/LoginAction;->NOTIFY_LOGOUT:Lcom/ali/auth/third/core/broadcast/LoginAction;

    invoke-static {v3}, Lc8/Shb;->sendBroadcast(Lcom/ali/auth/third/core/broadcast/LoginAction;)V

    .line 41
    sget-object v3, Lc8/Bgb;->executorService:Lc8/shb;

    new-instance v4, Lc8/Jib;

    invoke-direct {v4, p0}, Lc8/Jib;-><init>(Lc8/Kib;)V

    invoke-interface {v3, v4}, Lc8/shb;->postUITask(Ljava/lang/Runnable;)V

    .line 51
    :goto_1
    throw v2

    .line 49
    :cond_3
    iget-object v3, p0, Lc8/Kib;->mLogoutCallback:Lc8/qib;

    invoke-static {v3, v1}, Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V

    goto :goto_1
.end method

.method protected doWhenException(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/Kib;->mLogoutCallback:Lc8/qib;

    const/16 v1, 0x271a

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/Wgb;->create(I[Ljava/lang/Object;)Lc8/Wgb;

    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lc8/Shb;->onFailure(Lc8/vgb;Lc8/Wgb;)V

    .line 59
    return-void
.end method
