.class public final Lc8/NKd;
.super Landroid/content/BroadcastReceiver;
.source "QuickTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OKd;->registerNetworkReceiver(Landroid/content/Context;Lc8/sLd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$tracker:Lc8/sLd;


# direct methods
.method constructor <init>(Lc8/sLd;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lc8/NKd;->val$tracker:Lc8/sLd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 135
    invoke-static {p1}, Lc8/ALd;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    const-string/jumbo v0, "QuickTracker"

    const-string/jumbo v1, "restart track event: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "online true"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/yLd;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v0, p0, Lc8/NKd;->val$tracker:Lc8/sLd;

    invoke-virtual {v0}, Lc8/sLd;->restartEventTracking()V

    .line 139
    :cond_0
    return-void
.end method
