.class public Lc8/WZn;
.super Ljava/lang/Object;
.source "SHA1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digest([B)[B
    .locals 1
    .param p0, "datas"    # [B

    .prologue
    .line 30
    invoke-static {}, Lc8/WZn;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static digestAsHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "datas"    # [B

    .prologue
    .line 34
    invoke-static {p0}, Lc8/WZn;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageDigest()Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 39
    :try_start_0
    const-string/jumbo v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 22
    .local v0, "data":[B
    invoke-static {v0}, Lc8/WZn;->digest([B)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 26
    .local v2, "encode":[B
    invoke-static {v2}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 23
    .end local v0    # "data":[B
    .end local v2    # "encode":[B
    :catch_0
    move-exception v1

    .line 24
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Lc8/WZn;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
