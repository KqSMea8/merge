.class public Lc8/chn;
.super Ljava/lang/Object;
.source "HttpsReqManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dhn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrustManagerLogin"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dhn;


# direct methods
.method private constructor <init>(Lc8/dhn;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lc8/chn;->this$0:Lc8/dhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc8/dhn;Lc8/Zgn;)V
    .locals 0
    .param p1, "x0"    # Lc8/dhn;
    .param p2, "x1"    # Lc8/Zgn;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lc8/chn;-><init>(Lc8/dhn;)V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "exception":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "====chain===="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "===authType=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_2

    .line 164
    :cond_0
    new-instance v1, Ljava/security/cert/CertificateException;

    .end local v1    # "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "Certificate chain is invalid."

    invoke-direct {v1, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v1    # "exception":Ljava/lang/Exception;
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    .line 183
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 165
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    .line 166
    :cond_3
    new-instance v1, Ljava/security/cert/CertificateException;

    .end local v1    # "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "Authentication type is invalid."

    invoke-direct {v1, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .restart local v1    # "exception":Ljava/lang/Exception;
    goto :goto_0

    .line 169
    :cond_4
    sget-boolean v4, Lc8/KWc;->DEBUG:Z

    if-nez v4, :cond_1

    .line 171
    :try_start_0
    const-string/jumbo v4, "X509"

    invoke-static {v4}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 172
    .local v2, "instance":Ljavax/net/ssl/TrustManagerFactory;
    iget-object v4, p0, Lc8/chn;->this$0:Lc8/dhn;

    invoke-static {v4}, Lc8/dhn;->access$200(Lc8/dhn;)Ljava/security/KeyStore;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 173
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v3, v5, v4

    .line 174
    .local v3, "trustManager":Ljavax/net/ssl/TrustManager;
    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    .end local v3    # "trustManager":Ljavax/net/ssl/TrustManager;
    invoke-interface {v3, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 176
    .end local v2    # "instance":Ljavax/net/ssl/TrustManagerFactory;
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 186
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_5
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method
