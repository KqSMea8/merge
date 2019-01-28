.class public Lc8/fbo;
.super Ljava/lang/Object;
.source "UnicodeToolkit.java"


# static fields
.field private static final hexDigit:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/fbo;->hexDigit:[C

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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static fromUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "theString"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v2, v3, [C

    invoke-static {v0, v3, v1, v2}, Lc8/fbo;->fromUnicode([CII[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromUnicode([CII[C)Ljava/lang/String;
    .locals 11
    .param p0, "in"    # [C
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "convtBuf"    # [C

    .prologue
    .line 138
    array-length v9, p3

    if-ge v9, p2, :cond_1

    .line 139
    shl-int/lit8 v3, p2, 0x1

    .line 140
    .local v3, "newLen":I
    if-gez v3, :cond_0

    .line 141
    const v3, 0x7fffffff

    .line 143
    :cond_0
    new-array p3, v3, [C

    .line 146
    .end local v3    # "newLen":I
    :cond_1
    move-object v5, p3

    .line 147
    .local v5, "out":[C
    const/4 v6, 0x0

    .line 148
    .local v6, "outLen":I
    add-int v1, p1, p2

    .local v1, "end":I
    move v7, v6

    .end local v6    # "outLen":I
    .local v7, "outLen":I
    move v4, p1

    .line 150
    .end local p1    # "off":I
    .local v4, "off":I
    :goto_0
    if-ge v4, v1, :cond_9

    .line 151
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "off":I
    .restart local p1    # "off":I
    aget-char v0, p0, v4

    .line 152
    .local v0, "aChar":C
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_8

    .line 153
    add-int/lit8 v4, p1, 0x1

    .end local p1    # "off":I
    .restart local v4    # "off":I
    aget-char v0, p0, p1

    .line 154
    const/16 v9, 0x75

    if-ne v0, v9, :cond_3

    .line 156
    const/4 v8, 0x0

    .line 157
    .local v8, "value":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v9, 0x4

    if-ge v2, v9, :cond_2

    .line 158
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "off":I
    .restart local p1    # "off":I
    aget-char v0, p0, v4

    .line 159
    sparse-switch v0, :sswitch_data_0

    .line 189
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Malformed \\uxxxx encoding."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 170
    :sswitch_0
    shl-int/lit8 v9, v8, 0x4

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x30

    .line 157
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v4, p1

    .end local p1    # "off":I
    .restart local v4    # "off":I
    goto :goto_1

    .line 178
    .end local v4    # "off":I
    .restart local p1    # "off":I
    :sswitch_1
    shl-int/lit8 v9, v8, 0x4

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x61

    .line 179
    goto :goto_2

    .line 186
    :sswitch_2
    shl-int/lit8 v9, v8, 0x4

    add-int/lit8 v9, v9, 0xa

    add-int/2addr v9, v0

    add-int/lit8 v8, v9, -0x41

    .line 187
    goto :goto_2

    .line 192
    .end local p1    # "off":I
    .restart local v4    # "off":I
    :cond_2
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    int-to-char v9, v8

    aput-char v9, v5, v7

    move v7, v6

    .line 193
    .end local v6    # "outLen":I
    .restart local v7    # "outLen":I
    goto :goto_0

    .line 194
    .end local v2    # "i":I
    .end local v8    # "value":I
    :cond_3
    const/16 v9, 0x74

    if-ne v0, v9, :cond_5

    .line 195
    const/16 v0, 0x9

    .line 203
    :cond_4
    :goto_3
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    move v7, v6

    .end local v6    # "outLen":I
    .restart local v7    # "outLen":I
    goto :goto_0

    .line 196
    :cond_5
    const/16 v9, 0x72

    if-ne v0, v9, :cond_6

    .line 197
    const/16 v0, 0xd

    goto :goto_3

    .line 198
    :cond_6
    const/16 v9, 0x6e

    if-ne v0, v9, :cond_7

    .line 199
    const/16 v0, 0xa

    goto :goto_3

    .line 200
    :cond_7
    const/16 v9, 0x66

    if-ne v0, v9, :cond_4

    .line 201
    const/16 v0, 0xc

    goto :goto_3

    .line 206
    .end local v4    # "off":I
    .restart local p1    # "off":I
    :cond_8
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outLen":I
    .restart local v6    # "outLen":I
    aput-char v0, v5, v7

    move v7, v6

    .end local v6    # "outLen":I
    .restart local v7    # "outLen":I
    move v4, p1

    .end local p1    # "off":I
    .restart local v4    # "off":I
    goto :goto_0

    .line 209
    .end local v0    # "aChar":C
    :cond_9
    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v9, v5, v10, v7}, Ljava/lang/String;-><init>([CII)V

    return-object v9

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x35 -> :sswitch_0
        0x36 -> :sswitch_0
        0x37 -> :sswitch_0
        0x38 -> :sswitch_0
        0x39 -> :sswitch_0
        0x41 -> :sswitch_2
        0x42 -> :sswitch_2
        0x43 -> :sswitch_2
        0x44 -> :sswitch_2
        0x45 -> :sswitch_2
        0x46 -> :sswitch_2
        0x61 -> :sswitch_1
        0x62 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
    .end sparse-switch
.end method

.method private static toHex(I)C
    .locals 2
    .param p0, "nibble"    # I

    .prologue
    .line 18
    sget-object v0, Lc8/fbo;->hexDigit:[C

    and-int/lit8 v1, p0, 0xf

    aget-char v0, v0, v1

    return v0
.end method

.method public static toUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "theString"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc8/fbo;->toUnicode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toUnicode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .param p0, "theString"    # Ljava/lang/String;
    .param p1, "escapeSpace"    # Z

    .prologue
    const/16 v7, 0x20

    const/16 v6, 0x5c

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 55
    .local v2, "len":I
    shl-int/lit8 v1, v2, 0x1

    .line 56
    .local v1, "bufLen":I
    if-gez v1, :cond_0

    .line 57
    const v1, 0x7fffffff

    .line 59
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 61
    .local v3, "outBuffer":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    if-ge v4, v2, :cond_7

    .line 62
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 65
    .local v0, "aChar":C
    const/16 v5, 0x3d

    if-le v0, v5, :cond_2

    const/16 v5, 0x7f

    if-ge v0, v5, :cond_2

    .line 66
    if-ne v0, v6, :cond_1

    .line 67
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 61
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 74
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 109
    if-lt v0, v7, :cond_3

    const/16 v5, 0x7e

    if-le v0, v5, :cond_6

    .line 110
    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    const/16 v5, 0x75

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    shr-int/lit8 v5, v0, 0xc

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Lc8/fbo;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 113
    shr-int/lit8 v5, v0, 0x8

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Lc8/fbo;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Lc8/fbo;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 115
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5}, Lc8/fbo;->toHex(I)C

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 79
    :sswitch_0
    if-eqz v4, :cond_4

    if-eqz p1, :cond_5

    .line 80
    :cond_4
    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 82
    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 86
    :sswitch_1
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 87
    const/16 v5, 0x74

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 90
    :sswitch_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 91
    const/16 v5, 0x6e

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 94
    :sswitch_3
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 95
    const/16 v5, 0x72

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 98
    :sswitch_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 99
    const/16 v5, 0x66

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 105
    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 117
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .line 121
    .end local v0    # "aChar":C
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x20 -> :sswitch_0
        0x21 -> :sswitch_5
        0x23 -> :sswitch_5
        0x3a -> :sswitch_5
        0x3d -> :sswitch_5
    .end sparse-switch
.end method
