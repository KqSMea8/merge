.class public final Lc8/Chb;
.super Ljava/lang/Object;
.source "AESCrypt.java"


# static fields
.field private static final AES_MODE:Ljava/lang/String; = "AES/CBC/PKCS7Padding"

.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field public static DEBUG_LOG_ENABLED:Z = false

.field private static final HASH_ALGORITHM:Ljava/lang/String; = "SHA-256"

.field private static final TAG:Ljava/lang/String; = "AESCrypt"

.field private static final ivBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Chb;->ivBytes:[B

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Chb;->DEBUG_LOG_ENABLED:Z

    return-void

    .line 34
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "base64EncodedCipherText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-static {p0}, Lc8/Chb;->generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    .line 125
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v5, "base64EncodedCipherText"

    invoke-static {v5, p1}, Lc8/Chb;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const/4 v5, 0x2

    invoke-static {p1, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 127
    .local v0, "decodedCipherText":[B
    const-string/jumbo v5, "decodedCipherText"

    invoke-static {v5, v0}, Lc8/Chb;->log(Ljava/lang/String;[B)V

    .line 129
    sget-object v5, Lc8/Chb;->ivBytes:[B

    invoke-static {v3, v5, v0}, Lc8/Chb;->decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B

    move-result-object v1

    .line 131
    .local v1, "decryptedBytes":[B
    const-string/jumbo v5, "decryptedBytes"

    invoke-static {v5, v1}, Lc8/Chb;->log(Ljava/lang/String;[B)V

    .line 132
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 133
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v5, "message"

    invoke-static {v5, v4}, Lc8/Chb;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return-object v4

    .line 137
    .end local v0    # "decodedCipherText":[B
    .end local v1    # "decryptedBytes":[B
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v4    # "message":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v5, Lc8/Chb;->DEBUG_LOG_ENABLED:Z

    if-eqz v5, :cond_0

    .line 139
    const-string/jumbo v5, "AESCrypt"

    const-string/jumbo v6, "UnsupportedEncodingException "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_0
    new-instance v5, Ljava/security/GeneralSecurityException;

    invoke-direct {v5, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static decrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B
    .locals 4
    .param p0, "key"    # Ljavax/crypto/spec/SecretKeySpec;
    .param p1, "iv"    # [B
    .param p2, "decodedCipherText"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 157
    const-string/jumbo v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 158
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 159
    .local v2, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 160
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 162
    .local v1, "decryptedBytes":[B
    const-string/jumbo v3, "decryptedBytes"

    invoke-static {v3, v1}, Lc8/Chb;->log(Ljava/lang/String;[B)V

    .line 164
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-static {p0}, Lc8/Chb;->generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v3

    .line 74
    .local v3, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v4, "message"

    invoke-static {v4, p1}, Lc8/Chb;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v4, Lc8/Chb;->ivBytes:[B

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lc8/Chb;->encrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B

    move-result-object v0

    .line 79
    .local v0, "cipherText":[B
    const/4 v4, 0x2

    invoke-static {v0, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "encoded":Ljava/lang/String;
    const-string/jumbo v4, "Base64.NO_WRAP"

    invoke-static {v4, v2}, Lc8/Chb;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    return-object v2

    .line 82
    .end local v0    # "cipherText":[B
    .end local v2    # "encoded":Ljava/lang/String;
    .end local v3    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-boolean v4, Lc8/Chb;->DEBUG_LOG_ENABLED:Z

    if-eqz v4, :cond_0

    .line 84
    const-string/jumbo v4, "AESCrypt"

    const-string/jumbo v5, "UnsupportedEncodingException "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    :cond_0
    new-instance v4, Ljava/security/GeneralSecurityException;

    invoke-direct {v4, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static encrypt(Ljavax/crypto/spec/SecretKeySpec;[B[B)[B
    .locals 4
    .param p0, "key"    # Ljavax/crypto/spec/SecretKeySpec;
    .param p1, "iv"    # [B
    .param p2, "message"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v3, "AES/CBC/PKCS7Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 101
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 102
    .local v2, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, p0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 105
    .local v1, "cipherText":[B
    const-string/jumbo v3, "cipherText"

    invoke-static {v3, v1}, Lc8/Chb;->log(Ljava/lang/String;[B)V

    .line 107
    return-object v1
.end method

.method private static generateKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 47
    const-string/jumbo v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 48
    .local v1, "digest":Ljava/security/MessageDigest;
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    .local v0, "bytes":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v1, v0, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 50
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 52
    .local v2, "key":[B
    const-string/jumbo v4, "SHA-256 key "

    invoke-static {v4, v2}, Lc8/Chb;->log(Ljava/lang/String;[B)V

    .line 54
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v4, "AES"

    invoke-direct {v3, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 55
    .local v3, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    return-object v3
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 176
    sget-boolean v0, Lc8/Chb;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;[B)V
    .locals 2
    .param p0, "what"    # Ljava/lang/String;
    .param p1, "bytes"    # [B

    .prologue
    .line 171
    sget-boolean v0, Lc8/Chb;->DEBUG_LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lc8/Shb;->getHashString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    :cond_0
    return-void
.end method
