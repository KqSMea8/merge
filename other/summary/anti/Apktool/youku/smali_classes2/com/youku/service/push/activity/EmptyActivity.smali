.class public Lcom/youku/service/push/activity/EmptyActivity;
.super Landroid/app/Activity;
.source "EmptyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-virtual {p0, v8}, Lcom/youku/service/push/activity/EmptyActivity;->requestWindowFeature(I)Z

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/youku/service/push/activity/EmptyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 38
    .local v6, "i":Landroid/content/Intent;
    if-nez v6, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/youku/service/push/activity/EmptyActivity;->finish()V

    .line 65
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string/jumbo v0, "PushMsg"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/youku/service/push/PushMsg;

    .line 43
    .local v7, "msg":Lcom/youku/service/push/PushMsg;
    if-nez v7, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/youku/service/push/activity/EmptyActivity;->finish()V

    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v0, "action"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "action":Ljava/lang/String;
    const-string/jumbo v0, "owner"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "owner":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    .end local v6    # "i":Landroid/content/Intent;
    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 50
    .restart local v6    # "i":Landroid/content/Intent;
    const-string/jumbo v0, "PushMsg"

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 51
    const-string/jumbo v0, "from"

    const-string/jumbo v1, "push"

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string/jumbo v0, "action"

    invoke-virtual {v6, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string/jumbo v0, "owner"

    invoke-virtual {v6, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string/jumbo v0, "DOWNLOAD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, v7, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    iget v1, v7, Lcom/youku/service/push/PushMsg;->type:I

    invoke-static {v0, v1, v3, v2}, Lc8/cin;->notificationOpenFeedback(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, v7, Lcom/youku/service/push/PushMsg;->channelType:Ljava/lang/String;

    iget-object v1, v7, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    iget v4, v7, Lcom/youku/service/push/PushMsg;->type:I

    invoke-static/range {v0 .. v5}, Lc8/cin;->sendPushClickUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/youku/service/push/activity/EmptyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, v7, Lcom/youku/service/push/PushMsg;->agooID:Ljava/lang/String;

    invoke-static {v0, v1, v5}, Lc8/qXe;->clickMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lc8/ben;->getInstance()Lc8/ben;

    move-result-object v0

    iget-object v1, v7, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    iget-object v4, v7, Lcom/youku/service/push/PushMsg;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v5, v8}, Lc8/ben;->createDownload(Ljava/lang/String;Ljava/lang/String;Lc8/Cen;Z)V

    .line 64
    :goto_1
    invoke-virtual {p0}, Lcom/youku/service/push/activity/EmptyActivity;->finish()V

    goto :goto_0

    .line 60
    :cond_2
    const-class v0, Lcom/youku/service/push/service/StartActivityService;

    invoke-virtual {v6, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p0, v6}, Lcom/youku/service/push/activity/EmptyActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 75
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 70
    return-void
.end method
