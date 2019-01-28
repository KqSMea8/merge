.class public Lc8/Axe;
.super Ljava/lang/Object;
.source "HttpsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/zxe;
    }
.end annotation


# static fields
.field private static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCertificate(Ljava/lang/String;Landroid/content/Context;)Ljava/security/cert/Certificate;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 49
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 52
    .local v0, "certInput":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 54
    .local v1, "certificate":Ljava/security/cert/Certificate;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 58
    :cond_0
    return-object v1

    .line 54
    .end local v1    # "certificate":Ljava/security/cert/Certificate;
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v3
.end method

.method public static getSSL(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v5, Lc8/Axe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v5, :cond_0

    .line 29
    sget-object v5, Lc8/Axe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 43
    :goto_0
    return-object v5

    .line 32
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "keyStoreType":Ljava/lang/String;
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 34
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 35
    const-string/jumbo v5, "geo_global_ca.cer"

    invoke-static {v5, p0}, Lc8/Axe;->getCertificate(Ljava/lang/String;Landroid/content/Context;)Ljava/security/cert/Certificate;

    move-result-object v0

    .line 36
    .local v0, "globalCat":Ljava/security/cert/Certificate;
    const-string/jumbo v5, "get_global_ca"

    invoke-virtual {v1, v5, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 37
    const-string/jumbo v5, "TLS"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    .line 38
    .local v3, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x1

    new-array v4, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, Lc8/zxe;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/security/KeyStore;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-direct {v6, v7}, Lc8/zxe;-><init>([Ljava/security/KeyStore;)V

    aput-object v6, v4, v5

    .line 39
    .local v4, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 40
    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    sput-object v5, Lc8/Axe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v0    # "globalCat":Ljava/security/cert/Certificate;
    .end local v1    # "keyStore":Ljava/security/KeyStore;
    .end local v2    # "keyStoreType":Ljava/lang/String;
    .end local v3    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v4    # "trustManagers":[Ljavax/net/ssl/TrustManager;
    :goto_1
    sget-object v5, Lc8/Axe;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_1
.end method
