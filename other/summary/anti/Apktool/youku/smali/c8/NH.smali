.class public Lc8/NH;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"

.field private static final SHA1:Ljava/lang/String; = "SHA-1"

.field private static final SHA256:Ljava/lang/String; = "SHA-256"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 94
    .local v3, "messageDigest":Ljava/security/MessageDigest;
    const/16 v0, 0x400

    .line 95
    .local v0, "STREAM_BUFFER_LENGTH":I
    new-array v1, v0, [B

    .line 96
    .local v1, "buffer":[B
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 97
    .local v4, "read":I
    :goto_0
    if-ltz v4, :cond_0

    .line 98
    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 99
    const/4 v5, 0x0

    invoke-virtual {p0, v1, v5, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    goto :goto_0

    .line 101
    :cond_0
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-static {v5}, Lc8/PH;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 102
    .end local v0    # "STREAM_BUFFER_LENGTH":I
    .end local v1    # "buffer":[B
    .end local v3    # "messageDigest":Ljava/security/MessageDigest;
    .end local v4    # "read":I
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Security exception"

    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private static digest([BLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-static {p0, p1}, Lc8/NH;->digest2byte([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc8/PH;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static digest2byte([BLjava/lang/String;)[B
    .locals 4
    .param p0, "input"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 73
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 74
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 75
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Security exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static md5ToHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 37
    :goto_0
    return-object v1

    .line 34
    :cond_0
    :try_start_0
    const-string/jumbo v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "MD5"

    invoke-static {v2, v3}, Lc8/NH;->digest([BLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static md5ToHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 42
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "MD5"

    invoke-static {p0, v0}, Lc8/NH;->digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sha1ToByte([B)[B
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 66
    if-nez p0, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lc8/NH;->digest2byte([BLjava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static sha1ToHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SHA-1"

    invoke-static {p0, v0}, Lc8/NH;->digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static sha256ToHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 51
    if-nez p0, :cond_0

    .line 52
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "SHA-256"

    invoke-static {p0, v0}, Lc8/NH;->digest([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
