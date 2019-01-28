.class public Lc8/dvb;
.super Ljava/lang/Object;
.source "RemoteConfigImpl.java"

# interfaces
.implements Lc8/Mub;


# static fields
.field static final GROUP:Ljava/lang/String; = "aliweex_link_component"

.field private static final KEY_DELAY_MILLIS:Ljava/lang/String; = "delay_time"

.field private static final KEY_IGNORE_PARAMS_BLACK_LIST:Ljava/lang/String; = "ignore_params_black_list"

.field private static final KEY_MAX_CACHE_NUM:Ljava/lang/String; = "max_cache_num"

.field static final KEY_SWITCH_STATUS:Ljava/lang/String; = "switch_status"

.field private static final TAG:Ljava/lang/String; = "RemoteConfigImpl"


# instance fields
.field private mAdapter:Lc8/Hob;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    iput-object v0, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    .line 32
    return-void
.end method


# virtual methods
.method public getDelay()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x5dc

    .line 61
    iget-object v4, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    if-nez v4, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-wide v2

    .line 64
    :cond_1
    iget-object v4, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    const-string/jumbo v5, "aliweex_link_component"

    const-string/jumbo v6, "delay_time"

    const-string/jumbo v7, "1500"

    invoke-interface {v4, v5, v6, v7}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 67
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "RemoteConfigImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getIgnoreParamsBlackList()Ljava/util/List;
    .locals 6
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v2, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    if-nez v2, :cond_0

    .line 79
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 92
    :goto_0
    return-object v2

    .line 81
    :cond_0
    iget-object v2, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    const-string/jumbo v3, "aliweex_link_component"

    const-string/jumbo v4, "ignore_params_black_list"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 86
    :cond_1
    :try_start_0
    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "RemoteConfigImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getMaxCacheNum()I
    .locals 7

    .prologue
    const/4 v2, 0x5

    .line 45
    iget-object v3, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    if-nez v3, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v2

    .line 48
    :cond_1
    iget-object v3, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    const-string/jumbo v4, "aliweex_link_component"

    const-string/jumbo v5, "max_cache_num"

    const-string/jumbo v6, "5"

    invoke-interface {v3, v4, v5, v6}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "result":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RemoteConfigImpl"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isSwitchOn()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 36
    iget-object v2, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    if-nez v2, :cond_1

    .line 40
    :cond_0
    :goto_0
    return v1

    .line 39
    :cond_1
    iget-object v2, p0, Lc8/dvb;->mAdapter:Lc8/Hob;

    const-string/jumbo v3, "aliweex_link_component"

    const-string/jumbo v4, "switch_status"

    const-string/jumbo v5, "on"

    invoke-interface {v2, v3, v4, v5}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "result":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "on"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
