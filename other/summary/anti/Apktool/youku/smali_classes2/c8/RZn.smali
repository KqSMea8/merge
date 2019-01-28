.class public Lc8/RZn;
.super Ljava/lang/Object;
.source "MurmurHash.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hash32(Ljava/nio/ByteBuffer;III)I
    .locals 10
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .prologue
    .line 45
    const v7, 0x5bd1e995

    .line 46
    .local v7, "m":I
    const/16 v8, 0x18

    .line 48
    .local v8, "r":I
    xor-int v0, p3, p2

    .line 50
    .local v0, "h":I
    shr-int/lit8 v5, p2, 0x2

    .line 52
    .local v5, "len_4":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 53
    shl-int/lit8 v2, v1, 0x2

    .line 54
    .local v2, "i_4":I
    add-int v9, p1, v2

    add-int/lit8 v9, v9, 0x3

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    .line 55
    .local v3, "k":I
    shl-int/lit8 v3, v3, 0x8

    .line 56
    add-int v9, p1, v2

    add-int/lit8 v9, v9, 0x2

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    .line 57
    shl-int/lit8 v3, v3, 0x8

    .line 58
    add-int v9, p1, v2

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    .line 59
    shl-int/lit8 v3, v3, 0x8

    .line 60
    add-int v9, p1, v2

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v3, v9

    .line 61
    mul-int/2addr v3, v7

    .line 62
    ushr-int v9, v3, v8

    xor-int/2addr v3, v9

    .line 63
    mul-int/2addr v3, v7

    .line 64
    mul-int/2addr v0, v7

    .line 65
    xor-int/2addr v0, v3

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "i_4":I
    .end local v3    # "k":I
    :cond_0
    shl-int/lit8 v6, v5, 0x2

    .line 70
    .local v6, "len_m":I
    sub-int v4, p2, v6

    .line 72
    .local v4, "left":I
    if-eqz v4, :cond_4

    .line 73
    const/4 v9, 0x3

    if-lt v4, v9, :cond_1

    .line 74
    add-int v9, p1, p2

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    shl-int/lit8 v9, v9, 0x10

    xor-int/2addr v0, v9

    .line 76
    :cond_1
    const/4 v9, 0x2

    if-lt v4, v9, :cond_2

    .line 77
    add-int v9, p1, p2

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    shl-int/lit8 v9, v9, 0x8

    xor-int/2addr v0, v9

    .line 79
    :cond_2
    if-lez v4, :cond_3

    .line 80
    add-int v9, p1, p2

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    xor-int/2addr v0, v9

    .line 83
    :cond_3
    mul-int/2addr v0, v7

    .line 86
    :cond_4
    ushr-int/lit8 v9, v0, 0xd

    xor-int/2addr v0, v9

    .line 87
    mul-int/2addr v0, v7

    .line 88
    ushr-int/lit8 v9, v0, 0xf

    xor-int/2addr v0, v9

    .line 90
    return v0
.end method

