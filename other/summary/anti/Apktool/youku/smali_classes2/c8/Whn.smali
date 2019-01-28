.class public Lc8/Whn;
.super Ljava/lang/Object;
.source "ForceNotificationUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "YKPush.force_notification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    :cond_0
    :goto_0
    return v2

    .line 244
    :cond_1
    const/4 v1, 0x0

    .line 246
    .local v1, "packageinfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 252
    :goto_1
    if-eqz v1, :cond_0

    .line 255
    const/4 v2, 0x1

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "YKPush.force_notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check install error,packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 249
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YKPush.force_notification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "check install error,packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 189
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    :goto_0
    return-object v0

    .line 194
    :cond_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 195
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 197
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "u":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decode image error, url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getDeletePendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Lcom/youku/service/push/PushMsg;

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x34400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    const-string/jumbo v2, "PushMsg"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 266
    const-class v2, Lcom/youku/service/push/service/DeletePushService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_del"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 269
    .local v1, "p":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static getIconNotification(Landroid/content/Context;Lcom/youku/service/push/bean/ForceMsg;)Landroid/app/Notification;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Lcom/youku/service/push/bean/ForceMsg;
    .annotation build Lc8/N;
        api = 0x17
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->smallIconUrl:Ljava/lang/String;

    invoke-static {v7}, Lc8/Whn;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 88
    .local v5, "smallIconBitmap":Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 89
    const-string/jumbo v7, "YKPush.force_notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get small icon error,url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/youku/service/push/bean/ForceMsg;->smallIconUrl:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-object v6

    .line 93
    :cond_0
    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->icon:Ljava/lang/String;

    invoke-static {v7}, Lc8/Whn;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 94
    .local v3, "iconBitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 95
    const-string/jumbo v7, "YKPush.force_notification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "get icon error,url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/youku/service/push/bean/ForceMsg;->icon:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-static {v5}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/high16 v7, -0x10000

    .line 101
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 102
    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->content:Ljava/lang/String;

    .line 103
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->desc:Ljava/lang/String;

    .line 104
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->title:Ljava/lang/String;

    .line 105
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, 0x1

    .line 106
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v7, -0x1

    .line 107
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 109
    invoke-static {p0, p1}, Lc8/Whn;->getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/bean/ForceMsg;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 110
    invoke-static {p0, p1}, Lc8/Whn;->getDeletePendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 112
    .local v1, "builder":Landroid/app/Notification$Builder;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_2

    iget-object v6, p1, Lcom/youku/service/push/bean/ForceMsg;->img:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 114
    :try_start_0
    iget-object v6, p1, Lcom/youku/service/push/bean/ForceMsg;->img:Ljava/lang/String;

    invoke-static {v6}, Lc8/Whn;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 116
    new-instance v6, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->content:Ljava/lang/String;

    .line 117
    invoke-virtual {v6, v7}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->desc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v4

    .line 118
    .local v4, "pictureStyle":Landroid/app/Notification$BigPictureStyle;
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "pictureStyle":Landroid/app/Notification$BigPictureStyle;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    goto/16 :goto_0

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bigimage style decode error,url="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/youku/service/push/bean/ForceMsg;->img:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static getNoIconNotification(Landroid/content/Context;Lcom/youku/service/push/bean/ForceMsg;)Landroid/app/Notification;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Lcom/youku/service/push/bean/ForceMsg;

    .prologue
    .line 129
    iget-object v5, p1, Lcom/youku/service/push/bean/ForceMsg;->icon:Ljava/lang/String;

    invoke-static {v5}, Lc8/Whn;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 130
    .local v3, "iconBitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_0

    .line 131
    const-string/jumbo v5, "YKPush.force_notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no small,get icon error,url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->icon:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v5, 0x0

    .line 164
    :goto_0
    return-object v5

    .line 135
    :cond_0
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v5, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v6, Lcom/youku/phone/R$drawable;->push_icon_netease_small:I

    .line 137
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/high16 v6, -0x10000

    .line 138
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 139
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/service/push/bean/ForceMsg;->content:Ljava/lang/String;

    .line 141
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/service/push/bean/ForceMsg;->desc:Ljava/lang/String;

    .line 143
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/service/push/bean/ForceMsg;->title:Ljava/lang/String;

    .line 144
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x1

    .line 145
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, -0x1

    .line 146
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 148
    invoke-static {p0, p1}, Lc8/Whn;->getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/bean/ForceMsg;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 149
    invoke-static {p0, p1}, Lc8/Whn;->getDeletePendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 151
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1

    iget-object v5, p1, Lcom/youku/service/push/bean/ForceMsg;->img:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 153
    :try_start_0
    iget-object v5, p1, Lcom/youku/service/push/bean/ForceMsg;->img:Ljava/lang/String;

    invoke-static {v5}, Lc8/Whn;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 154
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 155
    new-instance v5, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v5}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    iget-object v6, p1, Lcom/youku/service/push/bean/ForceMsg;->content:Ljava/lang/String;

    .line 156
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v5

    iget-object v6, p1, Lcom/youku/service/push/bean/ForceMsg;->desc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v4

    .line 157
    .local v4, "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    :cond_1
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "YKPush.force_notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bigstyle bitmap decode error,url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/youku/service/push/bean/ForceMsg;->img:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/bean/ForceMsg;)Landroid/app/PendingIntent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Lcom/youku/service/push/bean/ForceMsg;

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x34400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 175
    const-string/jumbo v2, "force_msg"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v2, "from"

    const-string/jumbo v3, "push"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string/jumbo v2, "action"

    const v3, 0x101002d

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 178
    const-class v2, Lcom/youku/service/push/service/StartActivityService;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 179
    iget-object v2, p1, Lcom/youku/service/push/bean/ForceMsg;->mid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 185
    .local v1, "p":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private static parseMsg(Ljava/lang/String;)Lcom/youku/service/push/bean/ForceMsg;
    .locals 6
    .param p0, "jsonData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 205
    new-instance v2, Lcom/youku/service/push/bean/ForceMsg;

    invoke-direct {v2}, Lcom/youku/service/push/bean/ForceMsg;-><init>()V

    .line 206
    .local v2, "msg":Lcom/youku/service/push/bean/ForceMsg;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 236
    .end local v2    # "msg":Lcom/youku/service/push/bean/ForceMsg;
    :goto_0
    return-object v2

    .line 212
    .restart local v2    # "msg":Lcom/youku/service/push/bean/ForceMsg;
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .local v1, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "mid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->mid:Ljava/lang/String;

    .line 226
    const-string/jumbo v3, "img"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->img:Ljava/lang/String;

    .line 227
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->packageName:Ljava/lang/String;

    .line 228
    const-string/jumbo v3, "icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->icon:Ljava/lang/String;

    .line 229
    const-string/jumbo v3, "tiny_icon"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->smallIconUrl:Ljava/lang/String;

    .line 230
    const-string/jumbo v3, "title"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->title:Ljava/lang/String;

    .line 231
    const-string/jumbo v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/youku/service/push/bean/ForceMsg;->type:I

    .line 232
    const-string/jumbo v3, "content"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->content:Ljava/lang/String;

    .line 233
    const-string/jumbo v3, "desc"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->desc:Ljava/lang/String;

    .line 234
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/youku/service/push/bean/ForceMsg;->url:Ljava/lang/String;

    goto :goto_0

    .line 213
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v4, "PushMsg"

    const-string/jumbo v5, "PushMsg#parse()"

    invoke-static {v4, v5, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 215
    goto :goto_0
.end method

.method public static showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "jsonData"    # Ljava/lang/String;
    .param p2, "agooId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 49
    invoke-static {p1}, Lc8/Whn;->parseMsg(Ljava/lang/String;)Lcom/youku/service/push/bean/ForceMsg;

    move-result-object v1

    .line 51
    .local v1, "msg":Lcom/youku/service/push/bean/ForceMsg;
    if-nez v1, :cond_0

    .line 52
    const-string/jumbo v5, "YKPush.force_notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show notification error,msg is error,json="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return v4

    .line 56
    :cond_0
    iput-object p2, v1, Lcom/youku/service/push/bean/ForceMsg;->agooID:Ljava/lang/String;

    .line 61
    iget-object v5, v1, Lcom/youku/service/push/bean/ForceMsg;->packageName:Ljava/lang/String;

    invoke-static {p0, v5}, Lc8/Whn;->checkInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    const-string/jumbo v5, "YKPush.force_notification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show notification error,no install app,package name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/youku/service/push/bean/ForceMsg;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_2

    .line 68
    invoke-static {p0, v1}, Lc8/Whn;->getIconNotification(Landroid/content/Context;Lcom/youku/service/push/bean/ForceMsg;)Landroid/app/Notification;

    move-result-object v2

    .line 73
    .local v2, "n":Landroid/app/Notification;
    :goto_1
    :try_start_0
    const-string/jumbo v5, "notification"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 75
    .local v3, "nm":Landroid/app/NotificationManager;
    const/16 v5, 0x4c6

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 76
    const/16 v5, 0x4c6

    invoke-virtual {v3, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    const/4 v4, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "n":Landroid/app/Notification;
    .end local v3    # "nm":Landroid/app/NotificationManager;
    :cond_2
    invoke-static {p0, v1}, Lc8/Whn;->getNoIconNotification(Landroid/content/Context;Lcom/youku/service/push/bean/ForceMsg;)Landroid/app/Notification;

    move-result-object v2

    .restart local v2    # "n":Landroid/app/Notification;
    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "YKPush.force_notification"

    const-string/jumbo v6, "show notification error"

    invoke-static {v5, v6, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
