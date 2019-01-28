.class public Lc8/xye;
.super Ljava/lang/Object;
.source "SDKNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wye;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotification:Landroid/app/Notification;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "notification"    # Landroid/app/Notification;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/xye;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lc8/xye;->mNotification:Landroid/app/Notification;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/app/Notification;Lc8/vye;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Landroid/app/Notification;
    .param p3, "x2"    # Lc8/vye;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lc8/xye;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public show(I)V
    .locals 2
    .param p1, "notificationId"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lc8/xye;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lc8/xye;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget-object v1, p0, Lc8/xye;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 30
    :cond_0
    return-void
.end method
