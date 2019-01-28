.class public Lc8/ief;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 9
    new-array v6, v8, [J

    sput-object v6, Lc8/ief;->sCrcTable:[J

    .line 14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 15
    int-to-long v2, v0

    .line 16
    .local v2, "part":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    .line 17
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    .line 18
    .local v4, "x":J
    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 17
    .end local v4    # "x":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 20
    :cond_1
    sget-object v6, Lc8/ief;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v1    # "j":I
    .end local v2    # "part":J
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertTrue(Z)V
    .locals 1
    .param p0, "condition"    # Z

    .prologue
    .line 25
    if-nez p0, :cond_0

    .line 26
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 28
    :cond_0
    return-void
.end method

.method public static crc64Long(Ljava/lang/String;)J
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 32
    :cond_0
    const-wide/16 v0, 0x0

    .line 34
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lc8/ief;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lc8/ief;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static crc64Long([B)J
    .locals 8
    .param p0, "buffer"    # [B

    .prologue
    .line 38
    const-wide/16 v0, -0x1

    .line 39
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 40
    sget-object v4, Lc8/ief;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 39
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-wide v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    shl-int/lit8 v7, v7, 0x1

    new-array v6, v7, [B

    .line 47
    .local v6, "result":[B
    const/4 v4, 0x0

    .line 48
    .local v4, "output":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v5, v4

    .end local v4    # "output":I
    .local v5, "output":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 49
    .local v1, "ch":C
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "output":I
    .restart local v4    # "output":I
    int-to-byte v7, v1

    aput-byte v7, v6, v5

    .line 50
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "output":I
    .restart local v5    # "output":I
    shr-int/lit8 v7, v1, 0x8

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "ch":C
    :cond_0
    return-object v6
.end method
