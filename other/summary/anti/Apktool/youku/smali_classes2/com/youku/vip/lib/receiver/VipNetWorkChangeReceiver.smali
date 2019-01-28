.class public Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VipNetWorkChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/CGo;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field handler:Landroid/os/Handler;

.field public networkRunnable:Lc8/CGo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->handler:Landroid/os/Handler;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->networkRunnable:Lc8/CGo;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/CGo;

    invoke-direct {v0, p1}, Lc8/CGo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->networkRunnable:Lc8/CGo;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->networkRunnable:Lc8/CGo;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 28
    iget-object v0, p0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/vip/lib/receiver/VipNetWorkChangeReceiver;->networkRunnable:Lc8/CGo;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
