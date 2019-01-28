.class public Lc8/KXo;
.super Landroid/content/BroadcastReceiver;
.source "YoukuNotificationModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/LXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# instance fields
.field private mAction:Ljava/lang/String;

.field private mCallback:Lc8/EWf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/JXo;)V
    .locals 0
    .param p1, "x0"    # Lc8/JXo;

    .prologue
    .line 197
    invoke-direct {p0}, Lc8/KXo;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lc8/KXo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lc8/KXo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lc8/KXo;->mAction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lc8/KXo;Lc8/EWf;)Lc8/EWf;
    .locals 0
    .param p0, "x0"    # Lc8/KXo;
    .param p1, "x1"    # Lc8/EWf;

    .prologue
    .line 197
    iput-object p1, p0, Lc8/KXo;->mCallback:Lc8/EWf;

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "action":Ljava/lang/String;
    iget-object v6, p0, Lc8/KXo;->mAction:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lc8/KXo;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 207
    .local v5, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 208
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 209
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 211
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 213
    .local v4, "object":Ljava/lang/Object;
    instance-of v7, v4, Ljava/lang/Number;

    if-eqz v7, :cond_3

    .line 214
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v2, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 222
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    iget-object v6, p0, Lc8/KXo;->mCallback:Lc8/EWf;

    invoke-interface {v6, v5}, Lc8/EWf;->invokeAndKeepAlive(Ljava/lang/Object;)V

    .line 224
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    return-void

    .line 215
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "object":Ljava/lang/Object;
    .restart local v5    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    :try_start_1
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 216
    invoke-virtual {v5, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
