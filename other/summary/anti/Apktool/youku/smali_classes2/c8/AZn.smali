.class public Lc8/AZn;
.super Ljava/lang/Object;
.source "AlgorithmSignature.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string/jumbo v6, "DSA"

    invoke-static {v6}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    .line 31
    .local v0, "keygen":Ljava/security/KeyPairGenerator;
    const/16 v6, 0x200

    invoke-virtual {v0, v6}, Ljava/security/KeyPairGenerator;->initialize(I)V

    .line 32
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v1

    .line 33
    .local v1, "keypair":Ljava/security/KeyPair;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    .line 34
    .local v3, "pubKey":Ljava/security/PublicKey;
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    .line 36
    .local v2, "privKey":Ljava/security/PrivateKey;
    const-string/jumbo v6, "admin"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v2, v6}, Lc8/AZn;->signSHA1WithDSA(Ljava/security/PrivateKey;[B)[B

    move-result-object v5

    .line 38
    .local v5, "signature":[B
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v5}, Lc8/NZn;->encodeHex([B)[C

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println([C)V

    .line 40
    const-string/jumbo v6, "admin"

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v3, v6, v5}, Lc8/AZn;->verifySHA1WithDSA(Ljava/security/PublicKey;[B[B)Z

    move-result v4

    .line 42
    .local v4, "ret":Z
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Z)V

    .line 44
    return-void
.end method

.method public static signSHA1WithDSA(Ljava/security/PrivateKey;[B)[B
    .locals 2
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 15
    const-string/jumbo v1, "SHA1withDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 16
    .local v0, "signature":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 17
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 18
    invoke-virtual {v0}, Ljava/security/Signature;->sign()[B

    move-result-object v1

    return-object v1
.end method

.method public static verifySHA1WithDSA(Ljava/security/PublicKey;[B[B)Z
    .locals 2
    .param p0, "pubkey"    # Ljava/security/PublicKey;
    .param p1, "data"    # [B
    .param p2, "signature"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 22
    const-string/jumbo v1, "SHA1withDSA"

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 23
    .local v0, "sign":Ljava/security/Signature;
    invoke-virtual {v0, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 24
    invoke-virtual {v0, p1}, Ljava/security/Signature;->update([B)V

    .line 25
    invoke-virtual {v0, p2}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    return v1
.end method
