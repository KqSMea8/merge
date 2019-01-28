.class public Lc8/OZn;
.super Ljava/lang/Object;
.source "HmacSHA1.java"


# static fields
.field private static final Algorithm:Ljava/lang/String; = "HmacSHA1"

.field private static instance:Lc8/OZn;


# instance fields
.field private kg:Ljavax/crypto/KeyGenerator;

.field private mac:Ljavax/crypto/Mac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lc8/OZn;->instance:Lc8/OZn;

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lc8/OZn;->kg:Ljavax/crypto/KeyGenerator;

    .line 14
    iput-object v0, p0, Lc8/OZn;->mac:Ljavax/crypto/Mac;

    .line 30
    const-string/jumbo v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    iput-object v0, p0, Lc8/OZn;->kg:Ljavax/crypto/KeyGenerator;

    .line 31
    const-string/jumbo v0, "HmacSHA1"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    iput-object v0, p0, Lc8/OZn;->mac:Ljavax/crypto/Mac;

    .line 32
    return-void
.end method

.method public static getInstance()Lc8/OZn;
    .locals 2

    .prologue
    .line 19
    sget-object v1, Lc8/OZn;->instance:Lc8/OZn;

    if-nez v1, :cond_0

    .line 21
    :try_start_0
    new-instance v1, Lc8/OZn;

    invoke-direct {v1}, Lc8/OZn;-><init>()V

    sput-object v1, Lc8/OZn;->instance:Lc8/OZn;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :cond_0
    sget-object v1, Lc8/OZn;->instance:Lc8/OZn;

    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lc8/OZn;->hash([B[B)[B

    move-result-object v0

    .line 58
    .local v0, "bytes":[B
    invoke-static {v0}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hash([B[B)[B
    .locals 3
    .param p0, "source"    # [B
    .param p1, "key"    # [B

    .prologue
    .line 48
    invoke-static {}, Lc8/OZn;->getInstance()Lc8/OZn;

    move-result-object v1

    .line 50
    .local v1, "hcacSha1":Lc8/OZn;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Lc8/OZn;->digest([B[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public digest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/OZn;->digest([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public digest([B[B)[B
    .locals 4
    .param p1, "source"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v2, p0, Lc8/OZn;->kg:Ljavax/crypto/KeyGenerator;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3, p2}, Ljava/security/SecureRandom;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    .line 36
    iget-object v2, p0, Lc8/OZn;->kg:Ljavax/crypto/KeyGenerator;

    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 38
    .local v1, "sk":Ljavax/crypto/SecretKey;
    iget-object v2, p0, Lc8/OZn;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 39
    iget-object v2, p0, Lc8/OZn;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .line 40
    .local v0, "result":[B
    return-object v0
.end method
