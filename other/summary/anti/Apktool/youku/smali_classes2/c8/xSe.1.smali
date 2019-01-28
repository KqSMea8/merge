.class public final Lc8/xSe;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/wSe;
    }
.end annotation


# static fields
.field private static final APPROVED_CIPHER_SUITES:[Lcom/squareup/okhttp/CipherSuite;

.field public static final CLEARTEXT:Lc8/xSe;

.field public static final COMPATIBLE_TLS:Lc8/xSe;

.field public static final MODERN_TLS:Lc8/xSe;


# instance fields
.field private final cipherSuites:[Ljava/lang/String;

.field private final supportsTlsExtensions:Z

.field private final tls:Z

.field private final tlsVersions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 43
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/squareup/okhttp/CipherSuite;

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v4

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v3

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v5

    sget-object v1, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_DHE_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_GCM_SHA256:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_128_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_AES_256_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/squareup/okhttp/CipherSuite;->TLS_RSA_WITH_3DES_EDE_CBC_SHA:Lcom/squareup/okhttp/CipherSuite;

    aput-object v2, v0, v1

    sput-object v0, Lc8/xSe;->APPROVED_CIPHER_SUITES:[Lcom/squareup/okhttp/CipherSuite;

    .line 64
    new-instance v0, Lc8/wSe;

    invoke-direct {v0, v3}, Lc8/wSe;-><init>(Z)V

    sget-object v1, Lc8/xSe;->APPROVED_CIPHER_SUITES:[Lcom/squareup/okhttp/CipherSuite;

    .line 65
    invoke-virtual {v0, v1}, Lc8/wSe;->cipherSuites([Lcom/squareup/okhttp/CipherSuite;)Lc8/wSe;

    move-result-object v0

    new-array v1, v6, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_2:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v4

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_1:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v3

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v5

    .line 66
    invoke-virtual {v0, v1}, Lc8/wSe;->tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lc8/wSe;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v3}, Lc8/wSe;->supportsTlsExtensions(Z)Lc8/wSe;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lc8/wSe;->build()Lc8/xSe;

    move-result-object v0

    sput-object v0, Lc8/xSe;->MODERN_TLS:Lc8/xSe;

    .line 71
    new-instance v0, Lc8/wSe;

    sget-object v1, Lc8/xSe;->MODERN_TLS:Lc8/xSe;

    invoke-direct {v0, v1}, Lc8/wSe;-><init>(Lc8/xSe;)V

    new-array v1, v3, [Lcom/squareup/okhttp/TlsVersion;

    sget-object v2, Lcom/squareup/okhttp/TlsVersion;->TLS_1_0:Lcom/squareup/okhttp/TlsVersion;

    aput-object v2, v1, v4

    .line 72
    invoke-virtual {v0, v1}, Lc8/wSe;->tlsVersions([Lcom/squareup/okhttp/TlsVersion;)Lc8/wSe;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v3}, Lc8/wSe;->supportsTlsExtensions(Z)Lc8/wSe;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lc8/wSe;->build()Lc8/xSe;

    move-result-object v0

    sput-object v0, Lc8/xSe;->COMPATIBLE_TLS:Lc8/xSe;

    .line 77
    new-instance v0, Lc8/wSe;

    invoke-direct {v0, v4}, Lc8/wSe;-><init>(Z)V

    invoke-virtual {v0}, Lc8/wSe;->build()Lc8/xSe;

    move-result-object v0

    sput-object v0, Lc8/xSe;->CLEARTEXT:Lc8/xSe;

    return-void
.end method

.method private constructor <init>(Lc8/wSe;)V
    .locals 1
    .param p1, "builder"    # Lc8/wSe;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lc8/wSe;->access$000(Lc8/wSe;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/xSe;->tls:Z

    .line 86
    invoke-static {p1}, Lc8/wSe;->access$100(Lc8/wSe;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lc8/wSe;->access$200(Lc8/wSe;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lc8/wSe;->access$300(Lc8/wSe;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/xSe;->supportsTlsExtensions:Z

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lc8/wSe;Lc8/vSe;)V
    .locals 0
    .param p1, "x0"    # Lc8/wSe;
    .param p2, "x1"    # Lc8/vSe;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc8/xSe;-><init>(Lc8/wSe;)V

    return-void
.end method

.method static synthetic access$400(Lc8/xSe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/xSe;

    .prologue
    .line 38
    iget-boolean v0, p0, Lc8/xSe;->tls:Z

    return v0
.end method

.method static synthetic access$500(Lc8/xSe;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/xSe;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lc8/xSe;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/xSe;

    .prologue
    .line 38
    iget-object v0, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lc8/xSe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/xSe;

    .prologue
    .line 38
    iget-boolean v0, p0, Lc8/xSe;->supportsTlsExtensions:Z

    return v0
.end method

.method private static nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;
    .param p1, "b"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 198
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p0

    if-eqz v2, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 206
    :cond_0
    :goto_0
    return v1

    .line 201
    :cond_1
    array-length v3, p0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 202
    .local v0, "toFind":Ljava/lang/String;
    invoke-static {p1, v0}, Lc8/ATe;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 203
    const/4 v1, 0x1

    goto :goto_0

    .line 201
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lc8/xSe;
    .locals 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 144
    iget-object v2, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_1

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/ATe;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    .line 147
    .local v0, "cipherSuitesIntersection":[Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    const-class v2, Ljava/lang/String;

    iget-object v3, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lc8/ATe;->intersect(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v1, v2

    .line 153
    .local v1, "tlsVersionsIntersection":[Ljava/lang/String;
    :goto_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, v3}, Lc8/ATe;->contains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    const-string/jumbo v2, "TLS_FALLBACK_SCSV"

    invoke-static {v0, v2}, Lc8/ATe;->concat([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_0
    new-instance v2, Lc8/wSe;

    invoke-direct {v2, p0}, Lc8/wSe;-><init>(Lc8/xSe;)V

    .line 158
    invoke-virtual {v2, v0}, Lc8/wSe;->cipherSuites([Ljava/lang/String;)Lc8/wSe;

    move-result-object v2

    .line 159
    invoke-virtual {v2, v1}, Lc8/wSe;->tlsVersions([Ljava/lang/String;)Lc8/wSe;

    move-result-object v2

    .line 160
    invoke-virtual {v2}, Lc8/wSe;->build()Lc8/xSe;

    move-result-object v2

    return-object v2

    .line 146
    .end local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    .end local v1    # "tlsVersionsIntersection":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    .restart local v0    # "cipherSuitesIntersection":[Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method apply(Ljavax/net/ssl/SSLSocket;Z)V
    .locals 2
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "isFallback"    # Z

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lc8/xSe;->supportedSpec(Ljavax/net/ssl/SSLSocket;Z)Lc8/xSe;

    move-result-object v0

    .line 131
    .local v0, "specToApply":Lc8/xSe;
    iget-object v1, v0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, v0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 134
    :cond_0
    iget-object v1, v0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 135
    iget-object v1, v0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 137
    :cond_1
    return-void
.end method

.method public cipherSuites()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/CipherSuite;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v2, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 106
    :goto_0
    return-object v2

    .line 102
    :cond_0
    iget-object v2, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/squareup/okhttp/CipherSuite;

    .line 103
    .local v1, "result":[Lcom/squareup/okhttp/CipherSuite;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 104
    iget-object v2, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/CipherSuite;

    move-result-object v2

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v1}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 210
    instance-of v3, p1, Lc8/xSe;

    if-nez v3, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v1

    .line 211
    :cond_1
    if-ne p1, p0, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 213
    check-cast v0, Lc8/xSe;

    .line 214
    .local v0, "that":Lc8/xSe;
    iget-boolean v3, p0, Lc8/xSe;->tls:Z

    iget-boolean v4, v0, Lc8/xSe;->tls:Z

    if-ne v3, v4, :cond_0

    .line 216
    iget-boolean v3, p0, Lc8/xSe;->tls:Z

    if-eqz v3, :cond_3

    .line 217
    iget-object v3, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    iget-object v4, v0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    iget-object v4, v0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget-boolean v3, p0, Lc8/xSe;->supportsTlsExtensions:Z

    iget-boolean v4, v0, Lc8/xSe;->supportsTlsExtensions:Z

    if-ne v3, v4, :cond_0

    :cond_3
    move v1, v2

    .line 222
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 226
    const/16 v0, 0x11

    .line 227
    .local v0, "result":I
    iget-boolean v1, p0, Lc8/xSe;->tls:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 229
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 230
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lc8/xSe;->supportsTlsExtensions:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 232
    :cond_0
    return v0

    .line 230
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isCompatible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .prologue
    const/4 v0, 0x0

    .line 175
    iget-boolean v1, p0, Lc8/xSe;->tls:Z

    if-nez v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 179
    :cond_1
    iget-object v1, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xSe;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    :cond_2
    iget-object v1, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/xSe;->nonEmptyIntersection([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public supportsTlsExtensions()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lc8/xSe;->supportsTlsExtensions:Z

    return v0
.end method

.method public tlsVersions()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/TlsVersion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v2, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 120
    :goto_0
    return-object v2

    .line 116
    :cond_0
    iget-object v2, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [Lcom/squareup/okhttp/TlsVersion;

    .line 117
    .local v1, "result":[Lcom/squareup/okhttp/TlsVersion;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 118
    iget-object v2, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/squareup/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lcom/squareup/okhttp/TlsVersion;

    move-result-object v2

    aput-object v2, v1, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {v1}, Lc8/ATe;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 236
    iget-boolean v2, p0, Lc8/xSe;->tls:Z

    if-nez v2, :cond_0

    .line 237
    const-string/jumbo v2, "ConnectionSpec()"

    .line 242
    :goto_0
    return-object v2

    .line 240
    :cond_0
    iget-object v2, p0, Lc8/xSe;->cipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lc8/xSe;->cipherSuites()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "cipherSuitesString":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lc8/xSe;->tlsVersions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lc8/xSe;->tlsVersions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "tlsVersionsString":Ljava/lang/String;
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", tlsVersions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", supportsTlsExtensions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lc8/xSe;->supportsTlsExtensions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 240
    .end local v0    # "cipherSuitesString":Ljava/lang/String;
    .end local v1    # "tlsVersionsString":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "[all enabled]"

    goto :goto_1

    .line 241
    .restart local v0    # "cipherSuitesString":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "[all enabled]"

    goto :goto_2
.end method
