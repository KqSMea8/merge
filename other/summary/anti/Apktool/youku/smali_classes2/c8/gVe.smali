.class public final Lc8/gVe;
.super Ljava/lang/Object;
.source "RealConnection.java"

# interfaces
.implements Lc8/sSe;


# static fields
.field private static lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private static lastTrustRootIndex:Lc8/mVe;


# instance fields
.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/Reference",
            "<",
            "Lc8/aVe;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile framedConnection:Lc8/TTe;

.field private handshake:Lc8/DSe;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lcom/squareup/okhttp/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lc8/eTe;

.field public sink:Lc8/ZVp;

.field public socket:Ljava/net/Socket;

.field public source:Lc8/aWp;

.field public streamCount:I


# direct methods
.method public constructor <init>(Lc8/eTe;)V
    .locals 2
    .param p1, "route"    # Lc8/eTe;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/gVe;->allocations:Ljava/util/List;

    .line 86
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lc8/gVe;->idleAtNanos:J

    .line 89
    iput-object p1, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 90
    return-void
.end method

.method private connectSocket(IIILc8/fTe;)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "connectionSpecSelector"    # Lc8/fTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v1, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v1, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 141
    :try_start_0
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v1

    iget-object v2, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    iget-object v3, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v3}, Lc8/eTe;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p1}, Lc8/xTe;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    iget-object v1, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Lc8/lWp;->source(Ljava/net/Socket;)Lc8/uWp;

    move-result-object v1

    invoke-static {v1}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v1

    iput-object v1, p0, Lc8/gVe;->source:Lc8/aWp;

    .line 146
    iget-object v1, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Lc8/lWp;->sink(Ljava/net/Socket;)Lc8/tWp;

    move-result-object v1

    invoke-static {v1}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v1

    iput-object v1, p0, Lc8/gVe;->sink:Lc8/ZVp;

    .line 148
    iget-object v1, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v1}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/XRe;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 149
    invoke-direct {p0, p2, p3, p4}, Lc8/gVe;->connectTls(IILc8/fTe;)V

    .line 155
    :goto_0
    iget-object v1, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v1, v2, :cond_1

    .line 156
    :cond_0
    iget-object v1, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 158
    new-instance v1, Lc8/MTe;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lc8/MTe;-><init>(Z)V

    iget-object v2, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 159
    invoke-virtual {v3}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/XRe;->url()Lc8/JSe;

    move-result-object v3

    invoke-virtual {v3}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/gVe;->source:Lc8/aWp;

    iget-object v5, p0, Lc8/gVe;->sink:Lc8/ZVp;

    invoke-virtual {v1, v2, v3, v4, v5}, Lc8/MTe;->socket(Ljava/net/Socket;Ljava/lang/String;Lc8/aWp;Lc8/ZVp;)Lc8/MTe;

    move-result-object v1

    iget-object v2, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 160
    invoke-virtual {v1, v2}, Lc8/MTe;->protocol(Lcom/squareup/okhttp/Protocol;)Lc8/MTe;

    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lc8/MTe;->build()Lc8/TTe;

    move-result-object v0

    .line 162
    .local v0, "framedConnection":Lc8/TTe;
    invoke-virtual {v0}, Lc8/TTe;->sendConnectionPreface()V

    .line 165
    iput-object v0, p0, Lc8/gVe;->framedConnection:Lc8/TTe;

    .line 167
    .end local v0    # "framedConnection":Lc8/TTe;
    :cond_1
    return-void

    .line 143
    :catch_0
    move-exception v1

    new-instance v1, Ljava/net/ConnectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v3}, Lc8/eTe;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_2
    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    iput-object v1, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 152
    iget-object v1, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    iput-object v1, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    goto :goto_0
.end method

