.class public Lc8/ESh;
.super Lc8/RD;
.source "FlowCustomsWVPlugin.java"


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "TBWVOpenHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/RD;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 11
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 34
    :cond_1
    const-string/jumbo v10, "openURL"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 36
    :try_start_0
    invoke-static {}, Lc8/bpf;->getInstance()Lc8/bpf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/bpf;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 37
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_2

    .line 38
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    iget-object v1, v0, Lc8/unf;->application:Landroid/app/Application;

    .line 40
    :cond_2
    if-eqz v1, :cond_4

    .line 41
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    .local v8, "json":Lorg/json/JSONObject;
    const-string/jumbo v0, "visa"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "visa":Ljava/lang/String;
    const-string/jumbo v0, "url"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 44
    .local v9, "url":Ljava/lang/String;
    const-string/jumbo v0, "linkkey"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "linkKey":Ljava/lang/String;
    const-string/jumbo v0, "backURL"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 46
    .local v5, "backUrl":Ljava/lang/String;
    const-string/jumbo v0, "action"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, "intentAction":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    const-string/jumbo v7, "android.intent.action.VIEW"

    .line 50
    :cond_3
    new-instance v6, Lc8/hob;

    invoke-direct {v6}, Lc8/hob;-><init>()V

    .line 51
    .local v6, "jumpFailParam":Lc8/hob;
    const-string/jumbo v0, "failMode"

    const/4 v10, 0x5

    invoke-virtual {v8, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v6, Lc8/hob;->mode:I

    .line 52
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 54
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 55
    sget-object v0, Lc8/unf;->instance:Lc8/unf;

    invoke-virtual/range {v0 .. v6}, Lc8/unf;->startActivity(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/hob;)Z

    .line 56
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    .line 64
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "visa":Ljava/lang/String;
    .end local v4    # "linkKey":Ljava/lang/String;
    .end local v5    # "backUrl":Ljava/lang/String;
    .end local v6    # "jumpFailParam":Lc8/hob;
    .end local v7    # "intentAction":Ljava/lang/String;
    .end local v8    # "json":Lorg/json/JSONObject;
    .end local v9    # "url":Ljava/lang/String;
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    .restart local v1    # "context":Landroid/content/Context;
    :cond_4
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 62
    .end local v1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v0

    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_1
.end method
