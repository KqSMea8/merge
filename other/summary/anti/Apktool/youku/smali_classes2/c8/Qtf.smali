.class public Lc8/Qtf;
.super Ljava/lang/Object;
.source "NoSecGuardEncrypt.java"

# interfaces
.implements Lc8/Ptf;


# static fields
.field private static final CHARSET_UTF8:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS:[C

.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final TAG:Ljava/lang/String; = "NoSecGuardEncrypt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Qtf;->DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private encodeHex([B)[C
    .locals 7
    .param p1, "data"    # [B

    .prologue
    .line 62
    array-length v3, p1

    .line 63
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 65
    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 66
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Lc8/Qtf;->DIGITS:[C

    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 67
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Lc8/Qtf;->DIGITS:[C

    aget-byte v6, p1, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v1

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    :cond_0
    return-object v4
.end method

.method private hmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "baseStr"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v4

    .line 47
    :cond_1
    :try_start_0
    const-string/jumbo v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 48
    .local v2, "mac":Ljavax/crypto/Mac;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string/jumbo v7, "HmacSHA1"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 49
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 50
    .local v3, "signBytes":[B
    invoke-direct {p0, v3}, Lc8/Qtf;->encodeHex([B)[C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    .local v1, "hexChars":[C
    if-eqz v1, :cond_0

    .line 56
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 51
    .end local v1    # "hexChars":[C
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "signBytes":[B
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "NoSecGuardEncrypt"

    const-string/jumbo v6, "hmacSha1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v0, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public sign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "authCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 28
    sget-object v0, Lc8/Ksf;->mAppSecret:Ljava/lang/String;

    .line 29
    .local v0, "appSecret":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    :cond_0
    const-string/jumbo v2, "NoSecGuardEncrypt"

    const-string/jumbo v3, "sign"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "data is null"

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :goto_0
    return-object v1

    .line 33
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    const-string/jumbo v2, "NoSecGuardEncrypt"

    const-string/jumbo v3, "sign"

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "appSecret is null"

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_2
    const-string/jumbo v1, "NoSecGuardEncrypt"

    const-string/jumbo v2, "sign start"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-direct {p0, p3, v0}, Lc8/Qtf;->hmacSha1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
