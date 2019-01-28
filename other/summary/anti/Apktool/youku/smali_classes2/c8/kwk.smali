.class public Lc8/kwk;
.super Ljava/lang/Object;
.source "RSAUtil_Networkauth.java"


# static fields
.field private static DEFAULT_PRIVATE_KEY:Ljava/lang/String;

.field private static DEFAULT_PUBLIC_KEY:Ljava/lang/String;

.field private static privateKey:Ljava/security/interfaces/RSAPrivateKey;

.field private static publicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lc8/kwk;->init()V

    .line 36
    const-string/jumbo v0, ""

    sput-object v0, Lc8/kwk;->DEFAULT_PUBLIC_KEY:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, ""

    sput-object v0, Lc8/kwk;->DEFAULT_PRIVATE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encrypt(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 196
    if-eqz p0, :cond_0

    invoke-static {p1}, Lc8/lwk;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 197
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u52a0\u5bc6\u516c\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 202
    .local v3, "plainTextData":[B
    :try_start_0
    const-string/jumbo v4, "RSA/ECB/PKCS1Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 203
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 204
    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 205
    .local v2, "output":[B
    invoke-static {v2}, Lc8/Yvk;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v4

    .line 210
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "output":[B
    :goto_0
    return-object v4

    .line 207
    :catch_0
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u65e0\u6b64\u52a0\u5bc6\u7b97\u6cd5"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :catch_1
    move-exception v1

    .line 209
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 210
    const/4 v4, 0x0

    goto :goto_0

    .line 212
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u52a0\u5bc6\u516c\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    :catch_3
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u660e\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    :catch_4
    move-exception v4

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "\u660e\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lc8/kwk;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    return-object v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC5se07mkN71qsSJHjZ2Z0+Z+4LlLvf2sz7Md38VAa3EmAOvI7vZp3hbAxicL724ylcmisTPtZQhT/9C+25AELqy9PN9JmzKpwoVTUoJvxG4BoyT49+gGVl6s6zo1byNoHUzTfkmRfmC9MC53HvG8GwKP5xtcdptFjAIcgIR7oAWQIDAQAB"

    sput-object v0, Lc8/kwk;->DEFAULT_PUBLIC_KEY:Ljava/lang/String;

    .line 264
    :try_start_0
    sget-object v0, Lc8/kwk;->DEFAULT_PUBLIC_KEY:Ljava/lang/String;

    invoke-static {v0}, Lc8/kwk;->loadPublicKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :goto_0
    :try_start_1
    sget-object v0, Lc8/kwk;->DEFAULT_PRIVATE_KEY:Ljava/lang/String;

    invoke-static {v0}, Lc8/kwk;->loadPrivateKey(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 273
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static loadPrivateKey(Ljava/lang/String;)V
    .locals 5
    .param p0, "privateKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    invoke-static {p0}, Lc8/lwk;->base64DecodeBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 169
    .local v0, "buffer":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 170
    .local v2, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 171
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPrivateKey;

    sput-object v3, Lc8/kwk;->privateKey:Ljava/security/interfaces/RSAPrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 180
    return-void

    .line 173
    .end local v0    # "buffer":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u79c1\u94a5\u975e\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u79c1\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :catch_3
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u79c1\u94a5\u6570\u636e\u5185\u5bb9\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static loadPublicKey(Ljava/lang/String;)V
    .locals 5
    .param p0, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0}, Lc8/lwk;->base64DecodeBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 124
    .local v0, "buffer":[B
    const-string/jumbo v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 125
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 126
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    sput-object v3, Lc8/kwk;->publicKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 135
    return-void

    .line 128
    .end local v0    # "buffer":[B
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    :catch_0
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 130
    :catch_1
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :catch_2
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 134
    :catch_3
    move-exception v3

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u516c\u94a5\u6570\u636e\u5185\u5bb9\u8bfb\u53d6\u9519\u8bef"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method
