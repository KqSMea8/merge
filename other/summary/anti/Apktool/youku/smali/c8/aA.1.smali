.class public Lc8/aA;
.super Ljava/lang/Object;
.source "ReceiverBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Zz;
    }
.end annotation


# static fields
.field private static receiver:Lc8/Zz;

.field private static sMainHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/aA;->sMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postOnReceived(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 36
    sget-object v0, Lc8/aA;->sMainHandler:Landroid/os/Handler;

    new-instance v1, Lc8/Yz;

    invoke-direct {v1, p1, p0}, Lc8/Yz;-><init>(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 48
    return-void
.end method

.method public static declared-synchronized registerAdditionalReceiver()V
    .locals 4

    .prologue
    .line 28
    const-class v2, Lc8/aA;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/aA;->receiver:Lc8/Zz;

    if-nez v1, :cond_0

    .line 29
    new-instance v1, Lc8/Zz;

    invoke-direct {v1}, Lc8/Zz;-><init>()V

    sput-object v1, Lc8/aA;->receiver:Lc8/Zz;

    .line 30
    invoke-static {}, Lc8/Nz;->getInstance()Lc8/Nz;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Nz;->getAdditionIntentFilter()Landroid/content/IntentFilter;

    move-result-object v0

    .line 31
    .local v0, "additionalFilter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    sget-object v3, Lc8/aA;->receiver:Lc8/Zz;

    invoke-virtual {v1, v3, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    monitor-exit v2

    return-void

    .line 28
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
