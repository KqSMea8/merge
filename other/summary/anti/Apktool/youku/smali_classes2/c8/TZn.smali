.class public Lc8/TZn;
.super Ljava/lang/Object;
.source "RSAAlgorithm.java"


# static fields
.field public static final KEYSIZE:I = 0x400

.field static final MAX_DECRYPT_BLOCK:I = 0x80

.field static final MAX_ENCRYPT_BLOCK:I = 0x75

.field static final random:Ljava/util/Random;


# instance fields
.field private modulus:Ljava/math/BigInteger;

.field private privateKey:Ljava/math/BigInteger;

.field private publicKey:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lc8/TZn;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lc8/TZn;->genKey(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "q"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p1}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 34
    .local v1, "P":Ljava/math/BigInteger;
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {p2}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 35
    .local v2, "Q":Ljava/math/BigInteger;
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p3}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/math/BigInteger;-><init>([B)V

    .line 36
    .local v0, "E":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, v2, v0}, Lc8/TZn;->genKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "e"    # Ljava/math/BigInteger;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p0, p1, p2, p3}, Lc8/TZn;->genKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 30
    return-void
.end method

.method public static decode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "modulus"    # Ljava/math/BigInteger;

    .prologue
    .line 135
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, p1, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "key"    # Ljava/math/BigInteger;
    .param p2, "modulus"    # Ljava/math/BigInteger;

    .prologue
    .line 131
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, p1, p2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 12
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    new-instance v6, Lc8/TZn;

    invoke-direct {v6}, Lc8/TZn;-><init>()V

    .line 140
    .local v6, "rsa":Lc8/TZn;
    invoke-virtual {v6}, Lc8/TZn;->getPrivateKey()Ljava/math/BigInteger;

    move-result-object v4

    .line 141
    .local v4, "privKey":Ljava/math/BigInteger;
    invoke-virtual {v6}, Lc8/TZn;->getPublicKey()Ljava/math/BigInteger;

    move-result-object v5

    .line 142
    .local v5, "pubKey":Ljava/math/BigInteger;
    invoke-virtual {v6}, Lc8/TZn;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 145
    .local v2, "modulus":Ljava/math/BigInteger;
    const-string/jumbo v7, "RSA\u516c\u94a5\u52a0\u5bc6\u7b97\u6cd5\u662f1977\u5e74\u7531Ron Rivest\u3001Adi Shamirh\u548cLenAdleman\u5728\uff08\u7f8e\u56fd\u9ebb\u7701\u7406\u5de5\u5b66\u9662\uff09\u5f00\u53d1\u7684\u3002"

    .line 147
    .local v7, "source":Ljava/lang/String;
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 148
    .local v0, "bytes":[B
    invoke-static {v0, v4, v2}, Lc8/TZn;->encode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 149
    .local v1, "cipher":[B
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\r\n[ENCODE]:\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-static {v1, v5, v2}, Lc8/TZn;->decode([BLjava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v3

    .line 153
    .local v3, "plain":[B
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\r\n[DECODE]:\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Ljava/lang/String;

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v10, v3, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    return-void
.end method


# virtual methods
.method public genKey(I)V
    .locals 5
    .param p1, "keySize"    # I

    .prologue
    .line 120
    div-int/lit8 v3, p1, 0x2

    sget-object v4, Lc8/TZn;->random:Ljava/util/Random;

    invoke-static {v3, v4}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v1

    .line 121
    .local v1, "p":Ljava/math/BigInteger;
    div-int/lit8 v3, p1, 0x2

    sget-object v4, Lc8/TZn;->random:Ljava/util/Random;

    invoke-static {v3, v4}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v2

    .line 124
    .local v2, "q":Ljava/math/BigInteger;
    sget-object v3, Lc8/TZn;->random:Ljava/util/Random;

    invoke-static {p1, v3}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    .line 127
    .local v0, "e":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, v2, v0}, Lc8/TZn;->genKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 128
    return-void
.end method

.method public genKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 5
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "e"    # Ljava/math/BigInteger;

    .prologue
    .line 95
    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 98
    .local v2, "pq":Ljava/math/BigInteger;
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 101
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {p3, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    .local v0, "d":Ljava/math/BigInteger;
    iput-object p3, p0, Lc8/TZn;->publicKey:Ljava/math/BigInteger;

    .line 107
    iput-object v0, p0, Lc8/TZn;->privateKey:Ljava/math/BigInteger;

    .line 110
    iput-object v1, p0, Lc8/TZn;->modulus:Ljava/math/BigInteger;

    .line 111
    return-void
.end method

.method public getModulus()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lc8/TZn;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulusAsBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lc8/TZn;->modulus:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lc8/TZn;->privateKey:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrivateKeyAsBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/TZn;->privateKey:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/TZn;->publicKey:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicKeyAsBase64()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lc8/TZn;->publicKey:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
