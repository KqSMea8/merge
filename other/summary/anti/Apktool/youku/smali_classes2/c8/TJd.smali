.class public Lc8/TJd;
.super Ljava/lang/Object;
.source "AbstractPushNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UJd;->dismissFloatNotification(Landroid/app/NotificationManager;ILcom/meizu/cloud/pushsdk/handler/MessageV3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UJd;

.field final synthetic val$notification:Landroid/app/Notification;

.field final synthetic val$notificationId:I

.field final synthetic val$notificationManager:Landroid/app/NotificationManager;


# direct methods
.method constructor <init>(Lc8/UJd;Landroid/app/NotificationManager;ILandroid/app/Notification;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UJd;

    .prologue
    .line 394
    iput-object p1, p0, Lc8/TJd;->this$0:Lc8/UJd;

    iput-object p2, p0, Lc8/TJd;->val$notificationManager:Landroid/app/NotificationManager;

    iput p3, p0, Lc8/TJd;->val$notificationId:I

    iput-object p4, p0, Lc8/TJd;->val$notification:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 397
    iget-object v0, p0, Lc8/TJd;->val$notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lc8/TJd;->val$notificationId:I

    iget-object v2, p0, Lc8/TJd;->val$notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 398
    return-void
.end method
