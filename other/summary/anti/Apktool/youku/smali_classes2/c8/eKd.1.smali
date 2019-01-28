.class public Lc8/eKd;
.super Lc8/gKd;
.source "ExpandablePicNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/XJd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushNotificationBuilder"    # Lc8/XJd;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lc8/gKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .line 22
    return-void
.end method

.method private largeExpandableImageSetting(Landroid/widget/RemoteViews;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 3
    .param p1, "expandedView"    # Landroid/widget/RemoteViews;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    const/16 v2, 0x8

    .line 44
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/eKd;->isOnMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getExpandableImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getExpandableImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lc8/eKd;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 48
    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->push_big_bigview_defaultView(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 49
    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->push_big_bigview_defaultView(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 58
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->push_big_bigview_defaultView(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0

    .line 54
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->push_big_bigview_defaultView(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method


# virtual methods
.method protected buildBigContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 6
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 27
    invoke-static {}, Lc8/CLd;->isSupportNotificationBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v2}, Lc8/qKd;->push_expandable_big_image_notification(Landroid/content/Context;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 30
    .local v0, "expandedView":Landroid/widget/RemoteViews;
    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->push_big_notification_title(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 31
    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->push_big_notification_content(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 32
    iget-object v1, p0, Lc8/eKd;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/qKd;->push_big_notification_date(Landroid/content/Context;)I

    move-result v1

    const-string/jumbo v2, "setTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 33
    invoke-virtual {p0, v0, p2}, Lc8/eKd;->appLargeIconSetting(Landroid/widget/RemoteViews;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 34
    invoke-direct {p0, v0, p2}, Lc8/eKd;->largeExpandableImageSetting(Landroid/widget/RemoteViews;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V

    .line 36
    iput-object v0, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 38
    .end local v0    # "expandedView":Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method
