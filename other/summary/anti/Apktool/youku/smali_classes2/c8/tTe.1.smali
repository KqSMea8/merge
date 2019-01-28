.class public Lc8/tTe;
.super Lc8/xTe;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/xTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Android"
.end annotation


# instance fields
.field private final getAlpnSelectedProtocol:Lc8/sTe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setAlpnProtocols:Lc8/sTe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setHostname:Lc8/sTe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final setUseSessionTickets:Lc8/sTe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;"
        }
    .end annotation
.end field

.field private final sslParametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final trafficStatsTagSocket:Ljava/lang/reflect/Method;

.field private final trafficStatsUntagSocket:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lc8/sTe;Lc8/sTe;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lc8/sTe;Lc8/sTe;)V
    .locals 0
    .param p4, "trafficStatsTagSocket"    # Ljava/lang/reflect/Method;
    .param p5, "trafficStatsUntagSocket"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;",
            "Lc8/sTe",
            "<",
            "Ljava/net/Socket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "setUseSessionTickets":Lc8/sTe;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local p3, "setHostname":Lc8/sTe;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local p6, "getAlpnSelectedProtocol":Lc8/sTe;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    .local p7, "setAlpnProtocols":Lc8/sTe;, "Lcom/squareup/okhttp/internal/OptionalMethod<Ljava/net/Socket;>;"
    invoke-direct {p0}, Lc8/xTe;-><init>()V

    .line 218
    iput-object p1, p0, Lc8/tTe;->sslParametersClass:Ljava/lang/Class;

    .line 219
    iput-object p2, p0, Lc8/tTe;->setUseSessionTickets:Lc8/sTe;

    .line 220
    iput-object p3, p0, Lc8/tTe;->setHostname:Lc8/sTe;

    .line 221
    iput-object p4, p0, Lc8/tTe;->trafficStatsTagSocket:Ljava/lang/reflect/Method;

    .line 222
    iput-object p5, p0, Lc8/tTe;->trafficStatsUntagSocket:Ljava/lang/reflect/Method;

    .line 223
    iput-object p6, p0, Lc8/tTe;->getAlpnSelectedProtocol:Lc8/sTe;

    .line 224
    iput-object p7, p0, Lc8/tTe;->setAlpnProtocols:Lc8/sTe;

    .line 225
    return-void
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/Protocol;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    if-eqz p2, :cond_0

    .line 275
    iget-object v1, p0, Lc8/tTe;->setUseSessionTickets:Lc8/sTe;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p1, v2}, Lc8/sTe;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v1, p0, Lc8/tTe;->setHostname:Lc8/sTe;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-virtual {v1, p1, v2}, Lc8/sTe;->invokeOptionalWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    :cond_0
    iget-object v1, p0, Lc8/tTe;->setAlpnProtocols:Lc8/sTe;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/tTe;->setAlpnProtocols:Lc8/sTe;

    invoke-virtual {v1, p1}, Lc8/sTe;->isSupported(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {p3}, Lc8/tTe;->concatLengthPrefixed(Ljava/util/List;)[B

    move-result-object v1

    aput-object v1, v0, v5

    .line 282
    .local v0, "parameters":[Ljava/lang/Object;
    iget-object v1, p0, Lc8/tTe;->setAlpnProtocols:Lc8/sTe;

    invoke-virtual {v1, p1, v0}, Lc8/sTe;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .end local v0    # "parameters":[Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "address"    # Ljava/net/InetSocketAddress;
    .param p3, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-static {v0}, Lc8/ATe;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 233
    :cond_0
    throw v0

    .line 234
    .end local v0    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Exception in connect"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, "ioException":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 239
    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v2, p0, Lc8/tTe;->getAlpnSelectedProtocol:Lc8/sTe;

    if-nez v2, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-object v1

    .line 288
    :cond_1
    iget-object v2, p0, Lc8/tTe;->getAlpnSelectedProtocol:Lc8/sTe;

    invoke-virtual {v2, p1}, Lc8/sTe;->isSupported(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lc8/tTe;->getAlpnSelectedProtocol:Lc8/sTe;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lc8/sTe;->invokeWithoutCheckedException(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 291
    .local v0, "alpnResult":[B
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lc8/ATe;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 6
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 244
    iget-object v3, p0, Lc8/tTe;->sslParametersClass:Ljava/lang/Class;

    const-string/jumbo v4, "sslParameters"

    invoke-static {p1, v3, v4}, Lc8/tTe;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "context":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 249
    :try_start_0
    const-string/jumbo v3, "com.google.android.gms.org.conscrypt.SSLParametersImpl"

    const/4 v4, 0x0

    .line 251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 249
    invoke-static {v3, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 252
    .local v1, "gmsSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v3, "sslParameters"

    invoke-static {p1, v1, v3}, Lc8/tTe;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    .end local v1    # "gmsSslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v4, "x509TrustManager"

    invoke-static {v0, v3, v4}, Lc8/tTe;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .line 260
    .local v2, "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    if-eqz v2, :cond_1

    .line 262
    .end local v2    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :goto_0
    return-object v2

    .line 254
    :catch_0
    move-exception v3

    const/4 v2, 0x0

    goto :goto_0

    .line 262
    .restart local v2    # "x509TrustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_1
    const-class v3, Ljavax/net/ssl/X509TrustManager;

    const-string/jumbo v4, "trustManager"

    invoke-static {v0, v3, v4}, Lc8/tTe;->readFieldOrNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    move-object v2, v3

    goto :goto_0
.end method

.method public trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lc8/mVe;
    .locals 1
    .param p1, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 266
    invoke-static {p1}, Lc8/hVe;->get(Ljavax/net/ssl/X509TrustManager;)Lc8/mVe;

    move-result-object v0

    .line 267
    .local v0, "result":Lc8/mVe;
    if-eqz v0, :cond_0

    .line 268
    .end local v0    # "result":Lc8/mVe;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lc8/mVe;
    :cond_0
    invoke-super {p0, p1}, Lc8/xTe;->trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lc8/mVe;

    move-result-object v0

    goto :goto_0
.end method
