.class public final Lc8/Tyb;
.super Ljava/lang/Object;
.source "AnalyticsMgr.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/gzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 253
    const-string/jumbo v0, "onServiceConnected"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "this"

    aput-object v2, v1, v3

    invoke-static {}, Lc8/gzb;->access$000()Landroid/content/ServiceConnection;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    sget-object v0, Lcom/alibaba/analytics/AnalyticsMgr$RunMode;->Service:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    sget-object v1, Lc8/gzb;->mode:Lcom/alibaba/analytics/AnalyticsMgr$RunMode;

    if-ne v0, v1, :cond_0

    .line 255
    invoke-static {p2}, Lc8/jzb;->asInterface(Landroid/os/IBinder;)Lc8/kzb;

    move-result-object v0

    sput-object v0, Lc8/gzb;->iAnalytics:Lc8/kzb;

    .line 256
    const-string/jumbo v0, "onServiceConnected"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "iAnalytics"

    aput-object v2, v1, v3

    sget-object v2, Lc8/gzb;->iAnalytics:Lc8/kzb;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :cond_0
    invoke-static {}, Lc8/gzb;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 259
    :try_start_0
    invoke-static {}, Lc8/gzb;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 260
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x1

    .line 265
    const-string/jumbo v0, "AnalyticsMgr"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[onServiceDisconnected]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    invoke-static {}, Lc8/gzb;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 267
    :try_start_0
    invoke-static {}, Lc8/gzb;->access$100()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-static {v4}, Lc8/gzb;->access$202(Z)Z

    .line 270
    return-void

    .line 268
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
