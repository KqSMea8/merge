.class public Lc8/nNf;
.super Ljava/lang/Object;
.source "RemoteLogin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "mtopsdk.RemoteLogin"

.field private static mtopLoginMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/jNf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/nNf;->mtopLoginMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogin()Lc8/jNf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/nNf;->getLogin(Lc8/AOp;)Lc8/jNf;

    move-result-object v0

    return-object v0
.end method

.method public static getLogin(Lc8/AOp;)Lc8/jNf;
    .locals 8
    .param p0, "mtopInstance"    # Lc8/AOp;

    .prologue
    .line 30
    if-nez p0, :cond_0

    const-string/jumbo v2, "INNER"

    .line 31
    .local v2, "instanceId":Ljava/lang/String;
    :goto_0
    sget-object v4, Lc8/nNf;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/jNf;

    .line 32
    .local v3, "login":Lc8/jNf;
    if-nez v3, :cond_4

    .line 33
    const-class v5, Lc8/nNf;

    monitor-enter v5

    .line 34
    :try_start_0
    sget-object v4, Lc8/nNf;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lc8/jNf;

    move-object v3, v0

    .line 35
    if-nez v3, :cond_3

    .line 36
    if-nez p0, :cond_1

    const/4 v1, 0x0

    .line 37
    .local v1, "context":Landroid/content/Context;
    :goto_1
    invoke-static {v1}, Lc8/iNf;->getDefaultLoginImpl(Landroid/content/Context;)Lc8/iNf;

    move-result-object v3

    .line 38
    if-nez v3, :cond_2

    .line 39
    const-string/jumbo v4, "mtopsdk.RemoteLogin"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " [getLogin]loginImpl is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v4, Lcom/taobao/tao/remotebusiness/login/LoginNotImplementException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " [getLogin] Login Not Implement!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/taobao/tao/remotebusiness/login/LoginNotImplementException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 44
    .end local v1    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 30
    .end local v2    # "instanceId":Ljava/lang/String;
    .end local v3    # "login":Lc8/jNf;
    :cond_0
    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 36
    .restart local v2    # "instanceId":Ljava/lang/String;
    .restart local v3    # "login":Lc8/jNf;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v4

    iget-object v1, v4, Lc8/kOp;->context:Landroid/content/Context;

    goto :goto_1

    .line 42
    .restart local v1    # "context":Landroid/content/Context;
    :cond_2
    sget-object v4, Lc8/nNf;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :cond_4
    return-object v3
.end method

.method public static getLoginContext()Lc8/lNf;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/nNf;->getLoginContext(Lc8/AOp;)Lc8/lNf;

    move-result-object v0

    return-object v0
.end method

.method public static getLoginContext(Lc8/AOp;)Lc8/lNf;
    .locals 1
    .param p0, "mtopInstance"    # Lc8/AOp;

    .prologue
    .line 124
    invoke-static {p0}, Lc8/nNf;->getLogin(Lc8/AOp;)Lc8/jNf;

    move-result-object v0

    invoke-interface {v0}, Lc8/jNf;->getLoginContext()Lc8/lNf;

    move-result-object v0

    return-object v0
.end method

.method public static isSessionValid()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/nNf;->isSessionValid(Lc8/AOp;)Z

    move-result v0

    return v0
.end method

.method public static isSessionValid(Lc8/AOp;)Z
    .locals 2
    .param p0, "mtopInstance"    # Lc8/AOp;

    .prologue
    .line 112
    invoke-static {p0}, Lc8/nNf;->getLogin(Lc8/AOp;)Lc8/jNf;

    move-result-object v0

    .line 113
    .local v0, "iRemoteLogin":Lc8/jNf;
    invoke-interface {v0}, Lc8/jNf;->isLogining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lc8/jNf;->isSessionValid()Z

    move-result v1

    goto :goto_0
.end method

