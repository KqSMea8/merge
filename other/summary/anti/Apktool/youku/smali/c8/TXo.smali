.class public Lc8/TXo;
.super Lc8/MXf;
.source "YoukuUserSystemModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SXo;
    }
.end annotation


# instance fields
.field private mloginReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 29
    new-instance v1, Lc8/SXo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lc8/SXo;-><init>(Lc8/TXo;Lc8/RXo;)V

    iput-object v1, p0, Lc8/TXo;->mloginReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.youku.action.LOGIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 31
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.youku.action.LOGOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    iget-object v2, p0, Lc8/TXo;->mloginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    return-void
.end method

.method public static generateUserInfo()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v0, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lc8/XXo;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    const-string/jumbo v1, "userId"

    invoke-static {}, Lc8/XXo;->getUserIdForLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v1, "accessToken"

    invoke-static {}, Lc8/XXo;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string/jumbo v1, "nickname"

    invoke-static {}, Lc8/XXo;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string/jumbo v1, "userId"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public fetchUserInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    iget-object v1, p0, Lc8/TXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc8/TXo;->generateUserInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    return-void
.end method

.method public isLogin(Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Lc8/ZWf;->getInstance()Lc8/ZWf;

    move-result-object v0

    iget-object v1, p0, Lc8/TXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lc8/XXo;->isLogin()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lc8/ZWf;->callback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public onActivityDestroy()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lc8/MXf;->onActivityDestroy()V

    .line 86
    iget-object v0, p0, Lc8/TXo;->mloginReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    iget-object v1, p0, Lc8/TXo;->mloginReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/TXo;->mloginReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    :cond_0
    return-void
.end method

.method public onLoginEvent()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lc8/TXo;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lc8/TXo;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v1, "PWEventLogin"

    invoke-static {}, Lc8/TXo;->generateUserInfo()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/nVf;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onLogoutEvent()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lc8/TXo;->mWXSDKInstance:Lc8/nVf;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/TXo;->mWXSDKInstance:Lc8/nVf;

    const-string/jumbo v1, "PWEventLogout"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lc8/nVf;->fireGlobalEventCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 74
    :cond_0
    return-void
.end method