.method private connectTls(IILc8/fTe;)V
    .locals 16
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "connectionSpecSelector"    # Lc8/fTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 171
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v12}, Lc8/eTe;->requiresTunnel()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 172
    invoke-direct/range {p0 .. p2}, Lc8/gVe;->createTunnel(II)V

    .line 175
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v12}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v1

    .line 176
    .local v1, "address":Lc8/XRe;
    invoke-virtual {v1}, Lc8/XRe;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    .line 177
    .local v8, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v9, 0x0

    .line 178
    .local v9, "success":Z
    const/4 v7, 0x0

    .line 181
    .local v7, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    .line 182
    invoke-virtual {v1}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lc8/XRe;->getUriPort()I

    move-result v14

    const/4 v15, 0x1

    .line 181
    invoke-virtual {v8, v12, v13, v14, v15}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    move-object v7, v0

    .line 185
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Lc8/fTe;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lc8/xSe;

    move-result-object v4

    .line 186
    .local v4, "connectionSpec":Lc8/xSe;
    invoke-virtual {v4}, Lc8/xSe;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 187
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v12

    .line 188
    invoke-virtual {v1}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1}, Lc8/XRe;->getProtocols()Ljava/util/List;

    move-result-object v14

    .line 187
    invoke-virtual {v12, v7, v13, v14}, Lc8/xTe;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 192
    :cond_1
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 193
    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v12

    invoke-static {v12}, Lc8/DSe;->get(Ljavax/net/ssl/SSLSession;)Lc8/DSe;

    move-result-object v11

    .line 196
    .local v11, "unverifiedHandshake":Lc8/DSe;
    invoke-virtual {v1}, Lc8/XRe;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v12

    invoke-virtual {v1}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 197
    invoke-virtual {v11}, Lc8/DSe;->peerCertificates()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 198
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v12, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Hostname "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not verified:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n    certificate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 199
    invoke-static {v2}, Lc8/qSe;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n    DN: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 200
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-interface {v14}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "\n    subjectAltNames: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 201
    invoke-static {v2}, Lc8/kVe;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v4    # "connectionSpec":Lc8/xSe;
    .end local v11    # "unverifiedHandshake":Lc8/DSe;
    :catch_0
    move-exception v5

    .line 225
    .local v5, "e":Ljava/lang/AssertionError;
    :try_start_1
    invoke-static {v5}, Lc8/ATe;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v12

    if-eqz v12, :cond_a

    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12, v5}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v5    # "e":Ljava/lang/AssertionError;
    :catchall_0
    move-exception v12

    if-eqz v7, :cond_2

    .line 229
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v13

    invoke-virtual {v13, v7}, Lc8/xTe;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 231
    :cond_2
    if-nez v9, :cond_3

    .line 232
    invoke-static {v7}, Lc8/ATe;->closeQuietly(Ljava/net/Socket;)V

    :cond_3
    throw v12

    .line 205
    .restart local v4    # "connectionSpec":Lc8/xSe;
    .restart local v11    # "unverifiedHandshake":Lc8/DSe;
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lc8/XRe;->getCertificatePinner()Lc8/qSe;

    move-result-object v12

    sget-object v13, Lc8/qSe;->DEFAULT:Lc8/qSe;

    if-eq v12, v13, :cond_5

    .line 206
    invoke-virtual {v1}, Lc8/XRe;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v12

    invoke-static {v12}, Lc8/gVe;->trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lc8/mVe;

    move-result-object v10

    .line 207
    .local v10, "trustRootIndex":Lc8/mVe;
    new-instance v12, Lc8/iVe;

    invoke-direct {v12, v10}, Lc8/iVe;-><init>(Lc8/mVe;)V

    .line 208
    invoke-virtual {v11}, Lc8/DSe;->peerCertificates()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Lc8/iVe;->clean(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v1}, Lc8/XRe;->getCertificatePinner()Lc8/qSe;

    move-result-object v12

    invoke-virtual {v1}, Lc8/XRe;->getUriHost()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v3}, Lc8/qSe;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 213
    .end local v3    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v10    # "trustRootIndex":Lc8/mVe;
    :cond_5
    invoke-virtual {v4}, Lc8/xSe;->supportsTlsExtensions()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 214
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v12

    invoke-virtual {v12, v7}, Lc8/xTe;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "maybeProtocol":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iput-object v7, v0, Lc8/gVe;->socket:Ljava/net/Socket;

    .line 217
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-static {v12}, Lc8/lWp;->source(Ljava/net/Socket;)Lc8/uWp;

    move-result-object v12

    invoke-static {v12}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/gVe;->source:Lc8/aWp;

    .line 218
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-static {v12}, Lc8/lWp;->sink(Ljava/net/Socket;)Lc8/tWp;

    move-result-object v12

    invoke-static {v12}, Lc8/lWp;->buffer(Lc8/tWp;)Lc8/ZVp;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/gVe;->sink:Lc8/ZVp;

    .line 219
    move-object/from16 v0, p0

    iput-object v11, v0, Lc8/gVe;->handshake:Lc8/DSe;

    .line 220
    if-eqz v6, :cond_9

    .line 221
    invoke-static {v6}, Lcom/squareup/okhttp/Protocol;->get(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;

    move-result-object v12

    :goto_1
    move-object/from16 v0, p0

    iput-object v12, v0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    const/4 v9, 0x1

    .line 228
    if-eqz v7, :cond_6

    .line 229
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v12

    invoke-virtual {v12, v7}, Lc8/xTe;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 231
    :cond_6
    if-nez v9, :cond_7

    .line 232
    invoke-static {v7}, Lc8/ATe;->closeQuietly(Ljava/net/Socket;)V

    .line 235
    :cond_7
    return-void

    .line 214
    .end local v6    # "maybeProtocol":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    goto :goto_0

    .line 221
    .restart local v6    # "maybeProtocol":Ljava/lang/String;
    :cond_9
    :try_start_3
    sget-object v12, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 226
    .end local v4    # "connectionSpec":Lc8/xSe;
    .end local v6    # "maybeProtocol":Ljava/lang/String;
    .end local v11    # "unverifiedHandshake":Lc8/DSe;
    .restart local v5    # "e":Ljava/lang/AssertionError;
    :cond_a
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private createTunnel(II)V
    .locals 12
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0}, Lc8/gVe;->createTunnelRequest()Lc8/VSe;

    move-result-object v6

    .line 262
    .local v6, "tunnelRequest":Lc8/VSe;
    invoke-virtual {v6}, Lc8/VSe;->httpUrl()Lc8/JSe;

    move-result-object v7

    .line 263
    .local v7, "url":Lc8/JSe;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CONNECT "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Lc8/JSe;->port()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " HTTP/1.1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "requestLine":Ljava/lang/String;
    :cond_0
    new-instance v5, Lc8/IUe;

    const/4 v8, 0x0

    iget-object v9, p0, Lc8/gVe;->source:Lc8/aWp;

    iget-object v10, p0, Lc8/gVe;->sink:Lc8/ZVp;

    invoke-direct {v5, v8, v9, v10}, Lc8/IUe;-><init>(Lc8/aVe;Lc8/aWp;Lc8/ZVp;)V

    .line 266
    .local v5, "tunnelConnection":Lc8/IUe;
    iget-object v8, p0, Lc8/gVe;->source:Lc8/aWp;

    invoke-interface {v8}, Lc8/aWp;->timeout()Lc8/wWp;

    move-result-object v8

    int-to-long v10, p1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Lc8/wWp;->timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;

    .line 267
    iget-object v8, p0, Lc8/gVe;->sink:Lc8/ZVp;

    invoke-interface {v8}, Lc8/ZVp;->timeout()Lc8/wWp;

    move-result-object v8

    int-to-long v10, p2

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v10, v11, v9}, Lc8/wWp;->timeout(JLjava/util/concurrent/TimeUnit;)Lc8/wWp;

    .line 268
    invoke-virtual {v6}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v8

    invoke-virtual {v5, v8, v1}, Lc8/IUe;->writeRequest(Lc8/GSe;Ljava/lang/String;)V

    .line 269
    invoke-virtual {v5}, Lc8/IUe;->finishRequest()V

    .line 270
    invoke-virtual {v5}, Lc8/IUe;->readResponse()Lc8/bTe;

    move-result-object v8

    invoke-virtual {v8, v6}, Lc8/bTe;->request(Lc8/VSe;)Lc8/bTe;

    move-result-object v8

    invoke-virtual {v8}, Lc8/bTe;->build()Lc8/cTe;

    move-result-object v4

    .line 273
    .local v4, "response":Lc8/cTe;
    invoke-static {v4}, Lc8/UUe;->contentLength(Lc8/cTe;)J

    move-result-wide v2

    .line 274
    .local v2, "contentLength":J
    const-wide/16 v8, -0x1

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    .line 275
    const-wide/16 v2, 0x0

    .line 277
    :cond_1
    invoke-virtual {v5, v2, v3}, Lc8/IUe;->newFixedLengthSource(J)Lc8/uWp;

    move-result-object v0

    .line 278
    .local v0, "body":Lc8/uWp;
    const v8, 0x7fffffff

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v8, v9}, Lc8/ATe;->skipAll(Lc8/uWp;ILjava/util/concurrent/TimeUnit;)Z

    .line 279
    invoke-interface {v0}, Lc8/uWp;->close()V

    .line 281
    invoke-virtual {v4}, Lc8/cTe;->code()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 299
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unexpected response code for CONNECT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 300
    invoke-virtual {v4}, Lc8/cTe;->code()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 287
    :sswitch_0
    iget-object v8, p0, Lc8/gVe;->source:Lc8/aWp;

    invoke-interface {v8}, Lc8/aWp;->buffer()Lc8/YVp;

    move-result-object v8

    invoke-virtual {v8}, Lc8/YVp;->exhausted()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lc8/gVe;->sink:Lc8/ZVp;

    invoke-interface {v8}, Lc8/ZVp;->buffer()Lc8/YVp;

    move-result-object v8

    invoke-virtual {v8}, Lc8/YVp;->exhausted()Z

    move-result v8

    if-nez v8, :cond_3

    .line 288
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "TLS tunnel buffered too many bytes!"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 293
    :sswitch_1
    iget-object v8, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 294
    invoke-virtual {v8}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v8

    invoke-virtual {v8}, Lc8/XRe;->getAuthenticator()Lc8/YRe;

    move-result-object v8

    iget-object v9, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v9}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v9

    .line 293
    invoke-static {v8, v4, v9}, Lc8/UUe;->processAuthHeader(Lc8/YRe;Lc8/cTe;Ljava/net/Proxy;)Lc8/VSe;

    move-result-object v6

    .line 295
    if-nez v6, :cond_0

    .line 296
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Failed to authenticate with proxy"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 290
    :cond_3
    return-void

    .line 281
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x197 -> :sswitch_1
    .end sparse-switch
