.class public Lc8/ky;
.super Ljava/lang/Object;
.source "BundleInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/my;->deliveryTask(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/my;


# direct methods
.method constructor <init>(Lc8/my;)V
    .locals 0
    .param p1, "this$0"    # Lc8/my;

    .prologue
    .line 513
    iput-object p1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 516
    iget-object v2, p0, Lc8/ky;->this$0:Lc8/my;

    monitor-enter v2

    .line 518
    :try_start_0
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v1}, Lc8/my;->access$300(Lc8/my;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-nez v1, :cond_1

    .line 525
    :try_start_1
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 526
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v1}, Lc8/my;->access$400(Lc8/my;)Lc8/ly;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 527
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lc8/jy;

    invoke-direct {v3, p0}, Lc8/jy;-><init>(Lc8/ky;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    :cond_0
    const-wide/16 v4, 0x1

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 543
    :goto_1
    return-void

    .line 521
    :cond_1
    :try_start_4
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-virtual {v1}, Lc8/my;->call()Ljava/lang/Void;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 525
    :try_start_5
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 526
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v1}, Lc8/my;->access$400(Lc8/my;)Lc8/ly;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 527
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lc8/jy;

    invoke-direct {v3, p0}, Lc8/jy;-><init>(Lc8/ky;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 539
    :cond_2
    const-wide/16 v4, 0x1

    :try_start_6
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 543
    :goto_2
    :try_start_7
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v1

    .line 522
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 525
    :try_start_9
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 526
    iget-object v1, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v1}, Lc8/my;->access$400(Lc8/my;)Lc8/ly;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 527
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lc8/jy;

    invoke-direct {v3, p0}, Lc8/jy;-><init>(Lc8/ky;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 539
    :cond_3
    const-wide/16 v4, 0x1

    :try_start_a
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 542
    :catch_1
    move-exception v1

    goto :goto_2

    .line 525
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    :try_start_b
    iget-object v3, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 526
    iget-object v3, p0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v3}, Lc8/my;->access$400(Lc8/my;)Lc8/ly;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 527
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lc8/jy;

    invoke-direct {v4, p0}, Lc8/jy;-><init>(Lc8/ky;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 539
    :cond_4
    const-wide/16 v4, 0x1

    :try_start_c
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 541
    :goto_3
    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :catch_2
    move-exception v1

    goto/16 :goto_0

    .line 542
    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_3
.end method
