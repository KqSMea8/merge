.class public Lc8/QL;
.super Ljava/lang/Object;
.source "HMacUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hmacSha1([B[B)[B
    .locals 4
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B

    .prologue
    .line 24
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "HmacSHA256"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 26
    .local v2, "signingKey":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v1, 0x0

    .line 28
    .local v1, "rawHmac":[B
    :try_start_0
    const-string/jumbo v3, "HmacSHA256"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 29
    .local v0, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v0, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 30
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 34
    .end local v0    # "mac":Ljavax/crypto/Mac;
    :goto_0
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0

    .line 33
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static hmacSha1Hex([B[B)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # [B
    .param p1, "valueToDigest"    # [B

    .prologue
    .line 14
    const-string/jumbo v0, ""

    .line 16
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lc8/QL;->hmacSha1([B[B)[B

    move-result-object v2

    invoke-static {v2}, Lc8/cM;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 20
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception v1

    .line 18
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.HMacUtil"

    const-string/jumbo v3, "hmacSha1Hex"

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "result"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