.end method

.method private createTunnelRequest()Lc8/VSe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v0, Lc8/USe;

    invoke-direct {v0}, Lc8/USe;-><init>()V

    iget-object v1, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 314
    invoke-virtual {v1}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/XRe;->url()Lc8/JSe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/USe;->url(Lc8/JSe;)Lc8/USe;

    move-result-object v0

    const-string/jumbo v1, "Host"

    iget-object v2, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 315
    invoke-virtual {v2}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/XRe;->url()Lc8/JSe;

    move-result-object v2

    invoke-static {v2}, Lc8/ATe;->hostHeader(Lc8/JSe;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    move-result-object v0

    const-string/jumbo v1, "Proxy-Connection"

    const-string/jumbo v2, "Keep-Alive"

    .line 316
    invoke-virtual {v0, v1, v2}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    move-result-object v0

    const-string/jumbo v1, "User-Agent"

    .line 317
    invoke-static {}, Lc8/BTe;->userAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/USe;->header(Ljava/lang/String;Ljava/lang/String;)Lc8/USe;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Lc8/USe;->build()Lc8/VSe;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized trustRootIndex(Ljavax/net/ssl/SSLSocketFactory;)Lc8/mVe;
    .locals 3
    .param p0, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 246
    const-class v2, Lc8/gVe;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/gVe;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eq p0, v1, :cond_0

    .line 247
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lc8/xTe;->trustManager(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 248
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {}, Lc8/xTe;->get()Lc8/xTe;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/xTe;->trustRootIndex(Ljavax/net/ssl/X509TrustManager;)Lc8/mVe;

    move-result-object v1

    sput-object v1, Lc8/gVe;->lastTrustRootIndex:Lc8/mVe;

    .line 249
    sput-object p0, Lc8/gVe;->lastSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 251
    .end local v0    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    sget-object v1, Lc8/gVe;->lastTrustRootIndex:Lc8/mVe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public allocationLimit()I
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lc8/gVe;->framedConnection:Lc8/TTe;

    .line 341
    .local v0, "framedConnection":Lc8/TTe;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lc8/TTe;->maxConcurrentStreams()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lc8/ATe;->closeQuietly(Ljava/net/Socket;)V

    .line 333
    return-void
.end method

.method public connect(IIILjava/util/List;Z)V
    .locals 9
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Lc8/xSe;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/squareup/okhttp/internal/http/RouteException;
        }
    .end annotation

    .prologue
    .local p4, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/ConnectionSpec;>;"
    const/4 v7, 0x0

    .line 94
    iget-object v5, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "already connected"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_0
    const/4 v4, 0x0

    .line 97
    .local v4, "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    new-instance v1, Lc8/fTe;

    invoke-direct {v1, p4}, Lc8/fTe;-><init>(Ljava/util/List;)V

    .line 98
    .local v1, "connectionSpecSelector":Lc8/fTe;
    iget-object v5, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v5}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    .line 99
    .local v3, "proxy":Ljava/net/Proxy;
    iget-object v5, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v5}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v0

    .line 101
    .local v0, "address":Lc8/XRe;
    iget-object v5, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v5}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v5

    invoke-virtual {v5}, Lc8/XRe;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    if-nez v5, :cond_2

    sget-object v5, Lc8/xSe;->CLEARTEXT:Lc8/xSe;

    .line 102
    invoke-interface {p4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 103
    new-instance v5, Lcom/squareup/okhttp/internal/http/RouteException;

    new-instance v6, Ljava/net/UnknownServiceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "CLEARTEXT communication not supported: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    throw v5

    .line 110
    :cond_1
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    invoke-direct {v5, v3}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_0
    iput-object v5, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    .line 112
    invoke-direct {p0, p1, p2, p3, v1}, Lc8/gVe;->connectSocket(IIILc8/fTe;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_2
    iget-object v5, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    if-nez v5, :cond_6

    .line 109
    :try_start_1
    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v5, v6, :cond_3

    invoke-virtual {v3}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v5

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v5, v6, :cond_1

    .line 110
    :cond_3
    invoke-virtual {v0}, Lc8/XRe;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/io/IOException;
    iget-object v5, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-static {v5}, Lc8/ATe;->closeQuietly(Ljava/net/Socket;)V

    .line 115
    iget-object v5, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    invoke-static {v5}, Lc8/ATe;->closeQuietly(Ljava/net/Socket;)V

    .line 116
    iput-object v7, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    .line 117
    iput-object v7, p0, Lc8/gVe;->rawSocket:Ljava/net/Socket;

    .line 118
    iput-object v7, p0, Lc8/gVe;->source:Lc8/aWp;

    .line 119
    iput-object v7, p0, Lc8/gVe;->sink:Lc8/ZVp;

    .line 120
    iput-object v7, p0, Lc8/gVe;->handshake:Lc8/DSe;

    .line 121
    iput-object v7, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 123
    if-nez v4, :cond_5

    .line 124
    new-instance v4, Lcom/squareup/okhttp/internal/http/RouteException;

    .end local v4    # "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    invoke-direct {v4, v2}, Lcom/squareup/okhttp/internal/http/RouteException;-><init>(Ljava/io/IOException;)V

    .line 129
    .restart local v4    # "routeException":Lcom/squareup/okhttp/internal/http/RouteException;
    :goto_1
    if-eqz p5, :cond_4

    invoke-virtual {v1, v2}, Lc8/fTe;->connectionFailed(Ljava/io/IOException;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 130
    :cond_4
    throw v4

    .line 126
    :cond_5
    invoke-virtual {v4, v2}, Lcom/squareup/okhttp/internal/http/RouteException;->addConnectException(Ljava/io/IOException;)V

    goto :goto_1

    .line 134
    .end local v2    # "e":Ljava/io/IOException;
    :cond_6
    return-void
.end method

.method public getHandshake()Lc8/DSe;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lc8/gVe;->handshake:Lc8/DSe;

    return-object v0
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    goto :goto_0
.end method

.method public getRoute()Lc8/eTe;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lc8/gVe;->route:Lc8/eTe;

    return-object v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public isHealthy(Z)Z
    .locals 5
    .param p1, "doExtensiveChecks"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 348
    iget-object v3, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 375
    :cond_1
    :goto_0
    return v1

    .line 352
    :cond_2
    iget-object v3, p0, Lc8/gVe;->framedConnection:Lc8/TTe;

    if-nez v3, :cond_1

    .line 356
    if-eqz p1, :cond_1

    .line 358
    :try_start_0
    iget-object v3, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 360
    .local v0, "readTimeout":I
    :try_start_1
    iget-object v3, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 361
    iget-object v3, p0, Lc8/gVe;->source:Lc8/aWp;

    invoke-interface {v3}, Lc8/aWp;->exhausted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    .line 366
    :try_start_2
    iget-object v3, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    goto :goto_0

    .line 372
    .end local v0    # "readTimeout":I
    :catch_0
    move-exception v2

    goto :goto_0

    .line 366
    .restart local v0    # "readTimeout":I
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lc8/gVe;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 371
    .end local v0    # "readTimeout":I
    :catch_1
    move-exception v1

    move v1, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 396
    invoke-virtual {v1}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/XRe;->url()Lc8/JSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JSe;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gVe;->route:Lc8/eTe;

    invoke-virtual {v1}, Lc8/eTe;->getAddress()Lc8/XRe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/XRe;->url()Lc8/JSe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JSe;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 398
    invoke-virtual {v1}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gVe;->route:Lc8/eTe;

    .line 400
    invoke-virtual {v1}, Lc8/eTe;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lc8/gVe;->handshake:Lc8/DSe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/gVe;->handshake:Lc8/DSe;

    .line 402
    invoke-virtual {v0}, Lc8/DSe;->cipherSuite()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/gVe;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "none"

    goto :goto_0
.end method
