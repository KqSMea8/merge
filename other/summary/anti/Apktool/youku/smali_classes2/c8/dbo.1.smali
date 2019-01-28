.class public Lc8/dbo;
.super Ljava/lang/Object;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cbo;,
        Lc8/bbo;
    }
.end annotation


# static fields
.field private static final ENCODE:[C

.field private static TAG:Ljava/lang/String; = null

.field private static final TWO_MINUTES:I = 0x1d4c0

.field private static mContext:Landroid/content/Context;

.field private static mLocation:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string/jumbo v0, "TOOLS"

    sput-object v0, Lc8/dbo;->TAG:Ljava/lang/String;

    .line 71
    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/dbo;->ENCODE:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
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
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public static URLDecoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 577
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 579
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 589
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 582
    .restart local p0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    const-string/jumbo v0, "UnsupportedEncodingException exception occured when calling URLEncoder"

    invoke-static {v0}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 583
    const-string/jumbo p0, ""

    goto :goto_0

    .line 585
    :catch_1
    move-exception v0

    const-string/jumbo v0, "NullPointerException exception occured when calling URLEncoder"

    invoke-static {v0}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 586
    const-string/jumbo p0, ""

    goto :goto_0

    .line 589
    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 560
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    .line 572
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 565
    .restart local p0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    const-string/jumbo v0, "UnsupportedEncodingException exception occured when calling URLEncoder"

    invoke-static {v0}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 566
    const-string/jumbo p0, ""

    goto :goto_0

    .line 568
    :catch_1
    move-exception v0

    const-string/jumbo v0, "NullPointerException exception occured when calling URLEncoder"

    invoke-static {v0}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 569
    const-string/jumbo p0, ""

    goto :goto_0

    .line 572
    :cond_0
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static aesEncode(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 742
    :try_start_0
    const-string/jumbo v4, "AES/CBC/PKCS5Padding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 743
    .local v1, "e":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string/jumbo v5, "AES"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 744
    .local v3, "localSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v4, "0102030405060708"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 745
    .local v2, "localIvParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 746
    const-string/jumbo v4, "utf-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 750
    .end local v1    # "e":Ljavax/crypto/Cipher;
    .end local v2    # "localIvParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v3    # "localSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v0

    .line 749
    :catch_0
    move-exception v4

    const-string/jumbo v4, "exception occured when calling aesEncode"

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static aesEncodeWithBase64(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    .line 712
    :try_start_0
    const-string/jumbo v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 713
    .local v2, "e":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const-string/jumbo v6, "AES"

    invoke-direct {v4, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 714
    .local v4, "localSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 715
    .local v3, "localIvParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x1

    invoke-virtual {v2, v5, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 716
    invoke-virtual {v2, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 717
    .local v1, "arrayOfByte":[B
    invoke-static {v1}, Lc8/dbo;->base64Encode([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 721
    .end local v1    # "arrayOfByte":[B
    .end local v2    # "e":Ljavax/crypto/Cipher;
    .end local v3    # "localIvParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "localSecretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v0

    .line 720
    :catch_0
    move-exception v5

    const-string/jumbo v5, "exception occured when calling aesEncodeWithBase64"

    invoke-static {v5}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "aes"    # [B

    .prologue
    .line 760
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 763
    :goto_0
    return-object v0

    .line 762
    :catch_0
    move-exception v0

    const-string/jumbo v0, "exception occured when calling base64Encode"

    invoke-static {v0}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 763
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    const-string/jumbo v0, "no permission"

    invoke-static {v0}, Lc8/Oao;->i(Ljava/lang/String;)I

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static compress([B)[B
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 768
    const/4 v3, 0x0

    .line 769
    .local v3, "result":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 770
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 773
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 774
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 775
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 776
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 781
    if-eqz v2, :cond_0

    .line 782
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 785
    :cond_0
    if-eqz v0, :cond_1

    .line 786
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 794
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    :cond_2
    :goto_0
    return-object v3

    .line 789
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "exception occured when calling compress"

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I

    move-object v1, v2

    .line 792
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_0

    .line 778
    :catch_1
    move-exception v4

    :goto_1
    :try_start_3
    const-string/jumbo v4, "exception occured when calling compress"

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 781
    if-eqz v1, :cond_3

    .line 782
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 785
    :cond_3
    if-eqz v0, :cond_2

    .line 786
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 789
    :catch_2
    move-exception v4

    const-string/jumbo v4, "exception occured when calling compress"

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 780
    :catchall_0
    move-exception v4

    .line 781
    :goto_2
    if-eqz v1, :cond_4

    .line 782
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 785
    :cond_4
    if-eqz v0, :cond_5

    .line 786
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 790
    :cond_5
    :goto_3
    throw v4

    .line 789
    :catch_3
    move-exception v5

    const-string/jumbo v5, "exception occured when calling compress"

    invoke-static {v5}, Lc8/Oao;->e(Ljava/lang/String;)I

    goto :goto_3

    .line 780
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2

    .line 778
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_1
.end method

.method public static convertMapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1076
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1078
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v9, "refercode"

    invoke-interface {p0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1079
    const-string/jumbo v9, "refercode"

    invoke-interface {p0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1080
    .local v3, "length":Ljava/lang/String;
    const-string/jumbo v9, "refercode="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v3, ""

    .end local v3    # "length":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    const-string/jumbo v9, "&"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1083
    const-string/jumbo v9, "refercode"

    invoke-interface {p0, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1088
    .local v4, "length1":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1089
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1090
    .local v6, "result":Ljava/util/Map$Entry;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1091
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1092
    .local v8, "value":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string/jumbo v10, "vid"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1093
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u8f6c\u6362\u524d\u7684vid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1094
    invoke-static {v8}, Lc8/dbo;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1095
    .local v1, "formatVid":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    const-string/jumbo v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, ""

    :goto_1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    const-string/jumbo v9, "&"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u8f6c\u6362\u540e\u7684vid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/Oao;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v9, v1

    .line 1097
    goto :goto_1

    .line 1101
    .end local v1    # "formatVid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string/jumbo v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v8, ""

    .end local v8    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    const-string/jumbo v9, "&"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1108
    .end local v2    # "key":Ljava/lang/String;
    .end local v6    # "result":Ljava/util/Map$Entry;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1109
    .local v5, "length2":I
    if-lez v5, :cond_6

    .line 1110
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1113
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1116
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "length1":Ljava/util/Iterator;
    .end local v5    # "length2":I
    :goto_2
    return-object v7

    :cond_7
    const-string/jumbo v7, ""

    goto :goto_2
.end method

.method public static createSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc8/dbo;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 703
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 704
    .local v2, "rand":I
    sget-object v3, Lc8/dbo;->ENCODE:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 702
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 707
    .end local v2    # "rand":I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/dbo;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B

    .prologue
    .line 798
    const/4 v8, 0x0

    .line 799
    .local v8, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 800
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v6, 0x0

    .line 801
    .local v6, "gis":Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 804
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 805
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v7, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v7, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 807
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .local v7, "gis":Ljava/util/zip/GZIPInputStream;
    const/16 v9, 0x1000

    :try_start_2
    new-array v4, v9, [B

    .line 808
    .local v4, "buf":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 811
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v9, 0x0

    :try_start_3
    array-length v10, v4

    invoke-virtual {v7, v4, v9, v10}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    .local v5, "e1":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 812
    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 818
    .end local v5    # "e1":I
    :catch_0
    move-exception v9

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "buf":[B
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    :goto_1
    :try_start_4
    const-string/jumbo v9, "exception occured when calling decompress"

    invoke-static {v9}, Lc8/Oao;->e(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 821
    if-eqz v2, :cond_0

    .line 822
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 825
    :cond_0
    if-eqz v6, :cond_1

    .line 826
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 829
    :cond_1
    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 838
    :cond_2
    :goto_2
    return-object v8

    .line 815
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v5    # "e1":I
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    .line 816
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 821
    if-eqz v3, :cond_4

    .line 822
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 825
    :cond_4
    if-eqz v7, :cond_5

    .line 826
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 829
    :cond_5
    if-eqz v1, :cond_6

    .line 830
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 834
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 833
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v9

    const-string/jumbo v9, "exception occured when calling decompress"

    invoke-static {v9}, Lc8/Oao;->e(Ljava/lang/String;)I

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 836
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 833
    .end local v4    # "buf":[B
    .end local v5    # "e1":I
    :catch_2
    move-exception v9

    const-string/jumbo v9, "exception occured when calling decompress"

    invoke-static {v9}, Lc8/Oao;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 820
    :catchall_0
    move-exception v9

    .line 821
    :goto_3
    if-eqz v2, :cond_7

    .line 822
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 825
    :cond_7
    if-eqz v6, :cond_8

    .line 826
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 829
    :cond_8
    if-eqz v0, :cond_9

    .line 830
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 834
    :cond_9
    :goto_4
    throw v9

    .line 833
    :catch_3
    move-exception v10

    const-string/jumbo v10, "exception occured when calling decompress"

    invoke-static {v10}, Lc8/Oao;->e(Ljava/lang/String;)I

    goto :goto_4

    .line 820
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 818
    .end local v4    # "buf":[B
    :catch_4
    move-exception v9

    goto :goto_1

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_5
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_1

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_6
    move-exception v9

    move-object v6, v7

    .end local v7    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1
.end method

.method public static decrypt([BLjava/lang/String;)[B
    .locals 6
    .param p0, "encrypted"    # [B
    .param p1, "sKey"    # Ljava/lang/String;

    .prologue
    .line 727
    :try_start_0
    const-string/jumbo v5, "ASCII"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 728
    .local v1, "ex":[B
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "AES"

    invoke-direct {v4, v1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 729
    .local v4, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string/jumbo v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 730
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    const-string/jumbo v5, "0102030405060708"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 731
    .local v2, "iv":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v4, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 732
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 736
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "ex":[B
    .end local v2    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v3

    .line 735
    :catch_0
    move-exception v5

    const-string/jumbo v5, "exception occured when calling decrypt"

    invoke-static {v5}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 736
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "vcode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 842
    if-nez p0, :cond_1

    move-object p0, v5

    .line 861
    .end local p0    # "vcode":Ljava/lang/String;
    .local v0, "e":I
    .local v1, "isnum":Z
    :cond_0
    :goto_0
    return-object p0

    .line 845
    .end local v0    # "e":I
    .end local v1    # "isnum":Z
    .restart local p0    # "vcode":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 846
    .restart local v1    # "isnum":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 849
    .restart local v0    # "e":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 850
    if-gez v0, :cond_3

    .line 851
    if-nez v1, :cond_0

    .line 853
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    .end local p0    # "vcode":Ljava/lang/String;
    .local v4, "vcode":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x2

    shr-long v2, v6, v8

    .line 855
    .local v2, "var5":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p0

    goto :goto_0

    .line 857
    .end local v2    # "var5":J
    .end local v4    # "vcode":Ljava/lang/String;
    .restart local p0    # "vcode":Ljava/lang/String;
    :catch_0
    move-exception v6

    :goto_2
    move-object p0, v5

    goto :goto_0

    .line 864
    :cond_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 865
    const/4 v1, 0x0

    goto :goto_1

    .line 857
    .end local p0    # "vcode":Ljava/lang/String;
    .restart local v4    # "vcode":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object p0, v4

    .end local v4    # "vcode":Ljava/lang/String;
    .restart local p0    # "vcode":Ljava/lang/String;
    goto :goto_2
.end method

.method public static findNotHitExtend(Ljava/util/HashMap;Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1121
    .local p0, "requiredMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "extraParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1122
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1123
    .local v4, "keyForRequiredMap":Ljava/util/Set;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1124
    .local v0, "cloneKeyForRequiredMap":Ljava/util/HashSet;
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1125
    const-string/jumbo v10, "s2"

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1126
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 1127
    .local v3, "keyForExtraParam":Ljava/util/Set;
    invoke-interface {v3, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1128
    const-string/jumbo v10, "sfe"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1129
    .local v8, "strForExtMap":Ljava/lang/String;
    const-string/jumbo v10, "sfe"

    invoke-interface {v3, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1130
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1131
    .local v7, "notHitExtendBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1133
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1135
    .local v5, "length":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1136
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "vid"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1137
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u8f6c\u6362\u524d\u7684vid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1138
    invoke-static {v9}, Lc8/dbo;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1139
    .local v1, "formatVid":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    const-string/jumbo v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u8f6c\u6362\u540e\u7684vid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/Oao;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v10, v1

    .line 1141
    goto :goto_1

    .line 1145
    .end local v1    # "formatVid":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    const-string/jumbo v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v9, ""

    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1152
    .end local v5    # "length":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1153
    .local v6, "length1":I
    if-lez v6, :cond_4

    .line 1154
    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1157
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1158
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u524d\u7aef\u4f20\u5165\u7684\u81ea\u5b9a\u4e49\u952e\u503c\u5bf9\u4e3a:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 1159
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1164
    .end local v0    # "cloneKeyForRequiredMap":Ljava/util/HashSet;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "keyForExtraParam":Ljava/util/Set;
    .end local v4    # "keyForRequiredMap":Ljava/util/Set;
    .end local v6    # "length1":I
    .end local v7    # "notHitExtendBuilder":Ljava/lang/StringBuilder;
    .end local v8    # "strForExtMap":Ljava/lang/String;
    :goto_2
    return-object v10

    :cond_6
    const-string/jumbo v10, ""

    goto :goto_2
.end method

.method public static formatDouble(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "d"    # Ljava/lang/String;
    .param p1, "newScale"    # I

    .prologue
    .line 327
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 329
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static generateEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    invoke-static {}, Lc8/dbo;->generatePageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePageId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 993
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 994
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 995
    .local v2, "rand":I
    sget-object v3, Lc8/dbo;->ENCODE:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 998
    .end local v2    # "rand":I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/dbo;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAESKEY(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&YOUKU&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getGDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/dbo;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 594
    const-string/jumbo v1, "android_id"

    invoke-static {p0, v1}, Lc8/dbo;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 596
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 597
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 598
    :cond_1
    const-string/jumbo v1, ""

    .line 604
    :goto_0
    return-object v1

    .line 601
    :cond_2
    const-string/jumbo v1, "android_id"

    invoke-static {p0, v1, v0}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v1, v0

    .line 604
    goto :goto_0
.end method

.method public static getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 972
    const/4 v3, 0x0

    .line 975
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 976
    .local v2, "e":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 977
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 978
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 979
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 980
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 987
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "e":Landroid/content/pm/PackageManager;
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v3

    .line 983
    .restart local v3    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 984
    .local v4, "var6":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u5f02\u5e38\u4fe1\u606f\u4e3a:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/Oao;->d(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 143
    .local v1, "nameNotFoundException":Landroid/content/pm/PackageInfo;
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 144
    .local v0, "code":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    .end local v0    # "code":I
    .end local v1    # "nameNotFoundException":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 146
    :catch_0
    move-exception v2

    const-string/jumbo v2, "exception occured when calling getAppVersionCode"

    invoke-static {v2}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 147
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 160
    .local v0, "nameNotFoundException":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v0    # "nameNotFoundException":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 162
    :catch_0
    move-exception v1

    const-string/jumbo v1, "exception occured when calling getAppVersionName"

    invoke-static {v1}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 163
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getAppname(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 928
    const-string/jumbo v0, "UNION_APPNAME"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 912
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getBtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 916
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lc8/dbo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lc8/dbo;->mContext:Landroid/content/Context;

    .line 87
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-string/jumbo v0, "getContext\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v0}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDirectoryNameForTest(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-static {p0}, Lc8/dbo;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/16 v1, 0x3a

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 130
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 183
    .local v1, "nameNotFoundException":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 184
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 191
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "nameNotFoundException":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 188
    :catch_0
    move-exception v2

    const-string/jumbo v2, "exception occured when calling getDisplayName"

    invoke-static {v2}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 191
    :cond_0
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "file":Ljava/io/File;
    invoke-static {p0}, Lc8/dbo;->makeRootDirectory(Ljava/lang/String;)V

    .line 1251
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v1

    .line 1256
    .end local v1    # "file":Ljava/io/File;
    .restart local v0    # "file":Ljava/io/File;
    :goto_0
    return-object v0

    .line 1252
    :catch_0
    move-exception v2

    .line 1253
    .local v2, "var4":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFormatDateTime(J)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # J

    .prologue
    .line 308
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "formatDate":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 310
    .local v2, "formatTime":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "T"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lc8/dbo;->getTimeZone()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, "formatDateTime":Ljava/lang/String;
    return-object v1
.end method

.method public static getFormatTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 288
    .local v1, "length":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 289
    add-int/lit8 v2, v1, -0x3

    const-string/jumbo v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getGDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 654
    const-string/jumbo v3, "gdid"

    invoke-static {p0, v3}, Lc8/dbo;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 655
    .local v0, "gdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 656
    :cond_0
    invoke-static {p0}, Lc8/dbo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 657
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {p0}, Lc8/dbo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, "imei":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/dbo;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 659
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 660
    :cond_1
    const-string/jumbo v3, ""

    .line 666
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 663
    .restart local v1    # "imei":Ljava/lang/String;
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "gdid"

    invoke-static {p0, v3, v0}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_3
    move-object v3, v0

    .line 666
    goto :goto_0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 639
    const-string/jumbo v3, "guid"

    invoke-static {p0, v3}, Lc8/dbo;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "guid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 641
    :cond_0
    invoke-static {p0}, Lc8/dbo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {p0}, Lc8/dbo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "imei":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/dbo;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 645
    :cond_1
    const-string/jumbo v3, ""

    .line 650
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 647
    .restart local v1    # "imei":Ljava/lang/String;
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "guid"

    invoke-static {p0, v3, v0}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_3
    move-object v3, v0

    .line 650
    goto :goto_0
.end method

.method public static getHeadSet(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 873
    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 874
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "tools_header_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 882
    const-string/jumbo v3, "imei"

    invoke-static {p0, v3}, Lc8/dbo;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 883
    .local v1, "imei":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    .line 897
    :goto_0
    return-object v3

    .line 887
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 888
    .local v0, "e":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 889
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 890
    const-string/jumbo v3, "imei"

    invoke-static {p0, v3, v1}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    .line 891
    goto :goto_0

    .line 893
    .end local v0    # "e":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    .line 894
    .local v2, "var3":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 897
    .end local v2    # "var3":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 903
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 904
    .local v0, "e":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 907
    .end local v0    # "e":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v1

    .line 906
    :catch_0
    move-exception v1

    const-string/jumbo v1, "exception occured when calling getIMSI"

    invoke-static {v1}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 907
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static getInitInfoForDevice(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1056
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->brand:Ljava/lang/String;

    .line 1057
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->btype:Ljava/lang/String;

    .line 1058
    invoke-static {p0}, Lc8/dbo;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->appver:Ljava/lang/String;

    .line 1059
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lc8/Gao;->os_ver:Ljava/lang/String;

    .line 1060
    invoke-static {p0}, Lc8/dbo;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lc8/Gao;->ht:I

    .line 1061
    invoke-static {p0}, Lc8/dbo;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sput v0, Lc8/Gao;->wt:I

    .line 1062
    invoke-static {p0}, Lc8/dbo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->imei:Ljava/lang/String;

    .line 1063
    invoke-static {p0}, Lc8/dbo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->imsi:Ljava/lang/String;

    .line 1064
    invoke-static {p0}, Lc8/dbo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->mac:Ljava/lang/String;

    .line 1065
    invoke-static {p0}, Lc8/dbo;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->guid:Ljava/lang/String;

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Device\'s guid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/Gao;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 1067
    invoke-static {p0}, Lc8/dbo;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->uuid:Ljava/lang/String;

    .line 1068
    invoke-static {p0}, Lc8/dbo;->getGDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->gdid:Ljava/lang/String;

    .line 1069
    invoke-static {p0}, Lc8/dbo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->network:Ljava/lang/String;

    .line 1070
    invoke-static {p0}, Lc8/dbo;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->operator:Ljava/lang/String;

    .line 1071
    invoke-static {p0}, Lc8/dbo;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->deviceid:Ljava/lang/String;

    .line 1072
    invoke-static {}, Lc8/dbo;->getAppName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Gao;->displayName:Ljava/lang/String;

    .line 1073
    return-void
.end method

.method public static getLocation()Landroid/location/Location;
    .locals 1

    .prologue
    .line 315
    sget-object v0, Lc8/dbo;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    const-string/jumbo v4, "mac_address"

    invoke-static {p0, v4}, Lc8/dbo;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "macAddress":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v1

    .line 246
    :goto_0
    return-object v4

    .line 227
    :cond_0
    :try_start_0
    const-string/jumbo v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 228
    .local v0, "e":Landroid/net/wifi/WifiManager;
    const-string/jumbo v4, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v4}, Lc8/dbo;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 229
    if-nez v0, :cond_2

    const/4 v3, 0x0

    .line 230
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_1
    if-eqz v3, :cond_4

    .line 231
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 232
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 233
    :cond_1
    const-string/jumbo v4, "\u83b7\u53d6\u5230\u7684mac address\u4e3anull."

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 234
    const-string/jumbo v4, ""

    goto :goto_0

    .line 229
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    goto :goto_1

    .line 237
    .restart local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string/jumbo v4, "mac_address"

    invoke-static {p0, v4, v1}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Landroid/net/wifi/WifiManager;
    .end local v3    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    :goto_2
    move-object v4, v1

    .line 246
    goto :goto_0

    .line 240
    .restart local v0    # "e":Landroid/net/wifi/WifiManager;
    :cond_5
    const-string/jumbo v4, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 242
    .end local v0    # "e":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v2

    .line 243
    .local v2, "var4":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not get mac address\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    :try_start_0
    const-string/jumbo v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 367
    .local v0, "e":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 368
    .local v1, "n":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 369
    const-string/jumbo v4, ""

    .line 383
    .end local v0    # "e":Landroid/net/ConnectivityManager;
    .end local v1    # "n":Landroid/net/NetworkInfo;
    :goto_0
    return-object v4

    .line 371
    .restart local v0    # "e":Landroid/net/ConnectivityManager;
    .restart local v1    # "n":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 372
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 373
    const-string/jumbo v4, "WIFI"

    goto :goto_0

    .line 374
    :cond_1
    if-nez v3, :cond_2

    .line 375
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 376
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 378
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string/jumbo v4, "OTHER"

    goto :goto_0

    .line 382
    .end local v0    # "e":Landroid/net/ConnectivityManager;
    .end local v1    # "n":Landroid/net/NetworkInfo;
    .end local v3    # "type":I
    :catch_0
    move-exception v4

    const-string/jumbo v4, "Get network type failed"

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 383
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 334
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .local v0, "e":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 336
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 337
    .local v2, "operatorName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :goto_0
    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 350
    .local v1, "operator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    .end local v0    # "e":Ljava/lang/StringBuilder;
    .end local v1    # "operator":Ljava/lang/String;
    .end local v2    # "operatorName":Ljava/lang/String;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :goto_1
    return-object v4

    .line 340
    .restart local v0    # "e":Ljava/lang/StringBuilder;
    .restart local v2    # "operatorName":Ljava/lang/String;
    .restart local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    const-string/jumbo v4, ""

    goto :goto_1

    .line 345
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/StringBuilder;
    .end local v2    # "operatorName":Ljava/lang/String;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "Get operator failed"

    invoke-static {v4}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 361
    :cond_3
    const-string/jumbo v4, ""

    goto :goto_1
.end method

.method public static getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 920
    const-string/jumbo v0, "Android"

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 924
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 932
    const-string/jumbo v0, "UNION_PID"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 109
    .local v2, "pid":I
    const-string/jumbo v4, "activity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 110
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 114
    .local v3, "var3":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 115
    const/4 v4, 0x0

    .line 121
    :goto_0
    return-object v4

    .line 118
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 119
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 121
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRealTimeForFormatTime(Ljava/lang/String;)J
    .locals 5
    .param p0, "formatTime"    # Ljava/lang/String;

    .prologue
    .line 297
    const-string/jumbo v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    const-string/jumbo v3, "\\."

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 299
    .local v2, "timeArray":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 304
    .end local v2    # "timeArray":[Ljava/lang/String;
    .local v0, "realTime":J
    :goto_0
    return-wide v0

    .line 301
    .end local v0    # "realTime":J
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0    # "realTime":J
    goto :goto_0
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1170
    invoke-static {}, Lc8/dbo;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc8/dbo;->listAvailableStorage(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 1171
    .local v3, "storagePathList":Ljava/util/List;
    const-string/jumbo v1, ""

    .line 1172
    .local v1, "innerSdPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, "externalSdPath":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1175
    .local v4, "var3":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1176
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/cbo;

    .line 1177
    .local v2, "storageInfo":Lc8/cbo;
    iget-boolean v5, v2, Lc8/cbo;->isRemoveable:Z

    if-nez v5, :cond_0

    .line 1178
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u673a\u8eab\u5b58\u50a8\u8def\u5f84:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lc8/cbo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1179
    iget-object v1, v2, Lc8/cbo;->path:Ljava/lang/String;

    goto :goto_0

    .line 1183
    .end local v2    # "storageInfo":Lc8/cbo;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1189
    .end local v1    # "innerSdPath":Ljava/lang/String;
    :goto_1
    return-object v1

    .line 1185
    .restart local v1    # "innerSdPath":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u65e0\u6743\u9650\u5199\u5165\u673a\u8eab\u5b58\u50a8\uff0c\u4f7f\u7528\u5916\u7f6esd\u5361\u5b58\u50a8\u8def\u5f84:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/Oao;->d(Ljava/lang/String;)I

    move-object v1, v0

    .line 1187
    goto :goto_1

    .line 1189
    :cond_3
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 608
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenState(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 878
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getSendBuffer(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 964
    const-string/jumbo v0, "UNION_SENDBUFFER"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getSendInterval(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 960
    const-string/jumbo v0, "UNION_SENDINTERVAL"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getSendLimit(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 968
    const-string/jumbo v0, "UNION_SENDLIMIT"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getSessionInterval(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 956
    const-string/jumbo v0, "UNION_SESSIONINTERVAL"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .locals 10

    .prologue
    .line 276
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 277
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const v6, 0x36ee80

    div-int v0, v5, v6

    .line 278
    .local v0, "hours":I
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v1, v5, 0x3c

    .line 279
    .local v1, "minutes":I
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    if-ltz v5, :cond_0

    const-string/jumbo v2, "+"

    .line 280
    .local v2, "sign":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "%s%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "timeZoneFormat":Ljava/lang/String;
    return-object v4

    .line 279
    .end local v2    # "sign":Ljava/lang/String;
    .end local v4    # "timeZoneFormat":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "-"

    goto :goto_0
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 672
    :try_start_0
    const-string/jumbo v7, "uuid"

    invoke-static {p0, v7}, Lc8/dbo;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 673
    .local v5, "uuid":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    move-object v6, v5

    .line 695
    .end local v5    # "uuid":Ljava/lang/String;
    .local v6, "uuid":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 676
    .end local v6    # "uuid":Ljava/lang/String;
    .restart local v5    # "uuid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 677
    .local v2, "e":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 678
    .local v3, "tmDevice":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 679
    .local v4, "tmSerial":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 680
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    .line 681
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v10, v7

    const/16 v7, 0x20

    shl-long/2addr v10, v7

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v12, v7

    or-long/2addr v10, v12

    invoke-direct {v1, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 682
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 683
    const-string/jumbo v7, "uuid"

    invoke-static {p0, v7, v5}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 684
    .end local v5    # "uuid":Ljava/lang/String;
    .restart local v6    # "uuid":Ljava/lang/String;
    goto :goto_0

    .line 686
    .end local v1    # "deviceUuid":Ljava/util/UUID;
    .end local v6    # "uuid":Ljava/lang/String;
    .restart local v5    # "uuid":Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 687
    const-string/jumbo v7, "uuid"

    invoke-static {p0, v7, v5}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .line 688
    .end local v5    # "uuid":Ljava/lang/String;
    .restart local v6    # "uuid":Ljava/lang/String;
    goto :goto_0

    .line 692
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v2    # "e":Landroid/telephony/TelephonyManager;
    .end local v3    # "tmDevice":Ljava/lang/String;
    .end local v4    # "tmSerial":Ljava/lang/String;
    .end local v6    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v7

    const-string/jumbo v7, "exception occured when calling getUUID"

    invoke-static {v7}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 693
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 694
    .restart local v5    # "uuid":Ljava/lang/String;
    const-string/jumbo v7, "uuid"

    invoke-static {p0, v7, v5}, Lc8/dbo;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 695
    .end local v5    # "uuid":Ljava/lang/String;
    .restart local v6    # "uuid":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getWifiName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 542
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 543
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 544
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 545
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "wifiId":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 547
    const-string/jumbo v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53ef\u77e5\u7684wifi\u540d\u79f0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 549
    const-string/jumbo v3, "\""

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 556
    :goto_1
    return-object v3

    .line 545
    .end local v1    # "wifiId":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 552
    .restart local v1    # "wifiId":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u672a\u77e5\u7684wifi\u540d\u79f0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 553
    const-string/jumbo v1, ""

    :cond_2
    move-object v3, v1

    .line 556
    goto :goto_1
.end method

.method public static getWindowsSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 1006
    if-nez p1, :cond_0

    .line 1007
    const/4 v10, 0x1

    .line 1023
    :goto_0
    return v10

    .line 1009
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 1010
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 1011
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 1012
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 1013
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 1014
    const/4 v10, 0x1

    goto :goto_0

    .line 1010
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1011
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1012
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 1015
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1016
    const/4 v10, 0x0

    goto :goto_0

    .line 1018
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 1019
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 1020
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 1021
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 1022
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/dbo;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1023
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    const/4 v10, 0x1

    goto :goto_0

    .line 1019
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 1020
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 1021
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 1023
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    const/4 v10, 0x1

    goto :goto_0

    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    const/4 v10, 0x1

    goto :goto_0

    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isDebugMode(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 948
    const-string/jumbo v0, "UNION_ISDEBUGEMODE"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isInstantSend(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 936
    const-string/jumbo v0, "UNION_ISINSTANTSEND"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isLoadSend(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 940
    const-string/jumbo v0, "UNION_ISLOADSEND"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    :try_start_0
    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 259
    .local v0, "e":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 260
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 267
    .end local v0    # "e":Landroid/net/ConnectivityManager;
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 264
    :catch_0
    move-exception v2

    const-string/jumbo v2, "exception occured when calling isNetworkConnected"

    invoke-static {v2}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 267
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider1"    # Ljava/lang/String;
    .param p1, "provider2"    # Ljava/lang/String;

    .prologue
    .line 1029
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1279
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTestMode(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 944
    const-string/jumbo v0, "UNION_ISTESTMODE"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isTrackLocation(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 952
    const-string/jumbo v0, "UNION_ISTRACKLOCATION"

    invoke-static {p0, v0}, Lc8/dbo;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private static listAvailableStorage(Landroid/content/Context;)Ljava/util/List;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/cbo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1196
    .local v16, "storages":Ljava/util/ArrayList;
    const-string/jumbo v22, "storage"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageManager;

    .line 1199
    .local v15, "storageManager":Landroid/os/storage/StorageManager;
    const/16 v22, 0x0

    :try_start_0
    move/from16 v0, v22

    new-array v2, v0, [Ljava/lang/Class;

    .line 1200
    .local v2, "e":[Ljava/lang/Class;
    const-class v22, Landroid/os/storage/StorageManager;

    const-string/jumbo v23, "getVolumeList"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1201
    .local v6, "getVolumeList":Ljava/lang/reflect/Method;
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1202
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v12, v0, [Ljava/lang/Object;

    .line 1203
    .local v12, "params":[Ljava/lang/Object;
    invoke-static {v6, v15, v12}, Lc8/dbo;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    check-cast v0, [Ljava/lang/Object;

    move-object v9, v0

    .line 1204
    .local v9, "invokes":[Ljava/lang/Object;
    if-eqz v9, :cond_1

    .line 1207
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_1

    .line 1208
    aget-object v11, v9, v7

    .line 1209
    .local v11, "obj":Ljava/lang/Object;
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "getPath"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1210
    .local v5, "getPath":Ljava/lang/reflect/Method;
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v5, v11, v0}, Lc8/dbo;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1211
    .local v13, "path":Ljava/lang/String;
    new-instance v8, Lc8/cbo;

    invoke-direct {v8, v13}, Lc8/cbo;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v8, "info":Lc8/cbo;
    new-instance v4, Ljava/io/File;

    iget-object v0, v8, Lc8/cbo;->path:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1214
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string/jumbo v23, "isRemovable"

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v10

    .line 1218
    .local v10, "isRemovable":Ljava/lang/reflect/Method;
    :try_start_1
    const-class v22, Landroid/os/storage/StorageManager;

    const-string/jumbo v23, "getVolumeState"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/lang/String;

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1219
    .local v3, "e1":Ljava/lang/reflect/Method;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    iget-object v0, v8, Lc8/cbo;->path:Ljava/lang/String;

    move-object/from16 v24, v0

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v3, v15, v0}, Lc8/dbo;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1220
    .local v14, "state":Ljava/lang/String;
    iput-object v14, v8, Lc8/cbo;->state:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1225
    .end local v3    # "e1":Ljava/lang/reflect/Method;
    .end local v14    # "state":Ljava/lang/String;
    :goto_1
    :try_start_2
    invoke-virtual {v8}, Lc8/cbo;->isMounted()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 1226
    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v10, v11, v0}, Lc8/dbo;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Boolean;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    move/from16 v0, v22

    iput-boolean v0, v8, Lc8/cbo;->isRemoveable:Z

    .line 1227
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    .end local v10    # "isRemovable":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1221
    .restart local v10    # "isRemovable":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v17

    .line 1222
    .local v17, "var16":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    .line 1232
    .end local v2    # "e":[Ljava/lang/Class;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "getPath":Ljava/lang/reflect/Method;
    .end local v6    # "getVolumeList":Ljava/lang/reflect/Method;
    .end local v7    # "i":I
    .end local v8    # "info":Lc8/cbo;
    .end local v9    # "invokes":[Ljava/lang/Object;
    .end local v10    # "isRemovable":Ljava/lang/reflect/Method;
    .end local v11    # "obj":Ljava/lang/Object;
    .end local v12    # "params":[Ljava/lang/Object;
    .end local v13    # "path":Ljava/lang/String;
    .end local v17    # "var16":Ljava/lang/Exception;
    :catch_1
    move-exception v18

    .line 1233
    .local v18, "var17":Ljava/lang/NoSuchMethodException;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 1242
    .end local v18    # "var17":Ljava/lang/NoSuchMethodException;
    :cond_1
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->trimToSize()V

    .line 1243
    return-object v16

    .line 1234
    :catch_2
    move-exception v19

    .line 1235
    .local v19, "var18":Ljava/lang/IllegalArgumentException;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_2

    .line 1236
    .end local v19    # "var18":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v20

    .line 1237
    .local v20, "var19":Ljava/lang/IllegalAccessException;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2

    .line 1238
    .end local v20    # "var19":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v21

    .line 1239
    .local v21, "var20":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2
.end method

.method public static makeRootDirectory(Ljava/lang/String;)V
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1263
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1265
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1268
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1269
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1275
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1271
    :catch_0
    move-exception v1

    .line 1272
    .local v1, "var3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Oao;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 617
    :try_start_0
    const-string/jumbo v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 618
    .local v0, "e":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 619
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 620
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 622
    .local v2, "hexString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 624
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 628
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 634
    .end local v0    # "e":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_2
    return-object v5

    .line 633
    :catch_0
    move-exception v5

    const-string/jumbo v5, "NoSuchAlgorithmException exception occured when calling md5"

    invoke-static {v5}, Lc8/Oao;->e(Ljava/lang/String;)I

    .line 634
    const-string/jumbo v5, ""

    goto :goto_2
.end method

.method public static printDeviceInfo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "GDID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getGDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VERSION_NAME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DISPLAY_NAME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BRAND:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MODEL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OPERATOR:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1045
    const-string/jumbo v0, "OS:Android"

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OS_VERSION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/dbo;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1047
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SCREEN_WIDTH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SCREEN_HEIGHT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IMEI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IMSI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/dbo;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UUID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MAC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/dbo;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/Oao;->d(Ljava/lang/String;)I

    .line 1053
    return-void
.end method

.method public static savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p0, :cond_0

    .line 93
    const-string/jumbo v0, "tools_header_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    :cond_0
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    sput-object p0, Lc8/dbo;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public static setLocation(Landroid/location/Location;)V
    .locals 2
    .param p0, "location"    # Landroid/location/Location;

    .prologue
    .line 319
    if-eqz p0, :cond_0

    .line 320
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc8/dbo;->getFormatDateTime(J)Ljava/lang/String;

    .line 321
    sput-object p0, Lc8/dbo;->mLocation:Landroid/location/Location;

    .line 324
    :cond_0
    return-void
.end method

.method public static transferNetworkType2Int(Ljava/lang/String;)I
    .locals 3
    .param p0, "networkType"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x13

    .line 388
    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 389
    const/4 v0, -0x1

    .line 390
    .local v0, "var2":B
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 492
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 534
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 537
    .end local v0    # "var2":B
    :cond_1
    :goto_1
    :pswitch_0
    return v1

    .line 392
    .restart local v0    # "var2":B
    :sswitch_0
    const-string/jumbo v2, "NETWORK_TYPE_CDMA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    const/4 v0, 0x4

    goto :goto_0

    .line 397
    :sswitch_1
    const-string/jumbo v2, "NETWORK_TYPE_EDGE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    const/4 v0, 0x2

    goto :goto_0

    .line 402
    :sswitch_2
    const-string/jumbo v2, "NETWORK_TYPE_GPRS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 403
    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :sswitch_3
    const-string/jumbo v2, "NETWORK_TYPE_HSPA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const/16 v0, 0xa

    goto :goto_0

    .line 412
    :sswitch_4
    const-string/jumbo v2, "NETWORK_TYPE_IDEN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    const/16 v0, 0xb

    goto :goto_0

    .line 417
    :sswitch_5
    const-string/jumbo v2, "NETWORK_TYPE_UMTS"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 418
    const/4 v0, 0x3

    goto :goto_0

    .line 422
    :sswitch_6
    const-string/jumbo v2, "NETWORK_TYPE_LTE"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 423
    const/16 v0, 0xd

    goto :goto_0

    .line 427
    :sswitch_7
    const-string/jumbo v2, "NETWORK_TYPE_EVDO_0"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    const/4 v0, 0x5

    goto :goto_0

    .line 432
    :sswitch_8
    const-string/jumbo v2, "NETWORK_TYPE_EVDO_A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 433
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 437
    :sswitch_9
    const-string/jumbo v2, "NETWORK_TYPE_EVDO_B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 442
    :sswitch_a
    const-string/jumbo v2, "ETHERNET"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 447
    :sswitch_b
    const-string/jumbo v2, "NETWORK_TYPE_1xRTT"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 452
    :sswitch_c
    const-string/jumbo v2, "NETWORK_TYPE_EHRPD"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 457
    :sswitch_d
    const-string/jumbo v2, "NETWORK_TYPE_HSDPA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 462
    :sswitch_e
    const-string/jumbo v2, "NETWORK_TYPE_HSPAP"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 467
    :sswitch_f
    const-string/jumbo v2, "NETWORK_TYPE_HSUPA"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 472
    :sswitch_10
    const-string/jumbo v2, "WIFI"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 477
    :sswitch_11
    const-string/jumbo v2, "WWAN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 478
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 482
    :sswitch_12
    const-string/jumbo v2, "OTHER"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    const/16 v0, 0x13

    goto/16 :goto_0

    .line 487
    :sswitch_13
    const-string/jumbo v2, "NETWORK_TYPE_UNKNOWN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 488
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 494
    :pswitch_1
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 496
    :pswitch_2
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 498
    :pswitch_3
    const/4 v1, 0x2

    goto/16 :goto_1

    .line 500
    :pswitch_4
    const/4 v1, 0x3

    goto/16 :goto_1

    .line 502
    :pswitch_5
    const/4 v1, 0x4

    goto/16 :goto_1

    .line 504
    :pswitch_6
    const/4 v1, 0x5

    goto/16 :goto_1

    .line 506
    :pswitch_7
    const/4 v1, 0x6

    goto/16 :goto_1

    .line 508
    :pswitch_8
    const/4 v1, 0x7

    goto/16 :goto_1

    .line 510
    :pswitch_9
    const/16 v1, 0x8

    goto/16 :goto_1

    .line 512
    :pswitch_a
    const/16 v1, 0x9

    goto/16 :goto_1

    .line 514
    :pswitch_b
    const/16 v1, 0xa

    goto/16 :goto_1

    .line 516
    :pswitch_c
    const/16 v1, 0xb

    goto/16 :goto_1

    .line 518
    :pswitch_d
    const/16 v1, 0xc

    goto/16 :goto_1

    .line 520
    :pswitch_e
    const/16 v1, 0xd

    goto/16 :goto_1

    .line 522
    :pswitch_f
    const/16 v1, 0xe

    goto/16 :goto_1

    .line 524
    :pswitch_10
    const/16 v1, 0xf

    goto/16 :goto_1

    .line 526
    :pswitch_11
    const/16 v1, 0x10

    goto/16 :goto_1

    .line 528
    :pswitch_12
    const/16 v1, 0x11

    goto/16 :goto_1

    .line 530
    :pswitch_13
    const/16 v1, 0x12

    goto/16 :goto_1

    .line 390
    .line 492
    :sswitch_data_0
    .sparse-switch
        -0x432fb557 -> :sswitch_0
        -0x432ecd4f -> :sswitch_1
        -0x432db622 -> :sswitch_2
        -0x432d36d0 -> :sswitch_3
        -0x432cfc08 -> :sswitch_4
        -0x432763f5 -> :sswitch_5
        -0x33b713b7 -> :sswitch_6
        -0x31b43a5f -> :sswitch_7
        -0x31b43a4e -> :sswitch_8
        -0x31b43a4d -> :sswitch_9
        -0x25f3c029 -> :sswitch_a
        -0x23ace3e9 -> :sswitch_b
        -0x22a8e031 -> :sswitch_c
        -0x2279ce2a -> :sswitch_d
        -0x2279a2e0 -> :sswitch_e
        -0x22798e59 -> :sswitch_f
        0x28a715 -> :sswitch_10
        0x28db0d -> :sswitch_11
        0x48086f0 -> :sswitch_12
        0x3c4bd6b6 -> :sswitch_13
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_0
    .end packed-switch
.end method
