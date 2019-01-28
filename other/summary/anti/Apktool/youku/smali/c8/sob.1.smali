.class public Lc8/sob;
.super Ljava/lang/Object;
.source "ALPMD5Util.java"


# static fields
.field private static final MD5:Ljava/lang/String; = "MD5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptByMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 17
    invoke-static {p0}, Lc8/vob;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 40
    :goto_0
    return-object v6

    .line 21
    :cond_0
    :try_start_0
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 22
    .local v4, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 27
    .local v1, "byteArray":[B
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_1
    array-length v7, v1

    if-ge v5, v7, :cond_3

    .line 28
    aget-byte v3, v1, v5

    .line 29
    .local v3, "i":I
    if-gez v3, :cond_1

    .line 30
    add-int/lit16 v3, v3, 0x100

    .line 31
    :cond_1
    const/16 v7, 0x10

    if-ge v3, v7, :cond_2

    .line 32
    const-string/jumbo v7, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 36
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 37
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "byteArray":[B
    .end local v4    # "messageDigest":Ljava/security/MessageDigest;
    .end local v5    # "offset":I
    :catch_0
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static md5Digest([B)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B

    .prologue
    .line 46
    :try_start_0
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 51
    .local v3, "hash":[B
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v7, v3

    shl-int/lit8 v7, v7, 0x1

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 52
    .local v4, "hex":Ljava/lang/StringBuilder;
    move-object v0, v3

    .local v0, "arr$":[B
    array-length v6, v3

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_1

    aget-byte v1, v0, v5

    .line 53
    .local v1, "b":B
    and-int/lit16 v7, v1, 0xff

    const/16 v8, 0x10

    if-ge v7, v8, :cond_0

    .line 54
    const-string/jumbo v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_0
    and-int/lit16 v7, v1, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v3    # "hash":[B
    .end local v4    # "hex":Ljava/lang/StringBuilder;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 57
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "arr$":[B
    .restart local v3    # "hash":[B
    .restart local v4    # "hex":Ljava/lang/StringBuilder;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
