.class public Lc8/Nub;
.super Ljava/lang/Object;
.source "NetworkPrefetchInterceptor.java"

# interfaces
.implements Lc8/PN;


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkInterceptor"


# instance fields
.field private mRemoteConfig:Lc8/Mub;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lc8/dvb;

    invoke-direct {v0}, Lc8/dvb;-><init>()V

    iput-object v0, p0, Lc8/Nub;->mRemoteConfig:Lc8/Mub;

    .line 35
    return-void
.end method

.method static findAlikeUrlInCache(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lc8/Wub;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$PrefetchEntry;>;"
    invoke-static {p0, p1}, Lc8/bvb;->findAlikeEntryInCache(Ljava/lang/String;Ljava/util/Set;)Lc8/Wub;

    move-result-object v0

    .line 85
    .local v0, "entry":Lc8/Wub;
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, v0, Lc8/Wub;->url:Ljava/lang/String;

    .line 88
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static registerSelf()V
    .locals 2

    .prologue
    .line 39
    :try_start_0
    new-instance v1, Lc8/Nub;

    invoke-direct {v1}, Lc8/Nub;-><init>()V

    invoke-static {v1}, Lc8/QN;->addInterceptor(Lc8/PN;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 40
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 41
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public intercept(Lc8/ON;)Ljava/util/concurrent/Future;
    .locals 9
    .param p1, "chain"    # Lc8/ON;

    .prologue
    .line 47
    invoke-interface {p1}, Lc8/ON;->request()Lc8/eK;

    move-result-object v5

    .line 48
    .local v5, "request":Lc8/eK;
    invoke-interface {p1}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v1

    .line 50
    .local v1, "callback":Lc8/NN;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v7, v8, :cond_0

    iget-object v7, p0, Lc8/Nub;->mRemoteConfig:Lc8/Mub;

    invoke-interface {v7}, Lc8/Mub;->isSwitchOn()Z

    move-result v7

    if-nez v7, :cond_1

    .line 51
    :cond_0
    invoke-interface {p1, v5, v1}, Lc8/ON;->proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;

    move-result-object v7

    .line 77
    :goto_0
    return-object v7

    .line 54
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lc8/eK;->getUrlString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 55
    :cond_2
    invoke-interface {p1, v5, v1}, Lc8/ON;->proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;

    move-result-object v7

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {v5}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v3

    .line 59
    .local v3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v3, :cond_4

    const-string/jumbo v7, "weex"

    const-string/jumbo v8, "f-refer"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 61
    invoke-interface {p1, v5, v1}, Lc8/ON;->proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;

    move-result-object v7

    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {v5}, Lc8/eK;->getUrlString()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "url":Ljava/lang/String;
    invoke-static {}, Lc8/bvb;->getPrefetchEntries()Ljava/util/Set;

    move-result-object v2

    .line 67
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Lcom/alibaba/aliweex/adapter/module/prefetch/PrefetchManager$PrefetchEntry;>;"
    invoke-static {v6, v2}, Lc8/Nub;->findAlikeUrlInCache(Ljava/lang/String;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "alikeUrl":Ljava/lang/String;
    move-object v4, v5

    .line 69
    .local v4, "reDefinedRequest":Lc8/eK;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 70
    invoke-virtual {v5}, Lc8/eK;->newBuilder()Lc8/cK;

    move-result-object v7

    .line 71
    invoke-virtual {v7, v0}, Lc8/cK;->setUrl(Ljava/lang/String;)Lc8/cK;

    move-result-object v7

    .line 72
    invoke-virtual {v7}, Lc8/cK;->build()Lc8/eK;

    move-result-object v4

    .line 77
    :cond_5
    invoke-interface {p1, v4, v1}, Lc8/ON;->proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;

    move-result-object v7

    goto :goto_0
.end method
