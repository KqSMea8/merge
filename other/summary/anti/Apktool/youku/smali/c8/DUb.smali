.class public Lc8/DUb;
.super Ljava/lang/Object;
.source "ApplicationIdleMonitor.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EUb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivityLifeCycleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/EUb;


# direct methods
.method constructor <init>(Lc8/EUb;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 93
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    invoke-static {}, Lc8/HUb;->getInstance()Lc8/HUb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/HUb;->getWatchConfig()Lc8/IUb;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/IUb;->closeMainLooperMonitor:Z

    .line 99
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 134
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 118
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v0}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v0}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v0

    iget-object v1, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v1}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v1

    iget-wide v2, v1, Lc8/QUb;->_baseInterval:J

    iput-wide v2, v0, Lc8/QUb;->intervalTime:J

    .line 121
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v0}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/QUb;->samplingCal()V

    .line 123
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 139
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 128
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lc8/EUb;->access$102(Lc8/EUb;J)J

    .line 129
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v4, 0x2710

    .line 104
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v0}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v0}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v0

    iget-object v1, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v1}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v1

    iget-wide v2, v1, Lc8/QUb;->_baseInterval:J

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    iput-wide v2, v0, Lc8/QUb;->intervalTime:J

    .line 106
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v0}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v0

    iget-wide v0, v0, Lc8/QUb;->intervalTime:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/DUb;->this$0:Lc8/EUb;

    invoke-static {v0}, Lc8/EUb;->access$000(Lc8/EUb;)Lc8/QUb;

    move-result-object v0

    iput-wide v4, v0, Lc8/QUb;->intervalTime:J

    .line 113
    :cond_0
    return-void
.end method
