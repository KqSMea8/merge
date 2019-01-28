.class public Lc8/Zhb;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v5, 0x0

    .line 36
    .local v5, "encryptData":Ljava/lang/String;
    const/4 v1, 0x0

    .line 39
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    const-string/jumbo v10, "RSA"

    invoke-static {v10, p1}, Lc8/Zhb;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v9

    .line 41
    .local v9, "pubkey":Ljava/security/PublicKey;
    const-string/jumbo v10, "RSA/ECB/PKCS1Padding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 42
    .local v3, "cipher":Ljavax/crypto/Cipher;
    const/4 v10, 0x1

    invoke-virtual {v3, v10, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 44
    const-string/jumbo v10, "UTF-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 46
    .local v8, "plaintext":[B
    invoke-virtual {v3}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 47
    .local v0, "blockSize":I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .local v2, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    :try_start_1
    array-length v10, v8

    if-ge v7, v10, :cond_1

    .line 50
    array-length v10, v8

    sub-int/2addr v10, v7

    if-ge v10, v0, :cond_0

    array-length v10, v8

    sub-int/2addr v10, v7

    :goto_1
    invoke-virtual {v3, v8, v7, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 49
    add-int/2addr v7, v0

    goto :goto_0

    :cond_0
    move v10, v0

    .line 50
    goto :goto_1

    .line 55
    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lc8/Mhb;->encode([B)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .end local v5    # "encryptData":Ljava/lang/String;
    .local v6, "encryptData":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 62
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 70
    .end local v0    # "blockSize":I
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "encryptData":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v8    # "plaintext":[B
    .end local v9    # "pubkey":Ljava/security/PublicKey;
    .restart local v5    # "encryptData":Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v5

    .line 63
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encryptData":Ljava/lang/String;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "encryptData":Ljava/lang/String;
    .restart local v7    # "i":I
    .restart local v8    # "plaintext":[B
    .restart local v9    # "pubkey":Ljava/security/PublicKey;
    :catch_0
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .line 66
    .end local v6    # "encryptData":Ljava/lang/String;
    .restart local v5    # "encryptData":Ljava/lang/String;
    goto :goto_2

    .line 57
    .end local v0    # "blockSize":I
    .end local v3    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "i":I
    .end local v8    # "plaintext":[B
    .end local v9    # "pubkey":Ljava/security/PublicKey;
    :catch_1
    move-exception v4

    .line 58
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    if-eqz v1, :cond_2

    .line 62
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 63
    :catch_2
    move-exception v4

    .line 64
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 60
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v1, :cond_3

    .line 62
    :try_start_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 66
    :cond_3
    :goto_5
    throw v10

    .line 63
    :catch_3
    move-exception v4

    .line 64
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 60
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "blockSize":I
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "cipher":Ljavax/crypto/Cipher;
    .restart local v7    # "i":I
    .restart local v8    # "plaintext":[B
    .restart local v9    # "pubkey":Ljava/security/PublicKey;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 57
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encryptData":Ljava/lang/String;
    .restart local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "encryptData":Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .end local v2    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "encryptData":Ljava/lang/String;
    .restart local v5    # "encryptData":Ljava/lang/String;
    goto :goto_2
.end method

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .param p1, "bysKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 27
    invoke-static {p1}, Lc8/Mhb;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 28
    .local v0, "decodedKey":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 30
    .local v2, "x509":Ljava/security/spec/X509EncodedKeySpec;
    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 31
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method