.method public static login(Lc8/AOp;ZLjava/lang/Object;)V
    .locals 6
    .param p0, "mtopInstance"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "showLoginUI"    # Z
    .param p2, "extra"    # Ljava/lang/Object;

    .prologue
    .line 70
    invoke-static {p0}, Lc8/nNf;->getLogin(Lc8/AOp;)Lc8/jNf;

    move-result-object v0

    .line 71
    .local v0, "iRemoteLogin":Lc8/jNf;
    if-nez p0, :cond_1

    const-string/jumbo v1, "INNER"

    .line 72
    .local v1, "instanceId":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Lc8/jNf;->isLogining()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const-string/jumbo v3, "mtopsdk.RemoteLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [login] loginsdk is logining"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_1
    return-void

    .line 71
    .end local v1    # "instanceId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 78
    .restart local v1    # "instanceId":Ljava/lang/String;
    :cond_2
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 79
    const-string/jumbo v3, "mtopsdk.RemoteLogin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " [login]call login"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_3
    if-eqz p2, :cond_4

    instance-of v3, v0, Lc8/iNf;

    if-eqz v3, :cond_4

    move-object v3, v0

    .line 82
    check-cast v3, Lc8/iNf;

    invoke-virtual {v3, p2}, Lc8/iNf;->setSessionInvalid(Ljava/lang/Object;)V

    .line 85
    :cond_4
    invoke-static {p0}, Lc8/mNf;->instance(Lc8/AOp;)Lc8/mNf;

    move-result-object v2

    .line 86
    .local v2, "loginHandler":Lc8/mNf;
    invoke-interface {v0, v2, p1}, Lc8/jNf;->login(Lc8/oNf;Z)V

    .line 87
    const v3, 0xde700

    const-wide/16 v4, 0x4e20

    invoke-virtual {v2, v3, v4, v5}, Lc8/mNf;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public static login(Z)V
    .locals 1
    .param p0, "showLoginUI"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 152
    invoke-static {v0, p0, v0}, Lc8/nNf;->login(Lc8/AOp;ZLjava/lang/Object;)V

    .line 153
    return-void
.end method

.method public static login(ZLjava/lang/Object;)V
    .locals 1
    .param p0, "showLoginUI"    # Z
    .param p1, "extra"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lc8/nNf;->login(Lc8/AOp;ZLjava/lang/Object;)V

    .line 163
    return-void
.end method

.method public static setLoginImpl(Lc8/AOp;Lc8/jNf;)V
    .locals 4
    .param p0, "mtopInstance"    # Lc8/AOp;
    .param p1, "login"    # Lc8/jNf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    if-eqz p1, :cond_0

    .line 56
    if-nez p0, :cond_1

    const-string/jumbo v0, "INNER"

    .line 57
    .local v0, "instanceId":Ljava/lang/String;
    :goto_0
    sget-object v1, Lc8/nNf;->mtopLoginMap:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    const-string/jumbo v1, "mtopsdk.RemoteLogin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [setLoginImpl] set loginImpl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .end local v0    # "instanceId":Ljava/lang/String;
    :cond_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static setLoginImpl(Lc8/jNf;)V
    .locals 1
    .param p0, "login"    # Lc8/jNf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lc8/nNf;->setLoginImpl(Lc8/AOp;Lc8/jNf;)V

    .line 144
    return-void
.end method

.method public static setSessionInvalid(Lc8/AOp;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "mtopInstance"    # Lc8/AOp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-static {p0}, Lc8/nNf;->getLogin(Lc8/AOp;)Lc8/jNf;

    move-result-object v0

    .line 97
    .local v0, "iRemoteLogin":Lc8/jNf;
    instance-of v2, v0, Lc8/kNf;

    if-eqz v2, :cond_1

    .line 98
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    if-nez p0, :cond_2

    const-string/jumbo v1, "INNER"

    .line 100
    .local v1, "instanceId":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "mtopsdk.RemoteLogin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " [setSessionInvalid] bundle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .end local v1    # "instanceId":Ljava/lang/String;
    :cond_0
    check-cast v0, Lc8/kNf;

    .end local v0    # "iRemoteLogin":Lc8/jNf;
    invoke-interface {v0, p1}, Lc8/kNf;->setSessionInvalid(Landroid/os/Bundle;)V

    .line 105
    :cond_1
    return-void

    .line 99
    .restart local v0    # "iRemoteLogin":Lc8/jNf;
    :cond_2
    invoke-virtual {p0}, Lc8/AOp;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
