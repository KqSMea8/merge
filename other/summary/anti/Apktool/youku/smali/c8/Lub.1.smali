.class public Lc8/Lub;
.super Lc8/ZUf;
.source "WXConnectionModule.java"


# static fields
.field private static final EVENT_CONNECTION_CHANGE:Ljava/lang/String; = "change"

.field private static final TAG:Ljava/lang/String; = "WXConnectionModule"


# instance fields
.field private mWXConnectionImpl:Lc8/Iub;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    return-void
.end method

.method private createWXConnectionImpl()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 188
    iget-object v2, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    if-eqz v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    iget-object v2, p0, Lc8/Lub;->mWXSDKInstance:Lc8/nVf;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/Lub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 192
    iget-object v2, p0, Lc8/Lub;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lc8/Jub;->createDefault(Landroid/content/Context;)Lc8/Iub;

    move-result-object v2

    iput-object v2, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    .line 193
    iget-object v2, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 195
    goto :goto_0
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "callback"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1, p2, p3}, Lc8/ZUf;->addEventListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 204
    invoke-direct {p0}, Lc8/Lub;->createWXConnectionImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string/jumbo v0, "WXConnectionModule"

    const-string/jumbo v1, "addListener failed because of context or instance been destroyed."

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    new-instance v1, Lc8/Kub;

    invoke-direct {v1, p0}, Lc8/Kub;-><init>(Lc8/Lub;)V

    invoke-interface {v0, v1}, Lc8/Iub;->addNetworkChangeListener(Lc8/Hub;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    invoke-interface {v0}, Lc8/Iub;->destroy()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    .line 271
    :cond_0
    return-void
.end method

.method public getDownlinkMax()D
    .locals 2
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 256
    invoke-direct {p0}, Lc8/Lub;->createWXConnectionImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const-string/jumbo v0, "WXConnectionModule"

    const-string/jumbo v1, "getDownlinkMax failed because of context or instance been destroyed."

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :cond_0
    const-wide/16 v0, 0x0

    .line 262
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    invoke-interface {v0}, Lc8/Iub;->getDownlinkMax()D

    move-result-wide v0

    goto :goto_0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 244
    invoke-direct {p0}, Lc8/Lub;->createWXConnectionImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 245
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string/jumbo v0, "WXConnectionModule"

    const-string/jumbo v1, "getNetworkType failed because of context or instance been destroyed."

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_0
    const-string/jumbo v0, "unknown"

    .line 250
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    invoke-interface {v0}, Lc8/Iub;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    .line 232
    invoke-direct {p0}, Lc8/Lub;->createWXConnectionImpl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const-string/jumbo v0, "WXConnectionModule"

    const-string/jumbo v1, "getType failed because of context or instance been destroyed."

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    const-string/jumbo v0, "none"

    .line 238
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    invoke-interface {v0}, Lc8/Iub;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method setConnectionImpl(Lc8/Iub;)V
    .locals 0
    .param p1, "connection"    # Lc8/Iub;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 277
    iput-object p1, p0, Lc8/Lub;->mWXConnectionImpl:Lc8/Iub;

    .line 278
    return-void
.end method
