.class public Lc8/mvb;
.super Ljava/lang/Object;
.source "PreRenderConfig.java"


# static fields
.field private static final DEFAULT_CACHE_TTL:J = 0x493e0L

.field private static final DEFAULT_MAX_CACHE_NUM:I = 0x1

.field private static final GROUP:Ljava/lang/String; = "weex_prerender_config"

.field private static final KEY_IS_SWITCH_ON:Ljava/lang/String; = "is_switch_on"

.field private static final KEY_MAX_CACHE_NUM:Ljava/lang/String; = "max_cache_num"

.field private static final KEY_TTL:Ljava/lang/String; = "ttl"

.field private static final TAG:Ljava/lang/String; = "PreRenderConfigImpl"


# instance fields
.field private mAdapter:Lc8/Hob;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    iput-object v0, p0, Lc8/mvb;->mAdapter:Lc8/Hob;

    .line 33
    return-void
.end method


# virtual methods
.method getMaxCacheNum()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 65
    iget-object v3, p0, Lc8/mvb;->mAdapter:Lc8/Hob;

    if-nez v3, :cond_1

    .line 79
    :cond_0
    :goto_0
    return v2

    .line 68
    :cond_1
    iget-object v3, p0, Lc8/mvb;->mAdapter:Lc8/Hob;

    const-string/jumbo v4, "weex_prerender_config"

    const-string/jumbo v5, "max_cache_num"

    const-string/jumbo v6, "1"

    invoke-interface {v3, v4, v5, v6}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 70
    const-string/jumbo v3, "PreRenderConfigImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cache num:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 74
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "PreRenderConfigImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method getTTL()J
    .locals 8

    .prologue
    const-wide/32 v2, 0x493e0

    .line 46
    iget-object v4, p0, Lc8/mvb;->mAdapter:Lc8/Hob;

    if-nez v4, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-wide v2

    .line 49
    :cond_1
    iget-object v4, p0, Lc8/mvb;->mAdapter:Lc8/Hob;

    const-string/jumbo v5, "weex_prerender_config"

    const-string/jumbo v6, "ttl"

    const-string/jumbo v7, "300000"

    invoke-interface {v4, v5, v6, v7}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 51
    const-string/jumbo v4, "PreRenderConfigImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ttl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 55
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PreRenderConfigImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method isSwitchOn()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 37
    iget-object v2, p0, Lc8/mvb;->mAdapter:Lc8/Hob;

    if-nez v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v1

    .line 40
    :cond_1
    iget-object v2, p0, Lc8/mvb;->mAdapter:Lc8/Hob;

    const-string/jumbo v3, "weex_prerender_config"

    const-string/jumbo v4, "is_switch_on"

    const-string/jumbo v5, "true"

    invoke-interface {v2, v3, v4, v5}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
