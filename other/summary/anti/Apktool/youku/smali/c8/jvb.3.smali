.class public Lc8/jvb;
.super Lc8/ZUf;
.source "WXPrefetchModule.java"


# static fields
.field public static final PREFETCH_MODULE_NAME:Ljava/lang/String; = "prefetch"

.field private static final TAG:Ljava/lang/String; = "WXPrefetchModule"

.field private static final WH_WX:Ljava/lang/String; = "wh_weex"

.field private static final WX_TPL:Ljava/lang/String; = "_wx_tpl"


# instance fields
.field private mPrefetchManager:Lc8/bvb;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p0}, Lc8/jvb;->getBundleUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private createPrefetchManagerIfNeeded()Lc8/bvb;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getWXHttpAdapter()Lc8/DVf;

    move-result-object v0

    invoke-static {v0}, Lc8/bvb;->create(Lc8/DVf;)Lc8/Tub;

    move-result-object v0

    new-instance v1, Lc8/dvb;

    invoke-direct {v1}, Lc8/dvb;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Lc8/Tub;->withRemoteConfig(Lc8/Mub;)Lc8/Tub;

    move-result-object v0

    new-instance v1, Lc8/ivb;

    invoke-direct {v1, p0}, Lc8/ivb;-><init>(Lc8/jvb;)V

    .line 76
    invoke-virtual {v0, v1}, Lc8/Tub;->withUriProcessor(Lc8/avb;)Lc8/Tub;

    move-result-object v0

    iget-object v1, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    .line 90
    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/Jub;->createDefault(Landroid/content/Context;)Lc8/Iub;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Tub;->withConnectionCheck(Lc8/Iub;)Lc8/Tub;

    move-result-object v0

    new-instance v1, Lc8/hvb;

    invoke-direct {v1, p0}, Lc8/hvb;-><init>(Lc8/jvb;)V

    .line 91
    invoke-virtual {v0, v1}, Lc8/Tub;->withExternalCacheChecker(Lc8/Uub;)Lc8/Tub;

    move-result-object v0

    new-instance v1, Lc8/gvb;

    invoke-direct {v1, p0}, Lc8/gvb;-><init>(Lc8/jvb;)V

    .line 106
    invoke-virtual {v0, v1}, Lc8/Tub;->withListener(Lc8/Vub;)Lc8/Tub;

    move-result-object v0

    new-instance v1, Lc8/fvb;

    invoke-direct {v1, p0}, Lc8/fvb;-><init>(Lc8/jvb;)V

    .line 132
    invoke-virtual {v0, v1}, Lc8/Tub;->withThreadExecutor(Ljava/util/concurrent/Executor;)Lc8/Tub;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lc8/Tub;->build()Lc8/bvb;

    move-result-object v0

    return-object v0
.end method

.method private static getBundleUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 151
    .local v5, "uri":Landroid/net/Uri;
    const-string/jumbo v7, "wh_weex"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 169
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v5

    .line 154
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v7, "_wx_tpl"

    invoke-virtual {v5, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, "bundleUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 156
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 157
    .local v1, "bundleUri":Landroid/net/Uri;
    if-eqz v1, :cond_3

    .line 158
    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    .line 159
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 160
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 161
    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v8, "_wx_tpl"

    invoke-static {v3, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 162
    invoke-virtual {v5, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 163
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v0, v3, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 166
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    .line 169
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "bundleUri":Landroid/net/Uri;
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private supplyIgnoreParams(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "ignoreParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "ignoreList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "_wx_f_"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "p":Ljava/lang/String;
    const-string/jumbo v3, "_wx_f_"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    .end local v1    # "p":Ljava/lang/String;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addTask(Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "href"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lc8/KVf;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "ignoreParams":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v2, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getWXHttpAdapter()Lc8/DVf;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lc8/jvb;->mPrefetchManager:Lc8/bvb;

    if-nez v2, :cond_2

    .line 55
    invoke-direct {p0}, Lc8/jvb;->createPrefetchManagerIfNeeded()Lc8/bvb;

    move-result-object v2

    iput-object v2, p0, Lc8/jvb;->mPrefetchManager:Lc8/bvb;

    .line 60
    :cond_2
    :try_start_0
    iget-object v2, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "request"

    invoke-virtual {v2, v3, v4}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "finalUrl":Ljava/lang/String;
    iget-object v2, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 63
    iget-object v2, p0, Lc8/jvb;->mPrefetchManager:Lc8/bvb;

    invoke-direct {p0, p2}, Lc8/jvb;->supplyIgnoreParams(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lc8/jvb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v4}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v3, v4, v5}, Lc8/bvb;->doPrefetchWithDelay(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v1    # "finalUrl":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WXPrefetchModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "finalUrl":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v2, "WXPrefetchModule"

    const-string/jumbo v3, "instance id not found"

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lc8/jvb;->mPrefetchManager:Lc8/bvb;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lc8/jvb;->mPrefetchManager:Lc8/bvb;

    invoke-virtual {v0}, Lc8/bvb;->destroy()V

    .line 190
    :cond_0
    return-void
.end method
