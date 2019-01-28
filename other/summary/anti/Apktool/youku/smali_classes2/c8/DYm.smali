.class public Lc8/DYm;
.super Ljava/lang/Object;
.source "YoukuConfigAdapter.java"

# interfaces
.implements Lcom/alibaba/poplayer/norm/IConfigAdapter;


# instance fields
.field private final mConfigGroup:Ljava/lang/String;

.field private final mDomain:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "domin"    # I
    .param p2, "configGroup"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lc8/DYm;->mDomain:I

    .line 34
    iput-object p2, p0, Lc8/DYm;->mConfigGroup:Ljava/lang/String;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lc8/DYm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/DYm;

    .prologue
    .line 27
    iget-object v0, p0, Lc8/DYm;->mConfigGroup:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/DYm;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/DYm;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lc8/DYm;->updateUTOrange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lc8/DYm;)I
    .locals 1
    .param p0, "x0"    # Lc8/DYm;

    .prologue
    .line 27
    iget v0, p0, Lc8/DYm;->mDomain:I

    return v0
.end method

.method private initCacheConfig(Lcom/alibaba/poplayer/PopLayer;)V
    .locals 5
    .param p1, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 45
    iget-object v2, p0, Lc8/DYm;->mConfigGroup:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Lc8/Iin;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "cacheConfig":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v2

    iget-object v3, p0, Lc8/DYm;->mConfigGroup:Ljava/lang/String;

    sget-object v4, Lcom/youku/poplayer/config/ChannelEnum;->CACHE:Lcom/youku/poplayer/config/ChannelEnum;

    invoke-virtual {v2, v3, v0, v4}, Lc8/AYm;->updateConfigData(Ljava/lang/String;Ljava/lang/String;Lcom/youku/poplayer/config/ChannelEnum;)Z

    move-result v1

    .line 49
    .local v1, "updateState":Z
    if-eqz v1, :cond_0

    .line 50
    iget v2, p0, Lc8/DYm;->mDomain:I

    invoke-virtual {p1, v2}, Lcom/alibaba/poplayer/PopLayer;->updateCacheConfigAsync(I)V

    .line 53
    .end local v1    # "updateState":Z
    :cond_0
    return-void
.end method

.method private updateUTOrange(Ljava/lang/String;)V
    .locals 6
    .param p1, "nameSpace"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    const-string/jumbo v1, "youku_poplayer_page"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v1

    const-string/jumbo v2, "youku_poplayer_page"

    const-string/jumbo v3, "pubTimeStamp"

    const-string/jumbo v4, "0"

    invoke-virtual {v1, v2, v3, v4}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "pushTime":Ljava/lang/String;
    const-string/jumbo v1, "youku_poplayer_page"

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lc8/VYm;->onOrangeConfigUpdate(Ljava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "pushTime":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public addConfigObserver(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 57
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/DYm;->mConfigGroup:Ljava/lang/String;

    aput-object v3, v1, v2

    new-instance v2, Lc8/CYm;

    invoke-direct {v2, p0, p2}, Lc8/CYm;-><init>(Lc8/DYm;Lcom/alibaba/poplayer/PopLayer;)V

    invoke-virtual {v0, v1, v2}, Lc8/ctf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 90
    return-void
.end method

.method public getConfigItemByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/DYm;->mConfigGroup:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".get.config.key."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    invoke-static {}, Lc8/AYm;->getInstance()Lc8/AYm;

    move-result-object v0

    iget-object v1, p0, Lc8/DYm;->mConfigGroup:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lc8/AYm;->getConfigItem(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initializeConfigContainer(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "popLayer"    # Lcom/alibaba/poplayer/PopLayer;

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lc8/DYm;->initCacheConfig(Lcom/alibaba/poplayer/PopLayer;)V

    .line 41
    invoke-static {}, Lc8/rYm;->getInstance()Lc8/rYm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lc8/rYm;->bind(Landroid/content/Context;Lcom/alibaba/poplayer/PopLayer;)V

    .line 42
    return-void
.end method
