.class public Lcom/youku/phone/subscribe/receiver/LoginReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LoginReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 17
    if-nez p2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 19
    .local v1, "action":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 20
    const-string/jumbo v0, "LoginReceiver"

    .line 22
    .local v0, "TAG":Ljava/lang/String;
    const-string/jumbo v3, "com.youku.action.LOGIN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 25
    :try_start_0
    invoke-static {}, Lc8/jzk;->getInstance()Lc8/jzk;

    move-result-object v3

    invoke-virtual {v3}, Lc8/jzk;->mergeOfflineSubscribeList()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 26
    :catch_0
    move-exception v2

    .line 27
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v0, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v3, "com.youku.action.LOGIN_BIND"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    const-string/jumbo v3, "com.youku.action.LOGOUT"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0
.end method
