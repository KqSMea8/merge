.class public Lc8/EZn;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/CZn;,
        Lc8/DZn;
    }
.end annotation


# static fields
.field public static final DECODE:I = 0x0

.field public static final DONT_BREAK_LINES:I = 0x8

.field public static final ENCODE:I = 0x1

.field public static final GZIP:I = 0x2

.field public static final NO_OPTIONS:I = 0x0

.field public static final ORDERED:I = 0x20

.field public static final URL_SAFE:I = 0x10

.field private static final _ORDERED_ALPHABET:[B

.field private static final _ORDERED_DECODABET:[B

.field private static final _STANDARD_ALPHABET:[B

.field private static final _STANDARD_DECODABET:[B

.field private static final _URL_SAFE_ALPHABET:[B

.field private static final _URL_SAFE_DECODABET:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x7f

    const/16 v1, 0x40

    .line 33
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/EZn;->_STANDARD_ALPHABET:[B

    .line 37
    new-array v0, v2, [B

    fill-array-data v0, :array_1

    sput-object v0, Lc8/EZn;->_STANDARD_DECODABET:[B

    .line 42
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lc8/EZn;->_URL_SAFE_ALPHABET:[B

    .line 46
    new-array v0, v2, [B

    fill-array-data v0, :array_3

    sput-object v0, Lc8/EZn;->_URL_SAFE_DECODABET:[B

    .line 51
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lc8/EZn;->_ORDERED_ALPHABET:[B

    .line 55
    new-array v0, v2, [B

    fill-array-data v0, :array_5

    sput-object v0, Lc8/EZn;->_ORDERED_DECODABET:[B

    return-void

    .line 33
    .line 37
    .line 42
    .line 46
    .line 51
    .line 55
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    :array_1
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_2
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3et
        -0x9t
        -0x9t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x3ft
        -0x9t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data

    :array_4
    .array-data 1
        0x2dt
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x5ft
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
    .end array-data

    :array_5
    .array-data 1
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x5t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x5t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x0t
        -0x9t
        -0x9t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        -0x9t
        -0x9t
        -0x9t
        -0x1t
        -0x9t
        -0x9t
        -0x9t
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        -0x9t
        -0x9t
        -0x9t
        -0x9t
        0x25t
        -0x9t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        0x3et
        0x3ft
        -0x9t
        -0x9t
        -0x9t
        -0x9t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 323
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/EZn;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode(Ljava/lang/String;I)[B
    .locals 11
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "options"    # I

    .prologue
    const/4 v10, 0x0

    .line 329
    :try_start_0
    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 334
    .local v2, "bytes":[B
    :goto_0
    array-length v8, v2

    invoke-static {v2, v10, v8, p1}, Lc8/EZn;->decode([BIII)[B

    move-result-object v2

    .line 336
    if-eqz v2, :cond_0

    array-length v8, v2

    const/4 v9, 0x4

    if-lt v8, v9, :cond_0

    .line 337
    aget-byte v8, v2, v10

    and-int/lit16 v8, v8, 0xff

    const/4 v9, 0x1

    aget-byte v9, v2, v9

    shl-int/lit8 v9, v9, 0x8

    const v10, 0xff00

    and-int/2addr v9, v10

    or-int v6, v8, v9

    .line 338
    .local v6, "head":I
    const v8, 0x8b1f

    if-ne v8, v6, :cond_0

    .line 339
    const/4 v4, 0x0

    .line 340
    .local v4, "gzis":Ljava/util/zip/GZIPInputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 342
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v5, Ljava/util/zip/GZIPInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v8}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .local v5, "gzis":Ljava/util/zip/GZIPInputStream;
    const/16 v8, 0x800

    :try_start_2
    new-array v1, v8, [B

    .line 345
    .local v1, "buffer":[B
    :goto_1
    invoke-virtual {v5, v1}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v7

    .local v7, "length":I
    if-ltz v7, :cond_1

    .line 346
    const/4 v8, 0x0

    invoke-virtual {v0, v1, v8, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .end local v1    # "buffer":[B
    .end local v7    # "length":I
    :catch_0
    move-exception v8

    move-object v4, v5

    .line 353
    .end local v5    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 357
    :goto_3
    if-eqz v4, :cond_0

    .line 359
    :try_start_4
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 368
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v6    # "head":I
    :cond_0
    :goto_4
    return-object v2

    .line 331
    .end local v2    # "bytes":[B
    :catch_1
    move-exception v8

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .restart local v2    # "bytes":[B
    goto :goto_0

    .line 349
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v5    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v6    # "head":I
    .restart local v7    # "length":I
    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    .line 353
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 357
    :goto_5
    if-eqz v5, :cond_0

    .line 359
    :try_start_7
    invoke-virtual {v5}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 360
    :catch_2
    move-exception v3

    .line 361
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing GZIPInputStream"

    invoke-static {v8, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 354
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 355
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing ByteArrayOutputStream"

    invoke-static {v8, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 354
    .end local v1    # "buffer":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "gzis":Ljava/util/zip/GZIPInputStream;
    .end local v7    # "length":I
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catch_4
    move-exception v3

    .line 355
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing ByteArrayOutputStream"

    invoke-static {v8, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 360
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v3

    .line 361
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing GZIPInputStream"

    invoke-static {v8, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 353
    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 357
    :goto_7
    if-eqz v4, :cond_2

    .line 359
    :try_start_9
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 362
    :cond_2
    :goto_8
    throw v8

    .line 354
    :catch_6
    move-exception v3

    .line 355
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "error closing ByteArrayOutputStream"

    invoke-static {v9, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 360
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 361
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "error closing GZIPInputStream"

    invoke-static {v9, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "gzis":Ljava/util/zip/GZIPInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "gzis":Ljava/util/zip/GZIPInputStream;
    .restart local v4    # "gzis":Ljava/util/zip/GZIPInputStream;
    goto :goto_6

    :catch_8
    move-exception v8

    goto :goto_2
.end method

.method public static decode([BIII)[B
    .locals 14
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I

    .prologue
    .line 282
    invoke-static/range {p3 .. p3}, Lc8/EZn;->getDecodabet(I)[B

    move-result-object v1

    .line 284
    .local v1, "DECODABET":[B
    mul-int/lit8 v12, p2, 0x3

    div-int/lit8 v6, v12, 0x4

    .line 285
    .local v6, "len34":I
    new-array v8, v6, [B

    .line 286
    .local v8, "outBuff":[B
    const/4 v9, 0x0

    .line 288
    .local v9, "outBuffPosn":I
    const/4 v12, 0x4

    new-array v2, v12, [B

    .line 289
    .local v2, "b4":[B
    const/4 v3, 0x0

    .line 294
    .local v3, "b4Posn":I
    move v5, p1

    .local v5, "i":I
    move v4, v3

    .end local v3    # "b4Posn":I
    .local v4, "b4Posn":I
    :goto_0
    add-int v12, p1, p2

    if-ge v5, v12, :cond_3

    .line 295
    aget-byte v12, p0, v5

    and-int/lit8 v12, v12, 0x7f

    int-to-byte v10, v12

    .line 296
    .local v10, "sbiCrop":B
    aget-byte v11, v1, v10

    .line 298
    .local v11, "sbiDecode":B
    const/4 v12, -0x5

    if-lt v11, v12, :cond_0

    .line 300
    const/4 v12, -0x1

    if-lt v11, v12, :cond_1

    .line 301
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    aput-byte v10, v2, v4

    .line 302
    const/4 v12, 0x3

    if-le v3, v12, :cond_2

    .line 303
    const/4 v12, 0x0

    move/from16 v0, p3

    invoke-static {v2, v12, v8, v9, v0}, Lc8/EZn;->decode4to3([BI[BII)I

    move-result v12

    add-int/2addr v9, v12

    .line 304
    const/4 v3, 0x0

    .line 306
    const/16 v12, 0x3d

    if-ne v10, v12, :cond_2

    .line 317
    .end local v10    # "sbiCrop":B
    .end local v11    # "sbiDecode":B
    :goto_1
    new-array v7, v9, [B

    .line 318
    .local v7, "out":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v12, v7, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    .end local v7    # "out":[B
    :goto_2
    return-object v7

    .line 311
    .end local v3    # "b4Posn":I
    .restart local v4    # "b4Posn":I
    .restart local v10    # "sbiCrop":B
    .restart local v11    # "sbiDecode":B
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bad Base64 input character at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-byte v13, p0, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "(decimal)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lc8/Oao;->warn(Ljava/lang/String;)I

    .line 313
    const/4 v7, 0x0

    move v3, v4

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    goto :goto_2

    .end local v3    # "b4Posn":I
    .restart local v4    # "b4Posn":I
    :cond_1
    move v3, v4

    .line 294
    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3    # "b4Posn":I
    .restart local v4    # "b4Posn":I
    goto :goto_0

    .end local v10    # "sbiCrop":B
    .end local v11    # "sbiDecode":B
    :cond_3
    move v3, v4

    .end local v4    # "b4Posn":I
    .restart local v3    # "b4Posn":I
    goto :goto_1
.end method

.method protected static decode4to3([BI[BII)I
    .locals 5
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "destination"    # [B
    .param p3, "destOffset"    # I
    .param p4, "options"    # I

    .prologue
    const/16 v4, 0x3d

    .line 246
    invoke-static {p4}, Lc8/EZn;->getDecodabet(I)[B

    move-result-object v0

    .line 248
    .local v0, "DECODABET":[B
    add-int/lit8 v3, p1, 0x2

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_0

    .line 249
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int v2, v3, v4

    .line 251
    .local v2, "outBuff":I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 252
    const/4 v3, 0x1

    .line 278
    .end local v2    # "outBuff":I
    :goto_0
    return v3

    .line 254
    :cond_0
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_1

    .line 255
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int v2, v3, v4

    .line 258
    .restart local v2    # "outBuff":I
    ushr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 259
    add-int/lit8 v3, p3, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 260
    const/4 v3, 0x2

    goto :goto_0

    .line 264
    .end local v2    # "outBuff":I
    :cond_1
    :try_start_0
    aget-byte v3, p0, p1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x12

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    or-int v2, v3, v4

    .line 267
    .restart local v2    # "outBuff":I
    shr-int/lit8 v3, v2, 0x10

    int-to-byte v3, v3

    aput-byte v3, p2, p3

    .line 268
    add-int/lit8 v3, p3, 0x1

    shr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    .line 269
    add-int/lit8 v3, p3, 0x2

    int-to-byte v4, v2

    aput-byte v4, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v3, 0x3

    goto :goto_0

    .line 272
    .end local v2    # "outBuff":I
    :catch_0
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "error decoding bytes at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p0, p1

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    aget-byte v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    const/4 v3, -0x1

    goto/16 :goto_0
.end method

.method public static decodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;

    .prologue
    .line 529
    invoke-static {p0}, Lc8/EZn;->decodeFromFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 530
    .local v0, "decoded":[B
    const/4 v2, 0x0

    .line 532
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 537
    if-eqz v3, :cond_2

    .line 539
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 544
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 540
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error closing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 542
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 535
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error decoding from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 537
    if-eqz v2, :cond_0

    .line 539
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 540
    :catch_2
    move-exception v1

    .line 541
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error closing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 537
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 539
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 542
    :cond_1
    :goto_3
    throw v4

    .line 540
    :catch_3
    move-exception v1

    .line 541
    .restart local v1    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error closing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 537
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 534
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method

.method public static decodeFromFile(Ljava/lang/String;)[B
    .locals 12
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 443
    const/4 v3, 0x0

    .line 444
    .local v3, "decodedData":[B
    const/4 v0, 0x0

    .line 446
    .local v0, "bis":Lc8/CZn;
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 450
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "File is too big for this convenience method ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes)."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/Oao;->warn(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    const/4 v8, 0x0

    .line 467
    if-eqz v0, :cond_0

    .line 469
    :try_start_1
    invoke-virtual {v0}, Lc8/CZn;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 476
    .end local v5    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v8

    .line 470
    .restart local v5    # "file":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 471
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "error closing Base64InputStream"

    invoke-static {v9, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 453
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    new-array v2, v8, [B

    .line 455
    .local v2, "buffer":[B
    new-instance v1, Lc8/CZn;

    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v9, 0x0

    invoke-direct {v1, v8, v9}, Lc8/CZn;-><init>(Ljava/io/InputStream;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 457
    .end local v0    # "bis":Lc8/CZn;
    .local v1, "bis":Lc8/CZn;
    const/4 v6, 0x0

    .line 458
    .local v6, "length":I
    :goto_1
    const/16 v8, 0x1000

    :try_start_3
    invoke-virtual {v1, v2, v6, v8}, Lc8/CZn;->read([BII)I

    move-result v7

    .local v7, "numBytes":I
    if-ltz v7, :cond_2

    .line 459
    add-int/2addr v6, v7

    goto :goto_1

    .line 462
    :cond_2
    new-array v3, v6, [B

    .line 463
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v2, v8, v3, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 467
    if-eqz v1, :cond_5

    .line 469
    :try_start_4
    invoke-virtual {v1}, Lc8/CZn;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .end local v2    # "buffer":[B
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    .restart local v0    # "bis":Lc8/CZn;
    :cond_3
    :goto_2
    move-object v8, v3

    .line 476
    goto :goto_0

    .line 470
    .end local v0    # "bis":Lc8/CZn;
    .restart local v1    # "bis":Lc8/CZn;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    .restart local v7    # "numBytes":I
    :catch_1
    move-exception v4

    .line 471
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing Base64InputStream"

    invoke-static {v8, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 472
    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    goto :goto_2

    .line 464
    .end local v2    # "buffer":[B
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "length":I
    .end local v7    # "numBytes":I
    :catch_2
    move-exception v4

    .line 465
    .local v4, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error decoding from file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 467
    if-eqz v0, :cond_3

    .line 469
    :try_start_6
    invoke-virtual {v0}, Lc8/CZn;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 470
    :catch_3
    move-exception v4

    .line 471
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing Base64InputStream"

    invoke-static {v8, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 467
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_4

    .line 469
    :try_start_7
    invoke-virtual {v0}, Lc8/CZn;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 472
    :cond_4
    :goto_5
    throw v8

    .line 470
    :catch_4
    move-exception v4

    .line 471
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "error closing Base64InputStream"

    invoke-static {v9, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 467
    .end local v0    # "bis":Lc8/CZn;
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "bis":Lc8/CZn;
    .restart local v2    # "buffer":[B
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "length":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    goto :goto_4

    .line 464
    .end local v0    # "bis":Lc8/CZn;
    .restart local v1    # "bis":Lc8/CZn;
    :catch_5
    move-exception v4

    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    goto :goto_3

    .end local v0    # "bis":Lc8/CZn;
    .restart local v1    # "bis":Lc8/CZn;
    .restart local v7    # "numBytes":I
    :cond_5
    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    goto :goto_2
.end method

.method public static decodeToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "dataToDecode"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 421
    const/4 v0, 0x0

    .line 423
    .local v0, "bos":Lc8/DZn;
    :try_start_0
    new-instance v1, Lc8/DZn;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lc8/DZn;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v0    # "bos":Lc8/DZn;
    .local v1, "bos":Lc8/DZn;
    :try_start_1
    const-string/jumbo v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Lc8/DZn;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 425
    const/4 v3, 0x1

    .line 430
    .local v3, "success":Z
    if-eqz v1, :cond_2

    .line 432
    :try_start_2
    invoke-virtual {v1}, Lc8/DZn;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 439
    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    :cond_0
    :goto_0
    return v3

    .line 433
    .end local v0    # "bos":Lc8/DZn;
    .restart local v1    # "bos":Lc8/DZn;
    :catch_0
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "error closing Base64OutputStream"

    invoke-static {v4, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 435
    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_0

    .line 426
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "success":Z
    :catch_1
    move-exception v2

    .line 427
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error decoding to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    const/4 v3, 0x0

    .line 430
    .restart local v3    # "success":Z
    if-eqz v0, :cond_0

    .line 432
    :try_start_4
    invoke-virtual {v0}, Lc8/DZn;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 433
    :catch_2
    move-exception v2

    .line 434
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "error closing Base64OutputStream"

    invoke-static {v4, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 430
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "success":Z
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 432
    :try_start_5
    invoke-virtual {v0}, Lc8/DZn;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 435
    :cond_1
    :goto_3
    throw v4

    .line 433
    :catch_3
    move-exception v2

    .line 434
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "error closing Base64OutputStream"

    invoke-static {v5, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 430
    .end local v0    # "bos":Lc8/DZn;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bos":Lc8/DZn;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_2

    .line 426
    .end local v0    # "bos":Lc8/DZn;
    .restart local v1    # "bos":Lc8/DZn;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_1

    .end local v0    # "bos":Lc8/DZn;
    .restart local v1    # "bos":Lc8/DZn;
    .restart local v3    # "success":Z
    :cond_2
    move-object v0, v1

    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_0
.end method

.method public static decodeToObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "encodedObject"    # Ljava/lang/String;

    .prologue
    .line 372
    invoke-static {p0}, Lc8/EZn;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 374
    .local v2, "objBytes":[B
    const/4 v1, 0x0

    .line 375
    .local v1, "obj":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 377
    .local v3, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v4, Ljava/io/ObjectInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 378
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 384
    if-eqz v4, :cond_2

    .line 386
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v4

    .line 393
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    :cond_0
    :goto_0
    return-object v1

    .line 387
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "error closing ObjectInputStream"

    invoke-static {v5, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v3, v4

    .line 389
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 380
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string/jumbo v5, "error decoding object"

    invoke-static {v5, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 384
    if-eqz v3, :cond_0

    .line 386
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 387
    :catch_2
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "error closing ObjectInputStream"

    invoke-static {v5, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_2
    :try_start_5
    const-string/jumbo v5, "error decoding object"

    invoke-static {v5, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 384
    if-eqz v3, :cond_0

    .line 386
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_0

    .line 387
    :catch_4
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "error closing ObjectInputStream"

    invoke-static {v5, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v3, :cond_1

    .line 386
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 389
    :cond_1
    :goto_4
    throw v5

    .line 387
    :catch_5
    move-exception v0

    .line 388
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "error closing ObjectInputStream"

    invoke-static {v6, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 384
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_3

    .line 381
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 379
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_7
    move-exception v0

    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1

    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :cond_2
    move-object v3, v4

    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B

    .prologue
    const/4 v1, 0x0

    .line 163
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lc8/EZn;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static encode3to4([BII[BII)[B
    .locals 6
    .param p0, "source"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "numSigBytes"    # I
    .param p3, "destination"    # [B
    .param p4, "destOffset"    # I
    .param p5, "options"    # I

    .prologue
    const/16 v5, 0x3d

    const/4 v2, 0x0

    .line 88
    invoke-static {p5}, Lc8/EZn;->getAlphabet(I)[B

    move-result-object v0

    .line 90
    .local v0, "ALPHABET":[B
    if-lez p2, :cond_1

    aget-byte v3, p0, p1

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x8

    move v4, v3

    :goto_0
    const/4 v3, 0x1

    if-le p2, v3, :cond_2

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, p0, v3

    shl-int/lit8 v3, v3, 0x18

    ushr-int/lit8 v3, v3, 0x10

    :goto_1
    or-int/2addr v3, v4

    const/4 v4, 0x2

    if-le p2, v4, :cond_0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    shl-int/lit8 v2, v2, 0x18

    ushr-int/lit8 v2, v2, 0x18

    :cond_0
    or-int v1, v3, v2

    .line 93
    .local v1, "inBuff":I
    packed-switch p2, :pswitch_data_0

    .line 114
    :goto_2
    return-object p3

    .end local v1    # "inBuff":I
    :cond_1
    move v4, v2

    .line 90
    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    .line 95
    .restart local v1    # "inBuff":I
    :pswitch_0
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 96
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 97
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 98
    add-int/lit8 v2, p4, 0x3

    and-int/lit8 v3, v1, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    goto :goto_2

    .line 101
    :pswitch_1
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 102
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 103
    add-int/lit8 v2, p4, 0x2

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 104
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 107
    :pswitch_2
    ushr-int/lit8 v2, v1, 0x12

    aget-byte v2, v0, v2

    aput-byte v2, p3, p4

    .line 108
    add-int/lit8 v2, p4, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v0, v3

    aput-byte v3, p3, v2

    .line 109
    add-int/lit8 v2, p4, 0x2

    aput-byte v5, p3, v2

    .line 110
    add-int/lit8 v2, p4, 0x3

    aput-byte v5, p3, v2

    goto :goto_2

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static encode3to4([B[BII)[B
    .locals 6
    .param p0, "b4"    # [B
    .param p1, "threeBytes"    # [B
    .param p2, "numSigBytes"    # I
    .param p3, "options"    # I

    .prologue
    const/4 v1, 0x0

    .line 83
    move-object v0, p1

    move v2, p2

    move-object v3, p0

    move v4, v1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lc8/EZn;->encode3to4([BII[BII)[B

    .line 84
    return-object p0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B

    .prologue
    const/4 v1, 0x0

    .line 167
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lc8/EZn;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BI)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # [B
    .param p1, "options"    # I

    .prologue
    .line 171
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lc8/EZn;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BII)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/EZn;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBytes([BIII)Ljava/lang/String;
    .locals 18
    .param p0, "source"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "options"    # I

    .prologue
    .line 179
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 180
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 181
    .local v9, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x0

    .line 183
    .local v12, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_0
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Lc8/DZn;

    or-int/lit8 v4, p3, 0x1

    invoke-direct {v3, v9, v4}, Lc8/DZn;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v13, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .local v13, "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v13, v0, v1, v2}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 186
    invoke-virtual {v13}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 187
    const/4 v12, 0x0

    .line 188
    .end local v13    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :try_start_2
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string/jumbo v4, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .local v17, "str":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 198
    :try_start_3
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 203
    :cond_0
    :goto_0
    :try_start_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 242
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .end local v17    # "str":Ljava/lang/String;
    :goto_1
    return-object v17

    .line 199
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "str":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 200
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "error closing GZIPOutputStream"

    invoke-static {v3, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 204
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 205
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "error closing ByteArrayOutputStream"

    invoke-static {v3, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 191
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v17    # "str":Ljava/lang/String;
    :catch_2
    move-exception v3

    :goto_2
    :try_start_5
    new-instance v17, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 196
    if-eqz v12, :cond_1

    .line 198
    :try_start_6
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 203
    :cond_1
    :goto_3
    :try_start_7
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 204
    :catch_3
    move-exception v7

    .line 205
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "error closing ByteArrayOutputStream"

    invoke-static {v3, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 199
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 200
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "error closing GZIPOutputStream"

    invoke-static {v3, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 192
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v7

    .line 193
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string/jumbo v3, "error encoding byte array"

    invoke-static {v3, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 194
    const/16 v17, 0x0

    .line 196
    if-eqz v12, :cond_2

    .line 198
    :try_start_9
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 203
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    :goto_5
    :try_start_a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_1

    .line 204
    :catch_6
    move-exception v7

    .line 205
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "error closing ByteArrayOutputStream"

    invoke-static {v3, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 199
    .local v7, "e":Ljava/io/IOException;
    :catch_7
    move-exception v7

    .line 200
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "error closing GZIPOutputStream"

    invoke-static {v3, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 196
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v12, :cond_3

    .line 198
    :try_start_b
    invoke-virtual {v12}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8

    .line 203
    :cond_3
    :goto_7
    :try_start_c
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_9

    .line 206
    :goto_8
    throw v3

    .line 199
    :catch_8
    move-exception v7

    .line 200
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "error closing GZIPOutputStream"

    invoke-static {v4, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 204
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v7

    .line 205
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "error closing ByteArrayOutputStream"

    invoke-static {v4, v7}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 212
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :cond_4
    and-int/lit8 v3, p3, 0x8

    if-nez v3, :cond_6

    const/4 v10, 0x1

    .line 214
    .local v10, "breakLines":Z
    :goto_9
    shl-int/lit8 v3, p2, 0x2

    div-int/lit8 v15, v3, 0x3

    .line 215
    .local v15, "len43":I
    rem-int/lit8 v3, p2, 0x3

    if-lez v3, :cond_7

    const/4 v3, 0x4

    :goto_a
    add-int v4, v15, v3

    if-eqz v10, :cond_8

    div-int/lit8 v3, v15, 0x4c

    :goto_b
    add-int/2addr v3, v4

    new-array v6, v3, [B

    .line 217
    .local v6, "outBuff":[B
    const/4 v11, 0x0

    .line 218
    .local v11, "d":I
    const/4 v7, 0x0

    .line 219
    .local v7, "e":I
    add-int/lit8 v14, p2, -0x2

    .line 220
    .local v14, "len2":I
    const/16 v16, 0x0

    .line 221
    .local v16, "lineLength":I
    :goto_c
    if-ge v11, v14, :cond_9

    .line 222
    add-int v4, v11, p1

    const/4 v5, 0x3

    move-object/from16 v3, p0

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lc8/EZn;->encode3to4([BII[BII)[B

    .line 224
    add-int/lit8 v16, v16, 0x4

    .line 225
    if-eqz v10, :cond_5

    const/16 v3, 0x4c

    move/from16 v0, v16

    if-ne v0, v3, :cond_5

    .line 226
    add-int/lit8 v3, v7, 0x4

    const/16 v4, 0xa

    aput-byte v4, v6, v3

    .line 227
    add-int/lit8 v7, v7, 0x1

    .line 228
    const/16 v16, 0x0

    .line 230
    :cond_5
    add-int/lit8 v11, v11, 0x3

    .line 221
    add-int/lit8 v7, v7, 0x4

    goto :goto_c

    .line 212
    .end local v6    # "outBuff":[B
    .end local v7    # "e":I
    .end local v10    # "breakLines":Z
    .end local v11    # "d":I
    .end local v14    # "len2":I
    .end local v15    # "len43":I
    .end local v16    # "lineLength":I
    :cond_6
    const/4 v10, 0x0

    goto :goto_9

    .line 215
    .restart local v10    # "breakLines":Z
    .restart local v15    # "len43":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_a

    :cond_8
    const/4 v3, 0x0

    goto :goto_b

    .line 233
    .restart local v6    # "outBuff":[B
    .restart local v7    # "e":I
    .restart local v11    # "d":I
    .restart local v14    # "len2":I
    .restart local v16    # "lineLength":I
    :cond_9
    move/from16 v0, p2

    if-ge v11, v0, :cond_a

    .line 234
    add-int v4, v11, p1

    sub-int v5, p2, v11

    move-object/from16 v3, p0

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lc8/EZn;->encode3to4([BII[BII)[B

    .line 235
    add-int/lit8 v7, v7, 0x4

    .line 239
    :cond_a
    :try_start_d
    new-instance v17, Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "UTF-8"

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v3, v7, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_a

    goto/16 :goto_1

    .line 242
    :catch_a
    move-exception v3

    new-instance v17, Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v3, v7}, Ljava/lang/String;-><init>([BII)V

    goto/16 :goto_1

    .line 196
    .end local v6    # "outBuff":[B
    .end local v7    # "e":I
    .end local v10    # "breakLines":Z
    .end local v11    # "d":I
    .end local v14    # "len2":I
    .end local v15    # "len43":I
    .end local v16    # "lineLength":I
    .restart local v9    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_6

    .line 192
    .end local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_b
    move-exception v7

    move-object v12, v13

    .end local v13    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_4

    .line 191
    .end local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v13    # "gzos":Ljava/util/zip/GZIPOutputStream;
    :catch_c
    move-exception v3

    move-object v12, v13

    .end local v13    # "gzos":Ljava/util/zip/GZIPOutputStream;
    .restart local v12    # "gzos":Ljava/util/zip/GZIPOutputStream;
    goto/16 :goto_2
.end method

.method public static encodeFileToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "infile"    # Ljava/lang/String;
    .param p1, "outfile"    # Ljava/lang/String;

    .prologue
    .line 511
    invoke-static {p0}, Lc8/EZn;->encodeFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "encoded":Ljava/lang/String;
    const/4 v2, 0x0

    .line 514
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    const-string/jumbo v4, "US-ASCII"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 519
    if-eqz v3, :cond_2

    .line 521
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 526
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 522
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error closing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 524
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 516
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 517
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error encoding from file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 519
    if-eqz v2, :cond_0

    .line 521
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 522
    :catch_2
    move-exception v0

    .line 523
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error closing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_1

    .line 521
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 524
    :cond_1
    :goto_3
    throw v4

    .line 522
    :catch_3
    move-exception v0

    .line 523
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "error closing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 519
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 516
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "out":Ljava/io/OutputStream;
    :cond_2
    move-object v2, v3

    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    goto/16 :goto_0
.end method

.method public static encodeFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 480
    const/4 v4, 0x0

    .line 481
    .local v4, "encodedData":Ljava/lang/String;
    const/4 v0, 0x0

    .line 483
    .local v0, "bis":Lc8/CZn;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 485
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3ff6666666666666L    # 1.4

    mul-double/2addr v10, v12

    double-to-int v9, v10

    const/16 v10, 0x28

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    new-array v2, v9, [B

    .line 487
    .local v2, "buffer":[B
    new-instance v1, Lc8/CZn;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v10, 0x1

    invoke-direct {v1, v9, v10}, Lc8/CZn;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    .end local v0    # "bis":Lc8/CZn;
    .local v1, "bis":Lc8/CZn;
    const/4 v7, 0x0

    .line 490
    .local v7, "length":I
    :goto_0
    const/16 v9, 0x1000

    :try_start_1
    invoke-virtual {v1, v2, v7, v9}, Lc8/CZn;->read([BII)I

    move-result v8

    .local v8, "numBytes":I
    if-ltz v8, :cond_0

    .line 491
    add-int/2addr v7, v8

    goto :goto_0

    .line 494
    :cond_0
    new-instance v5, Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "UTF-8"

    invoke-direct {v5, v2, v9, v7, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 498
    .end local v4    # "encodedData":Ljava/lang/String;
    .local v5, "encodedData":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 500
    :try_start_2
    invoke-virtual {v1}, Lc8/CZn;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    move-object v4, v5

    .line 507
    .end local v2    # "buffer":[B
    .end local v5    # "encodedData":Ljava/lang/String;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "length":I
    .end local v8    # "numBytes":I
    .restart local v4    # "encodedData":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v4

    .line 501
    .end local v0    # "bis":Lc8/CZn;
    .end local v4    # "encodedData":Ljava/lang/String;
    .restart local v1    # "bis":Lc8/CZn;
    .restart local v2    # "buffer":[B
    .restart local v5    # "encodedData":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "length":I
    .restart local v8    # "numBytes":I
    :catch_0
    move-exception v3

    .line 502
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "error closing Base64InputStream"

    invoke-static {v9, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    move-object v4, v5

    .line 503
    .end local v5    # "encodedData":Ljava/lang/String;
    .restart local v4    # "encodedData":Ljava/lang/String;
    goto :goto_1

    .line 495
    .end local v2    # "buffer":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "length":I
    .end local v8    # "numBytes":I
    :catch_1
    move-exception v3

    .line 496
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error encoding from file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 498
    if-eqz v0, :cond_1

    .line 500
    :try_start_4
    invoke-virtual {v0}, Lc8/CZn;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 501
    :catch_2
    move-exception v3

    .line 502
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "error closing Base64InputStream"

    invoke-static {v9, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 498
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v0, :cond_2

    .line 500
    :try_start_5
    invoke-virtual {v0}, Lc8/CZn;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 503
    :cond_2
    :goto_4
    throw v9

    .line 501
    :catch_3
    move-exception v3

    .line 502
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v10, "error closing Base64InputStream"

    invoke-static {v10, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 498
    .end local v0    # "bis":Lc8/CZn;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bis":Lc8/CZn;
    .restart local v2    # "buffer":[B
    .restart local v6    # "file":Ljava/io/File;
    .restart local v7    # "length":I
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    goto :goto_3

    .line 495
    .end local v0    # "bis":Lc8/CZn;
    .restart local v1    # "bis":Lc8/CZn;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    goto :goto_2

    .end local v0    # "bis":Lc8/CZn;
    .end local v4    # "encodedData":Ljava/lang/String;
    .restart local v1    # "bis":Lc8/CZn;
    .restart local v5    # "encodedData":Ljava/lang/String;
    .restart local v8    # "numBytes":I
    :cond_3
    move-object v0, v1

    .end local v1    # "bis":Lc8/CZn;
    .restart local v0    # "bis":Lc8/CZn;
    move-object v4, v5

    .end local v5    # "encodedData":Ljava/lang/String;
    .restart local v4    # "encodedData":Ljava/lang/String;
    goto :goto_1
.end method

.method public static encodeObject(Ljava/io/Serializable;)Ljava/lang/String;
    .locals 1
    .param p0, "serializableObject"    # Ljava/io/Serializable;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lc8/EZn;->encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeObject(Ljava/io/Serializable;I)Ljava/lang/String;
    .locals 9
    .param p0, "serializableObject"    # Ljava/io/Serializable;
    .param p1, "options"    # I

    .prologue
    .line 122
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 123
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 124
    .local v0, "b64os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 126
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v1, Lc8/DZn;

    or-int/lit8 v7, p1, 0x1

    invoke-direct {v1, v2, v7}, Lc8/DZn;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .local v1, "b64os":Ljava/io/OutputStream;
    and-int/lit8 v7, p1, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    :try_start_1
    new-instance v7, Ljava/io/ObjectOutputStream;

    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v7, v8}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v7

    .line 130
    :goto_0
    invoke-virtual {v5, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 131
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .local v6, "str":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 142
    :try_start_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 147
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 149
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 154
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_3
    move-object v0, v1

    .line 157
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    :goto_4
    return-object v6

    .line 128
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    :cond_2
    :try_start_5
    new-instance v7, Ljava/io/ObjectOutputStream;

    invoke-direct {v7, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v5, v7

    goto :goto_0

    .line 143
    .restart local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing ObjectOutputStream"

    invoke-static {v7, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 151
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing Base64OutputStream"

    invoke-static {v7, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 156
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing ByteArrayOutputStream"

    invoke-static {v7, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 134
    .end local v1    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    :catch_3
    move-exception v7

    :goto_5
    :try_start_6
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 140
    .local v3, "e":Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 142
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 147
    .end local v3    # "e":Ljava/lang/String;
    :cond_3
    :goto_6
    if-eqz v0, :cond_4

    .line 149
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 154
    :cond_4
    :goto_7
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_8
    move-object v6, v3

    .line 157
    goto :goto_4

    .line 143
    .restart local v3    # "e":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 144
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing ObjectOutputStream"

    .end local v3    # "e":Ljava/lang/String;
    invoke-static {v7, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 150
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v4

    .line 151
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing Base64OutputStream"

    invoke-static {v7, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 155
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 156
    .restart local v4    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing ByteArrayOutputStream"

    invoke-static {v7, v4}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 136
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v3

    .line 137
    .local v3, "e":Ljava/io/IOException;
    :goto_9
    :try_start_a
    const-string/jumbo v7, "error encoding object"

    invoke-static {v7, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 138
    const/4 v6, 0x0

    .line 140
    if-eqz v5, :cond_5

    .line 142
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 147
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5
    :goto_a
    if-eqz v0, :cond_6

    .line 149
    :try_start_c
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 154
    :cond_6
    :goto_b
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto :goto_4

    .line 155
    :catch_8
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing ByteArrayOutputStream"

    invoke-static {v7, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 143
    .local v3, "e":Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 144
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing ObjectOutputStream"

    invoke-static {v7, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v3

    .line 151
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v7, "error closing Base64OutputStream"

    invoke-static {v7, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 140
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_c
    if-eqz v5, :cond_7

    .line 142
    :try_start_e
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    .line 147
    :cond_7
    :goto_d
    if-eqz v0, :cond_8

    .line 149
    :try_start_f
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    .line 154
    :cond_8
    :goto_e
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    .line 157
    :goto_f
    throw v7

    .line 143
    :catch_b
    move-exception v3

    .line 144
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing ObjectOutputStream"

    invoke-static {v8, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 150
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v3

    .line 151
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing Base64OutputStream"

    invoke-static {v8, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 155
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_d
    move-exception v3

    .line 156
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v8, "error closing ByteArrayOutputStream"

    invoke-static {v8, v3}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 140
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    goto :goto_c

    .line 136
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    :catch_e
    move-exception v3

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    goto :goto_9

    .line 134
    .end local v0    # "b64os":Ljava/io/OutputStream;
    .restart local v1    # "b64os":Ljava/io/OutputStream;
    :catch_f
    move-exception v7

    move-object v0, v1

    .end local v1    # "b64os":Ljava/io/OutputStream;
    .restart local v0    # "b64os":Ljava/io/OutputStream;
    goto/16 :goto_5
.end method

.method public static encodeToFile([BLjava/lang/String;)Z
    .locals 6
    .param p0, "dataToEncode"    # [B
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v0, 0x0

    .line 400
    .local v0, "bos":Lc8/DZn;
    :try_start_0
    new-instance v1, Lc8/DZn;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lc8/DZn;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    .end local v0    # "bos":Lc8/DZn;
    .local v1, "bos":Lc8/DZn;
    :try_start_1
    invoke-virtual {v1, p0}, Lc8/DZn;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    const/4 v3, 0x1

    .line 407
    .local v3, "success":Z
    if-eqz v1, :cond_2

    .line 409
    :try_start_2
    invoke-virtual {v1}, Lc8/DZn;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 416
    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    :cond_0
    :goto_0
    return v3

    .line 410
    .end local v0    # "bos":Lc8/DZn;
    .restart local v1    # "bos":Lc8/DZn;
    :catch_0
    move-exception v2

    .line 411
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "error closing Base64OutputStream"

    invoke-static {v4, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 412
    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_0

    .line 403
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "success":Z
    :catch_1
    move-exception v2

    .line 404
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error encoding file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 405
    const/4 v3, 0x0

    .line 407
    .restart local v3    # "success":Z
    if-eqz v0, :cond_0

    .line 409
    :try_start_4
    invoke-virtual {v0}, Lc8/DZn;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 410
    :catch_2
    move-exception v2

    .line 411
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "error closing Base64OutputStream"

    invoke-static {v4, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 407
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "success":Z
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v0, :cond_1

    .line 409
    :try_start_5
    invoke-virtual {v0}, Lc8/DZn;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 412
    :cond_1
    :goto_3
    throw v4

    .line 410
    :catch_3
    move-exception v2

    .line 411
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "error closing Base64OutputStream"

    invoke-static {v5, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 407
    .end local v0    # "bos":Lc8/DZn;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bos":Lc8/DZn;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_2

    .line 403
    .end local v0    # "bos":Lc8/DZn;
    .restart local v1    # "bos":Lc8/DZn;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_1

    .end local v0    # "bos":Lc8/DZn;
    .restart local v1    # "bos":Lc8/DZn;
    .restart local v3    # "success":Z
    :cond_2
    move-object v0, v1

    .end local v1    # "bos":Lc8/DZn;
    .restart local v0    # "bos":Lc8/DZn;
    goto :goto_0
.end method

.method protected static final getAlphabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 61
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 62
    sget-object v0, Lc8/EZn;->_URL_SAFE_ALPHABET:[B

    .line 68
    :goto_0
    return-object v0

    .line 64
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 65
    sget-object v0, Lc8/EZn;->_ORDERED_ALPHABET:[B

    goto :goto_0

    .line 68
    :cond_1
    sget-object v0, Lc8/EZn;->_STANDARD_ALPHABET:[B

    goto :goto_0
.end method

.method protected static final getDecodabet(I)[B
    .locals 2
    .param p0, "options"    # I

    .prologue
    .line 72
    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 73
    sget-object v0, Lc8/EZn;->_URL_SAFE_DECODABET:[B

    .line 79
    :goto_0
    return-object v0

    .line 75
    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 76
    sget-object v0, Lc8/EZn;->_ORDERED_DECODABET:[B

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lc8/EZn;->_STANDARD_DECODABET:[B

    goto :goto_0
.end method
