.class public Lc8/Jco;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private transient host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private querys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transient ref:Ljava/lang/String;

.field private transient urlStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lc8/Jco;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "schema"    # Ljava/lang/String;
    .param p2, "urlStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lc8/Jco;->querys:Ljava/util/Map;

    .line 29
    iput-object p2, p0, Lc8/Jco;->urlStr:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 32
    new-instance v3, Ljava/net/URL;

    const-string/jumbo v4, "http://"

    invoke-virtual {p2, p1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 36
    .local v3, "url":Ljava/net/URL;
    :goto_0
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Jco;->host:Ljava/lang/String;

    .line 37
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Jco;->path:Ljava/lang/String;

    .line 38
    invoke-virtual {v3}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lc8/Jco;->ref:Ljava/lang/String;

    .line 39
    new-instance v2, Lc8/Nco;

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lc8/Nco;-><init>(Ljava/lang/String;)V

    .line 40
    .local v2, "sanitizer":Lc8/Nco;
    invoke-virtual {v2}, Lc8/Nco;->getParameterList()Ljava/util/List;

    move-result-object v1

    .line 41
    .local v1, "params":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/interfaces/UrlQueryExtractor$ParameterValuePair;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lco;

    .line 43
    .local v0, "param":Lc8/Lco;
    iget-object v5, p0, Lc8/Jco;->querys:Ljava/util/Map;

    iget-object v6, v0, Lc8/Lco;->mParameter:Ljava/lang/String;

    iget-object v7, v0, Lc8/Lco;->mValue:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 34
    .end local v0    # "param":Lc8/Lco;
    .end local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/interfaces/UrlQueryExtractor$ParameterValuePair;>;"
    .end local v2    # "sanitizer":Lc8/Nco;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_0

    .line 46
    .restart local v1    # "params":Ljava/util/List;, "Ljava/util/List<Lcom/youku/us/baseuikit/webview/interaction/interfaces/UrlQueryExtractor$ParameterValuePair;>;"
    .restart local v2    # "sanitizer":Lc8/Nco;
    :cond_1
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lc8/Jco;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 76
    iget-object v0, p0, Lc8/Jco;->querys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParamInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 96
    iget-object v0, p0, Lc8/Jco;->querys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getParamInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "defaul"    # I

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lc8/Jco;->hasParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    iget-object v1, p0, Lc8/Jco;->querys:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 115
    .end local p2    # "defaul":I
    :cond_0
    :goto_0
    return p2

    .line 110
    .restart local p2    # "defaul":I
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getParamLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lc8/Jco;->querys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getParamLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "defaul"    # J

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lc8/Jco;->hasParam(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    :try_start_0
    iget-object v1, p0, Lc8/Jco;->querys:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 146
    .end local p2    # "defaul":J
    :cond_0
    :goto_0
    return-wide p2

    .line 141
    .restart local p2    # "defaul":J
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/Jco;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lc8/Jco;->querys:Ljava/util/Map;

    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lc8/Jco;->ref:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lc8/Jco;->urlStr:Ljava/lang/String;

    return-object v0
.end method

.method public hasParam(Ljava/lang/String;)Z
    .locals 1
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Jco;->querys:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lc8/Jco;->urlStr:Ljava/lang/String;

    return-object v0
.end method
