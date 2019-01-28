.class public Lc8/WL;
.super Ljava/lang/Object;
.source "HttpSslUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SL;,
        Lc8/VL;,
        Lc8/TL;
    }
.end annotation


# static fields
.field public static final ALLOW_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

.field public static final TRUST_ALL_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

.field static sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field static verifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lc8/TL;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc8/TL;-><init>(Lc8/SL;)V

    sput-object v0, Lc8/WL;->ALLOW_ALL_HOSTNAME_VERIFIER:Ljavax/net/ssl/HostnameVerifier;

    .line 16
    invoke-static {}, Lc8/VL;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lc8/WL;->TRUST_ALL_SSL_SOCKET_FACTORY:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lc8/WL;->verifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lc8/WL;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public static setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0
    .param p0, "verifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 31
    sput-object p0, Lc8/WL;->verifier:Ljavax/net/ssl/HostnameVerifier;

    .line 32
    return-void
.end method

.method public static setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p0, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 23
    sput-object p0, Lc8/WL;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 24
    return-void
.end method
