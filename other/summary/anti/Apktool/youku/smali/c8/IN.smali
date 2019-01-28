.class public Lc8/IN;
.super Ljava/lang/Object;
.source "RequestImpl.java"

# interfaces
.implements Lc8/uM;


# instance fields
.field private bizId:Ljava/lang/String;

.field private bodyEntry:Lanet/channel/request/BodyEntry;

.field private charset:Ljava/lang/String;

.field private connectTimeout:I

.field private extProperties:Ljava/util/Map;
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

.field private headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/fM;",
            ">;"
        }
    .end annotation
.end field

.field private isRedirect:Z

.field private method:Ljava/lang/String;

.field private params:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation
.end field

.field private readTimeout:I

.field private retryTime:I

.field private seqNo:Ljava/lang/String;

.field private uri:Ljava/net/URI;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/IN;->isRedirect:Z

    .line 29
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/IN;->method:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lc8/IN;->retryTime:I

    .line 32
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lc8/IN;->charset:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IN;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "urlStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/IN;->isRedirect:Z

    .line 29
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/IN;->method:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lc8/IN;->retryTime:I

    .line 32
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lc8/IN;->charset:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lc8/IN;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 55
    if-eqz p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "//"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/IN;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    const-string/jumbo v0, "anet.RequestImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url MalformedURLException error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "uri"    # Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/IN;->isRedirect:Z

    .line 29
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/IN;->method:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lc8/IN;->retryTime:I

    .line 32
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lc8/IN;->charset:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IN;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 45
    iput-object p1, p0, Lc8/IN;->uri:Ljava/net/URI;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/IN;->isRedirect:Z

    .line 29
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lc8/IN;->method:Ljava/lang/String;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lc8/IN;->retryTime:I

    .line 32
    const-string/jumbo v0, "utf-8"

    iput-object v0, p0, Lc8/IN;->charset:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/IN;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 50
    iput-object p1, p0, Lc8/IN;->url:Ljava/net/URL;

    .line 51
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v1, p0, Lc8/IN;->headers:Ljava/util/List;

    if-nez v1, :cond_2

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/IN;->headers:Ljava/util/List;

    .line 97
    :cond_2
    new-instance v0, Lc8/zN;

    invoke-direct {v0, p1, p2}, Lc8/zN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .local v0, "header":Lc8/fM;
    iget-object v1, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lc8/IN;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEntry()Lanet/channel/request/BodyEntry;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lc8/IN;->bodyEntry:Lanet/channel/request/BodyEntry;

    return-object v0
.end method

.method public getBodyHandler()Lc8/gM;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lc8/IN;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lc8/IN;->connectTimeout:I

    return v0
.end method

.method public getExtProperties()Ljava/util/Map;
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
    .line 297
    iget-object v0, p0, Lc8/IN;->extProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getExtProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lc8/IN;->extProperties:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/IN;->extProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lc8/IN;->isRedirect:Z

    return v0
.end method

