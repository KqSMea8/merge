.class public Lc8/Xtf;
.super Ljava/lang/Object;
.source "NetworkInterceptor.java"

# interfaces
.implements Lc8/PN;


# static fields
.field private static final ORANGE_REQ_HEADER:Ljava/lang/String; = "a-orange-q"

.field private static final ORANGE_RES_HEADER:Ljava/lang/String; = "a-orange-p"

.field private static final TAG:Ljava/lang/String; = "NetworkInterceptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/util/Map;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0, p1}, Lc8/Xtf;->getOrangeFromKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOrangeFromKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "headerKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 92
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 93
    :cond_0
    const-string/jumbo v5, "NetworkInterceptor"

    const-string/jumbo v6, "getOrangeFromKey input null"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    :goto_0
    return-object v2

    .line 97
    :cond_1
    const/4 v4, 0x0

    .line 98
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v4, Ljava/util/List;

    .line 105
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v4    # "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 106
    :cond_4
    const-string/jumbo v5, "NetworkInterceptor"

    const-string/jumbo v6, "getOrangeFromKey no a-orange-p"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 110
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 111
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string/jumbo v6, "resourceId"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 112
    const-string/jumbo v5, "NetworkInterceptor"

    const-string/jumbo v6, "getOrangeFromKey"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "value"

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-static {v5, v6, v7}, Lc8/buf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    const/4 v2, 0x0

    .line 115
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v5, "utf-8"

    invoke-static {v3, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v5, "NetworkInterceptor"

    const-string/jumbo v6, "getOrangeFromKey error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v0, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 122
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_7
    const-string/jumbo v5, "NetworkInterceptor"

    const-string/jumbo v6, "parseValue no resourceId"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public intercept(Lc8/ON;)Ljava/util/concurrent/Future;
    .locals 7
    .param p1, "chain"    # Lc8/ON;

    .prologue
    .line 34
    invoke-interface {p1}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    .line 35
    .local v2, "request":Lc8/eK;
    invoke-interface {p1}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v0

    .line 38
    .local v0, "callback":Lc8/NN;
    const/4 v3, 0x0

    .line 39
    .local v3, "result":Z
    invoke-virtual {v2}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 40
    sget-object v4, Lc8/Ksf;->mProbeHosts:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 41
    .local v1, "orangeHost":Ljava/lang/String;
    invoke-virtual {v2}, Lc8/eK;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    const/4 v3, 0x1

    .line 47
    .end local v1    # "orangeHost":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_2

    .line 49
    invoke-interface {p1}, Lc8/ON;->request()Lc8/eK;

    move-result-object v4

    invoke-virtual {v4}, Lc8/eK;->newBuilder()Lc8/cK;

    move-result-object v4

    const-string/jumbo v5, "a-orange-q"

    sget-object v6, Lc8/Ksf;->mOrangeHeader:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lc8/cK;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lc8/cK;

    move-result-object v4

    invoke-virtual {v4}, Lc8/cK;->build()Lc8/eK;

    move-result-object v2

    .line 52
    new-instance v0, Lc8/Wtf;

    .end local v0    # "callback":Lc8/NN;
    invoke-direct {v0, p0, p1}, Lc8/Wtf;-><init>(Lc8/Xtf;Lc8/ON;)V

    .line 88
    .restart local v0    # "callback":Lc8/NN;
    :cond_2
    invoke-interface {p1, v2, v0}, Lc8/ON;->proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;

    move-result-object v4

    return-object v4
.end method
