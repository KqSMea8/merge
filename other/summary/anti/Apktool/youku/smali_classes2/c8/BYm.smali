.class public Lc8/BYm;
.super Ljava/lang/Object;
.source "PopLayerHooker.java"

# interfaces
.implements Lc8/Sbf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hook(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 20
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v3, "poplayer"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 32
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return v2

    .line 24
    .restart local v1    # "url":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "com.alibaba.poplayer.PopLayer.action.POP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    .local v0, "popIntent":Landroid/content/Intent;
    const-string/jumbo v3, "event"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    const-string/jumbo v3, "param"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v2, 0x0

    goto :goto_0

    .line 31
    .end local v0    # "popIntent":Landroid/content/Intent;
    .end local v1    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "TBPoplayer"

    const-string/jumbo v4, "PopLayerHooker.hook.error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
