.class public Lc8/fnb;
.super Ljava/lang/Object;
.source "ALPCallbackManager.java"


# static fields
.field public static callbackInfo:Lc8/enb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized executeCallback(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "routeRules"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/os/Bundle;

    .prologue
    .line 29
    const-class v4, Lc8/fnb;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lc8/fnb;->callbackInfo:Lc8/enb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    .line 32
    :cond_1
    :try_start_1
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "rulesArray":[Ljava/lang/String;
    array-length v3, v2

    if-eqz v3, :cond_0

    .line 37
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 38
    .local v1, "routeRule":Ljava/lang/String;
    const-string/jumbo v3, "result"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 40
    .local v0, "resultData":Landroid/os/Bundle;
    sget-object v3, Lc8/fnb;->callbackInfo:Lc8/enb;

    invoke-virtual {v3, p0, v1}, Lc8/enb;->isDataMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 41
    sget-object v3, Lc8/fnb;->callbackInfo:Lc8/enb;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "resultData":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_2
    invoke-virtual {v3, p2, v0}, Lc8/enb;->onSuccess(ILandroid/os/Bundle;)V

    .line 44
    :cond_3
    const/4 v3, 0x0

    sput-object v3, Lc8/fnb;->callbackInfo:Lc8/enb;

    .line 45
    invoke-static {}, Lc8/dnb;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 29
    .end local v1    # "routeRule":Ljava/lang/String;
    .end local v2    # "rulesArray":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized setCallbackInfo(Lc8/enb;)V
    .locals 3
    .param p0, "callbackInfo"    # Lc8/enb;

    .prologue
    .line 18
    const-class v1, Lc8/fnb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/fnb;->callbackInfo:Lc8/enb;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lc8/fnb;->callbackInfo:Lc8/enb;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lc8/enb;->onError(I)V

    .line 21
    :cond_0
    sput-object p0, Lc8/fnb;->callbackInfo:Lc8/enb;

    .line 22
    sget-object v0, Lc8/fnb;->callbackInfo:Lc8/enb;

    if-eqz v0, :cond_1

    .line 23
    invoke-static {}, Lc8/dnb;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_1
    monitor-exit v1

    return-void

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
