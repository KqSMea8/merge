.class public Lc8/Xfn;
.super Ljava/lang/Object;
.source "EventHub.java"


# static fields
.field static final StateNoSDCard:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EventHub"

.field private static mHub:Lc8/Xfn;


# instance fields
.field ACTION_TASK_CREATED:Ljava/lang/String;

.field ACTION_TASK_DELETED:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private mContext:Landroid/content/Context;

.field private volatile mStates:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string/jumbo v0, "com.youku.service.download.ACTION_TASK_CREATE"

    iput-object v0, p0, Lc8/Xfn;->ACTION_TASK_CREATED:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "com.youku.service.download.ACTION_TASK_DELETE"

    iput-object v0, p0, Lc8/Xfn;->ACTION_TASK_DELETED:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lc8/Xfn;->mStates:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method public static getInstance()Lc8/Xfn;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lc8/Xfn;->mHub:Lc8/Xfn;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lc8/Xfn;

    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lc8/Xfn;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/Xfn;->mHub:Lc8/Xfn;

    .line 46
    :cond_0
    sget-object v0, Lc8/Xfn;->mHub:Lc8/Xfn;

    return-object v0
.end method

.method private getLargeIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lc8/Xfn;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$mipmap;->ic_launcher:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/Xfn;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    :cond_0
    iget-object v0, p0, Lc8/Xfn;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lc8/Xfn;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/Xfn;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 146
    :cond_0
    iget-object v0, p0, Lc8/Xfn;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method


# virtual methods
.method public notifyDownloadOneCompleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.service.download.ACTION_DOWNLOAD_FINISH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "videoid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 56
    return-void
.end method

.method public notifyDownloadTaskReady()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method public notifyGroupDone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "ticker"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 85
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 86
    .local v0, "extra":Landroid/os/Bundle;
    const-string/jumbo v5, "go"

    const-string/jumbo v6, "downloaded"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v5

    const-string/jumbo v6, "youku://download"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x4

    const/high16 v8, 0x8000000

    invoke-virtual {v5, v6, v7, v8}, Lc8/Ybf;->toPendingUri(Landroid/net/Uri;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 88
    .local v1, "jump":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lc8/Xfn;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 89
    invoke-direct {p0}, Lc8/Xfn;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x1080082

    .line 90
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 91
    invoke-direct {p0}, Lc8/Xfn;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 92
    invoke-static {}, Lc8/Egn;->isTaskFinishSoundEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    invoke-virtual {v5, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 93
    invoke-virtual {v3, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 94
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 95
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 96
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 97
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 98
    invoke-direct {p0}, Lc8/Xfn;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 99
    .local v2, "n":Landroid/app/Notification;
    iget-object v3, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    const/16 v4, 0x7fe

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "extra":Landroid/os/Bundle;
    .end local v1    # "jump":Landroid/app/PendingIntent;
    .end local v2    # "n":Landroid/app/Notification;
    :goto_1
    return-void

    .restart local v0    # "extra":Landroid/os/Bundle;
    .restart local v1    # "jump":Landroid/app/PendingIntent;
    :cond_0
    move v3, v4

    .line 92
    goto :goto_0

    .line 104
    .end local v0    # "extra":Landroid/os/Bundle;
    .end local v1    # "jump":Landroid/app/PendingIntent;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public notifyProgress(Lcom/youku/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;
    .param p2, "ticker"    # Ljava/lang/String;
    .param p3, "contentText"    # Ljava/lang/String;
    .param p4, "autoCancel"    # Z
    .param p5, "iconRunning"    # Z

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    .local v0, "extra":Landroid/os/Bundle;
    invoke-virtual {p1}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 110
    invoke-direct {p0}, Lc8/Xfn;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 111
    const-string/jumbo v3, "go"

    const-string/jumbo v4, "downloaded"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :goto_0
    iget-object v3, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v3

    invoke-virtual {v3, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v3

    const-string/jumbo v4, "youku://download"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x4

    const/high16 v6, 0x8000000

    invoke-virtual {v3, v4, v5, v6}, Lc8/Ybf;->toPendingUri(Landroid/net/Uri;II)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    .local v1, "jump":Landroid/app/PendingIntent;
    invoke-direct {p0}, Lc8/Xfn;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    if-eqz p5, :cond_1

    const v3, 0x1080081

    .line 118
    :goto_1
    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 119
    invoke-direct {p0}, Lc8/Xfn;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 120
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 121
    invoke-virtual {v3, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 122
    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 123
    invoke-virtual {v3, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 124
    invoke-virtual {v3, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p1, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    .line 125
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    invoke-direct {p0}, Lc8/Xfn;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 127
    .local v2, "n":Landroid/app/Notification;
    const-string/jumbo v3, "download_last_notify_taskid"

    iget-object v4, p1, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/oen;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v3, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iget-object v4, p1, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 133
    .end local v0    # "extra":Landroid/os/Bundle;
    .end local v1    # "jump":Landroid/app/PendingIntent;
    .end local v2    # "n":Landroid/app/Notification;
    :goto_2
    return-void

    .line 113
    .restart local v0    # "extra":Landroid/os/Bundle;
    :cond_0
    invoke-direct {p0}, Lc8/Xfn;->getNotificationBuilder()Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {p1}, Lcom/youku/service/download/DownloadInfo;->getProgress()D

    move-result-wide v6

    double-to-int v5, v6

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 114
    const-string/jumbo v3, "go"

    const-string/jumbo v4, "downloading"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 133
    .end local v0    # "extra":Landroid/os/Bundle;
    :catch_0
    move-exception v3

    goto :goto_2

    .line 117
    .restart local v0    # "extra":Landroid/os/Bundle;
    .restart local v1    # "jump":Landroid/app/PendingIntent;
    :cond_1
    const v3, 0x1080082

    goto :goto_1
.end method

.method public notifySDCardChanged()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.service.download.ACTION_SDCARD_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method public notifyTaskCreated(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 67
    iget-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lc8/Xfn;->ACTION_TASK_CREATED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 68
    return-void
.end method

.method public notifyTaskDeleted(Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lc8/Xfn;->ACTION_TASK_DELETED:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 72
    return-void
.end method

.method public notifyThumbnailReady()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lc8/Xfn;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.youku.service.download.ACTION_THUMBNAIL_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public notifyWaitingSDCard(Lcom/youku/service/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u7b49\u5f85\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u7b49\u5f85\u4e2d... - SDCard\u4e0d\u53ef\u7528"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Xfn;->notifyProgress(Lcom/youku/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 77
    return-void
.end method

.method public notifyWaitingWifi(Lcom/youku/service/download/DownloadInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u7b49\u5f85\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/youku/service/download/DownloadInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u7b49\u5f85\u4e2d... - Wi-Fi\u4e0d\u53ef\u7528"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lc8/Xfn;->notifyProgress(Lcom/youku/service/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 80
    return-void
.end method
