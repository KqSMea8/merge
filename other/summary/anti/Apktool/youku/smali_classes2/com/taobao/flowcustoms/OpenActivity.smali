.class public Lcom/taobao/flowcustoms/OpenActivity;
.super Landroid/app/Activity;
.source "OpenActivity.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "OpenActivity"


# instance fields
.field private openParams:Lcom/taobao/flowcustoms/data/OpenParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/taobao/flowcustoms/OpenActivity;)Lcom/taobao/flowcustoms/data/OpenParams;
    .locals 1
    .param p0, "x0"    # Lcom/taobao/flowcustoms/OpenActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    return-object v0
.end method

.method private startLinkInfoRequest()V
    .locals 6

    .prologue
    .line 65
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "appKey"

    iget-object v1, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v1, v1, Lcom/taobao/flowcustoms/data/OpenParams;->appKey:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string/jumbo v0, "packageName"

    iget-object v1, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v1, v1, Lcom/taobao/flowcustoms/data/OpenParams;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v0, "action"

    iget-object v1, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    invoke-virtual {v1}, Lcom/taobao/flowcustoms/data/OpenParams;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v0, "backUrl"

    iget-object v1, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v1, v1, Lcom/taobao/flowcustoms/data/OpenParams;->backUrl:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v0, "sdkVersion"

    iget-object v1, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v1, v1, Lcom/taobao/flowcustoms/data/OpenParams;->sdkVersion:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string/jumbo v0, "h5Url"

    iget-object v1, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v1, v1, Lcom/taobao/flowcustoms/data/OpenParams;->h5Url:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v0, "extra"

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    iget-object v2, v2, Lcom/taobao/flowcustoms/data/OpenParams;->params:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v5, Lc8/wnf;

    invoke-direct {v5, p0}, Lc8/wnf;-><init>(Lcom/taobao/flowcustoms/OpenActivity;)V

    .line 98
    .local v5, "listener":Lc8/xof;
    invoke-static {}, Lc8/wof;->getInstance()Lc8/wof;

    move-result-object v0

    const-string/jumbo v1, "mtop.taobao.baichuan.afc.linkinfo"

    const-string/jumbo v2, "1.0"

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/wof;->sendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLc8/xof;)V

    .line 100
    return-void
.end method


# virtual methods
.method public createOpenParams()Lcom/taobao/flowcustoms/data/OpenParams;
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/taobao/flowcustoms/data/OpenParams;

    invoke-direct {v0, p0}, Lcom/taobao/flowcustoms/data/OpenParams;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OpenActivity;->createOpenParams()Lcom/taobao/flowcustoms/data/OpenParams;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    .line 40
    iget-object v0, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    invoke-virtual {v0}, Lcom/taobao/flowcustoms/data/OpenParams;->check()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OpenActivity;->finish()V

    .line 59
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    invoke-virtual {v0}, Lcom/taobao/flowcustoms/data/OpenParams;->trackSource()V

    .line 50
    iget-object v0, p0, Lcom/taobao/flowcustoms/OpenActivity;->openParams:Lcom/taobao/flowcustoms/data/OpenParams;

    invoke-virtual {v0, p0}, Lcom/taobao/flowcustoms/data/OpenParams;->checkBlackList(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OpenActivity;->onIncomingAppBlocked()V

    .line 53
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OpenActivity;->finish()V

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Lcom/taobao/flowcustoms/OpenActivity;->startLinkInfoRequest()V

    goto :goto_0
.end method

.method public onIncomingAppBlocked()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method public onLinkInfoError(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/taobao/flowcustoms/OpenActivity;->finish()V

    .line 121
    return-void
.end method
