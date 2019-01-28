.class public Lc8/wuf;
.super Ljava/lang/Object;
.source "EmptyJpegGenerator.java"


# static fields
.field private static final EMPTY_JPEG_PREFIX:[B

.field private static final EMPTY_JPEG_SUFFIX:[B

.field public static final FIXED_JPG_LENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const/16 v0, 0x4c

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    .line 45
    const/16 v0, 0x1cf

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lc8/wuf;->EMPTY_JPEG_SUFFIX:[B

    .line 151
    sget-object v0, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    array-length v0, v0

    sget-object v1, Lc8/wuf;->EMPTY_JPEG_SUFFIX:[B

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    sput v0, Lc8/wuf;->FIXED_JPG_LENGTH:I

    return-void

    .line 19
    .line 45
    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
        -0x25t
        0x0t
        0x43t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x40t
        0x0t
        0x11t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x1t
        0x22t
        0x0t
        0x2t
        0x11t
        0x0t
        0x3t
        0x11t
        0x0t
        -0x1t
        -0x3ct
        0x0t
        0x1ft
        0x0t
        0x0t
        0x1t
        0x5t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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
        -0x1t
        -0x3ct
        0x0t
        -0x4bt
        0x10t
        0x0t
        0x2t
        0x1t
        0x3t
        0x3t
        0x2t
        0x4t
        0x3t
        0x5t
        0x5t
        0x4t
        0x4t
        0x0t
        0x0t
        0x1t
        0x7dt
        0x1t
        0x2t
        0x3t
        0x0t
        0x4t
        0x11t
        0x5t
        0x12t
        0x21t
        0x31t
        0x41t
        0x6t
        0x13t
        0x51t
        0x61t
        0x7t
        0x22t
        0x71t
        0x14t
        0x32t
        -0x7ft
        -0x6ft
        -0x5ft
        0x8t
        0x23t
        0x42t
        -0x4ft
        -0x3ft
        0x15t
        0x52t
        -0x2ft
        -0x10t
        0x24t
        0x33t
        0x62t
        0x72t
        -0x7et
        0x9t
        0xat
        0x16t
        0x17t
        0x18t
        0x19t
        0x1at
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x76t
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        -0x66t
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x56t
        -0x4et
        -0x4dt
        -0x4ct
        -0x4bt
        -0x4at
        -0x49t
        -0x48t
        -0x47t
        -0x46t
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x1ft
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0xft
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
        -0x1t
        -0x3ct
        0x0t
        0x1ft
        0x1t
        0x0t
        0x3t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
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
        -0x1t
        -0x3ct
        0x0t
        -0x4bt
        0x11t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x4t
        0x3t
        0x4t
        0x7t
        0x5t
        0x4t
        0x4t
        0x0t
        0x1t
        0x2t
        0x77t
        0x0t
        0x1t
        0x2t
        0x3t
        0x11t
        0x4t
        0x5t
        0x21t
        0x31t
        0x6t
        0x12t
        0x41t
        0x51t
        0x7t
        0x61t
        0x71t
        0x13t
        0x22t
        0x32t
        -0x7ft
        0x8t
        0x14t
        0x42t
        -0x6ft
        -0x5ft
        -0x4ft
        -0x3ft
        0x9t
        0x23t
        0x33t
        0x52t
        -0x10t
        0x15t
        0x62t
        0x72t
        -0x2ft
        0xat
        0x16t
        0x24t
        0x34t
        -0x1ft
        0x25t
        -0xft
        0x17t
        0x18t
        0x19t
        0x1at
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        -0x7et
        -0x7dt
        -0x7ct
        -0x7bt
        -0x7at
        -0x79t
        -0x78t
        -0x77t
        -0x76t
        -0x6et
        -0x6dt
        -0x6ct
        -0x6bt
        -0x6at
        -0x69t
        -0x68t
        -0x67t
        -0x66t
        -0x5et
        -0x5dt
        -0x5ct
        -0x5bt
        -0x5at
        -0x59t
        -0x58t
        -0x57t
        -0x56t
        -0x4et
        -0x4dt
        -0x4ct
        -0x4bt
        -0x4at
        -0x49t
        -0x48t
        -0x47t
        -0x46t
        -0x3et
        -0x3dt
        -0x3ct
        -0x3bt
        -0x3at
        -0x39t
        -0x38t
        -0x37t
        -0x36t
        -0x2et
        -0x2dt
        -0x2ct
        -0x2bt
        -0x2at
        -0x29t
        -0x28t
        -0x27t
        -0x26t
        -0x1et
        -0x1dt
        -0x1ct
        -0x1bt
        -0x1at
        -0x19t
        -0x18t
        -0x17t
        -0x16t
        -0xet
        -0xdt
        -0xct
        -0xbt
        -0xat
        -0x9t
        -0x8t
        -0x7t
        -0x6t
        -0x1t
        -0x26t
        0x0t
        0xct
        0x3t
        0x1t
        0x0t
        0x2t
        0x11t
        0x3t
        0x11t
        0x0t
        0x3ft
        0x0t
        -0x72t
        -0x76t
        0x28t
        -0x60t
        0xft
        -0x1t
        -0x27t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateBytes(II[B)[B
    .locals 7
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "buffer"    # [B

    .prologue
    const/4 v6, 0x0

    .line 156
    if-eqz p2, :cond_0

    :try_start_0
    array-length v2, p2

    sget v3, Lc8/wuf;->FIXED_JPG_LENGTH:I

    if-ge v2, v3, :cond_1

    .line 157
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    sget v2, Lc8/wuf;->FIXED_JPG_LENGTH:I

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 158
    .local v1, "os":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 159
    shr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 160
    int-to-byte v2, p1

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 162
    int-to-byte v2, p0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 163
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_SUFFIX:[B

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 164
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 176
    .end local v1    # "os":Ljava/io/ByteArrayOutputStream;
    .end local p2    # "buffer":[B
    :goto_0
    return-object p2

    .line 166
    .restart local p2    # "buffer":[B
    :cond_1
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    array-length v5, v5

    invoke-static {v2, v3, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    array-length v2, v2

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 168
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, p1

    aput-byte v3, p2, v2

    .line 169
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    shr-int/lit8 v3, p0, 0x8

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 170
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x3

    int-to-byte v3, p0

    aput-byte v3, p2, v2

    .line 171
    sget-object v2, Lc8/wuf;->EMPTY_JPEG_SUFFIX:[B

    const/4 v3, 0x0

    sget-object v4, Lc8/wuf;->EMPTY_JPEG_PREFIX:[B

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    sget-object v5, Lc8/wuf;->EMPTY_JPEG_SUFFIX:[B

    array-length v5, v5

    invoke-static {v2, v3, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Pexode"

    const-string/jumbo v3, "generate fixed size jpg bytes failed, error=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    const/4 p2, 0x0

    goto :goto_0
.end method
