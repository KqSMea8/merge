.class public Lc8/sbo;
.super Ljava/lang/Object;
.source "NavUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNavUri(Lc8/bcf;Ljava/util/Map;)Lc8/bcf;
    .locals 3
    .param p0, "navUri"    # Lc8/bcf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/bcf;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/bcf;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    :cond_0
    return-object p0

    .line 83
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 84
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/bcf;->param(Ljava/lang/String;Ljava/lang/String;)Lc8/bcf;

    goto :goto_0
.end method

.method private static getParameterBundle(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "parameter":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 100
    :cond_1
    return-object v0

    .line 95
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static gotoNativeSchemeUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    :try_start_0
    const-string/jumbo v7, "://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    .line 53
    const/4 v7, 0x0

    const-string/jumbo v8, "://"

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 54
    .local v6, "schemeUrl":Ljava/lang/String;
    new-instance v5, Lc8/Jco;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, p1}, Lc8/Jco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v5, "request":Lc8/Jco;
    invoke-virtual {v5}, Lc8/Jco;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v5}, Lc8/Jco;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "host":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    const-string/jumbo v7, "/"

    const-string/jumbo v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 62
    :cond_0
    invoke-virtual {v5}, Lc8/Jco;->getQuery()Ljava/util/Map;

    move-result-object v7

    invoke-static {v7}, Lc8/sbo;->getParameterBundle(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    .line 63
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-static {v6}, Lc8/bcf;->scheme(Ljava/lang/String;)Lc8/acf;

    move-result-object v7

    invoke-interface {v7, v2}, Lc8/acf;->host(Ljava/lang/String;)Lc8/bcf;

    move-result-object v7

    invoke-virtual {v7, v4}, Lc8/bcf;->path(Ljava/lang/String;)Lc8/bcf;

    move-result-object v3

    .line 64
    .local v3, "navUri":Lc8/bcf;
    if-eqz v0, :cond_2

    .line 65
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v7

    invoke-virtual {v7, v0}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v7

    invoke-virtual {v5}, Lc8/Jco;->getQuery()Ljava/util/Map;

    move-result-object v8

    invoke-static {v3, v8}, Lc8/sbo;->getNavUri(Lc8/bcf;Ljava/util/Map;)Lc8/bcf;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/Ybf;->toUri(Lc8/bcf;)Z

    .line 76
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "navUri":Lc8/bcf;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "request":Lc8/Jco;
    .end local v6    # "schemeUrl":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 67
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "host":Ljava/lang/String;
    .restart local v3    # "navUri":Lc8/bcf;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v5    # "request":Lc8/Jco;
    .restart local v6    # "schemeUrl":Ljava/lang/String;
    :cond_2
    invoke-static {p0}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v7

    invoke-virtual {v5}, Lc8/Jco;->getQuery()Ljava/util/Map;

    move-result-object v8

    invoke-static {v3, v8}, Lc8/sbo;->getNavUri(Lc8/bcf;Ljava/util/Map;)Lc8/bcf;

    move-result-object v8

    invoke-virtual {v7, v8}, Lc8/Ybf;->toUri(Lc8/bcf;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 70
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "host":Ljava/lang/String;
    .end local v3    # "navUri":Lc8/bcf;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "request":Lc8/Jco;
    .end local v6    # "schemeUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static routerActionUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-static {p1}, Lc8/abo;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 37
    :cond_0
    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const-class v0, Lc8/Xgn;

    invoke-static {v0}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xgn;

    invoke-interface {v0, p0, p1}, Lc8/Xgn;->goWebView(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p0, p1}, Lc8/sbo;->gotoNativeSchemeUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
