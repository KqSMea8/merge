.class public Lc8/IYn;
.super Ljava/lang/Object;
.source "DefaultTrustManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 8
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "exception":Ljava/lang/Exception;
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    .line 35
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateException;

    .end local v1    # "exception":Ljava/lang/Exception;
    const-string/jumbo v5, "Certificate chain is invalid."

    invoke-direct {v1, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 65
    new-instance v5, Ljava/security/cert/CertificateException;

    invoke-direct {v5, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 36
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 37
    :cond_3
    new-instance v1, Ljava/security/cert/CertificateException;

    .end local v1    # "exception":Ljava/lang/Exception;
    const-string/jumbo v5, "Authentication type is invalid."

    invoke-direct {v1, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .restart local v1    # "exception":Ljava/lang/Exception;
    goto :goto_0

    .line 41
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 42
    .local v3, "ks":Ljava/security/KeyStore;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 43
    const-string/jumbo v5, "X509"

    invoke-static {v5}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 44
    .local v2, "instance":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v5, 0x0

    check-cast v5, Ljava/security/KeyStore;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 45
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v4, v6, v5

    .line 46
    .local v4, "trustManager":Ljavax/net/ssl/TrustManager;
    check-cast v4, Ljavax/net/ssl/X509TrustManager;

    .end local v4    # "trustManager":Ljavax/net/ssl/TrustManager;
    invoke-interface {v4, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 59
    .end local v2    # "instance":Ljavax/net/ssl/TrustManagerFactory;
    .end local v3    # "ks":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v5, Ljava/security/cert/CertificateException;

    invoke-direct {v5, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 67
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method
