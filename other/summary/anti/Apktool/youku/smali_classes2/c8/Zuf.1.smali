.class public Lc8/Zuf;
.super Ljava/lang/Object;
.source "MimeTypeCheckUtil.java"


# static fields
.field public static final APNG_ACTL_BYTES:[B

.field public static final APNG_ACTL_OFFSET:I = 0x25

.field private static final BMP_HEADER:[B

.field public static final BMP_HEADER_LENGTH:I = 0x2

.field private static final EXIF_MAGIC_NUMBER:I = 0xffd8

.field private static final GIF_HEADER_87A:[B

.field private static final GIF_HEADER_89A:[B

.field public static final GIF_HEADER_LENGTH:I = 0x6

.field public static final JPEG_HEADER_LENGTH:I = 0x2

.field public static final PNG_HEADER:[B

.field public static final PNG_HEADER_LENGTH:I = 0x29

.field public static final WEBP_A_HEADER_LENGTH:I = 0x15

.field public static final WEBP_HEADER_LENGTH:I = 0x15

.field private static final WEBP_NAME_BYTES:[B

.field private static final WEBP_RIFF_BYTES:[B

.field private static final WEBP_VP8X_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Zuf;->PNG_HEADER:[B

    .line 18
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lc8/Zuf;->APNG_ACTL_BYTES:[B

    .line 21
    const-string/jumbo v0, "RIFF"

    invoke-static {v0}, Lc8/Zuf;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lc8/Zuf;->WEBP_RIFF_BYTES:[B

    .line 22
    const-string/jumbo v0, "WEBP"

    invoke-static {v0}, Lc8/Zuf;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lc8/Zuf;->WEBP_NAME_BYTES:[B

    .line 23
    const-string/jumbo v0, "VP8X"

    invoke-static {v0}, Lc8/Zuf;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lc8/Zuf;->WEBP_VP8X_BYTES:[B

    .line 24
    const-string/jumbo v0, "GIF87a"

    invoke-static {v0}, Lc8/Zuf;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lc8/Zuf;->GIF_HEADER_87A:[B

    .line 25
    const-string/jumbo v0, "GIF89a"

    invoke-static {v0}, Lc8/Zuf;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lc8/Zuf;->GIF_HEADER_89A:[B

    .line 26
    const-string/jumbo v0, "BM"

    invoke-static {v0}, Lc8/Zuf;->asciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lc8/Zuf;->BMP_HEADER:[B

    return-void

    .line 17
    .line 18
    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x61t
        0x63t
        0x54t
        0x4ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asciiBytes(Ljava/lang/String;)[B
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 94
    :try_start_0
    const-string/jumbo v1, "ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    return-object v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Pexode"

    const-string/jumbo v2, "check image format asciiBytes error=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBmpHeader([B)Z
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 71
    if-eqz p0, :cond_0

    array-length v1, p0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    sget-object v1, Lc8/Zuf;->BMP_HEADER:[B

    .line 72
    invoke-static {p0, v0, v1}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGifHeader([B)Z
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 51
    if-eqz p0, :cond_1

    array-length v1, p0

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    sget-object v1, Lc8/Zuf;->GIF_HEADER_87A:[B

    .line 52
    invoke-static {p0, v0, v1}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lc8/Zuf;->GIF_HEADER_89A:[B

    invoke-static {p0, v0, v1}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isJpegHeader([B)Z
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    if-eqz p0, :cond_0

    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget-byte v2, p0, v1

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    const v3, 0xffd8

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static isPngAHeader([B)Z
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 64
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x29

    if-lt v1, v2, :cond_0

    sget-object v1, Lc8/Zuf;->PNG_HEADER:[B

    .line 65
    invoke-static {p0, v0, v1}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    sget-object v2, Lc8/Zuf;->APNG_ACTL_BYTES:[B

    .line 66
    invoke-static {p0, v1, v2}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPngHeader([B)Z
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_0

    array-length v1, p0

    const/16 v2, 0x29

    if-lt v1, v2, :cond_0

    sget-object v1, Lc8/Zuf;->PNG_HEADER:[B

    .line 58
    invoke-static {p0, v0, v1}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x25

    sget-object v2, Lc8/Zuf;->APNG_ACTL_BYTES:[B

    .line 59
    invoke-static {p0, v1, v2}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x19

    aget-byte v1, p0, v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isWebPAHeader([B)Z
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 47
    if-eqz p0, :cond_0

    invoke-static {p0}, Lc8/Zuf;->isWebPSimpleHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc8/Zuf;->isWebPAlphaHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWebPAlphaHeader([B)Z
    .locals 2
    .param p0, "buffer"    # [B

    .prologue
    .line 39
    array-length v0, p0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/16 v0, 0xc

    sget-object v1, Lc8/Zuf;->WEBP_VP8X_BYTES:[B

    invoke-static {p0, v0, v1}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWebPHeader([B)Z
    .locals 1
    .param p0, "buffer"    # [B

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-static {p0}, Lc8/Zuf;->isWebPSimpleHeader([B)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc8/Zuf;->isWebPAlphaHeader([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWebPSimpleHeader([B)Z
    .locals 3
    .param p0, "buffer"    # [B

    .prologue
    const/4 v0, 0x0

    .line 35
    array-length v1, p0

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    sget-object v1, Lc8/Zuf;->WEBP_RIFF_BYTES:[B

    invoke-static {p0, v0, v1}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    sget-object v2, Lc8/Zuf;->WEBP_NAME_BYTES:[B

    invoke-static {p0, v1, v2}, Lc8/Zuf;->matchBytePattern([BI[B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static matchBytePattern([BI[B)Z
    .locals 4
    .param p0, "byteArray"    # [B
    .param p1, "offset"    # I
    .param p2, "pattern"    # [B

    .prologue
    const/4 v1, 0x0

    .line 79
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-ltz p1, :cond_0

    array-length v2, p2

    add-int/2addr v2, p1

    array-length v3, p0

    if-le v2, v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 84
    add-int v2, v0, p1

    aget-byte v2, p0, v2

    aget-byte v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
