.class public abstract Lc8/UJd;
.super Ljava/lang/Object;
.source "AbstractPushNotification.java"

# interfaces
.implements Lc8/WJd;


# instance fields
.field protected context:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field private notificationManager:Landroid/app/NotificationManager;

.field protected pushNotificationBuilder:Lc8/XJd;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lc8/XJd;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushNotificationBuilder"    # Lc8/XJd;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lc8/UJd;->pushNotificationBuilder:Lc8/XJd;

    .line 47
    iput-object p1, p0, Lc8/UJd;->context:Landroid/content/Context;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/UJd;->handler:Landroid/os/Handler;

    .line 49
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lc8/UJd;->notificationManager:Landroid/app/NotificationManager;

    .line 50
    return-void
.end method

.method private loadSmallIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 7
    .param p1, "despackageName"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 265
    const/4 v2, 0x0

    .line 267
    .local v2, "smallIcon":Landroid/graphics/drawable/Icon;
    :try_start_0
    iget-object v4, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 268
    .local v1, "res":Landroid/content/res/Resources;
    const-string/jumbo v4, "mz_push_notification_small_icon"

    const-string/jumbo v5, "drawable"

    invoke-virtual {v1, v4, v5, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 269
    .local v3, "titleId":I
    if-eqz v3, :cond_0

    .line 270
    const-string/jumbo v4, "AbstractPushNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " smallIcon success resId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {p1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 276
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v3    # "titleId":I
    :cond_0
    :goto_0
    return-object v2

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AbstractPushNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot load smallIcon form package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " Error message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected advanceSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 8
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 209
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v0

    .line 210
    .local v0, "advanceSetting":Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;
    if-eqz v0, :cond_5

    .line 211
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 212
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->isVibrate()Z

    move-result v4

    .line 213
    .local v4, "vibrate":Z
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->isLights()Z

    move-result v2

    .line 214
    .local v2, "lights":Z
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->isSound()Z

    move-result v3

    .line 215
    .local v3, "sound":Z
    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-eqz v3, :cond_4

    .line 216
    :cond_0
    const/4 v1, 0x0

    .line 217
    .local v1, "defaultType":I
    if-eqz v4, :cond_1

    .line 218
    or-int/lit8 v1, v1, 0x2

    .line 220
    :cond_1
    if-eqz v2, :cond_2

    .line 221
    or-int/lit8 v1, v1, 0x4

    .line 225
    :cond_2
    if-eqz v3, :cond_3

    .line 226
    or-int/lit8 v1, v1, 0x1

    .line 228
    :cond_3
    const-string/jumbo v5, "AbstractPushNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "current notification type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 233
    .end local v1    # "defaultType":I
    .end local v2    # "lights":Z
    .end local v3    # "sound":Z
    .end local v4    # "vibrate":Z
    :cond_4
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->isClearNotification()Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 234
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->isHeadUpNotification()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 235
    invoke-static {}, Lc8/CLd;->isSupportNotificationBuild()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 236
    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 245
    :cond_5
    return-void

    .line 233
    :cond_6
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected appIconSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 82
    return-void
.end method

.method protected basicSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .param p3, "clickIntent"    # Landroid/app/PendingIntent;
    .param p4, "deleteIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x1

    .line 177
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 178
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 179
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 180
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 182
    invoke-static {}, Lc8/CLd;->isSupportSendNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 185
    :cond_0
    invoke-static {}, Lc8/CLd;->isSupportSetDrawableSmallIcon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lc8/UJd;->loadSmallIcon(Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    .line 187
    .local v0, "smallIcon":Landroid/graphics/drawable/Icon;
    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 199
    .end local v0    # "smallIcon":Landroid/graphics/drawable/Icon;
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 200
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 201
    return-void

    .line 190
    .restart local v0    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_1
    const-string/jumbo v1, "AbstractPushNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cannot get "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " smallIcon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->stat_sys_third_app_notify(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 195
    .end local v0    # "smallIcon":Landroid/graphics/drawable/Icon;
    :cond_2
    iget-object v1, p0, Lc8/UJd;->pushNotificationBuilder:Lc8/XJd;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/UJd;->pushNotificationBuilder:Lc8/XJd;

    invoke-virtual {v1}, Lc8/XJd;->getmStatusbarIcon()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/UJd;->pushNotificationBuilder:Lc8/XJd;

    .line 196
    invoke-virtual {v1}, Lc8/XJd;->getmStatusbarIcon()I

    move-result v1

    .line 195
    :goto_1
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 196
    :cond_3
    iget-object v1, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->stat_sys_third_app_notify(Landroid/content/Context;)I

    move-result v1

    goto :goto_1
.end method

.method protected buildBigContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 0
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 74
    return-void
.end method

.method protected buildContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 0
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 67
    return-void
.end method

.method protected buildExpandableContent(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 60
    return-void
.end method

.method protected construtNotificationFinal(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 3
    .param p1, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .param p2, "clickIntent"    # Landroid/app/PendingIntent;
    .param p3, "deleteIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 92
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {p0, v0, p1, p2, p3}, Lc8/UJd;->basicSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 94
    invoke-virtual {p0, v0, p1}, Lc8/UJd;->advanceSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 96
    invoke-virtual {p0, v0, p1}, Lc8/UJd;->appIconSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 97
    invoke-virtual {p0, v0, p1}, Lc8/UJd;->buildExpandableContent(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 99
    invoke-static {}, Lc8/CLd;->isSupportNotificationBuild()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 104
    .local v1, "notification":Landroid/app/Notification;
    :goto_0
    invoke-virtual {p0, v1, p1}, Lc8/UJd;->buildContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 105
    invoke-virtual {p0, v1, p1}, Lc8/UJd;->buildBigContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 106
    return-object v1

    .line 102
    .end local v1    # "notification":Landroid/app/Notification;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_0
.end method

.method protected createClickIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 115
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 116
    .local v2, "serviceClickIntent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 117
    const-string/jumbo v3, "pushMessage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v3, "method"

    const-string/jumbo v4, "private"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v3, p0, Lc8/UJd;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/DLd;->findReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "messageReceiver":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string/jumbo v3, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lc8/UJd;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 124
    .local v0, "clickPendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method protected createDeleteIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 133
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v2, "serviceDeleteIntent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 136
    const-string/jumbo v3, "pushMessage"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    const-string/jumbo v3, "method"

    const-string/jumbo v4, "notification_delete"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v3, p0, Lc8/UJd;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/DLd;->findReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "messageReceiver":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string/jumbo v3, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v3, p0, Lc8/UJd;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 142
    .local v0, "deletePendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method protected createStateIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 151
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v2, "serviceStateIntent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v3, "notification_state_message"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getNotificationMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    const-string/jumbo v3, "notification_extra_task_id"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v3, "notification_extra_seq_id"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string/jumbo v3, "notification_extra_device_id"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string/jumbo v3, "notification_extra_push_timestamp"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    const-string/jumbo v3, "notification_extra_show_package_name"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string/jumbo v3, "method"

    const-string/jumbo v4, "notification_state"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v3, p0, Lc8/UJd;->context:Landroid/content/Context;

    const-string/jumbo v4, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/DLd;->findReceiver(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "messageReceiver":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v3, "com.meizu.flyme.push.intent.MESSAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    iget-object v3, p0, Lc8/UJd;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 165
    .local v0, "deletePendingIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method protected dismissFloatNotification(Landroid/app/NotificationManager;ILcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 8
    .param p1, "notificationManager"    # Landroid/app/NotificationManager;
    .param p2, "notificationId"    # I
    .param p3, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    const/4 v5, 0x0

    .line 384
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v0

    .line 385
    .local v0, "advanceSetting":Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;
    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->isHeadUpNotification()Z

    move-result v2

    .line 387
    .local v2, "isFloatNotification":Z
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->isClearNotification()Z

    move-result v1

    .line 388
    .local v1, "isClearNotification":Z
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 389
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->setHeadUpNotification(Z)V

    .line 390
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setSound(Z)V

    .line 391
    invoke-virtual {p3}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmAdvanceSetting()Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/AdvanceSetting;->getNotifyType()Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/meizu/cloud/pushsdk/notification/model/NotifyType;->setVibrate(Z)V

    .line 392
    invoke-virtual {p0, p3}, Lc8/UJd;->createClickIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {p0, p3}, Lc8/UJd;->createDeleteIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {p0, p3, v4, v5}, Lc8/UJd;->construtNotificationFinal(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v3

    .line 394
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lc8/UJd;->handler:Landroid/os/Handler;

    new-instance v5, Lc8/TJd;

    invoke-direct {v5, p0, p1, p2, v3}, Lc8/TJd;-><init>(Lc8/UJd;Landroid/app/NotificationManager;ILandroid/app/Notification;)V

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 402
    .end local v1    # "isClearNotification":Z
    .end local v2    # "isFloatNotification":Z
    .end local v3    # "notification":Landroid/app/Notification;
    :cond_0
    return-void
.end method

.method public getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 286
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 287
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 288
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 294
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    .local v0, "appIcon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 289
    .end local v0    # "appIcon":Landroid/graphics/Bitmap;
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :catch_0
    move-exception v2

    .line 290
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "AbstractPushNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getappicon error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 292
    .restart local v1    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "appIcon":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-static {p1}, Lc8/HHd;->get(Ljava/lang/String;)Lc8/SHd;

    move-result-object v2

    invoke-virtual {v2}, Lc8/SHd;->build()Lc8/VHd;

    move-result-object v0

    .line 249
    .local v0, "request":Lc8/VHd;
    invoke-virtual {v0}, Lc8/VHd;->executeForBitmap()Lc8/WHd;

    move-result-object v1

    .line 250
    .local v1, "response":Lc8/WHd;, "Lcom/meizu/cloud/pushsdk/networking/common/ANResponse<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Lc8/WHd;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 251
    const-string/jumbo v3, "AbstractPushNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ANRequest On other Thread down load largeIcon "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "image "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "success"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1}, Lc8/WHd;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 255
    :goto_1
    return-object v2

    .line 251
    :cond_0
    const-string/jumbo v2, "fail"

    goto :goto_0

    .line 254
    :cond_1
    const-string/jumbo v2, "AbstractPushNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ANRequest On other Thread down load largeIcon "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "image fail"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x0

    goto :goto_1
.end method

.method protected getFlymeGreenNotificationSetting(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Ljava/lang/String;
    .locals 6
    .param p1, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 324
    .local v1, "flymeNotificationSetting":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getNotificationMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 325
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getNotificationMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 326
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "extra"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "fns"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-string/jumbo v3, "AbstractPushNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current notification setting is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    return-object v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AbstractPushNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parse flyme notifification setting error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xGd;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected isOnMainThread()Z
    .locals 2

    .prologue
    .line 301
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 5
    .param p1, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Lc8/UJd;->createClickIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, p1}, Lc8/UJd;->createDeleteIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lc8/UJd;->construtNotificationFinal(Lcom/meizu/cloud/pushsdk/handler/MessageV3;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 342
    .local v0, "notification":Landroid/app/Notification;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lc8/pKd;->setInternalApp(Landroid/app/Notification;Z)V

    .line 344
    invoke-virtual {p0, p1}, Lc8/UJd;->createStateIntent(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {v0, v2}, Lc8/pKd;->setReplyIntent(Landroid/app/Notification;Landroid/app/PendingIntent;)V

    .line 346
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.originalPackageName"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.flymeNotificationSetting"

    invoke-virtual {p0, p1}, Lc8/UJd;->getFlymeGreenNotificationSetting(Lcom/meizu/cloud/pushsdk/handler/MessageV3;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "notification_extra_task_id"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "notification_extra_seq_id"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getSeqId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "notification_extra_device_id"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v2, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "notification_extra_push_timestamp"

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPushTimestamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    .line 356
    .local v1, "notifyId":I
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->isDiscard()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    iget-object v2, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ELd;->getDiscardNotificationId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 358
    iget-object v2, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lc8/ELd;->putDiscardNotificationIdByPackageName(Landroid/content/Context;Ljava/lang/String;I)V

    .line 359
    const-string/jumbo v2, "AbstractPushNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no notification show so put notification id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :cond_0
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    iget-object v2, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ELd;->getDiscardNotificationTaskId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 363
    iget-object v2, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lc8/ELd;->putDiscardNotificationTaskId(Landroid/content/Context;Ljava/lang/String;I)V

    .line 374
    :cond_1
    :goto_0
    const-string/jumbo v2, "AbstractPushNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " notificationId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_2
    iget-object v2, p0, Lc8/UJd;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 377
    iget-object v2, p0, Lc8/UJd;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v2, v1, p1}, Lc8/UJd;->dismissFloatNotification(Landroid/app/NotificationManager;ILcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 378
    :goto_1
    return-void

    .line 365
    :cond_3
    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ELd;->getDiscardNotificationTaskId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 366
    const-string/jumbo v2, "AbstractPushNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " taskid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " dont show notification"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 369
    :cond_4
    iget-object v2, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTaskId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v3, v4}, Lc8/ELd;->putDiscardNotificationTaskId(Landroid/content/Context;Ljava/lang/String;I)V

    .line 370
    iget-object v2, p0, Lc8/UJd;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ELd;->getDiscardNotificationId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_0
.end method
