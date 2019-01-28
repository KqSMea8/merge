.class public Lc8/VJd;
.super Lc8/gKd;
.source "PictureNotification.java"


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


# virtual methods
.method protected buildBigContentView(Landroid/app/Notification;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 8
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 26
    invoke-static {}, Lc8/CLd;->isSupportNotificationBuild()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getBannerImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/VJd;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, "bannerBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lc8/VJd;->isOnMainThread()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    .line 29
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v5}, Lc8/qKd;->push_pure_pic_notification(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v2, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 30
    .local v2, "pureBannerPicView":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/qKd;->push_pure_bigview_banner(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 31
    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/qKd;->push_pure_bigview_expanded(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/qKd;->push_pure_bigview_banner(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 33
    iput-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 35
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getInnerStyle()I

    move-result v4

    sget-object v5, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->EXPANDABLE_PIC:Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;

    invoke-virtual {v5}, Lcom/meizu/cloud/pushsdk/notification/model/styleenum/InnerStyleLayout;->getCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 37
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getExpandableImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/VJd;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 38
    .local v1, "bigBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lc8/VJd;->isOnMainThread()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    .line 39
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v5}, Lc8/qKd;->push_pure_pic_notification(Landroid/content/Context;)I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 40
    .local v3, "pureBigPicView":Landroid/widget/RemoteViews;
    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/qKd;->push_pure_bigview_expanded(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 41
    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/qKd;->push_pure_bigview_expanded(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 42
    iget-object v4, p0, Lc8/VJd;->context:Landroid/content/Context;

    invoke-static {v4}, Lc8/qKd;->push_pure_bigview_banner(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 43
    iput-object v3, p1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 49
    .end local v0    # "bannerBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "bigBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "pureBannerPicView":Landroid/widget/RemoteViews;
    .end local v3    # "pureBigPicView":Landroid/widget/RemoteViews;
    :cond_0
    return-void
.end method
