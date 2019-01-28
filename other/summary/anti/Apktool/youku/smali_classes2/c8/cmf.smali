.class public Lc8/cmf;
.super Landroid/content/BroadcastReceiver;
.source "Taobao"


# static fields
.field public static volatile curNetwork:Lcom/taobao/downloader/api/Request$Network;

.field public static requestQueueList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/kmf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lc8/cmf;->requestQueueList:Ljava/util/Set;

    .line 22
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->NONE:Lcom/taobao/downloader/api/Request$Network;

    sput-object v0, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 26
    if-nez p2, :cond_1

    .line 57
    :cond_0
    return-void

    .line 29
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string/jumbo v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 32
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 34
    sget-object v1, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    .line 35
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 37
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->WIFI:Lcom/taobao/downloader/api/Request$Network;

    sput-object v0, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    .line 44
    :goto_0
    invoke-static {v6}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 45
    const-string/jumbo v0, "QueueNetReceiver"

    const-string/jumbo v2, "updateNetworkStatus"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "cur"

    aput-object v4, v3, v7

    aput-object v1, v3, v6

    const-string/jumbo v4, "new"

    aput-object v4, v3, v8

    const/4 v4, 0x3

    sget-object v5, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    aput-object v5, v3, v4

    invoke-static {v0, v2, v9, v3}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    :cond_2
    sget-object v0, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    sget-object v2, Lcom/taobao/downloader/api/Request$Network;->WIFI:Lcom/taobao/downloader/api/Request$Network;

    if-ne v0, v2, :cond_0

    sget-object v0, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    if-eq v0, v1, :cond_0

    .line 49
    invoke-static {v6}, Lc8/Nmf;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const-string/jumbo v0, "QueueNetReceiver"

    const-string/jumbo v1, "updateNetworkStatus"

    new-array v2, v8, [Ljava/lang/Object;

    const-string/jumbo v3, "retry auto resume all (network limit) request in requestQueue.size"

    aput-object v3, v2, v7

    sget-object v3, Lc8/cmf;->requestQueueList:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v9, v2}, Lc8/Nmf;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_3
    sget-object v0, Lc8/cmf;->requestQueueList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/kmf;

    .line 53
    invoke-virtual {v0}, Lc8/kmf;->a()V

    goto :goto_1

    .line 39
    :cond_4
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->MOBILE:Lcom/taobao/downloader/api/Request$Network;

    sput-object v0, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    goto :goto_0

    .line 42
    :cond_5
    sget-object v0, Lcom/taobao/downloader/api/Request$Network;->NONE:Lcom/taobao/downloader/api/Request$Network;

    sput-object v0, Lc8/cmf;->curNetwork:Lcom/taobao/downloader/api/Request$Network;

    goto :goto_0
.end method
