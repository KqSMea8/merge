.class public Lc8/zHd;
.super Lc8/iHd;
.source "NotificationStateMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/iHd",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/dHd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/iHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string/jumbo v0, "notification_extra_show_package_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "uploadPackageName":Ljava/lang/String;
    const-string/jumbo v0, "notification_extra_task_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 27
    .local v4, "taskId":Ljava/lang/String;
    const-string/jumbo v0, "notification_extra_seq_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 28
    .local v5, "seqId":Ljava/lang/String;
    const-string/jumbo v0, "notification_extra_device_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "deviceId":Ljava/lang/String;
    const-string/jumbo v0, "notification_extra_push_timestamp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "pushTimestamp":Ljava/lang/String;
    const-string/jumbo v0, "notification_state_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "notificationMessage":Ljava/lang/String;
    const-string/jumbo v0, "AbstractMessageHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "current taskId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " seqId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " deviceId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " packageName "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lc8/zHd;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v8

    .line 33
    .local v8, "messageV3":Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    new-instance v9, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    invoke-direct {v9, v8}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;-><init>(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 34
    .local v9, "notificationState":Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;
    const-string/jumbo v0, "flyme:notification_pkg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 35
    .local v10, "pkg":Ljava/lang/String;
    const-string/jumbo v0, "flyme:notification_id"

    const/4 v12, 0x0

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 36
    .local v7, "id":I
    const-string/jumbo v0, "flyme:notification_state"

    const/4 v12, 0x0

    invoke-virtual {p1, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 37
    .local v11, "state":I
    invoke-virtual {v9, v7}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->setNotificationId(I)V

    .line 38
    invoke-virtual {v9, v10}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->setNotificationPkg(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v9, v11}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->setState(I)V

    .line 40
    return-object v9
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lc8/zHd;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 58
    const v0, 0x8000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "start NotificationStateMessageHandler match"

    invoke-static {v0, v1}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "notification_state"

    .line 53
    invoke-virtual {p0, p1}, Lc8/zHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 52
    goto :goto_0
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;)V
    .locals 6
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    .prologue
    .line 63
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 65
    :pswitch_0
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "notification STATE_NOTIFICATION_SHOW_ACCESS_DENY"

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lc8/zHd;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static/range {v0 .. v5}, Lc8/FLd;->onNoShowPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :pswitch_1
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "notification STATE_NOTIFICATION_SHOW_INBOX"

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lc8/zHd;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;->getMessageV3()Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static/range {v0 .. v5}, Lc8/FLd;->onShowInBoxPushMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :pswitch_2
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "notification STATE_NOTIFICATION_SHOW_NORMAL"

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :pswitch_3
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "notification STATE_NOTIFICATION_SHOW_FLOAT"

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 18
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;

    invoke-virtual {p0, p1}, Lc8/zHd;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/impl/model/NotificationState;)V

    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .locals 0

    .prologue
    .line 18
    return-void
.end method
