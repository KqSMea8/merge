.class public Lc8/Yvk;
.super Ljava/lang/Object;
.source "ByteFormat.java"


# static fields
.field private static final HEX:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Yvk;->HEX:[C

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
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final bytesToHexString([B)Ljava/lang/String;
    .locals 5
    .param p0, "bArray"    # [B

    .prologue
    .line 9
    new-instance v2, Ljava/lang/StringBuffer;

    array-length v3, p0

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 11
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 12
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 13
    .local v1, "sTemp":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 14
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    .end local v1    # "sTemp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .locals 9
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x10

    .line 45
    if-nez p0, :cond_1

    .line 46
    const/4 v5, 0x0

    .line 61
    :cond_0
    return-object v5

    .line 49
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 51
    .local v0, "hex":[C
    array-length v7, v0

    div-int/lit8 v3, v7, 0x2

    .line 52
    .local v3, "length":I
    new-array v5, v3, [B

    .line 53
    .local v5, "raw":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 54
    shl-int/lit8 v7, v2, 0x1

    aget-char v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 55
    .local v1, "high":I
    shl-int/lit8 v7, v2, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 56
    .local v4, "low":I
    shl-int/lit8 v7, v1, 0x4

    or-int v6, v7, v4

    .line 57
    .local v6, "value":I
    const/16 v7, 0x7f

    if-le v6, v7, :cond_2

    .line 58
    add-int/lit16 v6, v6, -0x100

    .line 59
    :cond_2
    int-to-byte v7, v6

    aput-byte v7, v5, v2

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
