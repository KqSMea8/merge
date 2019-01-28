.class public Lmtopsdk/xstate/XStateService;
.super Landroid/app/Service;
.source "XStateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/tQp;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.XStateService"


# instance fields
.field lock:Ljava/lang/Object;

.field stub:Lc8/vQp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmtopsdk/xstate/XStateService;->lock:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    iget-object v2, p0, Lmtopsdk/xstate/XStateService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Lc8/tQp;

    invoke-direct {v1, p0}, Lc8/tQp;-><init>(Lmtopsdk/xstate/XStateService;)V

    iput-object v1, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :try_start_1
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;

    invoke-virtual {v1}, Lc8/vQp;->init()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const-string/jumbo v1, "mtopsdk.XStateService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[onBind] XStateService  stub= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;

    return-object v1

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onBind]init() exception"

    invoke-static {v1, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 26
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onBind]init() error"

    invoke-static {v1, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 40
    iget-object v2, p0, Lmtopsdk/xstate/XStateService;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 41
    :try_start_0
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 43
    :try_start_1
    iget-object v1, p0, Lmtopsdk/xstate/XStateService;->stub:Lc8/vQp;

    invoke-virtual {v1}, Lc8/vQp;->unInit()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onDestroy]unInit() exception"

    invoke-static {v1, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 50
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 46
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v1, "mtopsdk.XStateService"

    const-string/jumbo v3, "[onDestroy]unInit() error"

    invoke-static {v1, v3, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 86
    const/4 v0, 0x2

    return v0
.end method
