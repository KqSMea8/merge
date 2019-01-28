.class public Lc8/NZn;
.super Ljava/lang/Object;
.source "HEX.java"


# static fields
.field private static final DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/NZn;->DIGITS:[C

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
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static append(Ljava/lang/Appendable;I)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "in"    # I

    .prologue
    .line 22
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lc8/NZn;->append(Ljava/lang/Appendable;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;II)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "in"    # I
    .param p2, "length"    # I

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lc8/NZn;->append(Ljava/lang/Appendable;II)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;J)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "in"    # J

    .prologue
    .line 30
    const/16 v0, 0x10

    invoke-static {p0, p1, p2, v0}, Lc8/NZn;->append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;JI)Ljava/lang/Appendable;
    .locals 5
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "in"    # J
    .param p3, "length"    # I

    .prologue
    .line 35
    shl-int/lit8 v1, p3, 0x2

    add-int/lit8 v0, v1, -0x4

    .line 36
    .local v0, "lim":I
    :goto_0
    if-ltz v0, :cond_0

    .line 37
    :try_start_0
    sget-object v1, Lc8/NZn;->DIGITS:[C

    shr-long v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    add-int/lit8 v0, v0, -0x4

    goto :goto_0

    :catch_0
    move-exception v1

    .line 42
    :cond_0
    return-object p0
.end method

.method public static append(Ljava/lang/Appendable;S)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "in"    # S

    .prologue
    .line 14
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lc8/NZn;->append(Ljava/lang/Appendable;SI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;SI)Ljava/lang/Appendable;
    .locals 1
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "in"    # S
    .param p2, "length"    # I

    .prologue
    .line 18
    invoke-static {p0, p1, p2}, Lc8/NZn;->append(Ljava/lang/Appendable;SI)Ljava/lang/Appendable;

    move-result-object v0

    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;[B)Ljava/lang/Appendable;
    .locals 5
    .param p0, "a"    # Ljava/lang/Appendable;
    .param p1, "bytes"    # [B

    .prologue
    .line 47
    :try_start_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v0, p1, v1

    .line 48
    .local v0, "b":B
    sget-object v3, Lc8/NZn;->DIGITS:[C

    and-int/lit16 v4, v0, 0xf0

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aget-char v3, v3, v4

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 49
    sget-object v3, Lc8/NZn;->DIGITS:[C

    and-int/lit8 v4, v0, 0xf

    int-to-byte v4, v4

    aget-char v3, v3, v4

    invoke-interface {p0, v3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "b":B
    :catch_0
    move-exception v1

    .line 53
    :cond_0
    return-object p0
.end method

.method public static decodeHex([C)[B
    .locals 7
    .param p0, "data"    # [C

    .prologue
    .line 66
    array-length v3, p0

    .line 68
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_0

    .line 69
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Odd number of characters."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_0
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 74
    .local v4, "out":[B
    const/4 v1, 0x0

    .line 75
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 76
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lc8/NZn;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 77
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 78
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lc8/NZn;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    int-to-byte v5, v0

    aput-byte v5, v4, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v0    # "f":I
    :cond_1
    return-object v4
.end method

.method public static decodeHexString(Ljava/lang/String;)[B
    .locals 1
    .param p0, "hexData"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lc8/NZn;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)[C
    .locals 7
    .param p0, "data"    # [B

    .prologue
    .line 95
    array-length v3, p0

    .line 97
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 99
    .local v4, "out":[C
    const/4 v0, 0x0

    .line 100
    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 101
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    sget-object v5, Lc8/NZn;->DIGITS:[C

    aget-byte v6, p0, v0

    and-int/lit16 v6, v6, 0xf0

    ushr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    aput-char v5, v4, v2

    .line 102
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    sget-object v5, Lc8/NZn;->DIGITS:[C

    aget-byte v6, p0, v0

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v4, v1

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-object v4
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "data"    # [B

    .prologue
    .line 57
    invoke-static {p0}, Lc8/NZn;->encodeHex([B)[C

    move-result-object v0

    .line 58
    .local v0, "charArray":[C
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static parseLong(Ljava/lang/CharSequence;)J
    .locals 9
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x4

    .line 137
    const-wide/16 v2, 0x0

    .line 138
    .local v2, "out":J
    const/4 v4, 0x0

    .line 140
    .local v4, "shifts":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    .line 141
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 142
    .local v0, "c":C
    const/16 v5, 0x2f

    if-le v0, v5, :cond_1

    const/16 v5, 0x3a

    if-ge v0, v5, :cond_1

    .line 143
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 144
    shl-long/2addr v2, v8

    .line 145
    add-int/lit8 v5, v0, -0x30

    int-to-long v6, v5

    or-long/2addr v2, v6

    .line 140
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/16 v5, 0x40

    if-le v0, v5, :cond_2

    const/16 v5, 0x47

    if-ge v0, v5, :cond_2

    .line 147
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 148
    shl-long/2addr v2, v8

    .line 149
    add-int/lit8 v5, v0, -0x37

    int-to-long v6, v5

    or-long/2addr v2, v6

    goto :goto_1

    .line 150
    :cond_2
    const/16 v5, 0x60

    if-le v0, v5, :cond_0

    const/16 v5, 0x67

    if-ge v0, v5, :cond_0

    .line 151
    add-int/lit8 v5, v4, 0x1

    int-to-byte v4, v5

    .line 152
    shl-long/2addr v2, v8

    .line 153
    add-int/lit8 v5, v0, -0x57

    int-to-long v6, v5

    or-long/2addr v2, v6

    goto :goto_1

    .line 156
    .end local v0    # "c":C
    :cond_3
    return-wide v2
.end method

.method public static parseShort(Ljava/lang/String;)S
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 161
    .local v2, "out":S
    const/4 v3, 0x0

    .line 163
    .local v3, "shifts":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3

    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 165
    .local v0, "c":C
    const/16 v4, 0x2f

    if-le v0, v4, :cond_1

    const/16 v4, 0x3a

    if-ge v0, v4, :cond_1

    .line 166
    add-int/lit8 v4, v3, 0x1

    int-to-byte v3, v4

    .line 167
    shl-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    .line 168
    add-int/lit8 v4, v0, -0x30

    or-int/2addr v4, v2

    int-to-short v2, v4

    .line 163
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    const/16 v4, 0x40

    if-le v0, v4, :cond_2

    const/16 v4, 0x47

    if-ge v0, v4, :cond_2

    .line 170
    add-int/lit8 v4, v3, 0x1

    int-to-byte v3, v4

    .line 171
    shl-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    .line 172
    add-int/lit8 v4, v0, -0x37

    or-int/2addr v4, v2

    int-to-short v2, v4

    goto :goto_1

    .line 173
    :cond_2
    const/16 v4, 0x60

    if-le v0, v4, :cond_0

    const/16 v4, 0x67

    if-ge v0, v4, :cond_0

    .line 174
    add-int/lit8 v4, v3, 0x1

    int-to-byte v3, v4

    .line 175
    shl-int/lit8 v4, v2, 0x4

    int-to-short v2, v4

    .line 176
    add-int/lit8 v4, v0, -0x57

    or-int/2addr v4, v2

    int-to-short v2, v4

    goto :goto_1

    .line 179
    .end local v0    # "c":C
    :cond_3
    return v2
.end method

.method protected static toDigit(CI)I
    .locals 4
    .param p0, "ch"    # C
    .param p1, "index"    # I

    .prologue
    .line 87
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 88
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal hexadecimal charcter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)[B
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 114
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 115
    .local v0, "charArray":[C
    :goto_0
    invoke-static {v0}, Lc8/NZn;->decodeHex([C)[B

    move-result-object v2

    return-object v2

    .line 114
    .end local v0    # "charArray":[C
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 116
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "array"    # [B

    .prologue
    .line 109
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lc8/NZn;->decodeHex([C)[B

    move-result-object v0

    return-object v0
.end method

.method public encode([B)[B
    .locals 2
    .param p1, "array"    # [B

    .prologue
    .line 123
    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Lc8/NZn;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)[C
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 128
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/lang/String;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 129
    .local v0, "byteArray":[B
    :goto_0
    invoke-static {v0}, Lc8/NZn;->encodeHex([B)[C

    move-result-object v2

    return-object v2

    .line 128
    .end local v0    # "byteArray":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    check-cast p1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 130
    .end local p1    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
