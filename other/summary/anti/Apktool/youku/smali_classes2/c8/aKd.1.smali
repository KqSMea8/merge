.class public Lc8/aKd;
.super Lc8/bKd;
.source "AndroidExpandableTextNotification.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/XJd;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pushNotificationBuilder"    # Lc8/XJd;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lc8/bKd;-><init>(Landroid/content/Context;Lc8/XJd;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected buildExpandableContent(Landroid/app/Notification$Builder;Lcom/meizu/cloud/pushsdk/handler/MessageV3;)V
    .locals 2
    .param p1, "builder"    # Landroid/app/Notification$Builder;
    .param p2, "messageV3"    # Lcom/meizu/cloud/pushsdk/handler/MessageV3;

    .prologue
    .line 21
    invoke-static {}, Lc8/CLd;->isSupportNotificationBuild()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 23
    .local v0, "notiStyle":Landroid/app/Notification$BigTextStyle;
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 24
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 25
    invoke-virtual {p2}, Lcom/meizu/cloud/pushsdk/handler/MessageV3;->getmNotificationStyle()Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/cloud/pushsdk/notification/model/NotificationStyle;->getExpandableText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 26
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 28
    .end local v0    # "notiStyle":Landroid/app/Notification$BigTextStyle;
    :cond_0
    return-void
.end method
