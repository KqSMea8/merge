.class public Lc8/vy;
.super Ljava/lang/Object;
.source "AndroidHack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/wy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActvityThreadGetter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 584
    sget-object v2, Lc8/xy;->ActivityThread:Lc8/Ay;

    invoke-virtual {v2}, Lc8/Ay;->getmClass()Ljava/lang/Class;

    move-result-object v0

    .line 586
    .local v0, "activityThreadCls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v2, Lc8/xy;->ActivityThread_currentActivityThread:Lc8/Dy;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lc8/Dy;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lc8/wy;->access$002(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    sget-object v3, Lc8/xy;->ActivityThread_currentActivityThread:Lc8/Dy;

    monitor-enter v3

    .line 591
    :try_start_1
    sget-object v2, Lc8/xy;->ActivityThread_currentActivityThread:Lc8/Dy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 592
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 592
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
