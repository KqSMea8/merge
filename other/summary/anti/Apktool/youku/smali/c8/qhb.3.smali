.class public Lc8/qhb;
.super Ljava/lang/Object;
.source "TriDes.java"


# static fields
.field private static TriDes:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "DESede/ECB/PKCS5Padding"

    sput-object v0, Lc8/qhb;->TriDes:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "keyString"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    .line 34
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 35
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    .local v1, "contentLength":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x8

    if-ne v1, v7, :cond_0

    .line 37
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 42
    :goto_0
    const/4 v2, 0x0

    .line 44
    .local v2, "decryptData":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string/jumbo v8, "DESede"

    invoke-direct {v5, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    .local v5, "key":Ljava/security/Key;
    sget-object v7, Lc8/qhb;->TriDes:Ljava/lang/String;

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 46
    .local v0, "c1":Ljavax/crypto/Cipher;
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 47
    invoke-static {p1}, Lc8/Mhb;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v6

    .line 48
    .local v6, "raw":[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "decryptData":Ljava/lang/String;
    .local v3, "decryptData":Ljava/lang/String;
    move-object v2, v3

    .line 52
    .end local v0    # "c1":Ljavax/crypto/Cipher;
    .end local v3    # "decryptData":Ljava/lang/String;
    .end local v5    # "key":Ljava/security/Key;
    .end local v6    # "raw":[B
    .restart local v2    # "decryptData":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 40
    .end local v2    # "decryptData":Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v1, 0x8

    invoke-virtual {p1, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 49
    .restart local v2    # "decryptData":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 50
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "keyString"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 19
    .local v2, "encryptData":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "DESede"

    invoke-direct {v3, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 20
    .local v3, "key":Ljava/security/Key;
    sget-object v5, Lc8/qhb;->TriDes:Ljava/lang/String;

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 21
    .local v0, "c1":Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 23
    .local v4, "raw":[B
    invoke-static {v4}, Lc8/Mhb;->encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 28
    .end local v0    # "c1":Ljavax/crypto/Cipher;
    .end local v3    # "key":Ljava/security/Key;
    .end local v4    # "raw":[B
    :goto_0
    return-object v2

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