.method public static hash32([BI)I
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "seed"    # I

    .prologue
    .line 35
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {v0, v1, v2, p1}, Lc8/RZn;->hash32(Ljava/nio/ByteBuffer;III)I

    move-result v1

    return v1
.end method

.method public static hash32([BIII)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .prologue
    .line 25
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 26
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0, p1, p2, p3}, Lc8/RZn;->hash32(Ljava/nio/ByteBuffer;III)I

    move-result v1

    return v1
.end method

.method public static hash64(Ljava/nio/ByteBuffer;IIJ)J
    .locals 21
    .param p0, "key"    # Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # J

    .prologue
    .line 94
    const-wide v10, -0x395b586ca42e166bL    # -2.0946245025644615E32

    .line 95
    .local v10, "m64":J
    const/16 v9, 0x2f

    .line 97
    .local v9, "r64":I
    const-wide v14, 0xffffffffL

    and-long v14, v14, p3

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v16, v16, v10

    xor-long v2, v14, v16

    .line 99
    .local v2, "h64":J
    shr-int/lit8 v8, p2, 0x3

    .line 101
    .local v8, "lenLongs":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_0

    .line 102
    shl-int/lit8 v5, v4, 0x3

    .line 104
    .local v5, "i_8":I
    add-int v13, p1, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    add-int v13, p1, v5

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v13, 0x8

    shl-long v16, v16, v13

    add-long v14, v14, v16

    add-int v13, p1, v5

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v13, 0x10

    shl-long v16, v16, v13

    add-long v14, v14, v16

    add-int v13, p1, v5

    add-int/lit8 v13, v13, 0x3

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v13, 0x18

    shl-long v16, v16, v13

    add-long v14, v14, v16

    add-int v13, p1, v5

    add-int/lit8 v13, v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v13, 0x20

    shl-long v16, v16, v13

    add-long v14, v14, v16

    add-int v13, p1, v5

    add-int/lit8 v13, v13, 0x5

    .line 106
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v13, 0x28

    shl-long v16, v16, v13

    add-long v14, v14, v16

    add-int v13, p1, v5

    add-int/lit8 v13, v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v13, 0x30

    shl-long v16, v16, v13

    add-long v14, v14, v16

    add-int v13, p1, v5

    add-int/lit8 v13, v13, 0x7

    .line 107
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v0, v13

    move-wide/from16 v16, v0

    const-wide/16 v18, 0xff

    and-long v16, v16, v18

    const/16 v13, 0x38

    shl-long v16, v16, v13

    add-long v6, v14, v16

    .line 109
    .local v6, "k64":J
    mul-long/2addr v6, v10

    .line 110
    ushr-long v14, v6, v9

    xor-long/2addr v6, v14

    .line 111
    mul-long/2addr v6, v10

    .line 113
    xor-long/2addr v2, v6

    .line 114
    mul-long/2addr v2, v10

    .line 101
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 117
    .end local v5    # "i_8":I
    .end local v6    # "k64":J
    :cond_0
    and-int/lit8 v12, p2, 0x7

    .line 119
    .local v12, "rem":I
    packed-switch v12, :pswitch_data_0

    .line 139
    :goto_1
    :pswitch_0
    ushr-long v14, v2, v9

    xor-long/2addr v2, v14

    .line 140
    mul-long/2addr v2, v10

    .line 141
    ushr-long v14, v2, v9

    xor-long/2addr v2, v14

    .line 143
    return-wide v2

    .line 123
    :pswitch_1
    add-int v13, p1, p2

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x30

    shl-long/2addr v14, v13

    xor-long/2addr v2, v14

    .line 125
    :pswitch_2
    add-int v13, p1, p2

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x28

    shl-long/2addr v14, v13

    xor-long/2addr v2, v14

    .line 127
    :pswitch_3
    add-int v13, p1, p2

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x20

    shl-long/2addr v14, v13

    xor-long/2addr v2, v14

    .line 129
    :pswitch_4
    add-int v13, p1, p2

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x18

    shl-long/2addr v14, v13

    xor-long/2addr v2, v14

    .line 131
    :pswitch_5
    add-int v13, p1, p2

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x10

    shl-long/2addr v14, v13

    xor-long/2addr v2, v14

    .line 133
    :pswitch_6
    add-int v13, p1, p2

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    const/16 v13, 0x8

    shl-long/2addr v14, v13

    xor-long/2addr v2, v14

    .line 135
    :pswitch_7
    add-int v13, p1, p2

    sub-int/2addr v13, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v13

    int-to-long v14, v13

    xor-long/2addr v2, v14

    .line 136
    mul-long/2addr v2, v10

    goto :goto_1

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static hash64([BI)J
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "seed"    # I

    .prologue
    .line 40
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    array-length v2, p0

    int-to-long v4, p1

    invoke-static {v0, v1, v2, v4, v5}, Lc8/RZn;->hash64(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public static hash64([BIII)J
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "seed"    # I

    .prologue
    .line 30
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 31
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    int-to-long v2, p3

    invoke-static {v0, p1, p2, v2, v3}, Lc8/RZn;->hash64(Ljava/nio/ByteBuffer;IIJ)J

    move-result-wide v2

    return-wide v2
.end method
