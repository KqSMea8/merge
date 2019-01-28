.class public Lc8/bC;
.super Ljava/lang/Object;
.source "WVNetWorkProxy.java"


# static fields
.field private static mConnectManager:Lc8/bC;


# instance fields
.field private mNetWorkProxy:Lc8/cC;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lc8/bC;->mConnectManager:Lc8/bC;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/bC;->mNetWorkProxy:Lc8/cC;

    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/bC;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lc8/bC;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/bC;->mConnectManager:Lc8/bC;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lc8/bC;

    invoke-direct {v0}, Lc8/bC;-><init>()V

    sput-object v0, Lc8/bC;->mConnectManager:Lc8/bC;

    .line 29
    :cond_0
    sget-object v0, Lc8/bC;->mConnectManager:Lc8/bC;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getNetWorkProxy()Lc8/cC;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lc8/bC;->mNetWorkProxy:Lc8/cC;

    return-object v0
.end method

.method public registerNetWork(Lc8/cC;)V
    .locals 0
    .param p1, "NetWorkProxy"    # Lc8/cC;

    .prologue
    .line 37
    iput-object p1, p0, Lc8/bC;->mNetWorkProxy:Lc8/cC;

    .line 38
    return-void
.end method
