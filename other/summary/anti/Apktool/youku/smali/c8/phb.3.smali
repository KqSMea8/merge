.class public Lc8/phb;
.super Ljava/lang/Object;
.source "AESCrypto.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "AES"

.field private static final CIPHER_NAME:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final ENCODE_UTF_8:Ljava/lang/String; = "UTF-8"

.field private static final SECRETKEYSPEC_NAME:Ljava/lang/String; = "AES"

.field public static final TAG:Ljava/lang/String; = "auth.AESCrypto"

.field private static final iv:[B

.field private static threadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lc8/phb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc8/phb;->threadLocal:Ljava/lang/ThreadLocal;

    .line 34
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/phb;->iv:[B

    return-void

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
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lc8/phb;->ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

    .line 41
    iput-object v0, p0, Lc8/phb;->cipher:Ljavax/crypto/Cipher;

    .line 51
    invoke-direct {p0}, Lc8/phb;->generateCipher()V

    .line 52
    return-void
.end method

.method private generateCipher()V
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lc8/phb;->cipher:Ljavax/crypto/Cipher;

    if-nez v1, :cond_0

    .line 57
    :try_start_0
    const-string/jumbo v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    iput-object v1, p0, Lc8/phb;->cipher:Ljavax/crypto/Cipher;

    .line 58
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v2, Lc8/phb;->iv:[B

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput-object v1, p0, Lc8/phb;->ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    const-string/jumbo v1, "auth.AESCrypto"

    const-string/jumbo v2, "AES:generateCipher:generate cipher error"

    invoke-static {v1, v2, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static instance()Lc8/phb;
    .locals 2

    .prologue
    .line 44
    sget-object v0, Lc8/phb;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Lc8/phb;->threadLocal:Ljava/lang/ThreadLocal;

    new-instance v1, Lc8/phb;

    invoke-direct {v1}, Lc8/phb;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 47
    :cond_0
    sget-object v0, Lc8/phb;->threadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/phb;

    return-object v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "plainText"    # Ljava/lang/String;
    .param p2, "rawKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v2, v3

    .line 125
    :goto_0
    return-object v2

    .line 118
    :cond_1
    :try_start_0
    invoke-static {p1}, Lc8/Nhb;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lc8/phb;->decrypt([B[B)[B

    move-result-object v1

    .line 119
    .local v1, "result":[B
    if-eqz v1, :cond_2

    .line 120
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v2, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "auth.AESCrypto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AES:decrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":String to Byte Array Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_2
    move-object v2, v3

    .line 125
    goto :goto_0
.end method

.method public decrypt([B[B)[B
    .locals 6
    .param p1, "plainByte"    # [B
    .param p2, "keyByte"    # [B

    .prologue
    const/4 v2, 0x0

    .line 129
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return-object v2

    .line 131
    :cond_0
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 132
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v3, p0, Lc8/phb;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x2

    iget-object v5, p0, Lc8/phb;->ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 133
    iget-object v3, p0, Lc8/phb;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 134
    .end local v1    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    const-string/jumbo v3, "auth.AESCrypto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AES:decrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":decrypt data error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method public decryptWrapper(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "rawKey"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 94
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 95
    .local v0, "contentLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x8

    if-ne v0, v3, :cond_1

    .line 96
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v2, v3, 0x4

    .line 102
    .local v2, "padding":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lc8/phb;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "decryptData":Ljava/lang/String;
    return-object v1

    .line 99
    .end local v1    # "decryptData":Ljava/lang/String;
    .end local v2    # "padding":I
    :cond_1
    add-int/lit8 v3, v0, 0x8

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 104
    .restart local v2    # "padding":I
    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 106
    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "plainText"    # Ljava/lang/String;
    .param p2, "rawKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v2

    .line 68
    :cond_1
    :try_start_0
    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lc8/phb;->encrypt([B[B)[B

    move-result-object v1

    .line 69
    .local v1, "result":[B
    if-eqz v1, :cond_0

    .line 70
    invoke-static {v1}, Lc8/Mhb;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 72
    .end local v1    # "result":[B
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "auth.AESCrypto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AES:encrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":String to Byte Array Error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public encrypt([B[B)[B
    .locals 6
    .param p1, "plainByte"    # [B
    .param p2, "keyByte"    # [B

    .prologue
    const/4 v2, 0x0

    .line 79
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-object v2

    .line 81
    :cond_1
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v3, "AES"

    invoke-direct {v1, p2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 82
    .local v1, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v3, p0, Lc8/phb;->cipher:Ljavax/crypto/Cipher;

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/phb;->ivParameterSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3, v4, v1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 83
    iget-object v3, p0, Lc8/phb;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v3, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    goto :goto_0

    .line 84
    .end local v1    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_1
    const-string/jumbo v3, "auth.AESCrypto"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AES:encrypt:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":encrypt data error"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/Jhb;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 84
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method