.method public getHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/fM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lc8/IN;->headers:Ljava/util/List;

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lc8/fM;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    if-nez p1, :cond_1

    .line 131
    const/4 v0, 0x0

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 133
    :cond_1
    const/4 v0, 0x0

    .line 134
    .local v0, "headerArray":[Lc8/fM;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "hs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lanetwork/channel/Header;>;"
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 136
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 137
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/fM;

    invoke-interface {v3}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/fM;

    invoke-interface {v3}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Lc8/fM;

    .line 143
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lc8/IN;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lc8/IN;->params:Ljava/util/List;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lc8/IN;->readTimeout:I

    return v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lc8/IN;->retryTime:I

    return v0
.end method

.method public getSeqNo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lc8/IN;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lc8/IN;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lc8/IN;->url:Ljava/net/URL;

    return-object v0
.end method

.method public isCookieEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 254
    const-string/jumbo v0, "false"

    const-string/jumbo v1, "EnableCookie"

    invoke-virtual {p0, v1}, Lc8/IN;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtocolModifiable()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    const-string/jumbo v0, "false"

    const-string/jumbo v1, "EnableSchemeReplace"

    invoke-virtual {p0, v1}, Lc8/IN;->getExtProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeader(Lc8/fM;)V
    .locals 1
    .param p1, "header"    # Lc8/fM;

    .prologue
    .line 102
    iget-object v0, p0, Lc8/IN;->headers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 105
    :cond_0
    return-void
.end method

.method public setBizId(I)V
    .locals 1
    .param p1, "bizId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/IN;->bizId:Ljava/lang/String;

    .line 230
    return-void
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0
    .param p1, "bizId"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lc8/IN;->bizId:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setBodyEntry(Lanet/channel/request/BodyEntry;)V
    .locals 0
    .param p1, "bodyEntry"    # Lanet/channel/request/BodyEntry;

    .prologue
    .line 188
    iput-object p1, p0, Lc8/IN;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 189
    return-void
.end method

.method public setBodyHandler(Lc8/gM;)V
    .locals 1
    .param p1, "bodyHandler"    # Lc8/gM;

    .prologue
    .line 197
    new-instance v0, Lanetwork/channel/entity/BodyHandlerEntry;

    invoke-direct {v0, p1}, Lanetwork/channel/entity/BodyHandlerEntry;-><init>(Lc8/gM;)V

    iput-object v0, p0, Lc8/IN;->bodyEntry:Lanet/channel/request/BodyEntry;

    .line 198
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lc8/IN;->charset:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "socketTimeout"    # I

    .prologue
    .line 220
    iput p1, p0, Lc8/IN;->connectTimeout:I

    .line 221
    return-void
.end method

.method public setCookieEnabled(Z)V
    .locals 2
    .param p1, "needCookie"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    const-string/jumbo v1, "EnableCookie"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lc8/IN;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    return-void

    .line 262
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public setExtProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lc8/IN;->extProperties:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/IN;->extProperties:Ljava/util/Map;

    .line 285
    :cond_1
    iget-object v0, p0, Lc8/IN;->extProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .param p1, "isRedirect"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lc8/IN;->isRedirect:Z

    .line 80
    return-void
.end method

.method public setHeader(Lc8/fM;)V
    .locals 4
    .param p1, "header"    # Lc8/fM;

    .prologue
    .line 108
    if-nez p1, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    if-nez v3, :cond_2

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    .line 114
    :cond_2
    const/4 v0, 0x0

    .line 115
    .local v0, "i":I
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 116
    .local v2, "size":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 117
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/fM;

    invoke-interface {v3}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p1}, Lc8/fM;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 119
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 124
    iget-object v3, p0, Lc8/IN;->headers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 116
    .restart local v1    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/fM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Header;>;"
    iput-object p1, p0, Lc8/IN;->headers:Ljava/util/List;

    .line 88
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lc8/IN;->method:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setParams(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Lanetwork/channel/Param;>;"
    iput-object p1, p0, Lc8/IN;->params:Ljava/util/List;

    .line 180
    return-void
.end method

.method public setProtocolModifiable(Z)V
    .locals 2
    .param p1, "bModifiable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 270
    const-string/jumbo v1, "EnableSchemeReplace"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {p0, v1, v0}, Lc8/IN;->setExtProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void

    .line 270
    :cond_0
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 224
    iput p1, p0, Lc8/IN;->readTimeout:I

    .line 225
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0
    .param p1, "retryTime"    # I

    .prologue
    .line 163
    iput p1, p0, Lc8/IN;->retryTime:I

    .line 164
    return-void
.end method

.method public setSeqNo(Ljava/lang/String;)V
    .locals 0
    .param p1, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 244
    iput-object p1, p0, Lc8/IN;->seqNo:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setUri(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lc8/IN;->uri:Ljava/net/URI;

    .line 72
    return-void
.end method
