.class public final Lc8/XRe;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final authenticator:Lc8/YRe;

.field final certificatePinner:Lc8/qSe;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xSe;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lc8/BSe;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final url:Lc8/JSe;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILc8/BSe;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lc8/qSe;Lc8/YRe;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lc8/BSe;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p7, "certificatePinner"    # Lc8/qSe;
    .param p8, "authenticator"    # Lc8/YRe;
    .param p9, "proxy"    # Ljava/net/Proxy;
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lc8/BSe;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lc8/qSe;",
            "Lc8/YRe;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lc8/xSe;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Lc8/ISe;

    invoke-direct {v1}, Lc8/ISe;-><init>()V

    if-eqz p5, :cond_0

    const-string/jumbo v0, "https"

    .line 56
    :goto_0
    invoke-virtual {v1, v0}, Lc8/ISe;->scheme(Ljava/lang/String;)Lc8/ISe;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lc8/ISe;->host(Ljava/lang/String;)Lc8/ISe;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Lc8/ISe;->port(I)Lc8/ISe;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lc8/ISe;->build()Lc8/JSe;

    move-result-object v0

    iput-object v0, p0, Lc8/XRe;->url:Lc8/JSe;

    .line 61
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    const-string/jumbo v0, "http"

    goto :goto_0

    .line 62
    :cond_1
    iput-object p3, p0, Lc8/XRe;->dns:Lc8/BSe;

    .line 64
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    iput-object p4, p0, Lc8/XRe;->socketFactory:Ljavax/net/SocketFactory;

    .line 67
    if-nez p8, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    iput-object p8, p0, Lc8/XRe;->authenticator:Lc8/YRe;

    .line 70
    if-nez p10, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_4
    invoke-static {p10}, Lc8/ATe;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/XRe;->protocols:Ljava/util/List;

    .line 73
    if-nez p11, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_5
    invoke-static {p11}, Lc8/ATe;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/XRe;->connectionSpecs:Ljava/util/List;

    .line 76
    if-nez p12, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_6
    iput-object p12, p0, Lc8/XRe;->proxySelector:Ljava/net/ProxySelector;

    .line 79
    iput-object p9, p0, Lc8/XRe;->proxy:Ljava/net/Proxy;

    .line 80
    iput-object p5, p0, Lc8/XRe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 81
    iput-object p6, p0, Lc8/XRe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 82
    iput-object p7, p0, Lc8/XRe;->certificatePinner:Lc8/qSe;

    .line 83
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 173
    instance-of v2, p1, Lc8/XRe;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 174
    check-cast v0, Lc8/XRe;

    .line 175
    .local v0, "that":Lc8/XRe;
    iget-object v2, p0, Lc8/XRe;->url:Lc8/JSe;

    iget-object v3, v0, Lc8/XRe;->url:Lc8/JSe;

    invoke-virtual {v2, v3}, Lc8/JSe;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->dns:Lc8/BSe;

    iget-object v3, v0, Lc8/XRe;->dns:Lc8/BSe;

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->authenticator:Lc8/YRe;

    iget-object v3, v0, Lc8/XRe;->authenticator:Lc8/YRe;

    .line 177
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->protocols:Ljava/util/List;

    iget-object v3, v0, Lc8/XRe;->protocols:Ljava/util/List;

    .line 178
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->connectionSpecs:Ljava/util/List;

    iget-object v3, v0, Lc8/XRe;->connectionSpecs:Ljava/util/List;

    .line 179
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, v0, Lc8/XRe;->proxySelector:Ljava/net/ProxySelector;

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lc8/XRe;->proxy:Ljava/net/Proxy;

    .line 181
    invoke-static {v2, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lc8/XRe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 182
    invoke-static {v2, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lc8/XRe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 183
    invoke-static {v2, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/XRe;->certificatePinner:Lc8/qSe;

    iget-object v3, v0, Lc8/XRe;->certificatePinner:Lc8/qSe;

    .line 184
    invoke-static {v2, v3}, Lc8/ATe;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 186
    .end local v0    # "that":Lc8/XRe;
    :cond_0
    return v1
.end method

.method public getAuthenticator()Lc8/YRe;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lc8/XRe;->authenticator:Lc8/YRe;

    return-object v0
.end method

.method public getCertificatePinner()Lc8/qSe;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lc8/XRe;->certificatePinner:Lc8/qSe;

    return-object v0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/xSe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lc8/XRe;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getDns()Lc8/BSe;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/XRe;->dns:Lc8/BSe;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lc8/XRe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lc8/XRe;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lc8/XRe;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lc8/XRe;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc8/XRe;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lc8/XRe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getUriHost()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lc8/XRe;->url:Lc8/JSe;

    invoke-virtual {v0}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUriPort()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, Lc8/XRe;->url:Lc8/JSe;

    invoke-virtual {v0}, Lc8/JSe;->port()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 190
    const/16 v0, 0x11

    .line 191
    .local v0, "result":I
    iget-object v1, p0, Lc8/XRe;->url:Lc8/JSe;

    invoke-virtual {v1}, Lc8/JSe;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 192
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lc8/XRe;->dns:Lc8/BSe;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 193
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lc8/XRe;->authenticator:Lc8/YRe;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 194
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lc8/XRe;->protocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lc8/XRe;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 196
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lc8/XRe;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 197
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lc8/XRe;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/XRe;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 198
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lc8/XRe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/XRe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 199
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lc8/XRe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/XRe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int v0, v3, v1

    .line 200
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lc8/XRe;->certificatePinner:Lc8/qSe;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lc8/XRe;->certificatePinner:Lc8/qSe;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 201
    return v0

    :cond_1
    move v1, v2

    .line 197
    goto :goto_0

    :cond_2
    move v1, v2

    .line 198
    goto :goto_1

    :cond_3
    move v1, v2

    .line 199
    goto :goto_2
.end method

.method public url()Lc8/JSe;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lc8/XRe;->url:Lc8/JSe;

    return-object v0
.end method
