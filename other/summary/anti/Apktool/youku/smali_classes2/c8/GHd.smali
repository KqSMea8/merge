.class public Lc8/GHd;
.super Lc8/kHd;
.source "ScheduleNotificationHandler.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/dHd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/kHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const-string/jumbo v0, "extra_app_push_schedule_notification_message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    return-object v0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lc8/GHd;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 60
    const/16 v0, 0x2000

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "start ScheduleNotificationHandler match"

    invoke-static {v0, v1}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string/jumbo v0, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "schedule_notification"

    .line 45
    invoke-virtual {p0, p1}, Lc8/GHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_0
.end method

.method protected onAfterEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 6
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 55
    invoke-virtual {p0}, Lc8/GHd;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lc8/FLd;->onShowPushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method protected bridge synthetic onAfterEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/GHd;->onAfterEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 2
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 50
    const-string/jumbo v0, "AbstractMessageHandler"

    const-string/jumbo v1, "ScheduleNotificationHandler dont repeat upload receiver push event"

    invoke-static {v0, v1}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/GHd;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected scheduleNotificationStatus(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)I
    .locals 1
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic scheduleNotificationStatus(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 17
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/GHd;->scheduleNotificationStatus(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)I

    move-result v0

    return v0
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Lc8/WJd;)V
    .locals 0
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .param p2, "pushNotification"    # Lc8/WJd;

    .prologue
    .line 30
    if-eqz p2, :cond_0

    .line 31
    invoke-interface {p2, p1}, Lc8/WJd;->show(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 33
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1, p2}, Lc8/GHd;->unsafeSend(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Lc8/WJd;)V

    return-void
.end method
