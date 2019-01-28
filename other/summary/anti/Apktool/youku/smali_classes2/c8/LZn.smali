.class public Lc8/LZn;
.super Ljava/lang/Object;
.source "DSA.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "DSA"

.field private static final KEY_SIZE:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static genKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4
    .param p0, "seed"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 62
    const-string/jumbo v3, "DSA"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 64
    .local v1, "keygen":Ljava/security/KeyPairGenerator;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 65
    .local v2, "secureRandom":Ljava/security/SecureRandom;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 66
    const/16 v3, 0x400

    invoke-virtual {v1, v3, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 67
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->genKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 68
    .local v0, "keyPair":Ljava/security/KeyPair;
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
    .line 79
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    .line 80
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
    .line 91
    invoke-virtual {p0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v0

    .line 92
    .local v0, "key":Ljava/security/Key;
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    const-string/jumbo v1, "abc"

    .line 97
    .local v1, "inputStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 100
    .local v0, "data":[B
    const-string/jumbo v7, "111111111111111111111111"

    invoke-static {v7}, Lc8/LZn;->genKeyPair(Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v2

    .line 103
    .local v2, "keyPair":Ljava/security/KeyPair;
    invoke-static {v2}, Lc8/LZn;->getPublicKey(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "publicKey":Ljava/lang/String;
    invoke-static {v2}, Lc8/LZn;->getPrivateKey(Ljava/security/KeyPair;)Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "privateKey":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u516c\u94a5:\r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u79c1\u94a5:\r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 110
    invoke-static {v0, v3}, Lc8/LZn;->sign([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    .local v5, "sign":Ljava/lang/String;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u7b7e\u540d:\r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    invoke-static {v0, v4, v5}, Lc8/LZn;->verify([BLjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 115
    .local v6, "status":Z
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\u72b6\u6001:\r"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static sign([BLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {p1}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 23
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 26
    .local v2, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string/jumbo v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 29
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    .line 32
    .local v3, "priKey":Ljava/security/PrivateKey;
    invoke-virtual {v1}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 33
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 34
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 36
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    invoke-static {v5}, Lc8/EZn;->encode([B)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static verify([BLjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "data"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p1}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 45
    .local v0, "keyBytes":[B
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 48
    .local v2, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string/jumbo v5, "DSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 51
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 53
    .local v3, "pubKey":Ljava/security/PublicKey;
    invoke-virtual {v1}, Ljava/security/KeyFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 54
    .local v4, "signature":Ljava/security/Signature;
    invoke-virtual {v4, v3}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 55
    invoke-virtual {v4, p0}, Ljava/security/Signature;->update([B)V

    .line 58
    invoke-static {p2}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->verify([B)Z

    move-result v5

    return v5
.end method
