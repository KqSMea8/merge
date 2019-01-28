.class public Lc8/FYm;
.super Ljava/lang/Object;
.source "YoukuLayerAdapter.java"

# interfaces
.implements Lc8/oXb;


# instance fields
.field private final mConfigGroup:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "mConfigGroup"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/FYm;->mConfigGroup:Ljava/lang/String;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lc8/FYm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/FYm;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/FYm;->mConfigGroup:Ljava/lang/String;

    return-object v0
.end method

.method private initCacheConfig()V
    .locals 5

    .prologue
    .line 37
    iget-object v2, p0, Lc8/FYm;->mConfigGroup:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lc8/Iin;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 39
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v2

    iget-object v3, p0, Lc8/FYm;->mConfigGroup:Ljava/lang/String;

    sget-object v4, Lcom/youku/poplayer/config/ChannelEnum;->CACHE:Lcom/youku/poplayer/config/ChannelEnum;

    invoke-virtual {v2, v3, v0, v4}, Lc8/AYm;->updateConfigData(Ljava/lang/String;Ljava/lang/String;Lcom/youku/poplayer/config/ChannelEnum;)Z

    move-result v1

    .line 40
    .local v1, "updateState":Z
    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lc8/uXb;->instance()Lc8/uXb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uXb;->updateConfig()V

    .line 44
    .end local v1    # "updateState":Z
    :cond_0
    return-void
.end method


# virtual methods
.method public addConfigObserver(Lc8/uXb;)V
    .locals 4
    .param p1, "layerManager"    # Lc8/uXb;

    .prologue
    .line 48
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/FYm;->mConfigGroup:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v2, Lc8/EYm;

    invoke-direct {v2, p0}, Lc8/EYm;-><init>(Lc8/FYm;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 78
    return-void
.end method

.method public getConfigByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/FYm;->mConfigGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".get.config.key."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v0

    iget-object v1, p0, Lc8/FYm;->mConfigGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lc8/AYm;->getConfigItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeConfigContainer(Lc8/uXb;)V
    .locals 0
    .param p1, "layerManager"    # Lc8/uXb;

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/FYm;->initCacheConfig()V

    .line 34
    return-void
.end method
