.class public Lc8/BC;
.super Lc8/RD;
.source "WVApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method

.method private getNotificationSettings(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Lc8/kE;

    invoke-direct {v0}, Lc8/kE;-><init>()V

    .line 34
    .local v0, "result":Lc8/kE;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    .line 35
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "unknown"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    .line 44
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lc8/BC;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lc8/zF;->isNotificationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "denied"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v1, "status"

    const-string/jumbo v2, "authorized"

    invoke-virtual {v0, v1, v2}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0
.end method

.method private openSettings(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v3, 0x0

    .line 50
    .local v3, "type":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v4, "type"

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 55
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    :goto_0
    :try_start_1
    const-string/jumbo v4, "Notification"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string/jumbo v4, "app_package"

    iget-object v5, p0, Lc8/BC;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string/jumbo v4, "app_uid"

    iget-object v5, p0, Lc8/BC;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    iget-object v4, p0, Lc8/BC;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 62
    iget-object v4, p0, Lc8/BC;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 86
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 53
    :catch_0
    move-exception v4

    new-instance v4, Lc8/kE;

    const-string/jumbo v5, "HY_PARAM_ERR"

    invoke-direct {v4, v5}, Lc8/kE;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 84
    :catch_1
    move-exception v4

    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1

    .line 67
    :cond_0
    :try_start_2
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 68
    .local v2, "result":Lc8/kE;
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "fail to open Notification Settings"

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_1

    .line 72
    .end local v2    # "result":Lc8/kE;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v4, p0, Lc8/BC;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_2

    .line 74
    const-string/jumbo v4, "package"

    iget-object v5, p0, Lc8/BC;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 75
    iget-object v4, p0, Lc8/BC;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_1

    .line 79
    :cond_2
    new-instance v2, Lc8/kE;

    invoke-direct {v2}, Lc8/kE;-><init>()V

    .line 80
    .restart local v2    # "result":Lc8/kE;
    const-string/jumbo v4, "msg"

    const-string/jumbo v5, "fail to open Application Settings"

    invoke-virtual {v2, v4, v5}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 22
    const-string/jumbo v0, "getNotificationSettings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-direct {p0, p3, p2}, Lc8/BC;->getNotificationSettings(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 29
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 24
    :cond_0
    const-string/jumbo v0, "openSettings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-direct {p0, p3, p2}, Lc8/BC;->openSettings(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
