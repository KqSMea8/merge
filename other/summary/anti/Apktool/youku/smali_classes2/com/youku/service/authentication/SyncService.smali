.class public Lcom/youku/service/authentication/SyncService;
.super Landroid/app/Service;
.source "SyncService.java"


# static fields
.field private static sSyncAdapter:Lc8/rdn;

.field private static final sSyncAdapterLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/youku/service/authentication/SyncService;->sSyncAdapter:Lc8/rdn;

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/youku/service/authentication/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    sget-object v0, Lcom/youku/service/authentication/SyncService;->sSyncAdapter:Lc8/rdn;

    invoke-virtual {v0}, Lc8/rdn;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 23
    sget-object v1, Lcom/youku/service/authentication/SyncService;->sSyncAdapterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/youku/service/authentication/SyncService;->sSyncAdapter:Lc8/rdn;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lc8/rdn;

    invoke-virtual {p0}, Lcom/youku/service/authentication/SyncService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lc8/rdn;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/youku/service/authentication/SyncService;->sSyncAdapter:Lc8/rdn;

    .line 27
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
