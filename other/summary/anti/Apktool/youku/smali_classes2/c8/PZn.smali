.class public Lc8/PZn;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static digest([B)[B
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 49
    invoke-static {}, Lc8/PZn;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static digestHex([B)Ljava/lang/String;
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 53
    invoke-static {p0}, Lc8/PZn;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageDigest()Ljava/security/MessageDigest;
    .locals 2

    .prologue
    .line 58
    :try_start_0
    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hash(Ljava/io/File;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v4, 0x0

    .line 29
    .local v4, "fis":Ljava/io/InputStream;
    invoke-static {}, Lc8/PZn;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    .line 31
    .local v1, "digest":Ljava/security/MessageDigest;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .end local v4    # "fis":Ljava/io/InputStream;
    .local v5, "fis":Ljava/io/InputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 34
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "numRead":I
    if-lez v6, :cond_1

    .line 35
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 37
    .end local v0    # "buffer":[B
    .end local v6    # "numRead":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 38
    .end local v5    # "fis":Ljava/io/InputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "fis":Ljava/io/InputStream;
    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v4, :cond_0

    .line 41
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_0
    throw v7

    .line 40
    .end local v4    # "fis":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v5    # "fis":Ljava/io/InputStream;
    .restart local v6    # "numRead":I
    :cond_1
    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 44
    :cond_2
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 45
    .local v3, "encode":[B
    invoke-static {v3}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 40
    .end local v0    # "buffer":[B
    .end local v3    # "encode":[B
    .end local v6    # "numRead":I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/InputStream;
    .restart local v4    # "fis":Ljava/io/InputStream;
    goto :goto_2

    .line 37
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Lc8/PZn;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 24
    .local v0, "encode":[B
    invoke-static {v0}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static sign(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-static {}, Lc8/PZn;->getMessageDigest()Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 19
    .local v0, "encode":[B
    invoke-static {v0}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
