.class public Lc8/SZn;
.super Ljava/lang/Object;
.source "RSA.java"


# static fields
.field public static final KEYSIZE:I = 0x400

.field public static final KEY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final MAX_DECRYPT_BLOCK:I = 0x80

.field private static final MAX_ENCRYPT_BLOCK:I = 0x75

.field public static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "MD5withRSA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode([BLjava/security/Key;)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x80

    .line 184
    const-string/jumbo v8, "RSA"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 185
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v1, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 188
    array-length v5, p0

    .line 189
    .local v5, "inputLen":I
    const/4 v6, 0x0

    .line 191
    .local v6, "offSet":I
    const/4 v4, 0x0

    .line 192
    .local v4, "i":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-le v5, v6, :cond_1

    .line 195
    sub-int v8, v5, v6

    if-le v8, v10, :cond_0

    .line 196
    const/16 v8, 0x80

    :try_start_0
    invoke-virtual {v1, p0, v6, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 200
    .local v0, "cache":[B
    :goto_1
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v7, v0, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 201
    add-int/lit8 v4, v4, 0x1

    .line 202
    shl-int/lit8 v6, v4, 0x7

    goto :goto_0

    .line 198
    .end local v0    # "cache":[B
    :cond_0
    sub-int v8, v5, v6

    invoke-virtual {v1, p0, v6, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .restart local v0    # "cache":[B
    goto :goto_1

    .line 204
    .end local v0    # "cache":[B
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 205
    .local v2, "decryptedData":[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-static {v7}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    return-object v2

    .line 207
    .end local v2    # "decryptedData":[B
    :catch_0
    move-exception v3

    .line 208
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v7}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    throw v8
.end method

.method public static decodeByPrivateKey([BLjava/lang/String;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    invoke-static {p1}, Lc8/SZn;->toPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    .line 153
    .local v0, "privateK":Ljava/security/Key;
    invoke-static {p0, v0}, Lc8/SZn;->decode([BLjava/security/Key;)[B

    move-result-object v1

    return-object v1
.end method

.method public static decodeByPublicKey([BLjava/lang/String;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 165
    invoke-static {p1}, Lc8/SZn;->toPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 166
    .local v0, "publicK":Ljava/security/Key;
    invoke-static {p0, v0}, Lc8/SZn;->decode([BLjava/security/Key;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encode([BLjava/security/Key;)[B
    .locals 11
    .param p0, "data"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v10, 0x75

    .line 250
    const-string/jumbo v8, "RSA"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 251
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v1, v8, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 254
    array-length v5, p0

    .line 255
    .local v5, "inputLen":I
    const/4 v6, 0x0

    .line 257
    .local v6, "offSet":I
    const/4 v4, 0x0

    .line 258
    .local v4, "i":I
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 260
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    :goto_0
    if-le v5, v6, :cond_1

    .line 261
    sub-int v8, v5, v6

    if-le v8, v10, :cond_0

    .line 262
    const/16 v8, 0x75

    :try_start_0
    invoke-virtual {v1, p0, v6, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .line 266
    .local v0, "cache":[B
    :goto_1
    const/4 v8, 0x0

    array-length v9, v0

    invoke-virtual {v7, v0, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 267
    add-int/lit8 v4, v4, 0x1

    .line 268
    mul-int/lit8 v6, v4, 0x75

    goto :goto_0

    .line 264
    .end local v0    # "cache":[B
    :cond_0
    sub-int v8, v5, v6

    invoke-virtual {v1, p0, v6, v8}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v0

    .restart local v0    # "cache":[B
    goto :goto_1

    .line 270
    .end local v0    # "cache":[B
    :cond_1
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 271
    .local v3, "encryptedData":[B
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    invoke-static {v7}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    return-object v3

    .line 273
    .end local v3    # "encryptedData":[B
    :catch_0
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-static {v7}, Lc8/Mao;->closeQuietly(Ljava/io/OutputStream;)V

    throw v8
.end method

.method public static encodeByPrivateKey([BLjava/lang/String;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {p1}, Lc8/SZn;->toPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    .line 238
    .local v0, "privateK":Ljava/security/Key;
    invoke-static {p0, v0}, Lc8/SZn;->encode([BLjava/security/Key;)[B

    move-result-object v1

    return-object v1
.end method

.method public static encodeByPublicKey([BLjava/lang/String;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lc8/SZn;->toPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 225
    .local v0, "publicK":Ljava/security/Key;
    invoke-static {p0, v0}, Lc8/SZn;->encode([BLjava/security/Key;)[B

    move-result-object v1

    return-object v1
.end method

.method public static genKeyPair()Ljava/security/KeyPair;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 65
    .local v1, "keyPairGen":Ljava/security/KeyPairGenerator;
    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 66
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 67
    .local v0, "keyPair":Ljava/security/KeyPair;
    return-object v0
.end method

.method public static getModulus(Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 2
    .param p0, "keyPair"    # Ljava/security/KeyPair;

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 312
    .local v0, "key":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getModulus(Ljava/security/interfaces/RSAPrivateKey;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/security/interfaces/RSAPrivateKey;

    .prologue
    .line 322
    invoke-interface {p0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getModulus(Ljava/security/interfaces/RSAPublicKey;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 332
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrivateKey(Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 2
    .param p0, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 289
    .local v0, "key":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;
    .locals 2
    .param p0, "keyPair"    # Ljava/security/KeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 301
    .local v0, "key":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static signature([BLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 79
    invoke-static {p1}, Lc8/SZn;->toPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;

    move-result-object v0

    .line 80
    .local v0, "privateK":Ljava/security/PrivateKey;
    invoke-static {p0, v0}, Lc8/SZn;->signature([BLjava/security/PrivateKey;)[B

    move-result-object v1

    invoke-static {v1}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static signature([BLjava/security/PrivateKey;)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const-string/jumbo v1, "MD5withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 93
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 94
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 95
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method public static toPrivateKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .locals 5
    .param p0, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {p0}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 344
    .local v1, "keyBytes":[B
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 345
    .local v3, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 346
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 347
    .local v0, "key":Ljava/security/interfaces/RSAPrivateKey;
    return-object v0
.end method

.method public static toPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .locals 5
    .param p0, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 358
    invoke-static {p0}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 359
    .local v1, "keyBytes":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 360
    .local v3, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 361
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 362
    .local v0, "key":Ljava/security/interfaces/RSAPublicKey;
    return-object v0
.end method

.method public static verifySignature([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "data"    # [B
    .param p1, "sign"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 108
    invoke-static {p1}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, v0, p2}, Lc8/SZn;->verifySignature([B[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static verifySignature([B[BLjava/lang/String;)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "sign"    # [B
    .param p2, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p2}, Lc8/SZn;->toPublicKey(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v0

    .line 122
    .local v0, "publicK":Ljava/security/PublicKey;
    invoke-static {p0, p1, v0}, Lc8/SZn;->verifySignature([B[BLjava/security/PublicKey;)Z

    move-result v1

    return v1
.end method

.method public static verifySignature([B[BLjava/security/PublicKey;)Z
    .locals 2
    .param p0, "data"    # [B
    .param p1, "sign"    # [B
    .param p2, "publicK"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    const-string/jumbo v1, "MD5withRSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 136
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p2}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 137
    invoke-virtual {v0, p0}, Ljava/security/Signature;->update([B)V

    .line 138
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method
