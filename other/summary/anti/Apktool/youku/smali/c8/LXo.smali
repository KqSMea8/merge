.class public Lc8/LXo;
.super Lc8/MXf;
.source "YoukuNotificationModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/KXo;
    }
.end annotation


# static fields
.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_OPTION:Ljava/lang/String; = "option"

.field private static final KEY_PARAM:Ljava/lang/String; = "param"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field public static final MODULE_NAME:Ljava/lang/String; = "YKNotification"

.field private static final TYPE_GLOBAL:Ljava/lang/String; = "global"

.field private static final TYPE_LOCAL:Ljava/lang/String; = "local"


# instance fields
.field private mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/KXo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/LXo;->mReceivers:Ljava/util/HashMap;

    .line 197
    return-void
.end method

.method private static callback(Lc8/EWf;Ljava/lang/String;)V
    .locals 3
    .param p0, "callback"    # Lc8/EWf;
    .param p1, "wx_error"    # Ljava/lang/String;

    .prologue
    .line 186
    if-eqz p0, :cond_0

    .line 188
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 189
    .local v1, "msg":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v2, "result"

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-interface {p0, v1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v1    # "msg":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Lcom/alibaba/fastjson/JSONException;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private isGlobalType(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 3
    .param p1, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 118
    const-string/jumbo v1, "option"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 119
    .local v0, "optionJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v1, "global"

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static parseParams(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 6
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 127
    const-string/jumbo v4, "param"

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 128
    .local v1, "paramJson":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 130
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 131
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 133
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 137
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private registerReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "global"    # Z

    .prologue
    .line 161
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    if-eqz p3, :cond_0

    .line 163
    iget-object v1, p0, Lc8/LXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 169
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 165
    .restart local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lc8/LXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private sendBroadcast(Landroid/content/Intent;Z)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "global"    # Z

    .prologue
    .line 152
    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, Lc8/LXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lc8/LXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "global"    # Z

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 176
    :cond_0
    if-eqz p2, :cond_1

    .line 177
    :try_start_0
    iget-object v0, p0, Lc8/LXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lc8/LXo;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public addObserver(Ljava/lang/String;Lc8/EWf;Lc8/EWf;)V
    .locals 7
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .param p3, "code"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 52
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 53
    .local v4, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "action"

    invoke-virtual {v4, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    const-string/jumbo v6, "WX_FAILED"

    invoke-static {p2, v6}, Lc8/LXo;->callback(Lc8/EWf;Ljava/lang/String;)V

    .line 75
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 59
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-direct {p0, v4}, Lc8/LXo;->isGlobalType(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v3

    .line 60
    .local v3, "isGlobal":Z
    new-instance v5, Lc8/KXo;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lc8/KXo;-><init>(Lc8/JXo;)V

    .line 61
    .local v5, "receiver":Lc8/KXo;
    invoke-static {v5, v0}, Lc8/KXo;->access$102(Lc8/KXo;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    invoke-static {v5, p2}, Lc8/KXo;->access$202(Lc8/KXo;Lc8/EWf;)Lc8/EWf;

    .line 63
    invoke-direct {p0, v5, v0, v3}, Lc8/LXo;->registerReceiver(Landroid/content/BroadcastReceiver;Ljava/lang/String;Z)V

    .line 66
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 67
    .local v1, "codeJson":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "hashCode":Ljava/lang/String;
    const-string/jumbo v6, "code"

    invoke-virtual {v1, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {p3, v1}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 71
    iget-object v6, p0, Lc8/LXo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "codeJson":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "hashCode":Ljava/lang/String;
    .end local v3    # "isGlobal":Z
    .end local v4    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v5    # "receiver":Lc8/KXo;
    :catch_0
    move-exception v6

    const-string/jumbo v6, "WX_FAILED"

    invoke-static {p2, v6}, Lc8/LXo;->callback(Lc8/EWf;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityDestroy()V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0}, Lc8/MXf;->onActivityDestroy()V

    .line 144
    iget-object v2, p0, Lc8/LXo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/weex/module/YoukuNotificationModule$Receiver;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/KXo;

    .line 146
    .local v1, "receiver":Lc8/KXo;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lc8/LXo;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V

    .line 147
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lc8/LXo;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V

    goto :goto_0

    .line 149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/youku/weex/module/YoukuNotificationModule$Receiver;>;"
    .end local v1    # "receiver":Lc8/KXo;
    :cond_0
    return-void
.end method

.method public removeObserver(Ljava/lang/String;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 80
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 81
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "code"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    invoke-direct {p0, v2}, Lc8/LXo;->isGlobalType(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v1

    .line 86
    .local v1, "isGlobal":Z
    iget-object v4, p0, Lc8/LXo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/KXo;

    .line 87
    .local v3, "receiver":Lc8/KXo;
    if-eqz v3, :cond_0

    .line 88
    iget-object v4, p0, Lc8/LXo;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0, v3, v1}, Lc8/LXo;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V

    .line 90
    if-nez v1, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, v3, v4}, Lc8/LXo;->unregisterReceiver(Landroid/content/BroadcastReceiver;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "code":Ljava/lang/String;
    .end local v1    # "isGlobal":Z
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "receiver":Lc8/KXo;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 90
    .restart local v0    # "code":Ljava/lang/String;
    .restart local v1    # "isGlobal":Z
    .restart local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v3    # "receiver":Lc8/KXo;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public send(Ljava/lang/String;Lc8/EWf;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 100
    .local v3, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "action"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    const-string/jumbo v4, "WX_FAILED"

    invoke-static {p2, v4}, Lc8/LXo;->callback(Lc8/EWf;Ljava/lang/String;)V

    .line 115
    .end local v0    # "action":Ljava/lang/String;
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :goto_0
    return-void

    .line 106
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    invoke-direct {p0, v3}, Lc8/LXo;->isGlobalType(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v2

    .line 107
    .local v2, "isGlobal":Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 108
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v3, v1}, Lc8/LXo;->parseParams(Lcom/alibaba/fastjson/JSONObject;Landroid/content/Intent;)Landroid/content/Intent;

    .line 109
    invoke-direct {p0, v1, v2}, Lc8/LXo;->sendBroadcast(Landroid/content/Intent;Z)V

    .line 110
    const-string/jumbo v4, "WX_SUCCESS"

    invoke-static {p2, v4}, Lc8/LXo;->callback(Lc8/EWf;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isGlobal":Z
    .end local v3    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "WX_FAILED"

    invoke-static {p2, v4}, Lc8/LXo;->callback(Lc8/EWf;Ljava/lang/String;)V

    goto :goto_0
.end method
