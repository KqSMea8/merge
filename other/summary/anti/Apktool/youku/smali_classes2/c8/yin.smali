.class public Lc8/yin;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lc8/yin;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/yin;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method generateNotification(Landroid/content/Context;ILjava/lang/String;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mProgress"    # I
    .param p3, "mDownloadTitle"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 22
    new-instance v0, Landroid/app/Notification;

    const v2, 0x1080081

    sget v3, Lcom/youku/phone/R$string;->init_dowloading:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 23
    .local v0, "notification":Landroid/app/Notification;
    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$layout;->update_download_notification:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 25
    .local v1, "remoteView":Landroid/widget/RemoteViews;
    sget v2, Lcom/youku/phone/R$id;->update_progress_bar:I

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, p2, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 26
    sget v2, Lcom/youku/phone/R$id;->update_progress_text:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 27
    sget v2, Lcom/youku/phone/R$id;->update_title:I

    invoke-virtual {v1, v2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 28
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 31
    if-eqz p4, :cond_0

    .line 32
    const/high16 v2, 0x8000000

    invoke-static {p1, v6, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 33
    const/16 v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 36
    :cond_0
    return-object v0
.end method
