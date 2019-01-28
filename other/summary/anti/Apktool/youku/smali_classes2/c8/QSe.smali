.class public Lc8/QSe;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xSe;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field private authenticator:Lc8/YRe;

.field private cache:Lc8/fSe;

.field private certificatePinner:Lc8/qSe;

.field private connectTimeout:I

.field private connectionPool:Lc8/uSe;

.field private connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xSe;",
            ">;"
        }
    .end annotation
.end field

.field private cookieHandler:Ljava/net/CookieHandler;

.field private dispatcher:Lc8/zSe;

.field private dns:Lc8/BSe;

.field private followRedirects:Z

.field private followSslRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/LSe;",
            ">;"
        }
    .end annotation
.end field

.field private internalCache:Lc8/qTe;

.field private final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/LSe;",
            ">;"
        }
    .end annotation
.end field

.field private protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private retryOnConnectionFailure:Z

.field private final routeDatabase:Lc8/yTe;

.field private socketFactory:Ljavax/net/SocketFactory;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-array v0, v5, [Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v2

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    aput-object v1, v0, v4

    invoke-static {v0}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/QSe;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 57
    new-array v0, v5, [Lc8/xSe;

    sget-object v1, Lc8/xSe;->MODERN_TLS:Lc8/xSe;

    aput-object v1, v0, v2

    sget-object v1, Lc8/xSe;->COMPATIBLE_TLS:Lc8/xSe;

    aput-object v1, v0, v3

    sget-object v1, Lc8/xSe;->CLEARTEXT:Lc8/xSe;

    aput-object v1, v0, v4

    invoke-static {v0}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc8/QSe;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 61
    new-instance v0, Lc8/PSe;

    invoke-direct {v0}, Lc8/PSe;-><init>()V

    sput-object v0, Lc8/pTe;->instance:Lc8/pTe;

    .line 115
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/QSe;->interceptors:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/QSe;->networkInterceptors:Ljava/util/List;

    .line 141
    iput-boolean v1, p0, Lc8/QSe;->followSslRedirects:Z

    .line 142
    iput-boolean v1, p0, Lc8/QSe;->followRedirects:Z

    .line 143
    iput-boolean v1, p0, Lc8/QSe;->retryOnConnectionFailure:Z

    .line 144
    iput v2, p0, Lc8/QSe;->connectTimeout:I

    .line 145
    iput v2, p0, Lc8/QSe;->readTimeout:I

    .line 146
    iput v2, p0, Lc8/QSe;->writeTimeout:I

    .line 149
    new-instance v0, Lc8/yTe;

    invoke-direct {v0}, Lc8/yTe;-><init>()V

    iput-object v0, p0, Lc8/QSe;->routeDatabase:Lc8/yTe;

    .line 150
    new-instance v0, Lc8/zSe;

    invoke-direct {v0}, Lc8/zSe;-><init>()V

    iput-object v0, p0, Lc8/QSe;->dispatcher:Lc8/zSe;

    .line 151
    return-void
.end method

.method private constructor <init>(Lc8/QSe;)V
    .locals 3
    .param p1, "okHttpClient"    # Lc8/QSe;

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/QSe;->interceptors:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/QSe;->networkInterceptors:Ljava/util/List;

    .line 141
    iput-boolean v1, p0, Lc8/QSe;->followSslRedirects:Z

    .line 142
    iput-boolean v1, p0, Lc8/QSe;->followRedirects:Z

    .line 143
    iput-boolean v1, p0, Lc8/QSe;->retryOnConnectionFailure:Z

    .line 144
    iput v2, p0, Lc8/QSe;->connectTimeout:I

    .line 145
    iput v2, p0, Lc8/QSe;->readTimeout:I

    .line 146
    iput v2, p0, Lc8/QSe;->writeTimeout:I

    .line 154
    iget-object v0, p1, Lc8/QSe;->routeDatabase:Lc8/yTe;

    iput-object v0, p0, Lc8/QSe;->routeDatabase:Lc8/yTe;

    .line 155
    iget-object v0, p1, Lc8/QSe;->dispatcher:Lc8/zSe;

    iput-object v0, p0, Lc8/QSe;->dispatcher:Lc8/zSe;

    .line 156
    iget-object v0, p1, Lc8/QSe;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lc8/QSe;->proxy:Ljava/net/Proxy;

    .line 157
    iget-object v0, p1, Lc8/QSe;->protocols:Ljava/util/List;

    iput-object v0, p0, Lc8/QSe;->protocols:Ljava/util/List;

    .line 158
    iget-object v0, p1, Lc8/QSe;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lc8/QSe;->connectionSpecs:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lc8/QSe;->interceptors:Ljava/util/List;

    iget-object v1, p1, Lc8/QSe;->interceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v0, p0, Lc8/QSe;->networkInterceptors:Ljava/util/List;

    iget-object v1, p1, Lc8/QSe;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p1, Lc8/QSe;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lc8/QSe;->proxySelector:Ljava/net/ProxySelector;

    .line 162
    iget-object v0, p1, Lc8/QSe;->cookieHandler:Ljava/net/CookieHandler;

    iput-object v0, p0, Lc8/QSe;->cookieHandler:Ljava/net/CookieHandler;

    .line 163
    iget-object v0, p1, Lc8/QSe;->cache:Lc8/fSe;

    iput-object v0, p0, Lc8/QSe;->cache:Lc8/fSe;

    .line 164
    iget-object v0, p0, Lc8/QSe;->cache:Lc8/fSe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/QSe;->cache:Lc8/fSe;

    iget-object v0, v0, Lc8/fSe;->internalCache:Lc8/qTe;

    :goto_0
    iput-object v0, p0, Lc8/QSe;->internalCache:Lc8/qTe;

    .line 165
    iget-object v0, p1, Lc8/QSe;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lc8/QSe;->socketFactory:Ljavax/net/SocketFactory;

    .line 166
    iget-object v0, p1, Lc8/QSe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lc8/QSe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 167
    iget-object v0, p1, Lc8/QSe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lc8/QSe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 168
    iget-object v0, p1, Lc8/QSe;->certificatePinner:Lc8/qSe;

    iput-object v0, p0, Lc8/QSe;->certificatePinner:Lc8/qSe;

    .line 169
    iget-object v0, p1, Lc8/QSe;->authenticator:Lc8/YRe;

    iput-object v0, p0, Lc8/QSe;->authenticator:Lc8/YRe;

    .line 170
    iget-object v0, p1, Lc8/QSe;->connectionPool:Lc8/uSe;

    iput-object v0, p0, Lc8/QSe;->connectionPool:Lc8/uSe;

    .line 171
    iget-object v0, p1, Lc8/QSe;->dns:Lc8/BSe;

    iput-object v0, p0, Lc8/QSe;->dns:Lc8/BSe;

    .line 172
    iget-boolean v0, p1, Lc8/QSe;->followSslRedirects:Z

    iput-boolean v0, p0, Lc8/QSe;->followSslRedirects:Z

    .line 173
    iget-boolean v0, p1, Lc8/QSe;->followRedirects:Z

    iput-boolean v0, p0, Lc8/QSe;->followRedirects:Z

    .line 174
    iget-boolean v0, p1, Lc8/QSe;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lc8/QSe;->retryOnConnectionFailure:Z

    .line 175
    iget v0, p1, Lc8/QSe;->connectTimeout:I

    iput v0, p0, Lc8/QSe;->connectTimeout:I

    .line 176
    iget v0, p1, Lc8/QSe;->readTimeout:I

    iput v0, p0, Lc8/QSe;->readTimeout:I

    .line 177
    iget v0, p1, Lc8/QSe;->writeTimeout:I

    iput v0, p0, Lc8/QSe;->writeTimeout:I

    .line 178
    return-void

    .line 164
    :cond_0
    iget-object v0, p1, Lc8/QSe;->internalCache:Lc8/qTe;

    goto :goto_0
.end method

.method private declared-synchronized getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 4

    .prologue
    .line 629
    monitor-enter p0

    :try_start_0
    sget-object v1, Lc8/QSe;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 631
    :try_start_1
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 632
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 633
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    sput-object v1, Lc8/QSe;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 638
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :cond_0
    :try_start_2
    sget-object v1, Lc8/QSe;->defaultSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 635
    :catch_0
    move-exception v1

    :try_start_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 629
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public cancel(Ljava/lang/Object;)Lc8/QSe;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 571
    invoke-virtual {p0}, Lc8/QSe;->getDispatcher()Lc8/zSe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/zSe;->cancel(Ljava/lang/Object;)V

    .line 572
    return-object p0
.end method

.method public clone()Lc8/QSe;
    .locals 1

    .prologue
    .line 643
    new-instance v0, Lc8/QSe;

    invoke-direct {v0, p0}, Lc8/QSe;-><init>(Lc8/QSe;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lc8/QSe;->clone()Lc8/QSe;

    move-result-object v0

    return-object v0
.end method

.method copyWithDefaults()Lc8/QSe;
    .locals 2

    .prologue
    .line 580
    new-instance v0, Lc8/QSe;

    invoke-direct {v0, p0}, Lc8/QSe;-><init>(Lc8/QSe;)V

    .line 581
    .local v0, "result":Lc8/QSe;
    iget-object v1, v0, Lc8/QSe;->proxySelector:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    .line 582
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lc8/QSe;->proxySelector:Ljava/net/ProxySelector;

    .line 584
    :cond_0
    iget-object v1, v0, Lc8/QSe;->cookieHandler:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    .line 585
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lc8/QSe;->cookieHandler:Ljava/net/CookieHandler;

    .line 587
    :cond_1
    iget-object v1, v0, Lc8/QSe;->socketFactory:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    .line 588
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lc8/QSe;->socketFactory:Ljavax/net/SocketFactory;

    .line 590
    :cond_2
    iget-object v1, v0, Lc8/QSe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    .line 591
    invoke-direct {p0}, Lc8/QSe;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, v0, Lc8/QSe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 593
    :cond_3
    iget-object v1, v0, Lc8/QSe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v1, :cond_4

    .line 594
    sget-object v1, Lc8/kVe;->INSTANCE:Lc8/kVe;

    iput-object v1, v0, Lc8/QSe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 596
    :cond_4
    iget-object v1, v0, Lc8/QSe;->certificatePinner:Lc8/qSe;

    if-nez v1, :cond_5

    .line 597
    sget-object v1, Lc8/qSe;->DEFAULT:Lc8/qSe;

    iput-object v1, v0, Lc8/QSe;->certificatePinner:Lc8/qSe;

    .line 599
    :cond_5
    iget-object v1, v0, Lc8/QSe;->authenticator:Lc8/YRe;

    if-nez v1, :cond_6

    .line 600
    sget-object v1, Lc8/vUe;->INSTANCE:Lc8/YRe;

    iput-object v1, v0, Lc8/QSe;->authenticator:Lc8/YRe;

    .line 602
    :cond_6
    iget-object v1, v0, Lc8/QSe;->connectionPool:Lc8/uSe;

    if-nez v1, :cond_7

    .line 603
    invoke-static {}, Lc8/uSe;->getDefault()Lc8/uSe;

    move-result-object v1

    iput-object v1, v0, Lc8/QSe;->connectionPool:Lc8/uSe;

    .line 605
    :cond_7
    iget-object v1, v0, Lc8/QSe;->protocols:Ljava/util/List;

    if-nez v1, :cond_8

    .line 606
    sget-object v1, Lc8/QSe;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v1, v0, Lc8/QSe;->protocols:Ljava/util/List;

    .line 608
    :cond_8
    iget-object v1, v0, Lc8/QSe;->connectionSpecs:Ljava/util/List;

    if-nez v1, :cond_9

    .line 609
    sget-object v1, Lc8/QSe;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v1, v0, Lc8/QSe;->connectionSpecs:Ljava/util/List;

    .line 611
    :cond_9
    iget-object v1, v0, Lc8/QSe;->dns:Lc8/BSe;

    if-nez v1, :cond_a

    .line 612
    sget-object v1, Lc8/BSe;->SYSTEM:Lc8/BSe;

    iput-object v1, v0, Lc8/QSe;->dns:Lc8/BSe;

    .line 614
    :cond_a
    return-object v0
.end method

.method public getAuthenticator()Lc8/YRe;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lc8/QSe;->authenticator:Lc8/YRe;

    return-object v0
.end method

.method public getCache()Lc8/fSe;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lc8/QSe;->cache:Lc8/fSe;

    return-object v0
.end method

.method public getCertificatePinner()Lc8/qSe;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lc8/QSe;->certificatePinner:Lc8/qSe;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lc8/QSe;->connectTimeout:I

    return v0
.end method

.method public getConnectionPool()Lc8/uSe;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lc8/QSe;->connectionPool:Lc8/uSe;

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
    .line 538
    iget-object v0, p0, Lc8/QSe;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lc8/QSe;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public getDispatcher()Lc8/zSe;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lc8/QSe;->dispatcher:Lc8/zSe;

    return-object v0
.end method

.method public getDns()Lc8/BSe;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lc8/QSe;->dns:Lc8/BSe;

    return-object v0
.end method

.method public getFollowRedirects()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lc8/QSe;->followRedirects:Z

    return v0
.end method

.method public getFollowSslRedirects()Z
    .locals 1

    .prologue
    .line 427
    iget-boolean v0, p0, Lc8/QSe;->followSslRedirects:Z

    return v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lc8/QSe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

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
    .line 529
    iget-object v0, p0, Lc8/QSe;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lc8/QSe;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lc8/QSe;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lc8/QSe;->readTimeout:I

    return v0
.end method

.method public getRetryOnConnectionFailure()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lc8/QSe;->retryOnConnectionFailure:Z

    return v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lc8/QSe;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lc8/QSe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getWriteTimeout()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lc8/QSe;->writeTimeout:I

    return v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/LSe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 547
    iget-object v0, p0, Lc8/QSe;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lc8/qTe;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lc8/QSe;->internalCache:Lc8/qTe;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/LSe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 556
    iget-object v0, p0, Lc8/QSe;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newCall(Lc8/VSe;)Lc8/mSe;
    .locals 1
    .param p1, "request"    # Lc8/VSe;

    .prologue
    .line 563
    new-instance v0, Lc8/mSe;

    invoke-direct {v0, p0, p1}, Lc8/mSe;-><init>(Lc8/QSe;Lc8/VSe;)V

    return-object v0
.end method

.method routeDatabase()Lc8/yTe;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lc8/QSe;->routeDatabase:Lc8/yTe;

    return-object v0
.end method

.method public setAuthenticator(Lc8/YRe;)Lc8/QSe;
    .locals 0
    .param p1, "authenticator"    # Lc8/YRe;

    .prologue
    .line 391
    iput-object p1, p0, Lc8/QSe;->authenticator:Lc8/YRe;

    .line 392
    return-object p0
.end method

.method public setCache(Lc8/fSe;)Lc8/QSe;
    .locals 1
    .param p1, "cache"    # Lc8/fSe;

    .prologue
    .line 298
    iput-object p1, p0, Lc8/QSe;->cache:Lc8/fSe;

    .line 299
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/QSe;->internalCache:Lc8/qTe;

    .line 300
    return-object p0
.end method

.method public setCertificatePinner(Lc8/qSe;)Lc8/QSe;
    .locals 0
    .param p1, "certificatePinner"    # Lc8/qSe;

    .prologue
    .line 375
    iput-object p1, p0, Lc8/QSe;->certificatePinner:Lc8/qSe;

    .line 376
    return-object p0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 187
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 190
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lc8/QSe;->connectTimeout:I

    .line 193
    return-void
.end method

.method public setConnectionPool(Lc8/uSe;)Lc8/QSe;
    .locals 0
    .param p1, "connectionPool"    # Lc8/uSe;

    .prologue
    .line 406
    iput-object p1, p0, Lc8/QSe;->connectionPool:Lc8/uSe;

    .line 407
    return-object p0
.end method

.method public setConnectionSpecs(Ljava/util/List;)Lc8/QSe;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/xSe;",
            ">;)",
            "Lc8/QSe;"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    invoke-static {p1}, Lc8/ATe;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/QSe;->connectionSpecs:Ljava/util/List;

    .line 534
    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lc8/QSe;
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .prologue
    .line 279
    iput-object p1, p0, Lc8/QSe;->cookieHandler:Ljava/net/CookieHandler;

    .line 280
    return-object p0
.end method

.method public setDispatcher(Lc8/zSe;)Lc8/QSe;
    .locals 2
    .param p1, "dispatcher"    # Lc8/zSe;

    .prologue
    .line 474
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    iput-object p1, p0, Lc8/QSe;->dispatcher:Lc8/zSe;

    .line 476
    return-object p0
.end method

.method public setDns(Lc8/BSe;)Lc8/QSe;
    .locals 0
    .param p1, "dns"    # Lc8/BSe;

    .prologue
    .line 313
    iput-object p1, p0, Lc8/QSe;->dns:Lc8/BSe;

    .line 314
    return-object p0
.end method

.method public setFollowRedirects(Z)V
    .locals 0
    .param p1, "followRedirects"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lc8/QSe;->followRedirects:Z

    .line 433
    return-void
.end method

.method public setFollowSslRedirects(Z)Lc8/QSe;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Lc8/QSe;->followSslRedirects:Z

    .line 423
    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lc8/QSe;
    .locals 0
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 360
    iput-object p1, p0, Lc8/QSe;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 361
    return-object p0
.end method

.method setInternalCache(Lc8/qTe;)V
    .locals 1
    .param p1, "internalCache"    # Lc8/qTe;

    .prologue
    .line 289
    iput-object p1, p0, Lc8/QSe;->internalCache:Lc8/qTe;

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/QSe;->cache:Lc8/fSe;

    .line 291
    return-void
.end method

.method public setProtocols(Ljava/util/List;)Lc8/QSe;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)",
            "Lc8/QSe;"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    invoke-static {p1}, Lc8/ATe;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 515
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 521
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_2
    invoke-static {p1}, Lc8/ATe;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/QSe;->protocols:Ljava/util/List;

    .line 525
    return-object p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lc8/QSe;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 245
    iput-object p1, p0, Lc8/QSe;->proxy:Ljava/net/Proxy;

    .line 246
    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lc8/QSe;
    .locals 0
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .prologue
    .line 263
    iput-object p1, p0, Lc8/QSe;->proxySelector:Ljava/net/ProxySelector;

    .line 264
    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 207
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 209
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 210
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 211
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lc8/QSe;->readTimeout:I

    .line 213
    return-void
.end method

.method public setRetryOnConnectionFailure(Z)V
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lc8/QSe;->retryOnConnectionFailure:Z

    .line 459
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lc8/QSe;
    .locals 0
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .prologue
    .line 331
    iput-object p1, p0, Lc8/QSe;->socketFactory:Ljavax/net/SocketFactory;

    .line 332
    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lc8/QSe;
    .locals 0
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 345
    iput-object p1, p0, Lc8/QSe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 346
    return-object p0
.end method

.method public setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 7
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    const-wide/16 v4, 0x0

    .line 225
    cmp-long v2, p1, v4

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "timeout < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 226
    :cond_0
    if-nez p3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unit == null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 228
    .local v0, "millis":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too large."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    :cond_2
    cmp-long v2, v0, v4

    if-nez v2, :cond_3

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Timeout too small."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 230
    :cond_3
    long-to-int v2, v0

    iput v2, p0, Lc8/QSe;->writeTimeout:I

    .line 231
    return-void
.end method
