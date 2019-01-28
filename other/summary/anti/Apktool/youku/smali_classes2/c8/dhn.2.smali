.class public Lc8/dhn;
.super Ljava/lang/Object;
.source "HttpsReqManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ahn;,
        Lc8/chn;,
        Lc8/bhn;
    }
.end annotation


# static fields
.field private static client:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private static mHttpsReqManager:Lc8/dhn;


# instance fields
.field private TAG:Ljava/lang/String;

.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    sput-object v0, Lc8/dhn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string/jumbo v0, "LXF"

    iput-object v0, p0, Lc8/dhn;->TAG:Ljava/lang/String;

    .line 196
    return-void
.end method

.method static synthetic access$200(Lc8/dhn;)Ljava/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lc8/dhn;

    .prologue
    .line 45
    iget-object v0, p0, Lc8/dhn;->keyStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public static getInstance()Lc8/dhn;
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lc8/dhn;->synchInit()V

    .line 51
    sget-object v0, Lc8/dhn;->mHttpsReqManager:Lc8/dhn;

    return-object v0
.end method

.method private static declared-synchronized synchInit()V
    .locals 2

    .prologue
    .line 55
    const-class v1, Lc8/dhn;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/dhn;->mHttpsReqManager:Lc8/dhn;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lc8/dhn;

    invoke-direct {v0}, Lc8/dhn;-><init>()V

    sput-object v0, Lc8/dhn;->mHttpsReqManager:Lc8/dhn;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_0
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public initHttpClient(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 12
    .param p1, "mHttpParams"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 67
    sget-object v8, Lc8/dhn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v8, :cond_2

    .line 68
    const/4 v4, 0x0

    .line 71
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 72
    :try_start_0
    const-string/jumbo v8, "X.509"

    invoke-static {v8}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 73
    .local v1, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 74
    .local v0, "certificate":Ljava/security/cert/Certificate;
    const-string/jumbo v8, "PKCS12"

    const-string/jumbo v9, "BC"

    invoke-static {v8, v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v8

    iput-object v8, p0, Lc8/dhn;->keyStore:Ljava/security/KeyStore;

    .line 75
    iget-object v8, p0, Lc8/dhn;->keyStore:Ljava/security/KeyStore;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 76
    iget-object v8, p0, Lc8/dhn;->keyStore:Ljava/security/KeyStore;

    const-string/jumbo v9, "trust"

    invoke-virtual {v8, v9, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 78
    new-instance v6, Lc8/bhn;

    iget-object v8, p0, Lc8/dhn;->keyStore:Ljava/security/KeyStore;

    const/4 v9, 0x0

    invoke-direct {v6, p0, v8, v9}, Lc8/bhn;-><init>(Lc8/dhn;Ljava/security/KeyStore;Lc8/Zgn;)V

    .line 80
    .local v6, "mSSlSocketFacoty":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    invoke-virtual {v6}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getHostnameVerifier()Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    move-result-object v2

    .line 81
    .local v2, "delegate":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    instance-of v8, v2, Lc8/ahn;

    if-nez v8, :cond_0

    .line 82
    new-instance v8, Lc8/ahn;

    invoke-direct {v8, p0, v2}, Lc8/ahn;-><init>(Lc8/dhn;Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 85
    :cond_0
    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p1, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 86
    const-string/jumbo v8, "UTF-8"

    invoke-static {p1, v8}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 88
    new-instance v7, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 90
    .local v7, "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v9, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v10

    const/16 v11, 0x50

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 91
    new-instance v8, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v8, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 93
    new-instance v5, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v5, p1, v7}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 94
    .local v5, "mClientConnectManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8, v5, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v4, :cond_1

    .line 113
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    .end local v0    # "certificate":Ljava/security/cert/Certificate;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "delegate":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "mClientConnectManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v6    # "mSSlSocketFacoty":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :cond_1
    :goto_0
    return-object v8

    .line 114
    .restart local v0    # "certificate":Ljava/security/cert/Certificate;
    .restart local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .restart local v2    # "delegate":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "mClientConnectManager":Lorg/apache/http/conn/ClientConnectionManager;
    .restart local v6    # "mSSlSocketFacoty":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .restart local v7    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_0
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v0    # "certificate":Ljava/security/cert/Certificate;
    .end local v1    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "delegate":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "mClientConnectManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v6    # "mSSlSocketFacoty":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "registry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    :catch_1
    move-exception v3

    .line 97
    .local v3, "e":Ljava/security/KeyStoreException;
    :try_start_2
    invoke-virtual {v3}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 121
    .end local v3    # "e":Ljava/security/KeyStoreException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :goto_1
    sget-object v8, Lc8/dhn;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    goto :goto_0

    .line 114
    .restart local v3    # "e":Ljava/security/KeyStoreException;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 98
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 99
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 114
    :catch_4
    move-exception v3

    .line 115
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 100
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 101
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_6
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_1

    .line 114
    :catch_6
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 102
    .end local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v3

    .line 103
    .local v3, "e":Ljava/security/cert/CertificateException;
    :try_start_8
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_1

    .line 114
    :catch_8
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 104
    .end local v3    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 105
    .local v3, "e":Ljava/security/KeyManagementException;
    :try_start_a
    invoke-virtual {v3}, Ljava/security/KeyManagementException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_1

    .line 114
    :catch_a
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 106
    .end local v3    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 107
    .local v3, "e":Ljava/security/UnrecoverableKeyException;
    :try_start_c
    invoke-virtual {v3}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c

    goto :goto_1

    .line 114
    :catch_c
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 108
    .end local v3    # "e":Ljava/io/IOException;
    :catch_d
    move-exception v3

    .line 109
    .local v3, "e":Ljava/security/NoSuchProviderException;
    :try_start_e
    invoke-virtual {v3}, Ljava/security/NoSuchProviderException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 111
    if-eqz v4, :cond_2

    .line 113
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    goto :goto_1

    .line 114
    :catch_e
    move-exception v3

    .line 115
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 111
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    if-eqz v4, :cond_3

    .line 113
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 116
    :cond_3
    :goto_2
    throw v8

    .line 114
    :catch_f
    move-exception v3

    .line 115
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
