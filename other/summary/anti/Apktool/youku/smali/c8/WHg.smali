.class public Lc8/WHg;
.super Ljava/lang/Object;
.source "Tools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/VHg;
    }
.end annotation


# static fields
.field private static final ENCODE:[C

.field private static final RGUID_FILE_NAME:Ljava/lang/String; = "stats.file"

.field private static final TWO_MINUTES:I = 0x1d4c0

.field private static mConnectionChangeReceiver:Lc8/VHg;

.field private static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 746
    const/16 v0, 0x3e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/WHg;->ENCODE:[C

    return-void

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
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1765
    return-void
.end method

.method public static URLDecoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 554
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 555
    :cond_0
    const-string/jumbo p0, ""

    .line 566
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 558
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    const-string/jumbo v0, "URLDecoder exception"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 561
    const-string/jumbo p0, ""

    goto :goto_0

    .line 563
    :catch_1
    move-exception v0

    const-string/jumbo v0, "URLDecoder error"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 564
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static URLEncoder(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 532
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 533
    :cond_0
    const-string/jumbo p0, ""

    .line 544
    .end local p0    # "s":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 536
    .restart local p0    # "s":Ljava/lang/String;
    :cond_1
    :try_start_0
    const-string/jumbo v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    const-string/jumbo v0, "URLEncoder exception"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 539
    const-string/jumbo p0, ""

    goto :goto_0

    .line 541
    :catch_1
    move-exception v0

    const-string/jumbo v0, "URLEncoder error"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 542
    const-string/jumbo p0, ""

    goto :goto_0
.end method

.method public static aesEncodeWithBase64(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "content"    # [B

    .prologue
    .line 777
    const/4 v0, 0x0

    return-object v0
.end method

.method public static base64Encode([B)Ljava/lang/String;
    .locals 1
    .param p0, "aes"    # [B

    .prologue
    .line 802
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 808
    :goto_0
    return-object v0

    .line 804
    :catch_0
    move-exception v0

    const-string/jumbo v0, "base64Encode exception"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 808
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 806
    :catch_1
    move-exception v0

    const-string/jumbo v0, "base64Encode error"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 228
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string/jumbo v1, "no permission"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 239
    :goto_0
    return v0

    .line 232
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    const-string/jumbo v1, "checkPermission exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 237
    :catch_1
    move-exception v1

    const-string/jumbo v1, "checkPermission error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static checkPermissionM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 244
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    .line 244
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {p0, p1}, Lc8/WHg;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compress([B)[B
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 812
    const/4 v3, 0x0

    .line 813
    .local v3, "result":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    array-length v4, p0

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 814
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 816
    .local v1, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .local v2, "gos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 818
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 819
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 826
    if-eqz v2, :cond_0

    .line 827
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 829
    :cond_0
    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v1, v2

    .line 836
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    :cond_2
    :goto_0
    return-object v3

    .line 833
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "exception occured when calling compress"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    move-object v1, v2

    .line 835
    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_0

    .line 821
    :catch_1
    move-exception v4

    :goto_1
    :try_start_3
    const-string/jumbo v4, "compress exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 826
    if-eqz v1, :cond_3

    .line 827
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 829
    :cond_3
    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 833
    :catch_2
    move-exception v4

    const-string/jumbo v4, "exception occured when calling compress"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 823
    :catch_3
    move-exception v4

    :goto_2
    :try_start_5
    const-string/jumbo v4, "compress error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 826
    if-eqz v1, :cond_4

    .line 827
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 829
    :cond_4
    if-eqz v0, :cond_2

    .line 830
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 833
    :catch_4
    move-exception v4

    const-string/jumbo v4, "exception occured when calling compress"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 825
    :catchall_0
    move-exception v4

    .line 826
    :goto_3
    if-eqz v1, :cond_5

    .line 827
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 829
    :cond_5
    if-eqz v0, :cond_6

    .line 830
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 834
    :cond_6
    :goto_4
    throw v4

    .line 833
    :catch_5
    move-exception v5

    const-string/jumbo v5, "exception occured when calling compress"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_4

    .line 825
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_3

    .line 823
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_6
    move-exception v4

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_2

    .line 821
    .end local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    :catch_7
    move-exception v4

    move-object v1, v2

    .end local v2    # "gos":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "gos":Ljava/util/zip/GZIPOutputStream;
    goto :goto_1
.end method

.method public static convertJsonToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "jsonStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1730
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1732
    .local v3, "outMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1733
    .local v1, "jsonObj":Lorg/json/JSONObject;
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 1734
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1735
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1736
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1737
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "jsonObj":Lorg/json/JSONObject;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1743
    :cond_0
    return-object v3
.end method

.method public static convertMapToJsonStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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
    .line 1753
    .local p0, "inMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1754
    .local v0, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1755
    .local v1, "jsonStr":Ljava/lang/String;
    const-string/jumbo v2, "Youku_Analytics_UT"

    invoke-static {v2, v1}, Lc8/SHg;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    return-object v1
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
    .line 1342
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1345
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v8, "refercode"

    invoke-interface {p0, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1346
    const-string/jumbo v8, "refercode"

    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1347
    .local v5, "refercode":Ljava/lang/String;
    const-string/jumbo v8, "refercode="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v5, ""

    .end local v5    # "refercode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    const-string/jumbo v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    const-string/jumbo v8, "refercode"

    invoke-interface {p0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1355
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1356
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1358
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string/jumbo v10, "vid"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1359
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u8f6c\u6362\u524d\u7684vid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1360
    invoke-static {v7}, Lc8/WHg;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1362
    .local v2, "formatVid":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    const-string/jumbo v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1364
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, ""

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    const-string/jumbo v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u8f6c\u6362\u540e\u7684vid:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v8, v2

    .line 1364
    goto :goto_1

    .line 1370
    .end local v2    # "formatVid":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    const-string/jumbo v8, "="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v7, ""

    .end local v7    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    const-string/jumbo v8, "&"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1376
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 1377
    .local v4, "length":I
    if-lez v4, :cond_6

    .line 1378
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1381
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1385
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "length":I
    :goto_2
    return-object v6

    :cond_7
    const-string/jumbo v6, ""

    goto :goto_2
.end method

.method public static createSessionId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 760
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc8/WHg;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 763
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 764
    .local v2, "rand":I
    sget-object v3, Lc8/WHg;->ENCODE:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    .end local v2    # "rand":I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/WHg;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static decompress([B)Ljava/lang/String;
    .locals 11
    .param p0, "data"    # [B

    .prologue
    .line 840
    const/4 v8, 0x0

    .line 841
    .local v8, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .line 842
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/4 v5, 0x0

    .line 843
    .local v5, "gis":Ljava/util/zip/GZIPInputStream;
    const/4 v2, 0x0

    .line 845
    .local v2, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .local v1, "bis":Ljava/io/ByteArrayInputStream;
    :try_start_1
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 848
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .local v6, "gis":Ljava/util/zip/GZIPInputStream;
    const/16 v9, 0x1000

    :try_start_2
    new-array v4, v9, [B

    .line 849
    .local v4, "buf":[B
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 850
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_0
    const/4 v9, 0x0

    :try_start_3
    array-length v10, v4

    invoke-virtual {v6, v4, v9, v10}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v7

    .local v7, "num":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_3

    .line 851
    const/4 v9, 0x0

    invoke-virtual {v3, v4, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_0

    .line 856
    .end local v7    # "num":I
    :catch_0
    move-exception v9

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "buf":[B
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    :goto_1
    :try_start_4
    const-string/jumbo v9, "decompress exception"

    invoke-static {v9}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 861
    if-eqz v2, :cond_0

    .line 862
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 864
    :cond_0
    if-eqz v5, :cond_1

    .line 865
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 867
    :cond_1
    if-eqz v0, :cond_2

    .line 868
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 874
    :cond_2
    :goto_2
    return-object v8

    .line 853
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v7    # "num":I
    :cond_3
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    .line 854
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 861
    if-eqz v3, :cond_4

    .line 862
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 864
    :cond_4
    if-eqz v6, :cond_5

    .line 865
    invoke-virtual {v6}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 867
    :cond_5
    if-eqz v1, :cond_6

    .line 868
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_6
    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 872
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 871
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_1
    move-exception v9

    const-string/jumbo v9, "exception occured when calling decompress"

    invoke-static {v9}, Lc8/SHg;->e(Ljava/lang/String;)I

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .line 873
    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_2

    .line 871
    .end local v4    # "buf":[B
    .end local v7    # "num":I
    :catch_2
    move-exception v9

    const-string/jumbo v9, "exception occured when calling decompress"

    invoke-static {v9}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 858
    :catch_3
    move-exception v9

    :goto_3
    :try_start_8
    const-string/jumbo v9, "decompress error"

    invoke-static {v9}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 861
    if-eqz v2, :cond_7

    .line 862
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 864
    :cond_7
    if-eqz v5, :cond_8

    .line 865
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 867
    :cond_8
    if-eqz v0, :cond_2

    .line 868
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    .line 871
    :catch_4
    move-exception v9

    const-string/jumbo v9, "exception occured when calling decompress"

    invoke-static {v9}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 860
    :catchall_0
    move-exception v9

    .line 861
    :goto_4
    if-eqz v2, :cond_9

    .line 862
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 864
    :cond_9
    if-eqz v5, :cond_a

    .line 865
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 867
    :cond_a
    if-eqz v0, :cond_b

    .line 868
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 872
    :cond_b
    :goto_5
    throw v9

    .line 871
    :catch_5
    move-exception v10

    const-string/jumbo v10, "exception occured when calling decompress"

    invoke-static {v10}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_5

    .line 860
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_4

    .line 858
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v4    # "buf":[B
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_6
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_7
    move-exception v9

    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "buf":[B
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_8
    move-exception v9

    move-object v2, v3

    .end local v3    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "bos":Ljava/io/ByteArrayOutputStream;
    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto :goto_3

    .line 856
    .end local v4    # "buf":[B
    :catch_9
    move-exception v9

    goto/16 :goto_1

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    :catch_a
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1

    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    :catch_b
    move-exception v9

    move-object v5, v6

    .end local v6    # "gis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gis":Ljava/util/zip/GZIPInputStream;
    move-object v0, v1

    .end local v1    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    goto/16 :goto_1
.end method

.method public static evaluate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "vcode"    # Ljava/lang/String;

    .prologue
    .line 884
    if-nez p0, :cond_1

    .line 885
    const/4 p0, 0x0

    .line 909
    .end local p0    # "vcode":Ljava/lang/String;
    .local v0, "i":I
    .local v1, "isnum":Z
    :cond_0
    :goto_0
    return-object p0

    .line 887
    .end local v0    # "i":I
    .end local v1    # "isnum":Z
    .restart local p0    # "vcode":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    .line 888
    .restart local v1    # "isnum":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .restart local v0    # "i":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    .line 889
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 890
    const/4 v1, 0x0

    goto :goto_1

    .line 893
    :cond_3
    if-nez v1, :cond_0

    .line 897
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 898
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 897
    invoke-static {v5, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 899
    .end local p0    # "vcode":Ljava/lang/String;
    .local v4, "vcode":Ljava/lang/String;
    :try_start_1
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v5, 0x2

    shr-long v2, v6, v5

    .line 900
    .local v2, "idd":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object p0

    goto :goto_0

    .line 902
    .end local v2    # "idd":J
    .end local v4    # "vcode":Ljava/lang/String;
    .restart local p0    # "vcode":Ljava/lang/String;
    :catch_0
    move-exception v5

    :goto_2
    const-string/jumbo v5, "evaluate exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 903
    const-string/jumbo p0, ""

    goto :goto_0

    .line 905
    :catch_1
    move-exception v5

    :goto_3
    const-string/jumbo v5, "evaluate error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 906
    const-string/jumbo p0, ""

    goto :goto_0

    .line 905
    .end local p0    # "vcode":Ljava/lang/String;
    .restart local v4    # "vcode":Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object p0, v4

    .end local v4    # "vcode":Ljava/lang/String;
    .restart local p0    # "vcode":Ljava/lang/String;
    goto :goto_3

    .line 902
    .end local p0    # "vcode":Ljava/lang/String;
    .restart local v4    # "vcode":Ljava/lang/String;
    :catch_3
    move-exception v5

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
    .line 1400
    .local p0, "requiredMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "extraParam":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1401
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1405
    .local v5, "keyForRequiredMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1406
    .local v0, "cloneKeyForRequiredMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1407
    const-string/jumbo v10, "s2"

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1410
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1412
    .local v4, "keyForExtraParam":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1415
    const-string/jumbo v10, "sfe"

    invoke-interface {p1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1417
    .local v8, "strForExtMap":Ljava/lang/String;
    const-string/jumbo v10, "sfe"

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1419
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1421
    .local v7, "notHitExtendBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1422
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1423
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1424
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1426
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v10, "vid"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1427
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u8f6c\u6362\u524d\u7684vid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1428
    invoke-static {v9}, Lc8/WHg;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1430
    .local v1, "formatVid":Ljava/lang/String;
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1431
    const-string/jumbo v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, ""

    :goto_1
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1435
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1437
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u8f6c\u6362\u540e\u7684vid:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object v10, v1

    .line 1433
    goto :goto_1

    .line 1439
    .end local v1    # "formatVid":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    const-string/jumbo v10, "="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1441
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v9, ""

    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1447
    .end local v3    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    .line 1448
    .local v6, "length":I
    if-lez v6, :cond_4

    .line 1449
    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1452
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1453
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "\u524d\u7aef\u4f20\u5165\u7684\u81ea\u5b9a\u4e49\u952e\u503c\u5bf9\u4e3a:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1454
    const-string/jumbo v10, "&"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1456
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1458
    .end local v0    # "cloneKeyForRequiredMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "keyForExtraParam":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "keyForRequiredMap":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "length":I
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
    .line 340
    :try_start_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 341
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 342
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 348
    .end local v0    # "bd":Ljava/math/BigDecimal;
    :goto_0
    return-object v1

    .line 344
    :catch_0
    move-exception v1

    const-string/jumbo v1, "formatDouble exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 348
    :goto_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 346
    :catch_1
    move-exception v1

    const-string/jumbo v1, "formatDouble error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static generateEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    invoke-static {}, Lc8/WHg;->generatePageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generatePageId()Ljava/lang/String;
    .locals 8

    .prologue
    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1163
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 1164
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x404f000000000000L    # 62.0

    mul-double/2addr v4, v6

    double-to-int v2, v4

    .line 1165
    .local v2, "rand":I
    sget-object v3, Lc8/WHg;->ENCODE:[C

    aget-char v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1167
    .end local v2    # "rand":I
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/WHg;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAESKEY(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&YOUKU&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getGDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/WHg;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 577
    :try_start_0
    const-string/jumbo v1, "android_id"

    invoke-static {p0, v1}, Lc8/THg;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 578
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_2

    .line 579
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 581
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_3

    .line 582
    :cond_1
    const-string/jumbo v0, ""

    .line 592
    .end local v0    # "s":Ljava/lang/String;
    :cond_2
    :goto_0
    return-object v0

    .line 584
    .restart local v0    # "s":Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "android_id"

    invoke-static {p0, v1, v0}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 588
    .end local v0    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "getAndroidId exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 592
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 590
    :catch_1
    move-exception v1

    const-string/jumbo v1, "getAndroidId error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1131
    const/4 v2, 0x0

    .line 1133
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1135
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1138
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 1139
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1140
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 1141
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1153
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-object v2

    .line 1149
    .restart local v2    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "getAppConfig exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1151
    :catch_1
    move-exception v4

    const-string/jumbo v4, "getAppConfig error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 144
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 145
    .local v0, "code":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 151
    .end local v0    # "code":I
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 147
    :catch_0
    move-exception v2

    const-string/jumbo v2, "getAppVersionCode exception"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 151
    :goto_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 149
    :catch_1
    move-exception v2

    const-string/jumbo v2, "getAppVersionCode error"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 164
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v1

    const-string/jumbo v1, "getAppVersionName exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 170
    :goto_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 168
    :catch_1
    move-exception v1

    const-string/jumbo v1, "getAppVersionName error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getAppname(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1080
    const-string/jumbo v0, "UNION_APPNAME"

    invoke-static {p0, v0}, Lc8/WHg;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1043
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getBtype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1052
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lc8/WHg;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lc8/WHg;->mContext:Landroid/content/Context;

    .line 78
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const-string/jumbo v0, "getContext\u8fd4\u56de\u7ed3\u679c\u4e3a\u7a7a"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 78
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDirName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1595
    const-string/jumbo v0, ""

    .line 1596
    .local v0, "dirName":Ljava/lang/String;
    invoke-static {}, Lc8/WHg;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2.3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1597
    const-string/jumbo v0, "/YoukuAnalytics_Log/"

    .line 1601
    :cond_0
    :goto_0
    return-object v0

    .line 1598
    :cond_1
    invoke-static {}, Lc8/WHg;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "2.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1599
    const-string/jumbo v0, "/YoukuAnalytics_Json/"

    goto :goto_0
.end method

.method public static getDirectoryNameForTest(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    :try_start_0
    invoke-static {p0}, Lc8/WHg;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "processName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    const/16 v1, 0x3a

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 130
    .end local v0    # "processName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 124
    .restart local v0    # "processName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 126
    .end local v0    # "processName":Ljava/lang/String;
    :catch_0
    move-exception v1

    const-string/jumbo v1, "getDirectoryNameForTest exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 130
    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 128
    :catch_1
    move-exception v1

    const-string/jumbo v1, "getDirectoryNameForTest error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 205
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 206
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 207
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 209
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 216
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 212
    :catch_0
    move-exception v2

    const-string/jumbo v2, "getDisplayName exception"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 214
    :catch_1
    move-exception v2

    const-string/jumbo v2, "getDisplayName error"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1565
    const/4 v1, 0x0

    .line 1566
    .local v1, "file":Ljava/io/File;
    invoke-static {p0}, Lc8/WHg;->makeRootDirectory(Ljava/lang/String;)V

    .line 1568
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v1, v2

    .line 1573
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :goto_0
    return-object v1

    .line 1569
    :catch_0
    move-exception v0

    .line 1571
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFormatTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 317
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 319
    .local v1, "length":I
    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    .line 320
    add-int/lit8 v2, v1, -0x3

    const-string/jumbo v3, "."

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 329
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "length":I
    :goto_0
    return-object v2

    .line 325
    :catch_0
    move-exception v2

    const-string/jumbo v2, "getFormatTime exception"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 329
    :goto_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 327
    :catch_1
    move-exception v2

    const-string/jumbo v2, "getFormatTime error"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getGDID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 688
    const-string/jumbo v3, "gdid"

    invoke-static {p0, v3}, Lc8/THg;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 689
    .local v0, "gdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 690
    :cond_0
    invoke-static {p0}, Lc8/WHg;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 692
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {p0}, Lc8/WHg;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 694
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

    invoke-static {v3}, Lc8/WHg;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 695
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 696
    :cond_1
    const-string/jumbo v3, ""

    .line 701
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 698
    .restart local v1    # "imei":Ljava/lang/String;
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "gdid"

    invoke-static {p0, v3, v0}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_3
    move-object v3, v0

    .line 701
    goto :goto_0
.end method

.method public static getGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 668
    const-string/jumbo v3, "guid"

    invoke-static {p0, v3}, Lc8/THg;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 669
    .local v0, "guid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 670
    :cond_0
    invoke-static {p0}, Lc8/WHg;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 671
    .local v2, "macAddress":Ljava/lang/String;
    invoke-static {p0}, Lc8/WHg;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 672
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

    invoke-static {v3}, Lc8/WHg;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_2

    .line 674
    :cond_1
    const-string/jumbo v3, ""

    .line 678
    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 676
    .restart local v1    # "imei":Ljava/lang/String;
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "guid"

    invoke-static {p0, v3, v0}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "imei":Ljava/lang/String;
    .end local v2    # "macAddress":Ljava/lang/String;
    :cond_3
    move-object v3, v0

    .line 678
    goto :goto_0
.end method

.method public static getHeadSet(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 932
    :try_start_0
    const-string/jumbo v2, "audio"

    .line 933
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 934
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 935
    const/4 v1, 0x1

    .line 945
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return v1

    .line 938
    :catch_0
    move-exception v2

    const-string/jumbo v2, "getHeadSet exception"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 941
    :catch_1
    move-exception v2

    const-string/jumbo v2, "getHeadSet error"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 978
    const-string/jumbo v2, "imei"

    invoke-static {p0, v2}, Lc8/THg;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "imei":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 1000
    :goto_0
    return-object v2

    .line 983
    :cond_0
    :try_start_0
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lc8/WHg;->checkPermissionM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 984
    const-string/jumbo v2, ""

    goto :goto_0

    .line 987
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 989
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 990
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 991
    const-string/jumbo v2, "imei"

    invoke-static {p0, v2, v0}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 992
    goto :goto_0

    .line 995
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "getIMEI exception"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 1000
    :cond_2
    :goto_1
    const-string/jumbo v2, ""

    goto :goto_0

    .line 997
    :catch_1
    move-exception v2

    const-string/jumbo v2, "getIMEI error"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1010
    const-string/jumbo v4, "imsi"

    invoke-static {p0, v4}, Lc8/THg;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1011
    .local v2, "imsi":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v2

    .line 1032
    :goto_0
    return-object v4

    .line 1015
    :cond_0
    :try_start_0
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Lc8/WHg;->checkPermissionM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1016
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1018
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1020
    .local v3, "mTMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 1021
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1022
    const-string/jumbo v4, "imsi"

    invoke-static {p0, v4, v2}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    move-object v4, v2

    .line 1024
    goto :goto_0

    .line 1025
    .end local v3    # "mTMgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    .line 1026
    .local v1, "exception":Ljava/lang/Exception;
    const-string/jumbo v4, "getIMSI exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 1027
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    .end local v1    # "exception":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v4, ""

    goto :goto_0

    .line 1028
    :catch_1
    move-exception v0

    .line 1029
    .local v0, "error":Ljava/lang/Error;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getIMSI error\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInitInfo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1256
    invoke-static {p0}, Lc8/WHg;->isTestMode(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    .line 1257
    .local v0, "configIsTestMode":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    sget-boolean v1, Lc8/QHg;->isTestMode:Z

    .line 1258
    :goto_0
    sput-boolean v1, Lc8/QHg;->isTestMode:Z

    .line 1260
    invoke-static {p0}, Lc8/WHg;->getRGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/QHg;->rguid:Ljava/lang/String;

    .line 1263
    invoke-static {p0}, Lc8/WHg;->getInitInfoForDevice(Landroid/content/Context;)V

    .line 1264
    return-void

    .line 1258
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static getInitInfoForDevice(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1314
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->brand:Ljava/lang/String;

    .line 1315
    sget-object v0, Lc8/QHg;->appname:Ljava/lang/String;

    sput-object v0, Lc8/NHg;->appname:Ljava/lang/String;

    .line 1316
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->btype:Ljava/lang/String;

    .line 1317
    invoke-static {p0}, Lc8/WHg;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->appver:Ljava/lang/String;

    .line 1318
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lc8/NHg;->os_ver:Ljava/lang/String;

    .line 1319
    invoke-static {p0}, Lc8/WHg;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    sput v0, Lc8/NHg;->ht:I

    .line 1320
    invoke-static {p0}, Lc8/WHg;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    sput v0, Lc8/NHg;->wt:I

    .line 1321
    invoke-static {p0}, Lc8/WHg;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->imei:Ljava/lang/String;

    .line 1322
    invoke-static {p0}, Lc8/WHg;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->imsi:Ljava/lang/String;

    .line 1323
    invoke-static {p0}, Lc8/WHg;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->mac:Ljava/lang/String;

    .line 1324
    invoke-static {p0}, Lc8/WHg;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->guid:Ljava/lang/String;

    .line 1325
    invoke-static {p0}, Lc8/WHg;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->uuid:Ljava/lang/String;

    .line 1326
    invoke-static {p0}, Lc8/WHg;->getGDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->gdid:Ljava/lang/String;

    .line 1327
    invoke-static {p0}, Lc8/WHg;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->network:Ljava/lang/String;

    .line 1328
    invoke-static {p0}, Lc8/WHg;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->operator:Ljava/lang/String;

    .line 1329
    invoke-static {p0}, Lc8/WHg;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/NHg;->deviceid:Ljava/lang/String;

    .line 1330
    sget-object v0, Lc8/QHg;->rguid:Ljava/lang/String;

    sput-object v0, Lc8/NHg;->rguid:Ljava/lang/String;

    .line 1331
    sget-object v0, Lc8/QHg;->pid:Ljava/lang/String;

    sput-object v0, Lc8/NHg;->pid:Ljava/lang/String;

    .line 1332
    return-void
.end method

.method public static getMacAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const-string/jumbo v3, "mac_address"

    invoke-static {p0, v3}, Lc8/THg;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "macAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    .line 282
    :goto_0
    return-object v3

    .line 259
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 261
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v3}, Lc8/WHg;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 262
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 264
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_1
    if-eqz v1, :cond_4

    .line 265
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_3

    .line 267
    :cond_1
    const-string/jumbo v3, "\u83b7\u53d6\u5230\u7684mac address\u4e3anull."

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 268
    const-string/jumbo v3, ""

    goto :goto_0

    .line 263
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_2
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    goto :goto_1

    .line 270
    .restart local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string/jumbo v3, "mac_address"

    invoke-static {p0, v3, v0}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_4
    :goto_2
    move-object v3, v0

    .line 282
    goto :goto_0

    .line 274
    .restart local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const-string/jumbo v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 277
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "getMacAddress exception"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 279
    :catch_1
    move-exception v3

    const-string/jumbo v3, "getMacAddress error"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 399
    :try_start_0
    const-string/jumbo v4, "connectivity"

    .line 400
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 401
    .local v0, "m":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 402
    .local v1, "n":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 403
    const-string/jumbo v4, ""

    .line 423
    .end local v0    # "m":Landroid/net/ConnectivityManager;
    .end local v1    # "n":Landroid/net/NetworkInfo;
    :goto_0
    return-object v4

    .line 405
    .restart local v0    # "m":Landroid/net/ConnectivityManager;
    .restart local v1    # "n":Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 406
    .local v3, "type":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 407
    const-string/jumbo v4, "WIFI"

    goto :goto_0

    .line 408
    :cond_1
    if-nez v3, :cond_3

    .line 409
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Lc8/WHg;->checkPermissionM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 410
    const-string/jumbo v4, ""

    goto :goto_0

    .line 412
    :cond_2
    const-string/jumbo v4, "phone"

    .line 413
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 414
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 416
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string/jumbo v4, "OTHER"

    goto :goto_0

    .line 419
    .end local v0    # "m":Landroid/net/ConnectivityManager;
    .end local v1    # "n":Landroid/net/NetworkInfo;
    .end local v3    # "type":I
    :catch_0
    move-exception v4

    const-string/jumbo v4, "getNetworkType exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 423
    :goto_1
    const-string/jumbo v4, ""

    goto :goto_0

    .line 421
    :catch_1
    move-exception v4

    const-string/jumbo v4, "getNetworkType error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v4}, Lc8/WHg;->checkPermissionM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    const-string/jumbo v4, ""

    .line 388
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_0
    return-object v4

    .line 362
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v4, "phone"

    .line 363
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 364
    .local v3, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "operatorName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_1
    const-string/jumbo v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "operator":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 368
    .end local v1    # "operator":Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 370
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 384
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "operatorName":Ljava/lang/String;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    const-string/jumbo v4, "getOperator exception"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 388
    :cond_3
    :goto_2
    const-string/jumbo v4, ""

    goto :goto_0

    .line 372
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v2    # "operatorName":Ljava/lang/String;
    .restart local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_4
    :try_start_1
    const-string/jumbo v4, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 386
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "operatorName":Ljava/lang/String;
    .end local v3    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v4

    const-string/jumbo v4, "getOperator error"

    invoke-static {v4}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1061
    const-string/jumbo v0, "Android"

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getPid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1090
    const-string/jumbo v0, "UNION_PID"

    invoke-static {p0, v0}, Lc8/WHg;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 90
    .local v2, "pid":I
    const-string/jumbo v3, "activity"

    .line 91
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 94
    .local v1, "mActivityManager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 93
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 95
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_0

    .line 97
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return-object v3

    .line 101
    :catch_0
    move-exception v3

    const-string/jumbo v3, "getProcessName exception"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 106
    :cond_1
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 103
    :catch_1
    move-exception v3

    const-string/jumbo v3, "getProcessName error"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getRGUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u5c06utdid\u8d4b\u503c\u7ed9rguid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 921
    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 603
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 609
    :goto_0
    return v0

    .line 605
    :catch_0
    move-exception v1

    const-string/jumbo v1, "getScreenHeight exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 608
    :catch_1
    move-exception v1

    const-string/jumbo v1, "getScreenHeight error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getScreenState(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 956
    if-eqz p0, :cond_1

    .line 957
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v1, v0, :cond_0

    .line 958
    const/4 v0, 0x0

    .line 968
    :cond_0
    :goto_0
    return v0

    .line 964
    :catch_0
    move-exception v0

    const-string/jumbo v0, "getScreenState exception"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 968
    :cond_1
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 966
    :catch_1
    move-exception v0

    const-string/jumbo v0, "getScreenState error"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 621
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 627
    :goto_0
    return v0

    .line 623
    :catch_0
    move-exception v1

    const-string/jumbo v1, "getScreenWidth exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :catch_1
    move-exception v1

    const-string/jumbo v1, "getScreenWidth error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lc8/QHg;->appid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lc8/QHg;->pid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string/jumbo v0, "2.3"

    .line 182
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "2.1"

    goto :goto_0
.end method

.method public static getTimeZone()Ljava/lang/String;
    .locals 10

    .prologue
    .line 292
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 293
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const v6, 0x36ee80

    div-int v0, v5, v6

    .line 294
    .local v0, "hours":I
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    const v6, 0xea60

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v1, v5, 0x3c

    .line 295
    .local v1, "minutes":I
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    if-ltz v5, :cond_0

    const-string/jumbo v2, "+"

    .line 297
    .local v2, "sign":Ljava/lang/String;
    :goto_0
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v6, "%s%02d:%02d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    .line 298
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 297
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 306
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    .end local v2    # "sign":Ljava/lang/String;
    :goto_1
    return-object v4

    .line 295
    .restart local v0    # "hours":I
    .restart local v1    # "minutes":I
    :cond_0
    const-string/jumbo v2, "-"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 302
    .end local v0    # "hours":I
    .end local v1    # "minutes":I
    :catch_0
    move-exception v5

    const-string/jumbo v5, "getTimeZone exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 306
    :goto_2
    const-string/jumbo v4, ""

    goto :goto_1

    .line 304
    :catch_1
    move-exception v5

    const-string/jumbo v5, "getTimeZone error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static getUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 713
    :try_start_0
    const-string/jumbo v6, "uuid"

    invoke-static {p0, v6}, Lc8/THg;->getHeaderPreference(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 714
    .local v5, "uuid":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    move-object v6, v5

    .line 742
    :goto_0
    return-object v6

    .line 717
    :cond_0
    const-string/jumbo v6, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v6}, Lc8/WHg;->checkPermissionM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 718
    const-string/jumbo v6, ""

    goto :goto_0

    .line 721
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 723
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 724
    .local v3, "tmDevice":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, "tmSerial":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "android_id"

    .line 725
    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "androidId":Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 729
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 730
    const-string/jumbo v6, "uuid"

    invoke-static {p0, v6, v5}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 731
    goto :goto_0

    .line 733
    :cond_3
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    int-to-long v6, v6

    .line 734
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v8, v10

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 735
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 736
    const-string/jumbo v6, "uuid"

    invoke-static {p0, v6, v5}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v5

    .line 737
    goto :goto_0

    .line 739
    .end local v0    # "androidId":Ljava/lang/String;
    .end local v1    # "deviceUuid":Ljava/util/UUID;
    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    .end local v3    # "tmDevice":Ljava/lang/String;
    .end local v4    # "tmSerial":Ljava/lang/String;
    .end local v5    # "uuid":Ljava/lang/String;
    :catch_0
    move-exception v6

    const-string/jumbo v6, "exception occured when calling getUUID"

    invoke-static {v6}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 740
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    .line 741
    .restart local v5    # "uuid":Ljava/lang/String;
    const-string/jumbo v6, "uuid"

    invoke-static {p0, v6, v5}, Lc8/THg;->savePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v5

    .line 742
    goto/16 :goto_0
.end method

.method public static getWifiName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 499
    :try_start_0
    const-string/jumbo v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v3}, Lc8/WHg;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 500
    const-string/jumbo v1, ""

    .line 522
    :cond_0
    :goto_0
    return-object v1

    .line 502
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "wifi"

    .line 503
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 504
    .local v2, "wifiMgr":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    .line 505
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 506
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 507
    .local v1, "wifiId":Ljava/lang/String;
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 508
    const-string/jumbo v3, "<unknown ssid>"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 509
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u672a\u77e5\u7684wifi\u540d\u79f0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 510
    const-string/jumbo v1, ""

    goto :goto_0

    .line 506
    .end local v1    # "wifiId":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 512
    .restart local v1    # "wifiId":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u53ef\u77e5\u7684wifi\u540d\u79f0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 513
    const-string/jumbo v3, "\""

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 518
    .end local v0    # "info":Landroid/net/wifi/WifiInfo;
    .end local v1    # "wifiId":Ljava/lang/String;
    .end local v2    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v3

    const-string/jumbo v3, "getWifiName exception"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 522
    :goto_2
    const-string/jumbo v1, ""

    goto :goto_0

    .line 520
    :catch_1
    move-exception v3

    const-string/jumbo v3, "getWifiName error"

    invoke-static {v3}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected static isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p0, "location"    # Landroid/location/Location;
    .param p1, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 1194
    if-nez p1, :cond_0

    .line 1196
    const/4 v10, 0x1

    .line 1237
    :goto_0
    return v10

    .line 1200
    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 1201
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 1202
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 1203
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 1208
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 1209
    const/4 v10, 0x1

    goto :goto_0

    .line 1201
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 1202
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 1203
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 1212
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 1213
    const/4 v10, 0x0

    goto :goto_0

    .line 1217
    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    .line 1218
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 1219
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 1220
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 1221
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 1224
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    .line 1225
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    .line 1224
    invoke-static {v10, v11}, Lc8/WHg;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1229
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 1230
    const/4 v10, 0x1

    goto :goto_0

    .line 1219
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 1220
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 1221
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 1231
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 1232
    const/4 v10, 0x1

    goto :goto_0

    .line 1233
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 1235
    const/4 v10, 0x1

    goto :goto_0

    .line 1237
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static isDebugMode(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1110
    const-string/jumbo v0, "UNION_ISDEBUGEMODE"

    invoke-static {p0, v0}, Lc8/WHg;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method private static isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "provider1"    # Ljava/lang/String;
    .param p1, "provider2"    # Ljava/lang/String;

    .prologue
    .line 1244
    if-nez p0, :cond_1

    .line 1245
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 1247
    :goto_0
    return v0

    .line 1245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1247
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1612
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1619
    :cond_0
    :goto_0
    return v0

    .line 1615
    :catch_0
    move-exception v1

    const-string/jumbo v1, "isTablet exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1617
    :catch_1
    move-exception v1

    const-string/jumbo v1, "isTablet error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isTestMode(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1100
    const-string/jumbo v0, "UNION_ISTESTMODE"

    invoke-static {p0, v0}, Lc8/WHg;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static isTrackLocation(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1120
    const-string/jumbo v0, "UNION_ISTRACKLOCATION"

    invoke-static {p0, v0}, Lc8/WHg;->getAppConfig(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public static makeRootDirectory(Ljava/lang/String;)V
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 1579
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1581
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1582
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1584
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1585
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1592
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 1588
    :catch_0
    move-exception v1

    const-string/jumbo v1, "makeRootDirectory exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1590
    :catch_1
    move-exception v1

    const-string/jumbo v1, "makeRootDirectory error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 639
    :try_start_0
    const-string/jumbo v5, "MD5"

    .line 640
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 641
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 642
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    .line 644
    .local v4, "messageDigest":[B
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 645
    .local v2, "hexString":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 646
    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 647
    .local v1, "h":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 648
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

    .line 650
    :cond_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    .end local v1    # "h":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 658
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "hexString":Ljava/lang/StringBuilder;
    .end local v3    # "i":I
    .end local v4    # "messageDigest":[B
    :goto_2
    return-object v5

    .line 654
    :catch_0
    move-exception v5

    const-string/jumbo v5, "md5 exception"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 658
    :goto_3
    const-string/jumbo v5, ""

    goto :goto_2

    .line 656
    :catch_1
    move-exception v5

    const-string/jumbo v5, "md5 error"

    invoke-static {v5}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static printDeviceInfo(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1272
    invoke-static {}, Lc8/WHg;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1273
    const-string/jumbo v0, "2.3\u521d\u59cb\u5316\u4fe1\u606f\u5982\u4e0b\uff1a"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1278
    :goto_0
    invoke-static {}, Lc8/WHg;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNION_APPID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/QHg;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1281
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/QHg;->pid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/WHg;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "g1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getGUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "g2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getGDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "a1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/QHg;->appname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "a2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "a3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "b1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v1}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "b2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "o:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1293
    const-string/jumbo v0, "o1:Android"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "o2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lc8/WHg;->getOsVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "w:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "h:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "i1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "i2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/WHg;->URLEncoder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1299
    const-string/jumbo v0, "i3(ios\u8bbe\u5907idfa\uff0c\u8d4b\u4e3a\u7a7a):"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1300
    const-string/jumbo v0, "d1(ios\u8bbe\u5907deviceId\uff0c\u8d4b\u4e3a\u7a7a):"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1301
    const-string/jumbo v0, "d2(ios\u8bbe\u5907ndeviceid\uff0c\u8d4b\u4e3a\u7a7a):"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1302
    const-string/jumbo v0, "v(ios\u8bbe\u5907vdid\uff0c\u8d4b\u4e3a\u7a7a):"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "m:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lc8/WHg;->getMacAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "n3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lc8/QHg;->rguid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1306
    return-void

    .line 1275
    :cond_1
    const-string/jumbo v0, "2.1\u521d\u59cb\u5316\u4fe1\u606f\u5982\u4e0b\uff1a"

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static registerConnectionChangeReceiver()V
    .locals 3

    .prologue
    .line 1844
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1846
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v1, Lc8/VHg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lc8/VHg;-><init>(Lc8/UHg;)V

    sput-object v1, Lc8/WHg;->mConnectionChangeReceiver:Lc8/VHg;

    .line 1847
    invoke-static {}, Lc8/WHg;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lc8/WHg;->mConnectionChangeReceiver:Lc8/VHg;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1849
    sget-object v1, Lc8/WHg;->mConnectionChangeReceiver:Lc8/VHg;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc8/VHg;->access$100(Lc8/VHg;Z)V

    .line 1850
    const-string/jumbo v1, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u5e7f\u64ad\u63a5\u6536\u5668\u6ce8\u518c\u6210\u529f."

    invoke-static {v1}, Lc8/SHg;->i(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1856
    :goto_0
    return-void

    .line 1852
    :catch_0
    move-exception v1

    const-string/jumbo v1, "registerConnectionChangeReceiver exception"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0

    .line 1854
    :catch_1
    move-exception v1

    const-string/jumbo v1, "registerConnectionChangeReceiver error"

    invoke-static {v1}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    sput-object p0, Lc8/WHg;->mContext:Landroid/content/Context;

    .line 70
    return-void
.end method

.method public static spliceUrls(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1707
    .local p0, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    :cond_0
    const-string/jumbo v2, "Urls is null or empty"

    invoke-static {v2}, Lc8/SHg;->e(Ljava/lang/String;)I

    .line 1709
    const/4 v2, 0x0

    .line 1718
    :goto_0
    return-object v2

    .line 1712
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1713
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1714
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1716
    const-string/jumbo v2, "||"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1718
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static transferBuilder2Map(Lc8/OHg;)Ljava/util/HashMap;
    .locals 5
    .param p0, "builder"    # Lc8/OHg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/OHg;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1470
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u524d\u7aef\u4f20\u5165\u7684builder:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lc8/OHg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1472
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1474
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u524d\u7aef\u4f20\u5165\u7684vid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lc8/OHg;->getVid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1475
    invoke-virtual {p0}, Lc8/OHg;->getVid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/WHg;->evaluate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1476
    .local v2, "vid":Ljava/lang/String;
    const-string/jumbo v3, "v"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7edf\u8ba1sdk\u8f6c\u6362\u540e\u7684vid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1479
    const-string/jumbo v3, "s2"

    invoke-virtual {p0}, Lc8/OHg;->getPlaysid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u524d\u7aef\u4f20\u5165\u7684playSid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lc8/OHg;->getPlaysid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/SHg;->d(Ljava/lang/String;)I

    .line 1482
    const-string/jumbo v3, "p2"

    invoke-virtual {p0}, Lc8/OHg;->getPlayType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1483
    const-string/jumbo v3, "p3"

    invoke-virtual {p0}, Lc8/OHg;->getPlaycode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1484
    const-string/jumbo v3, "c1"

    invoke-virtual {p0}, Lc8/OHg;->getComplete()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1485
    const-string/jumbo v3, "u2"

    invoke-virtual {p0}, Lc8/OHg;->getAdUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    const-string/jumbo v3, "ad"

    invoke-virtual {p0}, Lc8/OHg;->getAdvBeforeDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    const-string/jumbo v3, "bd"

    invoke-virtual {p0}, Lc8/OHg;->getBeforeDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1488
    const-string/jumbo v3, "v1"

    invoke-virtual {p0}, Lc8/OHg;->getVideoTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1489
    const-string/jumbo v3, "d1"

    invoke-virtual {p0}, Lc8/OHg;->getDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1490
    const-string/jumbo v3, "pe"

    invoke-virtual {p0}, Lc8/OHg;->getPlayLoadEvents()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1491
    const-string/jumbo v3, "pr"

    invoke-virtual {p0}, Lc8/OHg;->getPlayRates()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1492
    const-string/jumbo v3, "pt1"

    invoke-virtual {p0}, Lc8/OHg;->getPlaySDTimes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    const-string/jumbo v3, "pd1"

    invoke-virtual {p0}, Lc8/OHg;->getPlaySDDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    const-string/jumbo v3, "pt2"

    invoke-virtual {p0}, Lc8/OHg;->getPlayHDTimes()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    const-string/jumbo v3, "pd2"

    invoke-virtual {p0}, Lc8/OHg;->getPlayHDDuration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1496
    const-string/jumbo v3, "pt3"

    invoke-virtual {p0}, Lc8/OHg;->getPlayHD2Times()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1497
    const-string/jumbo v3, "pd3"

    invoke-virtual {p0}, Lc8/OHg;->getPlayHD2Duration()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1498
    const-string/jumbo v3, "rc1"

    invoke-virtual {p0}, Lc8/OHg;->getSource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1499
    const-string/jumbo v3, "s3"

    invoke-virtual {p0}, Lc8/OHg;->getSid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1500
    const-string/jumbo v3, "ct1"

    invoke-virtual {p0}, Lc8/OHg;->getCtype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1501
    const-string/jumbo v3, "ev1"

    invoke-virtual {p0}, Lc8/OHg;->getEv()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    const-string/jumbo v3, "tk1"

    invoke-virtual {p0}, Lc8/OHg;->getToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1503
    const-string/jumbo v3, "oip1"

    invoke-virtual {p0}, Lc8/OHg;->getOip()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    const-string/jumbo v3, "cp"

    invoke-virtual {p0}, Lc8/OHg;->getContinuePlay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    const-string/jumbo v3, "cf"

    invoke-virtual {p0}, Lc8/OHg;->getCurrentFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    const-string/jumbo v3, "ct"

    invoke-virtual {p0}, Lc8/OHg;->getCurrentPlaytime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    const-string/jumbo v3, "fu"

    invoke-virtual {p0}, Lc8/OHg;->getFull()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    const-string/jumbo v3, "st"

    invoke-virtual {p0}, Lc8/OHg;->getStartPlaytime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    const-string/jumbo v3, "v2"

    invoke-virtual {p0}, Lc8/OHg;->getVideoOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    const-string/jumbo v3, "rp"

    invoke-virtual {p0}, Lc8/OHg;->isReplay()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const-string/jumbo v3, "c2"

    invoke-virtual {p0}, Lc8/OHg;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    const-string/jumbo v3, "sc2"

    invoke-virtual {p0}, Lc8/OHg;->getSChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    const-string/jumbo v3, "p4"

    invoke-virtual {p0}, Lc8/OHg;->getPlaylistId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    const-string/jumbo v3, "p5"

    invoke-virtual {p0}, Lc8/OHg;->getPlaylistChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    const-string/jumbo v3, "sp5"

    invoke-virtual {p0}, Lc8/OHg;->getSPlaylistChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    const-string/jumbo v3, "s4"

    invoke-virtual {p0}, Lc8/OHg;->getShowId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    const-string/jumbo v3, "s5"

    invoke-virtual {p0}, Lc8/OHg;->getShowChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    const-string/jumbo v3, "ss5"

    invoke-virtual {p0}, Lc8/OHg;->getSShowChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    const-string/jumbo v3, "ln"

    invoke-virtual {p0}, Lc8/OHg;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    const-string/jumbo v3, "ss"

    .line 1522
    invoke-static {}, Lc8/WHg;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lc8/WHg;->getScreenState(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 1521
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    const-string/jumbo v3, "iv"

    invoke-virtual {p0}, Lc8/OHg;->isVip()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    const-string/jumbo v3, "ps1"

    invoke-virtual {p0}, Lc8/OHg;->getPayState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    const-string/jumbo v3, "ps2"

    invoke-virtual {p0}, Lc8/OHg;->getPlayState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    const-string/jumbo v3, "cr"

    invoke-virtual {p0}, Lc8/OHg;->getCopyright()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    const-string/jumbo v3, "tr"

    invoke-virtual {p0}, Lc8/OHg;->getTailers()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1528
    const-string/jumbo v3, "px"

    invoke-virtual {p0}, Lc8/OHg;->getPlayExperience()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    const-string/jumbo v3, "pv1"

    invoke-virtual {p0}, Lc8/OHg;->getP2PVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1530
    const-string/jumbo v4, "ip1"

    invoke-virtual {p0}, Lc8/OHg;->isP2P()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const-string/jumbo v3, "e2"

    invoke-virtual {p0}, Lc8/OHg;->getEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const-string/jumbo v3, "pg"

    invoke-virtual {p0}, Lc8/OHg;->getPlayGestures()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    const-string/jumbo v3, "ab"

    invoke-virtual {p0}, Lc8/OHg;->getActionBegin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    const-string/jumbo v3, "ae"

    invoke-virtual {p0}, Lc8/OHg;->getActionEnd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1535
    const-string/jumbo v3, "ft1"

    invoke-virtual {p0}, Lc8/OHg;->getFreeTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1537
    const-string/jumbo v3, "ap"

    invoke-virtual {p0}, Lc8/OHg;->getAutoPlay()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1539
    invoke-virtual {p0}, Lc8/OHg;->getExtMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v3}, Lc8/WHg;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 1540
    .local v1, "strForExtMap":Ljava/lang/String;
    const-string/jumbo v3, "sfe"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1542
    return-object v0

    .line 1530
    .end local v1    # "strForExtMap":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static transferNetworkType2Int(Ljava/lang/String;)I
    .locals 7
    .param p0, "networkType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 434
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 487
    :goto_0
    :pswitch_0
    return v0

    .line 438
    :cond_0
    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 481
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 438
    :sswitch_0
    const-string/jumbo v6, "NETWORK_TYPE_UNKNOWN"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v6, "NETWORK_TYPE_GPRS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v6, "NETWORK_TYPE_EDGE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_1

    :sswitch_3
    const-string/jumbo v6, "NETWORK_TYPE_UMTS"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v6, "NETWORK_TYPE_CDMA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v6, "NETWORK_TYPE_EVDO_0"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v6, "NETWORK_TYPE_EVDO_A"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v6, "NETWORK_TYPE_1xRTT"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x7

    goto :goto_1

    :sswitch_8
    const-string/jumbo v6, "NETWORK_TYPE_HSDPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v6, "NETWORK_TYPE_HSUPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v6, "NETWORK_TYPE_HSPA"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v6, "NETWORK_TYPE_IDEN"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v6, "NETWORK_TYPE_EVDO_B"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v6, "NETWORK_TYPE_LTE"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v6, "NETWORK_TYPE_EHRPD"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v6, "NETWORK_TYPE_HSPAP"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v6, "WIFI"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v6, "WWAN"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x11

    goto/16 :goto_1

    :sswitch_12
    const-string/jumbo v6, "ETHERNET"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v5, 0x12

    goto/16 :goto_1

    :sswitch_13
    const-string/jumbo v6, "OTHER"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v0

    goto/16 :goto_1

    :pswitch_1
    move v0, v1

    .line 440
    goto/16 :goto_0

    :pswitch_2
    move v0, v2

    .line 442
    goto/16 :goto_0

    :pswitch_3
    move v0, v3

    .line 444
    goto/16 :goto_0

    :pswitch_4
    move v0, v4

    .line 446
    goto/16 :goto_0

    .line 448
    :pswitch_5
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 450
    :pswitch_6
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 452
    :pswitch_7
    const/4 v0, 0x6

    goto/16 :goto_0

    .line 454
    :pswitch_8
    const/4 v0, 0x7

    goto/16 :goto_0

    .line 456
    :pswitch_9
    const/16 v0, 0x8

    goto/16 :goto_0

    .line 458
    :pswitch_a
    const/16 v0, 0x9

    goto/16 :goto_0

    .line 460
    :pswitch_b
    const/16 v0, 0xa

    goto/16 :goto_0

    .line 462
    :pswitch_c
    const/16 v0, 0xb

    goto/16 :goto_0

    .line 464
    :pswitch_d
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 466
    :pswitch_e
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 468
    :pswitch_f
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 470
    :pswitch_10
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 472
    :pswitch_11
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 474
    :pswitch_12
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 476
    :pswitch_13
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 483
    :catch_0
    move-exception v0

    const-string/jumbo v0, "transferNetworkType2Int exception"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    :goto_2
    move v0, v1

    .line 487
    goto/16 :goto_0

    .line 485
    :catch_1
    move-exception v0

    const-string/jumbo v0, "transferNetworkType2Int error"

    invoke-static {v0}, Lc8/SHg;->e(Ljava/lang/String;)I

    goto :goto_2

    .line 438
    :sswitch_data_0
    .sparse-switch
        -0x432fb557 -> :sswitch_4
        -0x432ecd4f -> :sswitch_2
        -0x432db622 -> :sswitch_1
        -0x432d36d0 -> :sswitch_a
        -0x432cfc08 -> :sswitch_b
        -0x432763f5 -> :sswitch_3
        -0x33b713b7 -> :sswitch_d
        -0x31b43a5f -> :sswitch_5
        -0x31b43a4e -> :sswitch_6
        -0x31b43a4d -> :sswitch_c
        -0x25f3c029 -> :sswitch_12
        -0x23ace3e9 -> :sswitch_7
        -0x22a8e031 -> :sswitch_e
        -0x2279ce2a -> :sswitch_8
        -0x2279a2e0 -> :sswitch_f
        -0x22798e59 -> :sswitch_9
        0x28a715 -> :sswitch_10
        0x28db0d -> :sswitch_11
        0x48086f0 -> :sswitch_13
        0x3c4bd6b6 -> :sswitch_0
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

.method public static unregisterConnectionChangeReceiver()V
    .locals 2

    .prologue
    .line 1864
    :try_start_0
    sget-object v0, Lc8/WHg;->mConnectionChangeReceiver:Lc8/VHg;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/WHg;->mConnectionChangeReceiver:Lc8/VHg;

    invoke-static {v0}, Lc8/VHg;->access$200(Lc8/VHg;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    invoke-static {}, Lc8/WHg;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1866
    invoke-static {}, Lc8/WHg;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lc8/WHg;->mConnectionChangeReceiver:Lc8/VHg;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1868
    sget-object v0, Lc8/WHg;->mConnectionChangeReceiver:Lc8/VHg;

    const/4 v1, 0x0

    .line 1869
    invoke-static {v0, v1}, Lc8/VHg;->access$100(Lc8/VHg;Z)V

    .line 1870
    const-string/jumbo v0, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u5e7f\u64ad\u63a5\u6536\u5668\u6ce8\u9500\u6210\u529f."

    invoke-static {v0}, Lc8/SHg;->i(Ljava/lang/String;)I

    .line 1879
    :goto_0
    return-void

    .line 1872
    :cond_0
    const-string/jumbo v0, "\u5f53\u524d\u7f51\u7edc\u8fde\u63a5\u5e7f\u64ad\u63a5\u6536\u5668\u5df2\u7ecf\u88ab\u6ce8\u9500\u8fc7\uff0c\u4e0d\u5fc5\u518d\u6b21\u6ce8\u9500."

    invoke-static {v0}, Lc8/SHg;->d(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1878
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
