.class public Lc8/Nvk;
.super Ljava/lang/Object;
.source "TelecomAesUtil.java"


# static fields
.field private static iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "0000000000000000"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lc8/Nvk;->iv:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 122
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lc8/Nvk;->iv:[B

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 124
    .local v3, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string/jumbo v7, "AES"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 127
    .local v5, "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 128
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 129
    invoke-static {p0}, Lc8/Yvk;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 130
    .local v1, "contentByte":[B
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 131
    .local v4, "result":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_5

    .line 145
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "contentByte":[B
    .end local v3    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "result":[B
    .end local v5    # "secretKey":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v6

    .line 132
    :catch_0
    move-exception v2

    .line 133
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 145
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 134
    :catch_1
    move-exception v2

    .line 135
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    .line 136
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 137
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 138
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .line 139
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 140
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_4
    move-exception v2

    .line 141
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_5
    move-exception v2

    .line 143
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v6, Lc8/Nvk;->iv:[B

    invoke-direct {v3, v6}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 70
    .local v3, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string/jumbo v7, "AES"

    invoke-direct {v4, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 72
    .local v4, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v6, "AES/CBC/PKCS5Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 74
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const-string/jumbo v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 76
    .local v0, "byteContent":[B
    const/4 v6, 0x1

    invoke-virtual {v1, v6, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    .line 80
    .local v5, "result":[B
    invoke-static {v5}, Lc8/Yvk;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 97
    .end local v0    # "byteContent":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v5    # "result":[B
    :goto_0
    return-object v6

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 97
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 84
    :catch_1
    move-exception v2

    .line 85
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 86
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v2

    .line 87
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 88
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v2

    .line 89
    .local v2, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    .line 90
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v2

    .line 91
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    .line 93
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    .line 94
    .end local v2    # "e":Ljavax/crypto/BadPaddingException;
    :catch_6
    move-exception v2

    .line 95
    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->printStackTrace()V

    goto :goto_1
.end method
