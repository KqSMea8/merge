.class public Lc8/Hxe;
.super Ljava/lang/Object;
.source "WbShareHandler.java"


# instance fields
.field private context:Landroid/app/Activity;

.field private hasRegister:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hxe;->hasRegister:Z

    .line 32
    iput-object p1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method private isWbAppInstalled()Z
    .locals 2

    .prologue
    .line 132
    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-static {v1}, Lc8/Cwe;->getInstance(Landroid/content/Context;)Lc8/Cwe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Cwe;->getWbAppInfo()Lc8/Pwe;

    move-result-object v0

    .line 133
    .local v0, "wbAppInfo":Lc8/Pwe;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/Pwe;->isLegal()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "data"    # Landroid/os/Bundle;

    .prologue
    .line 46
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "appPackage":Ljava/lang/String;
    const-string/jumbo v2, "_weibo_sdkVersion"

    const-string/jumbo v3, "0031405000"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const-string/jumbo v2, "_weibo_appPackage"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const-string/jumbo v2, "_weibo_appKey"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v2, "_weibo_flag"

    const v3, 0x20130329

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    const-string/jumbo v2, "_weibo_sign"

    invoke-static {p1, v0}, Lc8/Aye;->getSign(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/rye;->hexdigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 54
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    :cond_0
    if-eqz p5, :cond_1

    .line 57
    invoke-virtual {v1, p5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 59
    :cond_1
    const-string/jumbo v2, "com.sina.weibo.permission.WEIBO_SDK_PERMISSION"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private startClientShare(Lc8/Jwe;)V
    .locals 6
    .param p1, "message"    # Lc8/Jwe;

    .prologue
    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "_weibo_command_type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string/jumbo v2, "_weibo_transaction"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string/jumbo v2, "callbackId"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 88
    invoke-virtual {p1, v0}, Lc8/Jwe;->toBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 89
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    const-class v3, Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    const-string/jumbo v2, "startPackage"

    iget-object v3, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-static {v3}, Lc8/Cwe;->getInstance(Landroid/content/Context;)Lc8/Cwe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Cwe;->getWbAppInfo()Lc8/Pwe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Pwe;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string/jumbo v2, "startAction"

    const-string/jumbo v3, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string/jumbo v2, "startFlag"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    const-string/jumbo v2, "startActivity"

    iget-object v3, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 100
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startWebShare(Lc8/Jwe;)V
    .locals 12
    .param p1, "message"    # Lc8/Jwe;

    .prologue
    .line 106
    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/fxe;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/fxe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/fxe;->activateApp()V

    .line 107
    new-instance v11, Landroid/content/Intent;

    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    const-class v2, Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v11, "webIntent":Landroid/content/Intent;
    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "appPackage":Ljava/lang/String;
    new-instance v0, Lc8/Xye;

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    sget-object v2, Lcom/sina/weibo/sdk/web/WebRequestType;->SHARE:Lcom/sina/weibo/sdk/web/WebRequestType;

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    const-string/jumbo v5, "\u5fae\u535a\u5206\u4eab"

    const/4 v6, 0x0

    iget-object v7, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-direct/range {v0 .. v7}, Lc8/Xye;-><init>(Lcom/sina/weibo/sdk/auth/AuthInfo;Lcom/sina/weibo/sdk/web/WebRequestType;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 110
    .local v0, "webParam":Lc8/Xye;
    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lc8/Xye;->setContext(Landroid/content/Context;)V

    .line 111
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lc8/Xye;->setHashKey(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, v8}, Lc8/Xye;->setPackageName(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-static {v1}, Lc8/Lwe;->readAccessToken(Landroid/content/Context;)Lc8/Owe;

    move-result-object v10

    .line 114
    .local v10, "token":Lc8/Owe;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lc8/Owe;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    invoke-virtual {v10}, Lc8/Owe;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Xye;->setToken(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-virtual {v0, p1}, Lc8/Xye;->setMultiMessage(Lc8/Jwe;)V

    .line 118
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 119
    .local v9, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v9}, Lc8/Xye;->fillBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 120
    invoke-virtual {v11, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v1, "startFlag"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    const-string/jumbo v1, "startActivity"

    iget-object v2, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string/jumbo v1, "startAction"

    const-string/jumbo v2, "com.sina.weibo.sdk.action.ACTION_WEIBO_ACTIVITY"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string/jumbo v1, "gotoActivity"

    const-string/jumbo v2, "com.sina.weibo.sdk.web.WeiboSdkWebActivity"

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-virtual {v1, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 126
    return-void
.end method


# virtual methods
.method public doResultIntent(Landroid/content/Intent;Lc8/Gxe;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callback"    # Lc8/Gxe;

    .prologue
    .line 137
    if-nez p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v2, "_weibo_resp_errcode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 145
    .local v1, "resultCode":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 147
    :pswitch_0
    invoke-interface {p2}, Lc8/Gxe;->onWbShareSuccess()V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-interface {p2}, Lc8/Gxe;->onWbShareCancel()V

    goto :goto_0

    .line 153
    :pswitch_2
    invoke-interface {p2}, Lc8/Gxe;->onWbShareFail()V

    goto :goto_0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerApp()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 41
    iget-object v1, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    const-string/jumbo v2, "com.sina.weibo.sdk.Intent.ACTION_WEIBO_REGISTER"

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lc8/Hxe;->sendBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 42
    iput-boolean v6, p0, Lc8/Hxe;->hasRegister:Z

    .line 43
    return v6
.end method

.method public shareMessage(Lc8/Jwe;Z)V
    .locals 2
    .param p1, "message"    # Lc8/Jwe;
    .param p2, "clientOnly"    # Z

    .prologue
    .line 68
    iget-boolean v0, p0, Lc8/Hxe;->hasRegister:Z

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "please call WbShareHandler.registerApp(),before use share function"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lc8/Hxe;->isWbAppInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 80
    :goto_0
    return-void

    .line 74
    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0}, Lc8/Hxe;->isWbAppInstalled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    :cond_2
    iget-object v0, p0, Lc8/Hxe;->context:Landroid/app/Activity;

    invoke-static {}, Lc8/Bwe;->getAuthInfo()Lcom/sina/weibo/sdk/auth/AuthInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/auth/AuthInfo;->getAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/fxe;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lc8/fxe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fxe;->activateApp()V

    .line 76
    invoke-direct {p0, p1}, Lc8/Hxe;->startClientShare(Lc8/Jwe;)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-direct {p0, p1}, Lc8/Hxe;->startWebShare(Lc8/Jwe;)V

    goto :goto_0
.end method
