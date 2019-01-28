.class public Lc8/bhn;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "HttpsReqManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dhn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSLSocketFactoryImp"
.end annotation


# instance fields
.field private mAcceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final mSSLContext:Ljavax/net/ssl/SSLContext;

.field sslContext:Ljavax/net/ssl/SSLContext;

.field final synthetic this$0:Lc8/dhn;


# direct methods
.method private constructor <init>(Lc8/dhn;Ljava/security/KeyStore;)V
    .locals 5
    .param p2, "trustKeyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    iput-object p1, p0, Lc8/bhn;->this$0:Lc8/dhn;

    .line 134
    invoke-direct {p0, p2}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 127
    const-string/jumbo v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lc8/bhn;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 129
    iput-object v4, p0, Lc8/bhn;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 130
    iput-object v4, p0, Lc8/bhn;->mAcceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 136
    new-instance v0, Lc8/chn;

    invoke-direct {v0, p1, v4}, Lc8/chn;-><init>(Lc8/dhn;Lc8/Zgn;)V

    .line 137
    .local v0, "trustManagerLogin":Lc8/chn;
    iget-object v1, p0, Lc8/bhn;->sslContext:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v4, v2, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lc8/dhn;Ljava/security/KeyStore;Lc8/Zgn;)V
    .locals 0
    .param p1, "x0"    # Lc8/dhn;
    .param p2, "x1"    # Ljava/security/KeyStore;
    .param p3, "x2"    # Lc8/Zgn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Lc8/bhn;-><init>(Lc8/dhn;Ljava/security/KeyStore;)V

    return-void
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lc8/bhn;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lc8/bhn;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method
