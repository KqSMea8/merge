.class public Lc8/bKd;
.super Lc8/UJd;
.source "AndroidStandardNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/XJd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushNotificationBuilder"    # Lc8/XJd;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lc8/UJd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .line 21
    return-void
.end method


# virtual methods
.method protected appIconSettingBuilder(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 28
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmAppIconSetting()Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;

    move-result-object v0

    .line 29
    .local v0, "appIconSetting":Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->isDefaultLargeIcon()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    iget-object v2, p0, Lc8/bKd;->pushNotificationBuilder:Lc8/XJd;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/bKd;->pushNotificationBuilder:Lc8/XJd;

    invoke-virtual {v2}, Lc8/XJd;->getmLargIcon()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lc8/bKd;->context:Landroid/content/Context;

    .line 32
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lc8/bKd;->pushNotificationBuilder:Lc8/XJd;

    invoke-virtual {v3}, Lc8/XJd;->getmLargIcon()I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 31
    :goto_0
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 46
    :cond_0
    :goto_1
    return-void

    .line 32
    :cond_1
    iget-object v2, p0, Lc8/bKd;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lc8/bKd;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 34
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lc8/bKd;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/notification/model/AppIconSetting;->getLargeIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/bKd;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 36
    .local v1, "largeIcon":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 37
    const-string/jumbo v2, "AbstractPushNotification"

    const-string/jumbo v3, "On other Thread down load largeIcon image success"

    invoke-static {v2, v3}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 40
    :cond_3
    iget-object v2, p0, Lc8/bKd;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getUploadDataPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lc8/bKd;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method
