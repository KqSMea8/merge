.class public Lc8/Thn;
.super Landroid/os/AsyncTask;
.source "DataProcessingAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_OWNER:Ljava/lang/String; = "com.youku.phone"

.field private static final TAG:Ljava/lang/String; = "YKPush.DataProcessingAsyncTask"


# instance fields
.field private agooId:Ljava/lang/String;

.field private msg:Ljava/lang/String;

.field private notiType:Ljava/lang/String;

.field private pushOwner:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "notiType"    # Ljava/lang/String;
    .param p4, "agooId"    # Ljava/lang/String;
    .param p5, "pushOwner"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 52
    iput-object p1, p0, Lc8/Thn;->msg:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lc8/Thn;->source:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lc8/Thn;->notiType:Ljava/lang/String;

    .line 55
    iput-object p4, p0, Lc8/Thn;->agooId:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lc8/Thn;->pushOwner:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static dispatchPushMsg(Landroid/content/Intent;)V
    .locals 10
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 488
    if-nez p0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 492
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 495
    const-string/jumbo v8, "push_msg_content"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 496
    .local v7, "content":[B
    if-eqz v7, :cond_0

    .line 497
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V

    .line 498
    .local v1, "msg":Ljava/lang/String;
    const-string/jumbo v8, "push_msg_source"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "source":Ljava/lang/String;
    const-string/jumbo v8, "push_notification_type"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "notiType":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 501
    const-string/jumbo v8, "com.youku.android.pushsdk.action.MESSAGE"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v3, "push_through"

    .line 504
    :cond_2
    :goto_1
    const-string/jumbo v8, "push_agoo_id"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "agooId":Ljava/lang/String;
    const-string/jumbo v8, "push_service_owner_key"

    const-string/jumbo v9, "com.youku.phone"

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 506
    .local v5, "owner":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "receive push msg from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Owner "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "new push msg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 508
    sget-object v8, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lc8/rZm;->getPushSwitch(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 509
    new-instance v0, Lc8/Thn;

    invoke-direct/range {v0 .. v5}, Lc8/Thn;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    .local v0, "task":Lc8/Thn;
    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v8, v9}, Lc8/Thn;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 501
    .end local v0    # "task":Lc8/Thn;
    .end local v4    # "agooId":Ljava/lang/String;
    .end local v5    # "owner":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "push_shown"

    goto :goto_1
.end method

.method private getBigViewNotification(Lcom/youku/service/push/PushMsg;)Landroid/app/Notification;
    .locals 14
    .param p1, "msg"    # Lcom/youku/service/push/PushMsg;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v10, Lcom/youku/phone/R$drawable;->push_icon_small:I

    .line 236
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 237
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/youku/phone/R$drawable;->push_icon_large:I

    invoke-static {v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    .line 239
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->desc:Ljava/lang/String;

    .line 241
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->title:Ljava/lang/String;

    .line 242
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    .line 243
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, -0x1

    .line 244
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "IMG"

    .line 245
    invoke-virtual {p0, v10, p1, v11}, Lc8/Thn;->getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    .line 246
    invoke-virtual {p0, v10, p1}, Lc8/Thn;->getDeletePendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 247
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget v9, p1, Lcom/youku/service/push/PushMsg;->priority:I

    const/4 v10, -0x2

    if-lt v9, v10, :cond_0

    iget v9, p1, Lcom/youku/service/push/PushMsg;->priority:I

    const/4 v10, 0x2

    if-gt v9, v10, :cond_0

    .line 248
    iget v9, p1, Lcom/youku/service/push/PushMsg;->priority:I

    invoke-virtual {v1, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 250
    :cond_0
    iget v9, p1, Lcom/youku/service/push/PushMsg;->type:I

    packed-switch v9, :pswitch_data_0

    .line 340
    :cond_1
    :goto_0
    :pswitch_0
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    return-object v9

    .line 255
    :pswitch_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_1

    .line 256
    iget-object v8, p1, Lcom/youku/service/push/PushMsg;->img:Ljava/lang/String;

    .line 257
    .local v8, "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 259
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 260
    .local v7, "u":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 261
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    .line 262
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->desc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v4

    .line 263
    .local v4, "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .end local v7    # "u":Ljava/net/URL;
    :cond_2
    :goto_1
    iget v9, p1, Lcom/youku/service/push/PushMsg;->type:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3

    iget v9, p1, Lcom/youku/service/push/PushMsg;->type:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_4

    .line 269
    :cond_3
    const-string/jumbo v6, ""

    .line 271
    .local v6, "push_play":Ljava/lang/CharSequence;
    :try_start_1
    sget-object v9, Lc8/KWc;->mContext:Landroid/content/Context;

    sget v10, Lcom/youku/phone/R$string;->push_play_immediately:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 275
    :goto_2
    sget v9, Lcom/youku/phone/R$drawable;->push_play:I

    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "PLAY"

    .line 276
    invoke-virtual {p0, v10, p1, v11}, Lc8/Thn;->getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 275
    invoke-virtual {v1, v9, v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 278
    .end local v6    # "push_play":Ljava/lang/CharSequence;
    :cond_4
    iget v9, p1, Lcom/youku/service/push/PushMsg;->type:I

    const/4 v10, 0x4

    if-ne v9, v10, :cond_1

    .line 279
    const-string/jumbo v5, ""

    .line 281
    .local v5, "push_download":Ljava/lang/CharSequence;
    :try_start_2
    sget-object v9, Lc8/KWc;->mContext:Landroid/content/Context;

    sget v10, Lcom/youku/phone/R$string;->push_cache_later_see:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 285
    :goto_3
    sget v9, Lcom/youku/phone/R$drawable;->push_download:I

    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "DOWNLOAD"

    .line 286
    invoke-virtual {p0, v10, p1, v11}, Lc8/Thn;->getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 285
    invoke-virtual {v1, v9, v5, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0

    .line 264
    .end local v5    # "push_download":Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "YKPush.DataProcessingAsyncTask"

    invoke-static {v9, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 272
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v6    # "push_play":Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    .line 273
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "YKPush.DataProcessingAsyncTask"

    invoke-static {v9, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 282
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "push_play":Ljava/lang/CharSequence;
    .restart local v5    # "push_download":Ljava/lang/CharSequence;
    :catch_2
    move-exception v2

    .line 283
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "YKPush.DataProcessingAsyncTask"

    invoke-static {v9, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 297
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "push_download":Ljava/lang/CharSequence;
    .end local v8    # "url":Ljava/lang/String;
    :pswitch_2
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_1

    .line 298
    iget-object v8, p1, Lcom/youku/service/push/PushMsg;->img:Ljava/lang/String;

    .line 299
    .restart local v8    # "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 301
    :try_start_3
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 302
    .restart local v7    # "u":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 303
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    .line 304
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->desc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v4

    .line 305
    .restart local v4    # "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 306
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .end local v7    # "u":Ljava/net/URL;
    :catch_3
    move-exception v2

    .line 307
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "YKPush.DataProcessingAsyncTask"

    invoke-static {v9, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 314
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "url":Ljava/lang/String;
    :pswitch_3
    iget-object v9, p1, Lcom/youku/service/push/PushMsg;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 315
    iget-object v9, p1, Lcom/youku/service/push/PushMsg;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/service/push/PushMsg$SchemeActionItem;

    .line 316
    .local v3, "item":Lcom/youku/service/push/PushMsg$SchemeActionItem;
    const/4 v10, 0x0

    iget-object v11, v3, Lcom/youku/service/push/PushMsg$SchemeActionItem;->desc:Ljava/lang/String;

    sget-object v12, Lc8/KWc;->mContext:Landroid/content/Context;

    iget-object v13, v3, Lcom/youku/service/push/PushMsg$SchemeActionItem;->action:Ljava/lang/String;

    invoke-virtual {p0, v12, p1, v13}, Lc8/Thn;->getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v12

    invoke-virtual {v1, v10, v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_4

    .line 319
    .end local v3    # "item":Lcom/youku/service/push/PushMsg$SchemeActionItem;
    :cond_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-lt v9, v10, :cond_1

    .line 320
    iget-object v8, p1, Lcom/youku/service/push/PushMsg;->img:Ljava/lang/String;

    .line 321
    .restart local v8    # "url":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 323
    :try_start_4
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v7    # "u":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 325
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v9}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>()V

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    .line 326
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    iget-object v10, p1, Lcom/youku/service/push/PushMsg;->desc:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v4

    .line 327
    .restart local v4    # "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 328
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "pictureStyle":Landroid/support/v4/app/NotificationCompat$BigPictureStyle;
    .end local v7    # "u":Ljava/net/URL;
    :catch_4
    move-exception v2

    .line 329
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "YKPush.DataProcessingAsyncTask"

    invoke-static {v9, v2}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getCustomNotification(Lcom/youku/service/push/PushMsg;I)Landroid/app/Notification;
    .locals 6
    .param p1, "msg"    # Lcom/youku/service/push/PushMsg;
    .param p2, "icon"    # I

    .prologue
    .line 207
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 208
    .local v1, "n":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 209
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 210
    const/4 v3, -0x1

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 211
    iput p2, v1, Landroid/app/Notification;->icon:I

    .line 212
    iget-object v3, p1, Lcom/youku/service/push/PushMsg;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    :goto_0
    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/app/Notification;->when:J

    .line 214
    new-instance v3, Landroid/widget/RemoteViews;

    sget-object v4, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/youku/phone/R$layout;->notify_game_push:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 215
    iget-object v3, p1, Lcom/youku/service/push/PushMsg;->icon:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 217
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p1, Lcom/youku/service/push/PushMsg;->icon:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 218
    .local v2, "u":Ljava/net/URL;
    iget-object v4, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v5, Lcom/youku/phone/R$id;->image:I

    invoke-virtual {v2}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    .end local v2    # "u":Ljava/net/URL;
    :goto_1
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcom/youku/phone/R$id;->title:I

    iget-object v5, p1, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 227
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcom/youku/phone/R$id;->text:I

    iget-object v5, p1, Lcom/youku/service/push/PushMsg;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 228
    sget-object v3, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, p1, v4}, Lc8/Thn;->getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 229
    return-object v1

    .line 212
    :cond_0
    iget-object v3, p1, Lcom/youku/service/push/PushMsg;->title:Ljava/lang/String;

    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YKPush.DataProcessingAsyncTask"

    invoke-static {v3, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 221
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcom/youku/phone/R$id;->image:I

    invoke-virtual {v3, v4, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget v4, Lcom/youku/phone/R$id;->image:I

    invoke-virtual {v3, v4, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1
.end method

.method private hasNewVersionApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "version"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 475
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    .line 476
    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 477
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u5df2\u5b89\u88c5\u7248\u672c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u60f3\u8981\u5b89\u88c5\u7684\u7248\u672c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le p3, v3, :cond_0

    .line 481
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :goto_0
    return v1

    .restart local v0    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    move v1, v2

    .line 478
    goto :goto_0

    .line 481
    .end local v0    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private startShownIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Lcom/youku/service/push/PushMsg;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x34400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 461
    const-string/jumbo v1, "PushMsg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 462
    const-string/jumbo v1, "from"

    const-string/jumbo v2, "push"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 463
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string/jumbo v1, "owner"

    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-class v1, Lcom/youku/service/push/service/StartActivityService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 466
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 467
    return-void
.end method

.method private zoomBitMap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const v0, 0x3f19999a    # 0.6f

    .line 192
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 194
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 198
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 61
    iget-object v1, p0, Lc8/Thn;->msg:Ljava/lang/String;

    iget-object v2, p0, Lc8/Thn;->source:Ljava/lang/String;

    iget-object v3, p0, Lc8/Thn;->notiType:Ljava/lang/String;

    iget-object v4, p0, Lc8/Thn;->agooId:Ljava/lang/String;

    iget-object v5, p0, Lc8/Thn;->pushOwner:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/Thn;->processingData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lc8/Thn;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getDeletePendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;)Landroid/app/PendingIntent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Lcom/youku/service/push/PushMsg;

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v0, "i":Landroid/content/Intent;
    const/high16 v2, 0x34400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 441
    const-string/jumbo v2, "PushMsg"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 442
    const-class v2, Lcom/youku/service/push/service/DeletePushService;

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 443
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

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

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 445
    .local v1, "p":Landroid/app/PendingIntent;
    return-object v1
.end method

.method public getPendingIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Lcom/youku/service/push/PushMsg;
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    const/high16 v6, 0x8000000

    .line 347
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v0, "i":Landroid/content/Intent;
    const/high16 v3, 0x34400000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 352
    const-string/jumbo v3, "PushMsg"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 353
    const-string/jumbo v3, "from"

    const-string/jumbo v4, "push"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string/jumbo v3, "action"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    const-string/jumbo v3, "owner"

    iget-object v4, p0, Lc8/Thn;->pushOwner:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 357
    iget-object v3, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 358
    .local v2, "requestCode":I
    iget v3, p2, Lcom/youku/service/push/PushMsg;->type:I

    sparse-switch v3, :sswitch_data_0

    .line 423
    invoke-static {}, Lc8/Xhn;->checkMeizuDevice()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 425
    const-class v3, Lcom/youku/service/push/service/StartActivityPushService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 429
    :goto_0
    invoke-static {p1, v2, v0, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 432
    .local v1, "p":Landroid/app/PendingIntent;
    :goto_1
    return-object v1

    .line 360
    .end local v1    # "p":Landroid/app/PendingIntent;
    :sswitch_0
    const-class v3, Lcom/youku/service/push/activity/EmptyActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 361
    const-string/jumbo v3, "IMG"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_img"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 363
    iget-object v3, p2, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 364
    :cond_0
    const-string/jumbo v3, "video_id"

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->showId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 368
    :goto_2
    const-string/jumbo v3, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    :cond_1
    :goto_3
    invoke-static {p1, v2, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 382
    .restart local v1    # "p":Landroid/app/PendingIntent;
    goto :goto_1

    .line 366
    .end local v1    # "p":Landroid/app/PendingIntent;
    :cond_2
    const-string/jumbo v3, "video_id"

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 369
    :cond_3
    const-string/jumbo v3, "PLAY"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_play"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 371
    iget-object v3, p2, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p2, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 372
    :cond_4
    const-string/jumbo v3, "video_id"

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->showId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    :goto_4
    const-string/jumbo v3, "com.youku.ui.activity.DetailActivity"

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    .line 374
    :cond_5
    const-string/jumbo v3, "video_id"

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 377
    :cond_6
    const-string/jumbo v3, "DOWNLOAD"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_down"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    .line 384
    :sswitch_1
    const-class v3, Lcom/youku/service/push/activity/EmptyActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v3, "IMG"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_img"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 392
    :cond_7
    :goto_5
    invoke-static {p1, v2, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 394
    .restart local v1    # "p":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 387
    .end local v1    # "p":Landroid/app/PendingIntent;
    :cond_8
    const-string/jumbo v3, "PLAY"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 388
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_play"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 389
    :cond_9
    const-string/jumbo v3, "DOWNLOAD"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_down"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    .line 397
    :sswitch_2
    invoke-static {}, Lc8/Xhn;->checkMeizuDevice()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 399
    const-class v3, Lcom/youku/service/push/activity/EmptyPushActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 403
    :goto_6
    const-string/jumbo v3, "IMG"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 404
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_img"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 409
    :goto_7
    invoke-static {p1, v2, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 411
    .restart local v1    # "p":Landroid/app/PendingIntent;
    goto/16 :goto_1

    .line 401
    .end local v1    # "p":Landroid/app/PendingIntent;
    :cond_a
    const-class v3, Lcom/youku/service/push/activity/EmptyActivity;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_6

    .line 406
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/youku/service/push/PushMsg;->actionItems:Ljava/util/ArrayList;

    .line 407
    invoke-static {p3}, Lcom/youku/service/push/PushMsg$SchemeActionItem;->newInstance(Ljava/lang/String;)Lcom/youku/service/push/PushMsg$SchemeActionItem;

    move-result-object v5

    .line 406
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 407
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    .line 427
    :cond_c
    const-class v3, Lcom/youku/service/push/service/StartActivityService;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
        0xd -> :sswitch_2
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc8/Thn;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected processingData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "notiType"    # Ljava/lang/String;
    .param p4, "agooId"    # Ljava/lang/String;
    .param p5, "pushOwner"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-static {p1}, Lcom/youku/service/push/PushMsg;->parse(Ljava/lang/String;)Lcom/youku/service/push/PushMsg;

    move-result-object v6

    .line 73
    .local v6, "msg":Lcom/youku/service/push/PushMsg;
    if-eqz v6, :cond_0

    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 77
    const-string/jumbo v10, "\u4f18\u9177\u63d0\u9192"

    iput-object v10, v6, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    .line 79
    :cond_2
    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->title:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 80
    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    iput-object v10, v6, Lcom/youku/service/push/PushMsg;->title:Ljava/lang/String;

    .line 83
    :cond_3
    iget v10, v6, Lcom/youku/service/push/PushMsg;->type:I

    const/4 v11, 0x3

    if-eq v10, v11, :cond_4

    iget v10, v6, Lcom/youku/service/push/PushMsg;->type:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    iget v10, v6, Lcom/youku/service/push/PushMsg;->type:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_5

    .line 85
    :cond_4
    invoke-static {p1}, Lc8/Fhn;->savePushMsg(Ljava/lang/String;)V

    .line 88
    :cond_5
    if-nez p2, :cond_6

    .line 89
    const-string/jumbo p2, ""

    .line 91
    :cond_6
    const/4 v10, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :cond_7
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 106
    :goto_2
    move-object/from16 v0, p4

    iput-object v0, v6, Lcom/youku/service/push/PushMsg;->agooID:Ljava/lang/String;

    .line 108
    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lc8/sZm;->getInstance(Landroid/content/Context;)Lc8/sZm;

    move-result-object v10

    iget-object v11, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lc8/sZm;->queryMessage(Ljava/lang/String;)Z

    move-result v4

    .line 111
    .local v4, "duplicated":Z
    const-string/jumbo v10, "push_through"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v10, :cond_8

    .line 112
    iget-object v11, v6, Lcom/youku/service/push/PushMsg;->channelType:Ljava/lang/String;

    iget-object v12, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    if-nez v4, :cond_9

    const/4 v10, 0x1

    :goto_3
    move-object/from16 v0, p5

    invoke-static {v11, v12, v0, v10}, Lc8/cin;->sendPushArriveUTFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 116
    :cond_8
    if-eqz v4, :cond_a

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 117
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Msg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is duplicated."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 91
    .end local v4    # "duplicated":Z
    :sswitch_0
    const-string/jumbo v11, "youku"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v10, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v11, "alipay"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v10, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v11, "xiaomi"

    invoke-virtual {p2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v10, 0x2

    goto/16 :goto_1

    .line 93
    :pswitch_0
    const-string/jumbo v10, "yks"

    iput-object v10, v6, Lcom/youku/service/push/PushMsg;->channelType:Ljava/lang/String;

    goto/16 :goto_2

    .line 96
    :pswitch_1
    const-string/jumbo v10, "zfbs"

    iput-object v10, v6, Lcom/youku/service/push/PushMsg;->channelType:Ljava/lang/String;

    goto/16 :goto_2

    .line 112
    .restart local v4    # "duplicated":Z
    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 121
    :cond_a
    const/4 v7, 0x0

    .line 122
    .local v7, "n":Landroid/app/Notification;
    iget v10, v6, Lcom/youku/service/push/PushMsg;->type:I

    packed-switch v10, :pswitch_data_1

    .line 153
    :pswitch_2
    const-string/jumbo v10, "push_through"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 155
    invoke-direct {p0, v6}, Lc8/Thn;->getBigViewNotification(Lcom/youku/service/push/PushMsg;)Landroid/app/Notification;

    move-result-object v7

    .line 163
    :cond_b
    :goto_4
    :pswitch_3
    if-eqz v4, :cond_e

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Msg "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is duplicated. Update the Agoo ID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    :pswitch_4
    const/4 v10, 0x7

    const/16 v11, 0x1e

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lc8/Ghn;->getCalendarLong(III)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 133
    .local v2, "alarmtime":J
    invoke-static {v2, v3}, Lc8/Ghn;->isValidPush(J)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 134
    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "IMG"

    invoke-direct {p0, v10, v6, v11}, Lc8/Thn;->startShownIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)V

    goto :goto_4

    .line 139
    .end local v2    # "alarmtime":J
    :pswitch_5
    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v10, p1, v0}, Lc8/Whn;->showNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 141
    .local v9, "result":Z
    const-string/jumbo v10, "push_through"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v10, :cond_c

    .line 142
    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-static {v10, v0}, Lc8/cin;->postReceiveFeedback(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "show force notification success="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 156
    .end local v9    # "result":Z
    :cond_d
    const-string/jumbo v10, "push_shown"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 158
    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "IMG"

    invoke-direct {p0, v10, v6, v11}, Lc8/Thn;->startShownIntent(Landroid/content/Context;Lcom/youku/service/push/PushMsg;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 169
    :cond_e
    const-string/jumbo v10, "push_through"

    move-object/from16 v0, p3

    invoke-static {v0, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 170
    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-static {v10, v0}, Lc8/cin;->postReceiveFeedback(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_f
    iget v10, v6, Lcom/youku/service/push/PushMsg;->type:I

    if-eqz v10, :cond_0

    if-eqz v7, :cond_0

    .line 174
    :try_start_0
    sget-object v10, Lc8/KWc;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 176
    .local v8, "nm":Landroid/app/NotificationManager;
    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 177
    iget-object v10, v6, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-virtual {v8, v10, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 178
    .end local v8    # "nm":Landroid/app/NotificationManager;
    :catch_0
    move-exception v5

    .line 179
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "YKPush.DataProcessingAsyncTask"

    invoke-static {v10, v5}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 91
    .line 122
    :sswitch_data_0
    .sparse-switch
        -0x545695b6 -> :sswitch_1
        -0x2d450b45 -> :sswitch_2
        0x6dd55c9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method
