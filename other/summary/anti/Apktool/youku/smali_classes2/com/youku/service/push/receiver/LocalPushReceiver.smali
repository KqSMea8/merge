.class public Lcom/youku/service/push/receiver/LocalPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocalPushReceiver.java"


# static fields
.field private static final DEFAULT_NOTIFY_INTERVAL:I = 0xf

.field private static final DISMISS_NOTIFICATION:Ljava/lang/String; = "com.youku.phone.localpush.dismiss"

.field private static final LOCAL_PUSH_TIME:Ljava/lang/String; = "local_push_time"

.field private static final LOCAL_REQUEST_CODE:I = 0xc0de

.field private static final NOTIFY_ID:I = 0x10ca1

.field private static final SHOW_PUSH:Ljava/lang/String; = "com.youku.phone.localpush.show"

.field private static final START_APP:Ljava/lang/String; = "com.youku.phone.localpush.start"

.field private static final TAG:Ljava/lang/String; = "YKPush.LocalPush"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelAlarm(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 104
    .local v0, "manager":Landroid/app/AlarmManager;
    const-string/jumbo v1, "com.youku.phone.localpush.show"

    invoke-static {p0, v1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 105
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v1

    const-string/jumbo v2, "local_push_time"

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v2, v4, v5}, Lc8/Gin;->savePreference(Ljava/lang/String;J)V

    .line 106
    return-void
.end method

.method private cancelNotification(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const-string/jumbo v1, "notification"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 146
    .local v0, "nm":Landroid/app/NotificationManager;
    const v1, 0x10ca1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 147
    return-void
.end method

.method private static getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/youku/service/push/receiver/LocalPushReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 110
    .local v0, "local":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const v1, 0xc0de

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static setLongTimeBackAlarm(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x5

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->setLongTimeBackAlarm(Landroid/content/Context;II)V

    .line 69
    return-void
.end method

.method public static setLongTimeBackAlarm(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 72
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 73
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->add(II)V

    .line 75
    invoke-static {p0, v0}, Lcom/youku/service/push/receiver/LocalPushReceiver;->setLongTimeBackAlarm(Landroid/content/Context;Ljava/util/Calendar;)V

    .line 76
    return-void
.end method

.method public static setLongTimeBackAlarm(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "triggerAtMillis"    # J

    .prologue
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLongTimeBackAlarm # alarmTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , currentTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    const-string/jumbo v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 92
    .local v0, "manager":Landroid/app/AlarmManager;
    const/4 v1, 0x0

    const-string/jumbo v2, "com.youku.phone.localpush.show"

    invoke-static {p0, v2}, Lcom/youku/service/push/receiver/LocalPushReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 93
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v1

    const-string/jumbo v2, "local_push_time"

    invoke-virtual {v1, v2, p1, p2}, Lc8/Gin;->savePreference(Ljava/lang/String;J)V

    .line 94
    return-void
.end method

.method public static setLongTimeBackAlarm(Landroid/content/Context;Ljava/util/Calendar;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 79
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->setLongTimeBackAlarm(Landroid/content/Context;J)V

    .line 80
    return-void
.end method

.method private static showNotification(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    const-string/jumbo v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 124
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v2, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/youku/phone/R$drawable;->push_icon_small:I

    .line 125
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 126
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/youku/phone/R$drawable;->push_icon_large:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->local_push_title:I

    .line 127
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$string;->local_push_text:I

    .line 128
    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 129
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v3, -0x1

    .line 130
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string/jumbo v3, "com.youku.phone.localpush.start"

    .line 131
    invoke-static {p0, v3}, Lcom/youku/service/push/receiver/LocalPushReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const-string/jumbo v3, "com.youku.phone.localpush.dismiss"

    .line 132
    invoke-static {p0, v3}, Lcom/youku/service/push/receiver/LocalPushReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->notification_empty_holder:I

    sget v4, Lcom/youku/phone/R$string;->close:I

    .line 133
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "com.youku.phone.localpush.dismiss"

    .line 134
    invoke-static {p0, v5}, Lcom/youku/service/push/receiver/LocalPushReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 133
    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$drawable;->notification_empty_holder:I

    sget v4, Lcom/youku/phone/R$string;->local_push_ok:I

    .line 136
    invoke-virtual {p0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const-string/jumbo v5, "com.youku.phone.localpush.start"

    .line 137
    invoke-static {p0, v5}, Lcom/youku/service/push/receiver/LocalPushReceiver;->getPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 136
    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 138
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const v2, 0x10ca1

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 140
    const-string/jumbo v2, "LocalPush\u5c55\u73b0"

    const-string/jumbo v3, "push\u680f"

    const/4 v4, 0x0

    const-string/jumbo v5, "localPush.localPushShow"

    invoke-static {v2, v3, v4, v5}, Lc8/Vhn;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method private static startApp(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lc8/cin;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    .local v0, "app":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 117
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "local push receive action "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 41
    invoke-static {}, Lc8/Gin;->getInstance()Lc8/Gin;

    move-result-object v1

    const-string/jumbo v4, "local_push_time"

    invoke-virtual {v1, v4}, Lc8/Gin;->getPreferenceLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 42
    .local v2, "pushTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SP LOCAL_PUSH_TIME "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 44
    invoke-static {p1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->setLongTimeBackAlarm(Landroid/content/Context;)V

    .line 65
    .end local v2    # "pushTime":J
    :cond_0
    :goto_0
    return-void

    .line 45
    .restart local v2    # "pushTime":J
    :cond_1
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 46
    invoke-static {p1, v2, v3}, Lcom/youku/service/push/receiver/LocalPushReceiver;->setLongTimeBackAlarm(Landroid/content/Context;J)V

    goto :goto_0

    .line 48
    .end local v2    # "pushTime":J
    :cond_2
    const-string/jumbo v1, "com.youku.phone.localpush.show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show pushTime "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    invoke-static {p1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->showNotification(Landroid/content/Context;)V

    .line 51
    invoke-static {p1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->setLongTimeBackAlarm(Landroid/content/Context;)V

    goto :goto_0

    .line 52
    :cond_3
    const-string/jumbo v1, "com.youku.phone.localpush.dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    invoke-direct {p0, p1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->cancelNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_4
    const-string/jumbo v1, "com.youku.phone.localpush.start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->cancelNotification(Landroid/content/Context;)V

    .line 59
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    invoke-static {p1}, Lcom/youku/service/push/receiver/LocalPushReceiver;->startApp(Landroid/content/Context;)V

    .line 62
    const-string/jumbo v1, "LocalPush\u70b9\u51fb"

    const-string/jumbo v4, "push\u680f"

    const/4 v5, 0x0

    const-string/jumbo v6, "localPush.localPushClick"

    invoke-static {v1, v4, v5, v6}, Lc8/Vhn;->TrackCommonClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0
.end method
