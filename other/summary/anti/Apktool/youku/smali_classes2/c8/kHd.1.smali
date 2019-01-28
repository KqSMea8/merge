.class public Lc8/kHd;
.super Lc8/iHd;
.source "MessageV3Handler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/iHd",
        "<",
        "Lcom/meizu/cloud/pushsdk/handler/MessageV3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/dHd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "abstractAppLogicListener"    # Lc8/dHd;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lc8/iHd;-><init>(Landroid/content/Context;Lc8/dHd;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected canSendMessage(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z
    .locals 3
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 124
    const/4 v0, 0x1

    .line 125
    .local v0, "flag":Z
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUriPackageName()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "pk":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 127
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lc8/DLd;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 129
    :cond_0
    return v0
.end method

.method protected bridge synthetic canSendMessage(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/kHd;->canSendMessage(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Z

    move-result v0

    return v0
.end method

.method protected getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    const-string/jumbo v0, "notification_show_v3"

    invoke-virtual {p0, p1}, Lc8/kHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const-string/jumbo v0, "pushMessage"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "pushMessage":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p0, p1}, Lc8/kHd;->getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {p0, p1}, Lc8/kHd;->getPushTimestamp(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {p0, p1}, Lc8/kHd;->getDeviceId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 60
    invoke-virtual {p0, p1}, Lc8/kHd;->getTaskId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-virtual {p0, p1}, Lc8/kHd;->getSeqId(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 56
    invoke-static/range {v0 .. v6}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v0

    return-object v0

    .line 54
    .end local v6    # "pushMessage":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "pushMessage":Ljava/lang/String;
    goto :goto_0
.end method

.method protected bridge synthetic getMessage(Landroid/content/Intent;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lc8/kHd;->getMessage(Landroid/content/Intent;)Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    move-result-object v0

    return-object v0
.end method

.method public getProcessorType()I
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x4

    return v0
.end method

.method public messageMatch(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 188
    const-string/jumbo v3, "AbstractMessageHandler"

    const-string/jumbo v4, "start MessageV3Handler match"

    invoke-static {v3, v4}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p1}, Lc8/kHd;->getPushServiceDefaultPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lc8/kHd;->canReceiveMessage(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 192
    :cond_1
    const-string/jumbo v3, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "notification_show_v3"

    .line 193
    invoke-virtual {p0, p1}, Lc8/kHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 194
    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0, p1}, Lc8/kHd;->getIntentMethod(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    const-string/jumbo v3, "message"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "cloudPushMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v0}, Lc8/kHd;->isNotificationJson(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    const-string/jumbo v1, "AbstractMessageHandler"

    const-string/jumbo v3, "old cloud notification message"

    invoke-static {v1, v3}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 202
    goto :goto_0
.end method

.method protected onAfterEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 6
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 220
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

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

    .line 221
    return-void
.end method

.method protected bridge synthetic onAfterEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/kHd;->onAfterEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 6
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 215
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

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

    invoke-static/range {v0 .. v5}, Lc8/FLd;->onReceivePushMessageEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected bridge synthetic onBeforeEvent(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/kHd;->onBeforeEvent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected onCreateNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lc8/WJd;
    .locals 6
    .param p1, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 75
    new-instance v3, Lc8/XJd;

    invoke-direct {v3}, Lc8/XJd;-><init>()V

    .line 76
    .local v3, "pushNotificationBuilder":Lc8/XJd;
    invoke-virtual {p0}, Lc8/kHd;->appLogicListener()Lc8/dHd;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc8/dHd;->onUpdateNotificationBuilder(Lc8/XJd;)V

    .line 77
    const/4 v2, 0x0

    .line 78
    .local v2, "pushNotification":Lc8/WJd;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getBaseStyle()I

    move-result v0

    .line 80
    .local v0, "baseStyle":I
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->FLYME:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->getCode()I

    move-result v4

    if-ne v4, v0, :cond_5

    .line 81
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getInnerStyle()I

    move-result v1

    .line 82
    .local v1, "innerStyle":I
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_STANDARD:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_2

    .line 83
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Standard Notification with Expandable disable"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    new-instance v2, Lc8/gKd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/gKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .line 115
    .end local v0    # "baseStyle":I
    .end local v1    # "innerStyle":I
    .restart local v2    # "pushNotification":Lc8/WJd;
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 116
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "use standard v2 notification"

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    new-instance v2, Lc8/YJd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/YJd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .line 119
    .restart local v2    # "pushNotification":Lc8/WJd;
    :cond_1
    return-object v2

    .line 85
    .restart local v0    # "baseStyle":I
    .restart local v1    # "innerStyle":I
    :cond_2
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_TEXT:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_3

    .line 86
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Standard Notification with Expandable Text"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Lc8/fKd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/fKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .restart local v2    # "pushNotification":Lc8/WJd;
    goto :goto_0

    .line 88
    :cond_3
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_PIC:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_4

    .line 89
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Standard Notification with Expandable Picture"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v2, Lc8/eKd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/eKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .restart local v2    # "pushNotification":Lc8/WJd;
    goto :goto_0

    .line 91
    :cond_4
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_VIDEO:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 92
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Flyme Video notification"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v2, Lc8/dKd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/dKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .restart local v2    # "pushNotification":Lc8/WJd;
    goto :goto_0

    .line 95
    .end local v1    # "innerStyle":I
    :cond_5
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->PURE_PICTURE:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->getCode()I

    move-result v4

    if-ne v4, v0, :cond_6

    .line 96
    new-instance v2, Lc8/VJd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/VJd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .line 97
    .restart local v2    # "pushNotification":Lc8/WJd;
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Pure Picture Notification"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    :cond_6
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->ANDROID:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/BaseStyleModel;->getCode()I

    move-result v4

    if-ne v4, v0, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getInnerStyle()I

    move-result v1

    .line 100
    .restart local v1    # "innerStyle":I
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_STANDARD:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_7

    .line 101
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Android  Notification with Expandable disable"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v2, Lc8/bKd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/bKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .restart local v2    # "pushNotification":Lc8/WJd;
    goto/16 :goto_0

    .line 103
    :cond_7
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_TEXT:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_8

    .line 104
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Android  Notification with Expandable Text"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v2, Lc8/aKd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/aKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .restart local v2    # "pushNotification":Lc8/WJd;
    goto/16 :goto_0

    .line 106
    :cond_8
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_PIC:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_9

    .line 107
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Android  Notification with Expandable Picture"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v2, Lc8/ZJd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/ZJd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .restart local v2    # "pushNotification":Lc8/WJd;
    goto/16 :goto_0

    .line 109
    :cond_9
    sget-object v4, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_VIDEO:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 110
    const-string/jumbo v4, "AbstractMessageHandler"

    const-string/jumbo v5, "show Flyme Video notification"

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v2, Lc8/dKd;

    .end local v2    # "pushNotification":Lc8/WJd;
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lc8/dKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .restart local v2    # "pushNotification":Lc8/WJd;
    goto/16 :goto_0
.end method

.method protected bridge synthetic onCreateNotification(Ljava/lang/Object;)Lc8/WJd;
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/kHd;->onCreateNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Lc8/WJd;

    move-result-object v0

    return-object v0
.end method

.method protected scheduleNotificationStatus(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)I
    .locals 6
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "flag":I
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->isTimeDisplay()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 149
    :cond_0
    :goto_0
    return v0

    .line 138
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->getEndShowTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "schedule notification expire"

    const/16 v3, 0x898

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lc8/FLd;->notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->getStartShowTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 142
    const/4 v0, 0x2

    .line 143
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "schedule notification on time"

    const/16 v3, 0x899

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lc8/FLd;->notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_3
    const/4 v0, 0x3

    .line 146
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "schedule notification delay"

    const/16 v3, 0x89a

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lc8/FLd;->notificationEvent(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic scheduleNotificationStatus(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/kHd;->scheduleNotificationStatus(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)I

    move-result v0

    return v0
.end method

.method protected scheduleShowNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 14
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 154
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 155
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v9

    const-class v10, Lcom/meizu/cloud/pushsdk/NotificationService;

    invoke-direct {v4, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "custom://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v9, "command_type"

    const-string/jumbo v10, "reflect_receiver"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v9, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v9, "extra_app_push_schedule_notification_message"

    invoke-virtual {v4, v9, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string/jumbo v9, "method"

    const-string/jumbo v10, "schedule_notification"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v9, v10, v4, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 164
    .local v2, "alarmIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmTimeDisplaySetting()Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;

    move-result-object v9

    invoke-virtual {v9}, Lcom/meizu/cloud/pushsdk/notification/model/TimeDisplaySetting;->getStartShowTime()Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "time":Ljava/lang/String;
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v5, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v7, 0x0

    .line 168
    .local v7, "showTime":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 169
    new-instance v6, Ljava/util/Date;

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 170
    .local v6, "showDate":Ljava/util/Date;
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .end local v6    # "showDate":Ljava/util/Date;
    :cond_0
    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v0, v10, v12

    .line 174
    .local v0, "afterTime":J
    const-string/jumbo v9, "AbstractMessageHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "after "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v12, 0x3e8

    div-long v12, v0, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " seconds Notification AlarmManager execute At "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x13

    if-lt v9, v10, :cond_1

    .line 178
    const-string/jumbo v9, "AbstractMessageHandler"

    const-string/jumbo v10, "setAlarmManager setWindow ELAPSED_REALTIME_WAKEUP"

    invoke-static {v9, v10}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const/4 v9, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long/2addr v10, v0

    invoke-virtual {v3, v9, v10, v11, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v9, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    add-long/2addr v10, v0

    invoke-virtual {v3, v9, v10, v11, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected bridge synthetic scheduleShowNotification(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1}, Lc8/kHd;->scheduleShowNotification(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    return-void
.end method

.method protected unsafeSend(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Lc8/WJd;)V
    .locals 6
    .param p1, "message"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .param p2, "pushNotification"    # Lc8/WJd;

    .prologue
    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-interface {p2, p1}, Lc8/WJd;->show(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 69
    invoke-virtual {p0}, Lc8/kHd;->appLogicListener()Lc8/dHd;

    move-result-object v0

    invoke-virtual {p0}, Lc8/kHd;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getWebUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getParamsMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lc8/kHd;->selfDefineContentString(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/dHd;->onNotificationArrived(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method protected bridge synthetic unsafeSend(Ljava/lang/Object;Lc8/WJd;)V
    .locals 0

    .prologue
    .line 41
    check-cast p1, Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    invoke-virtual {p0, p1, p2}, Lc8/kHd;->unsafeSend(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Lc8/WJd;)V

    return-void
.end method
