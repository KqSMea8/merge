.class public Landroid/support/v4/app/NotificationManagerCompat$ImplKitKat;
.super Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;
.source "NotificationManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImplKitKat"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$ImplIceCreamSandwich;-><init>()V

    return-void
.end method


# virtual methods
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationManager"    # Landroid/app/NotificationManager;

    .prologue
    .line 210
    invoke-static {p1}, Lc8/Hi;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
