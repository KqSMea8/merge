.class public Lc8/zZn;
.super Ljava/lang/Object;
.source "AlgorithmCoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xZn;,
        Lc8/yZn;
    }
.end annotation


# instance fields
.field private algorithmName:Ljava/lang/String;

.field private initializationVector:[B

.field private transformation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "transformation"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lc8/zZn;->algorithmName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lc8/zZn;->transformation:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lc8/zZn;->initializationVector:[B

    .line 44
    iput-object p1, p0, Lc8/zZn;->algorithmName:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lc8/zZn;->transformation:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;
    .param p2, "transformation"    # Ljava/lang/String;
    .param p3, "initVector"    # [B

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object v0, p0, Lc8/zZn;->algorithmName:Ljava/lang/String;

    .line 40
    iput-object v0, p0, Lc8/zZn;->transformation:Ljava/lang/String;

    .line 41
    iput-object v0, p0, Lc8/zZn;->initializationVector:[B

    .line 49
    iput-object p1, p0, Lc8/zZn;->algorithmName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lc8/zZn;->transformation:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lc8/zZn;->initializationVector:[B

    .line 52
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    const/16 v5, 0x10

    new-array v3, v5, [B

    .line 103
    .local v3, "iv":[B
    new-instance v0, Lc8/zZn;

    const-string/jumbo v5, "AES"

    const-string/jumbo v6, "AES/CBC/PKCS5Padding"

    invoke-direct {v0, v5, v6, v3}, Lc8/zZn;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 105
    .local v0, "coder":Lc8/zZn;
    const-string/jumbo v5, "1234567890123456"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 107
    .local v4, "key":[B
    const-string/jumbo v5, "1234567890123456"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Lc8/zZn;->encode([B[B)[B

    move-result-object v2

    .line 109
    .local v2, "e":[B
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v2}, Lc8/NZn;->encodeHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, v2, v4}, Lc8/zZn;->decode([B[B)[B

    move-result-object v1

    .line 113
    .local v1, "d":[B
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public decode([B[B)[B
    .locals 5
    .param p1, "encryptedBytes"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lc8/zZn;->algorithmName:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 81
    .local v3, "sksSpec":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v4, p0, Lc8/zZn;->transformation:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 83
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v4, p0, Lc8/zZn;->initializationVector:[B

    if-nez v4, :cond_0

    .line 84
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 90
    :goto_0
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 92
    .local v1, "decrypted":[B
    return-object v1

    .line 86
    .end local v1    # "decrypted":[B
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lc8/zZn;->initializationVector:[B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 87
    .local v2, "iv":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method

.method public encode([B[B)[B
    .locals 6
    .param p1, "source"    # [B
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 57
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lc8/zZn;->algorithmName:Ljava/lang/String;

    invoke-direct {v3, p2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    .local v3, "sksSpec":Ljavax/crypto/spec/SecretKeySpec;
    iget-object v4, p0, Lc8/zZn;->transformation:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v4, p0, Lc8/zZn;->initializationVector:[B

    if-nez v4, :cond_0

    .line 63
    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 72
    :goto_0
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 74
    .local v1, "encrypted":[B
    return-object v1

    .line 66
    .end local v1    # "encrypted":[B
    :cond_0
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lc8/zZn;->initializationVector:[B

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 68
    .local v2, "iv":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {v0, v5, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    goto :goto_0
.end method
