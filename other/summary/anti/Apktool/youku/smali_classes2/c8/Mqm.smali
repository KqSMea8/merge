.class public Lc8/Mqm;
.super Lc8/RD;
.source "YKFWVAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Lqm;
    }
.end annotation


# static fields
.field public static final PLUGIN_NAME:Ljava/lang/String; = "YKFWVAudioPlayer"


# instance fields
.field private mPWAudioPlayer:Lc8/Jqm;

.field private mPluginPlayerListener:Lc8/Lqm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 7
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;
    .param p3, "wvCallBackContext"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v3, 0x1

    .line 24
    const-string/jumbo v4, "play"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 25
    iget-object v4, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    if-nez v4, :cond_0

    .line 26
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->getWebview()Landroid/taobao/windvane/webview/IWVWebView;

    move-result-object v4

    invoke-interface {v4}, Landroid/taobao/windvane/webview/IWVWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/Jqm;->getIns(Landroid/content/Context;)Lc8/Jqm;

    move-result-object v4

    iput-object v4, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    .line 27
    new-instance v4, Lc8/Lqm;

    iget-object v5, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lc8/Lqm;-><init>(Lc8/Jqm;Lc8/Kqm;)V

    iput-object v4, p0, Lc8/Mqm;->mPluginPlayerListener:Lc8/Lqm;

    .line 28
    iget-object v4, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    iget-object v5, p0, Lc8/Mqm;->mPluginPlayerListener:Lc8/Lqm;

    invoke-virtual {v4, v5}, Lc8/Jqm;->setPlayerListener(Lc8/Iqm;)V

    .line 30
    :cond_0
    iget-object v4, p0, Lc8/Mqm;->mPluginPlayerListener:Lc8/Lqm;

    invoke-virtual {v4, p3}, Lc8/Lqm;->setWVCallBackContext(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Lc8/Lqm;

    .line 32
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 33
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v4, "url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 35
    const-string/jumbo v4, "no url param"

    invoke-virtual {p3, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    .line 53
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return v3

    .line 37
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    invoke-virtual {v4, v2}, Lc8/Jqm;->playStart(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 41
    const-string/jumbo v4, "no url param"

    invoke-virtual {p3, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v4, "stop"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 45
    iget-object v4, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    if-eqz v4, :cond_3

    .line 46
    iget-object v4, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    invoke-virtual {v4}, Lc8/Jqm;->playDestroy()V

    .line 47
    invoke-virtual {p3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success()V

    goto :goto_0

    .line 49
    :cond_3
    const-string/jumbo v4, "no player"

    invoke-virtual {p3, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-super {p0}, Lc8/RD;->onDestroy()V

    .line 59
    iget-object v0, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    invoke-virtual {v0}, Lc8/Jqm;->playDestroy()V

    .line 61
    iput-object v1, p0, Lc8/Mqm;->mPWAudioPlayer:Lc8/Jqm;

    .line 63
    :cond_0
    iget-object v0, p0, Lc8/Mqm;->mPluginPlayerListener:Lc8/Lqm;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lc8/Mqm;->mPluginPlayerListener:Lc8/Lqm;

    invoke-virtual {v0}, Lc8/Lqm;->destory()V

    .line 65
    iput-object v1, p0, Lc8/Mqm;->mPluginPlayerListener:Lc8/Lqm;

    .line 67
    :cond_1
    return-void
.end method
