.class public Lc8/Zvk;
.super Ljava/lang/Object;
.source "HmacSha1Util.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Zvk;->HEX_DIGITS:[C

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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2Str(B)Ljava/lang/String;
    .locals 5
    .param p0, "original"    # B

    .prologue
    .line 85
    const/4 v2, 0x2

    :try_start_0
    new-array v1, v2, [C

    .line 86
    .local v1, "resultCharArray":[C
    const/4 v2, 0x0

    sget-object v3, Lc8/Zvk;->HEX_DIGITS:[C

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 87
    const/4 v2, 0x1

    sget-object v3, Lc8/Zvk;->HEX_DIGITS:[C

    and-int/lit8 v4, p0, 0xf

    aget-char v3, v3, v4

    aput-char v3, v1, v2

    .line 88
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v1    # "resultCharArray":[C
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 91
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static encryptHmacSha1_LowerCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 27
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 42
    .end local p0    # "original":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 30
    .restart local p0    # "original":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo p2, "UTF-8"

    .line 34
    :cond_2
    :try_start_0
    const-string/jumbo v7, "HmacSHA1"

    invoke-static {v7}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    .line 35
    .local v5, "mac":Ljavax/crypto/Mac;
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string/jumbo v9, "HmacSHA1"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 36
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 37
    .local v6, "resultStrBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-byte v1, v0, v3

    .line 38
    .local v1, "b":B
    invoke-static {v1}, Lc8/Zvk;->byte2Str(B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 39
    .end local v1    # "b":B
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 40
    .end local v0    # "arr$":[B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "mac":Ljavax/crypto/Mac;
    .end local v6    # "resultStrBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptHmacSha1_UpperCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "original"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 60
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    .end local p0    # "original":Ljava/lang/String;
    .end local p2    # "charset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 64
    .restart local p0    # "original":Ljava/lang/String;
    .restart local p2    # "charset":Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo p2, "UTF-8"

    .end local p2    # "charset":Ljava/lang/String;
    :cond_2
    invoke-static {p0, p1, p2}, Lc8/Zvk;->encryptHmacSha1_LowerCase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
