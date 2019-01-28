.class public Lc8/VB;
.super Ljava/lang/Object;
.source "ConnectManager.java"


# static fields
.field private static mConnectManager:Lc8/VB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lc8/VB;->mConnectManager:Lc8/VB;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lc8/VB;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lc8/VB;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/VB;->mConnectManager:Lc8/VB;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lc8/VB;

    invoke-direct {v0}, Lc8/VB;-><init>()V

    sput-object v0, Lc8/VB;->mConnectManager:Lc8/VB;

    .line 25
    :cond_0
    sget-object v0, Lc8/VB;->mConnectManager:Lc8/VB;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public connect(Lc8/YB;Lc8/WB;)V
    .locals 2
    .param p1, "request"    # Lc8/YB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/YB;",
            "Lc8/WB",
            "<",
            "Lc8/ZB;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "listener":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<Landroid/taobao/windvane/connect/HttpResponse;>;"
    if-nez p1, :cond_0

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Lc8/UB;

    invoke-direct {v0, p0, p1, p2}, Lc8/UB;-><init>(Lc8/VB;Lc8/YB;Lc8/WB;)V

    .line 56
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public connect(Ljava/lang/String;Lc8/WB;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/WB",
            "<",
            "Lc8/ZB;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "listener":Lc8/WB;, "Landroid/taobao/windvane/connect/HttpConnectListener<Landroid/taobao/windvane/connect/HttpResponse;>;"
    if-nez p1, :cond_0

    .line 45
    :goto_0
    return-void

    .line 34
    :cond_0
    new-instance v0, Lc8/TB;

    invoke-direct {v0, p0, p1, p2}, Lc8/TB;-><init>(Lc8/VB;Ljava/lang/String;Lc8/WB;)V

    .line 44
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lc8/wH;->getInstance()Lc8/wH;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/wH;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
