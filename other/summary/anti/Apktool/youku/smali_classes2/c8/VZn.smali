.class public final Lc8/VZn;
.super Ljava/lang/Object;
.source "Rijndael.java"


# static fields
.field public static final BLOCK_BITS:I = 0x80

.field public static final BLOCK_SIZE:I = 0x10

.field public static final DIR_BOTH:I = 0x3

.field public static final DIR_DECRYPT:I = 0x2

.field public static final DIR_ENCRYPT:I = 0x1

.field private static final SS:Ljava/lang/String; = "\u637c\u777b\uf26b\u6fc5\u3001\u672b\ufed7\uab76\uca82\uc97d\ufa59\u47f0\uadd4\ua2af\u9ca4\u72c0\ub7fd\u9326\u363f\uf7cc\u34a5\ue5f1\u71d8\u3115\u04c7\u23c3\u1896\u059a\u0712\u80e2\ueb27\ub275\u0983\u2c1a\u1b6e\u5aa0\u523b\ud6b3\u29e3\u2f84\u53d1\u00ed\u20fc\ub15b\u6acb\ube39\u4a4c\u58cf\ud0ef\uaafb\u434d\u3385\u45f9\u027f\u503c\u9fa8\u51a3\u408f\u929d\u38f5\ubcb6\uda21\u10ff\uf3d2\ucd0c\u13ec\u5f97\u4417\uc4a7\u7e3d\u645d\u1973\u6081\u4fdc\u222a\u9088\u46ee\ub814\ude5e\u0bdb\ue032\u3a0a\u4906\u245c\uc2d3\uac62\u9195\ue479\ue7c8\u376d\u8dd5\u4ea9\u6c56\uf4ea\u657a\uae08\uba78\u252e\u1ca6\ub4c6\ue8dd\u741f\u4bbd\u8b8a\u703e\ub566\u4803\uf60e\u6135\u57b9\u86c1\u1d9e\ue1f8\u9811\u69d9\u8e94\u9b1e\u87e9\uce55\u28df\u8ca1\u890d\ubfe6\u4268\u4199\u2d0f\ub054\ubb16"

.field private static final Sd:[B

.field private static final Se:[B

.field private static final Td0:[I

.field private static final Td1:[I

.field private static final Td2:[I

.field private static final Td3:[I

.field private static final Te0:[I

.field private static final Te1:[I

.field private static final Te2:[I

.field private static final Te3:[I

.field private static final rcon:[I


# instance fields
.field private Nk:I

.field private Nr:I

.field private Nw:I

.field private rdk:[I

.field private rek:[I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .prologue
    .line 47
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Se:[B

    .line 49
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Te0:[I

    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Te1:[I

    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Te2:[I

    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Te3:[I

    .line 51
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Sd:[B

    .line 53
    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Td0:[I

    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Td1:[I

    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Td2:[I

    const/16 v17, 0x100

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->Td3:[I

    .line 58
    const/16 v17, 0xa

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    sput-object v17, Lc8/VZn;->rcon:[I

    .line 91
    const/16 v1, 0x11b

    .line 93
    .local v1, "ROOT":I
    const/4 v4, 0x0

    .local v4, "i1":I
    :goto_0
    const/16 v17, 0x100

    move/from16 v0, v17

    if-ge v4, v0, :cond_5

    .line 94
    const-string/jumbo v17, "\u637c\u777b\uf26b\u6fc5\u3001\u672b\ufed7\uab76\uca82\uc97d\ufa59\u47f0\uadd4\ua2af\u9ca4\u72c0\ub7fd\u9326\u363f\uf7cc\u34a5\ue5f1\u71d8\u3115\u04c7\u23c3\u1896\u059a\u0712\u80e2\ueb27\ub275\u0983\u2c1a\u1b6e\u5aa0\u523b\ud6b3\u29e3\u2f84\u53d1\u00ed\u20fc\ub15b\u6acb\ube39\u4a4c\u58cf\ud0ef\uaafb\u434d\u3385\u45f9\u027f\u503c\u9fa8\u51a3\u408f\u929d\u38f5\ubcb6\uda21\u10ff\uf3d2\ucd0c\u13ec\u5f97\u4417\uc4a7\u7e3d\u645d\u1973\u6081\u4fdc\u222a\u9088\u46ee\ub814\ude5e\u0bdb\ue032\u3a0a\u4906\u245c\uc2d3\uac62\u9195\ue479\ue7c8\u376d\u8dd5\u4ea9\u6c56\uf4ea\u657a\uae08\uba78\u252e\u1ca6\ub4c6\ue8dd\u741f\u4bbd\u8b8a\u703e\ub566\u4803\uf60e\u6135\u57b9\u86c1\u1d9e\ue1f8\u9811\u69d9\u8e94\u9b1e\u87e9\uce55\u28df\u8ca1\u890d\ubfe6\u4268\u4199\u2d0f\ub054\ubb16"

    ushr-int/lit8 v18, v4, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 95
    .local v2, "c":C
    and-int/lit8 v17, v4, 0x1

    if-nez v17, :cond_0

    ushr-int/lit8 v2, v2, 0x8

    .end local v2    # "c":C
    :cond_0
    int-to-byte v0, v2

    move/from16 v17, v0

    move/from16 v0, v17

    and-int/lit16 v13, v0, 0xff

    .line 96
    .local v13, "s1":I
    shl-int/lit8 v14, v13, 0x1

    .line 97
    .local v14, "s2":I
    const/16 v17, 0x100

    move/from16 v0, v17

    if-lt v14, v0, :cond_1

    .line 98
    xor-int/2addr v14, v1

    .line 100
    :cond_1
    xor-int v15, v14, v13

    .line 101
    .local v15, "s3":I
    shl-int/lit8 v5, v4, 0x1

    .line 102
    .local v5, "i2":I
    const/16 v17, 0x100

    move/from16 v0, v17

    if-lt v5, v0, :cond_2

    .line 103
    xor-int/2addr v5, v1

    .line 105
    :cond_2
    shl-int/lit8 v6, v5, 0x1

    .line 106
    .local v6, "i4":I
    const/16 v17, 0x100

    move/from16 v0, v17

    if-lt v6, v0, :cond_3

    .line 107
    xor-int/2addr v6, v1

    .line 109
    :cond_3
    shl-int/lit8 v7, v6, 0x1

    .line 110
    .local v7, "i8":I
    const/16 v17, 0x100

    move/from16 v0, v17

    if-lt v7, v0, :cond_4

    .line 111
    xor-int/2addr v7, v1

    .line 113
    :cond_4
    xor-int v8, v7, v4

    .line 114
    .local v8, "i9":I
    xor-int v9, v8, v5

    .line 115
    .local v9, "ib":I
    xor-int v10, v8, v6

    .line 116
    .local v10, "id":I
    xor-int v17, v7, v6

    xor-int v11, v17, v5

    .line 118
    .local v11, "ie":I
    sget-object v17, Lc8/VZn;->Se:[B

    int-to-byte v0, v13

    move/from16 v18, v0

    aput-byte v18, v17, v4

    .line 119
    sget-object v17, Lc8/VZn;->Te0:[I

    shl-int/lit8 v18, v14, 0x18

    shl-int/lit8 v19, v13, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v13, 0x8

    or-int v18, v18, v19

    or-int v16, v18, v15

    .local v16, "t":I
    aput v16, v17, v4

    .line 120
    sget-object v17, Lc8/VZn;->Te1:[I

    ushr-int/lit8 v18, v16, 0x8

    shl-int/lit8 v19, v16, 0x18

    or-int v18, v18, v19

    aput v18, v17, v4

    .line 121
    sget-object v17, Lc8/VZn;->Te2:[I

    ushr-int/lit8 v18, v16, 0x10

    shl-int/lit8 v19, v16, 0x10

    or-int v18, v18, v19

    aput v18, v17, v4

    .line 122
    sget-object v17, Lc8/VZn;->Te3:[I

    ushr-int/lit8 v18, v16, 0x18

    shl-int/lit8 v19, v16, 0x8

    or-int v18, v18, v19

    aput v18, v17, v4

    .line 124
    sget-object v17, Lc8/VZn;->Sd:[B

    int-to-byte v0, v4

    move/from16 v18, v0

    aput-byte v18, v17, v13

    .line 125
    sget-object v17, Lc8/VZn;->Td0:[I

    shl-int/lit8 v18, v11, 0x18

    shl-int/lit8 v19, v8, 0x10

    or-int v18, v18, v19

    shl-int/lit8 v19, v10, 0x8

    or-int v18, v18, v19

    or-int v16, v18, v9

    aput v16, v17, v13

    .line 126
    sget-object v17, Lc8/VZn;->Td1:[I

    ushr-int/lit8 v18, v16, 0x8

    shl-int/lit8 v19, v16, 0x18

    or-int v18, v18, v19

    aput v18, v17, v13

    .line 127
    sget-object v17, Lc8/VZn;->Td2:[I

    ushr-int/lit8 v18, v16, 0x10

    shl-int/lit8 v19, v16, 0x10

    or-int v18, v18, v19

    aput v18, v17, v13

    .line 128
    sget-object v17, Lc8/VZn;->Td3:[I

    ushr-int/lit8 v18, v16, 0x18

    shl-int/lit8 v19, v16, 0x8

    or-int v18, v18, v19

    aput v18, v17, v13

    .line 93
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 133
    .end local v5    # "i2":I
    .end local v6    # "i4":I
    .end local v7    # "i8":I
    .end local v8    # "i9":I
    .end local v9    # "ib":I
    .end local v10    # "id":I
    .end local v11    # "ie":I
    .end local v13    # "s1":I
    .end local v14    # "s2":I
    .end local v15    # "s3":I
    .end local v16    # "t":I
    :cond_5
    const/4 v12, 0x1

    .line 134
    .local v12, "r":I
    sget-object v17, Lc8/VZn;->rcon:[I

    const/16 v18, 0x0

    const/high16 v19, 0x1000000

    aput v19, v17, v18

    .line 135
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    .line 136
    shl-int/lit8 v12, v12, 0x1

    .line 137
    const/16 v17, 0x100

    move/from16 v0, v17

    if-lt v12, v0, :cond_6

    .line 138
    xor-int/2addr v12, v1

    .line 140
    :cond_6
    sget-object v17, Lc8/VZn;->rcon:[I

    shl-int/lit8 v18, v12, 0x18

    aput v18, v17, v3

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 142
    :cond_7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput v0, p0, Lc8/VZn;->Nr:I

    .line 69
    iput v0, p0, Lc8/VZn;->Nk:I

    .line 71
    iput v0, p0, Lc8/VZn;->Nw:I

    .line 76
    iput-object v1, p0, Lc8/VZn;->rek:[I

    .line 81
    iput-object v1, p0, Lc8/VZn;->rdk:[I

    .line 6
    return-void
.end method

.method private expandKey([B)V
    .locals 9
    .param p1, "cipherKey"    # [B

    .prologue
    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "r":I
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    iget v6, p0, Lc8/VZn;->Nk:I

    if-ge v0, v6, :cond_0

    .line 152
    iget-object v6, p0, Lc8/VZn;->rek:[I

    aget-byte v7, p1, v1

    shl-int/lit8 v7, v7, 0x18

    add-int/lit8 v8, v1, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v1, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v6, v0

    .line 151
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 154
    :cond_0
    iget v0, p0, Lc8/VZn;->Nk:I

    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    iget v6, p0, Lc8/VZn;->Nw:I

    if-ge v0, v6, :cond_3

    .line 155
    iget-object v6, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v7, v0, -0x1

    aget v5, v6, v7

    .line 156
    .local v5, "temp":I
    if-nez v2, :cond_2

    .line 157
    iget v2, p0, Lc8/VZn;->Nk:I

    .line 158
    sget-object v6, Lc8/VZn;->Se:[B

    ushr-int/lit8 v7, v5, 0x10

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Se:[B

    and-int/lit16 v8, v5, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v5, 0x18

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int v5, v6, v7

    .line 159
    sget-object v6, Lc8/VZn;->rcon:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "r":I
    .local v4, "r":I
    aget v6, v6, v3

    xor-int/2addr v5, v6

    move v3, v4

    .line 163
    .end local v4    # "r":I
    .restart local v3    # "r":I
    :cond_1
    :goto_2
    iget-object v6, p0, Lc8/VZn;->rek:[I

    iget-object v7, p0, Lc8/VZn;->rek:[I

    iget v8, p0, Lc8/VZn;->Nk:I

    sub-int v8, v0, v8

    aget v7, v7, v8

    xor-int/2addr v7, v5

    aput v7, v6, v0

    .line 154
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 160
    :cond_2
    iget v6, p0, Lc8/VZn;->Nk:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    const/4 v6, 0x4

    if-ne v2, v6, :cond_1

    .line 161
    sget-object v6, Lc8/VZn;->Se:[B

    ushr-int/lit8 v7, v5, 0x18

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x18

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v5, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v5, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Se:[B

    and-int/lit16 v8, v5, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    or-int v5, v6, v7

    goto :goto_2

    .line 166
    .end local v5    # "temp":I
    :cond_3
    return-void
.end method

.method private invertKey()V
    .locals 10

    .prologue
    .line 226
    const/4 v0, 0x0

    .local v0, "d":I
    iget v4, p0, Lc8/VZn;->Nr:I

    mul-int/lit8 v1, v4, 0x4

    .line 231
    .local v1, "e":I
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    iget-object v5, p0, Lc8/VZn;->rek:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 232
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 233
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    const/4 v5, 0x2

    iget-object v6, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v7, v1, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 234
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    const/4 v5, 0x3

    iget-object v6, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    aput v6, v4, v5

    .line 235
    add-int/lit8 v0, v0, 0x4

    .line 236
    add-int/lit8 v1, v1, -0x4

    .line 237
    const/4 v2, 0x1

    .local v2, "r":I
    :goto_0
    iget v4, p0, Lc8/VZn;->Nr:I

    if-ge v2, v4, :cond_0

    .line 238
    iget-object v4, p0, Lc8/VZn;->rek:[I

    aget v3, v4, v1

    .line 239
    .local v3, "w":I
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    sget-object v5, Lc8/VZn;->Td0:[I

    sget-object v6, Lc8/VZn;->Se:[B

    ushr-int/lit8 v7, v3, 0x18

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    sget-object v6, Lc8/VZn;->Td1:[I

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v3, 0x10

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lc8/VZn;->Td2:[I

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v3, 0x8

    and-int/lit16 v8, v8, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    sget-object v6, Lc8/VZn;->Td3:[I

    sget-object v7, Lc8/VZn;->Se:[B

    and-int/lit16 v8, v3, 0xff

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v4, v0

    .line 240
    iget-object v4, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v5, v1, 0x1

    aget v3, v4, v5

    .line 241
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v5, v0, 0x1

    sget-object v6, Lc8/VZn;->Td0:[I

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v3, 0x18

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lc8/VZn;->Td1:[I

    sget-object v8, Lc8/VZn;->Se:[B

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Td2:[I

    sget-object v8, Lc8/VZn;->Se:[B

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Td3:[I

    sget-object v8, Lc8/VZn;->Se:[B

    and-int/lit16 v9, v3, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aput v6, v4, v5

    .line 242
    iget-object v4, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v5, v1, 0x2

    aget v3, v4, v5

    .line 243
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v5, v0, 0x2

    sget-object v6, Lc8/VZn;->Td0:[I

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v3, 0x18

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lc8/VZn;->Td1:[I

    sget-object v8, Lc8/VZn;->Se:[B

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Td2:[I

    sget-object v8, Lc8/VZn;->Se:[B

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Td3:[I

    sget-object v8, Lc8/VZn;->Se:[B

    and-int/lit16 v9, v3, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aput v6, v4, v5

    .line 244
    iget-object v4, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v5, v1, 0x3

    aget v3, v4, v5

    .line 245
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v5, v0, 0x3

    sget-object v6, Lc8/VZn;->Td0:[I

    sget-object v7, Lc8/VZn;->Se:[B

    ushr-int/lit8 v8, v3, 0x18

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    sget-object v7, Lc8/VZn;->Td1:[I

    sget-object v8, Lc8/VZn;->Se:[B

    ushr-int/lit8 v9, v3, 0x10

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Td2:[I

    sget-object v8, Lc8/VZn;->Se:[B

    ushr-int/lit8 v9, v3, 0x8

    and-int/lit16 v9, v9, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    sget-object v7, Lc8/VZn;->Td3:[I

    sget-object v8, Lc8/VZn;->Se:[B

    and-int/lit16 v9, v3, 0xff

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    aget v7, v7, v8

    xor-int/2addr v6, v7

    aput v6, v4, v5

    .line 246
    add-int/lit8 v0, v0, 0x4

    .line 247
    add-int/lit8 v1, v1, -0x4

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 249
    .end local v3    # "w":I
    :cond_0
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    iget-object v5, p0, Lc8/VZn;->rek:[I

    aget v5, v5, v1

    aput v5, v4, v0

    .line 250
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v5, v0, 0x1

    iget-object v6, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 251
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v5, v0, 0x2

    iget-object v6, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v7, v1, 0x2

    aget v6, v6, v7

    aput v6, v4, v5

    .line 252
    iget-object v4, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v5, v0, 0x3

    iget-object v6, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v7, v1, 0x3

    aget v6, v6, v7

    aput v6, v4, v5

    .line 253
    return-void
.end method


# virtual methods
.method public decrypt([B[B)V
    .locals 14
    .param p1, "ct"    # [B
    .param p2, "pt"    # [B

    .prologue
    .line 366
    const/4 v4, 0x0

    .line 367
    .local v4, "k":I
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/4 v12, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/4 v12, 0x3

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v6, v11, v12

    .line 368
    .local v6, "t0":I
    const/4 v11, 0x4

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x5

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/4 v12, 0x6

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/4 v12, 0x7

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 369
    .local v7, "t1":I
    const/16 v11, 0x8

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/16 v12, 0x9

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/16 v12, 0xa

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/16 v12, 0xb

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 370
    .local v8, "t2":I
    const/16 v11, 0xc

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/16 v12, 0xd

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/16 v12, 0xe

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/16 v12, 0xf

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 374
    .local v9, "t3":I
    const/4 v5, 0x1

    .local v5, "r":I
    :goto_0
    iget v11, p0, Lc8/VZn;->Nr:I

    if-ge v5, v11, :cond_0

    .line 375
    add-int/lit8 v4, v4, 0x4

    .line 376
    sget-object v11, Lc8/VZn;->Td0:[I

    ushr-int/lit8 v12, v6, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Td1:[I

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td2:[I

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td3:[I

    and-int/lit16 v13, v7, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    aget v12, v12, v4

    xor-int v0, v11, v12

    .line 377
    .local v0, "a0":I
    sget-object v11, Lc8/VZn;->Td0:[I

    ushr-int/lit8 v12, v7, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Td1:[I

    ushr-int/lit8 v13, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td2:[I

    ushr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td3:[I

    and-int/lit16 v13, v8, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v13, v4, 0x1

    aget v12, v12, v13

    xor-int v1, v11, v12

    .line 378
    .local v1, "a1":I
    sget-object v11, Lc8/VZn;->Td0:[I

    ushr-int/lit8 v12, v8, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Td1:[I

    ushr-int/lit8 v13, v7, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td2:[I

    ushr-int/lit8 v13, v6, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td3:[I

    and-int/lit16 v13, v9, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v13, v4, 0x2

    aget v12, v12, v13

    xor-int v2, v11, v12

    .line 379
    .local v2, "a2":I
    sget-object v11, Lc8/VZn;->Td0:[I

    ushr-int/lit8 v12, v9, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Td1:[I

    ushr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td2:[I

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Td3:[I

    and-int/lit16 v13, v6, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v13, v4, 0x3

    aget v12, v12, v13

    xor-int v3, v11, v12

    .line 380
    .local v3, "a3":I
    move v6, v0

    .line 381
    move v7, v1

    .line 382
    move v8, v2

    .line 383
    move v9, v3

    .line 374
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 388
    .end local v0    # "a0":I
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    :cond_0
    add-int/lit8 v4, v4, 0x4

    .line 390
    iget-object v11, p0, Lc8/VZn;->rdk:[I

    aget v10, v11, v4

    .line 391
    .local v10, "v":I
    const/4 v11, 0x0

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v6, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 392
    const/4 v11, 0x1

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 393
    const/4 v11, 0x2

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 394
    const/4 v11, 0x3

    sget-object v12, Lc8/VZn;->Sd:[B

    and-int/lit16 v13, v7, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 396
    iget-object v11, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v12, v4, 0x1

    aget v10, v11, v12

    .line 397
    const/4 v11, 0x4

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v7, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 398
    const/4 v11, 0x5

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 399
    const/4 v11, 0x6

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 400
    const/4 v11, 0x7

    sget-object v12, Lc8/VZn;->Sd:[B

    and-int/lit16 v13, v8, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 402
    iget-object v11, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v11, v12

    .line 403
    const/16 v11, 0x8

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v8, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 404
    const/16 v11, 0x9

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v7, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 405
    const/16 v11, 0xa

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v6, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 406
    const/16 v11, 0xb

    sget-object v12, Lc8/VZn;->Sd:[B

    and-int/lit16 v13, v9, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 408
    iget-object v11, p0, Lc8/VZn;->rdk:[I

    add-int/lit8 v12, v4, 0x3

    aget v10, v11, v12

    .line 409
    const/16 v11, 0xc

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v9, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 410
    const/16 v11, 0xd

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 411
    const/16 v11, 0xe

    sget-object v12, Lc8/VZn;->Sd:[B

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 412
    const/16 v11, 0xf

    sget-object v12, Lc8/VZn;->Sd:[B

    and-int/lit16 v13, v6, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 413
    return-void
.end method

.method public encrypt([B[B)V
    .locals 14
    .param p1, "pt"    # [B
    .param p2, "ct"    # [B

    .prologue
    .line 307
    const/4 v4, 0x0

    .line 308
    .local v4, "k":I
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/4 v12, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/4 v12, 0x3

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    xor-int v6, v11, v12

    .line 309
    .local v6, "t0":I
    const/4 v11, 0x4

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/4 v12, 0x5

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/4 v12, 0x6

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/4 v12, 0x7

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    xor-int v7, v11, v12

    .line 310
    .local v7, "t1":I
    const/16 v11, 0x8

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/16 v12, 0x9

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/16 v12, 0xa

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/16 v12, 0xb

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    xor-int v8, v11, v12

    .line 311
    .local v8, "t2":I
    const/16 v11, 0xc

    aget-byte v11, p1, v11

    shl-int/lit8 v11, v11, 0x18

    const/16 v12, 0xd

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    const/16 v12, 0xe

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    const/16 v12, 0xf

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    or-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    xor-int v9, v11, v12

    .line 315
    .local v9, "t3":I
    const/4 v5, 0x1

    .local v5, "r":I
    :goto_0
    iget v11, p0, Lc8/VZn;->Nr:I

    if-ge v5, v11, :cond_0

    .line 316
    add-int/lit8 v4, v4, 0x4

    .line 317
    sget-object v11, Lc8/VZn;->Te0:[I

    ushr-int/lit8 v12, v6, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Te1:[I

    ushr-int/lit8 v13, v7, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te2:[I

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te3:[I

    and-int/lit16 v13, v9, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    aget v12, v12, v4

    xor-int v0, v11, v12

    .line 318
    .local v0, "a0":I
    sget-object v11, Lc8/VZn;->Te0:[I

    ushr-int/lit8 v12, v7, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Te1:[I

    ushr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te2:[I

    ushr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te3:[I

    and-int/lit16 v13, v6, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v13, v4, 0x1

    aget v12, v12, v13

    xor-int v1, v11, v12

    .line 319
    .local v1, "a1":I
    sget-object v11, Lc8/VZn;->Te0:[I

    ushr-int/lit8 v12, v8, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Te1:[I

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te2:[I

    ushr-int/lit8 v13, v6, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te3:[I

    and-int/lit16 v13, v7, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v13, v4, 0x2

    aget v12, v12, v13

    xor-int v2, v11, v12

    .line 320
    .local v2, "a2":I
    sget-object v11, Lc8/VZn;->Te0:[I

    ushr-int/lit8 v12, v9, 0x18

    aget v11, v11, v12

    sget-object v12, Lc8/VZn;->Te1:[I

    ushr-int/lit8 v13, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te2:[I

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    sget-object v12, Lc8/VZn;->Te3:[I

    and-int/lit16 v13, v8, 0xff

    aget v12, v12, v13

    xor-int/2addr v11, v12

    iget-object v12, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v13, v4, 0x3

    aget v12, v12, v13

    xor-int v3, v11, v12

    .line 321
    .local v3, "a3":I
    move v6, v0

    .line 322
    move v7, v1

    .line 323
    move v8, v2

    .line 324
    move v9, v3

    .line 315
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 329
    .end local v0    # "a0":I
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    :cond_0
    add-int/lit8 v4, v4, 0x4

    .line 331
    iget-object v11, p0, Lc8/VZn;->rek:[I

    aget v10, v11, v4

    .line 332
    .local v10, "v":I
    const/4 v11, 0x0

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v6, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 333
    const/4 v11, 0x1

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v7, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 334
    const/4 v11, 0x2

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v8, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 335
    const/4 v11, 0x3

    sget-object v12, Lc8/VZn;->Se:[B

    and-int/lit16 v13, v9, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 337
    iget-object v11, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v12, v4, 0x1

    aget v10, v11, v12

    .line 338
    const/4 v11, 0x4

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v7, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 339
    const/4 v11, 0x5

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v8, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 340
    const/4 v11, 0x6

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v9, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 341
    const/4 v11, 0x7

    sget-object v12, Lc8/VZn;->Se:[B

    and-int/lit16 v13, v6, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 343
    iget-object v11, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v12, v4, 0x2

    aget v10, v11, v12

    .line 344
    const/16 v11, 0x8

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v8, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 345
    const/16 v11, 0x9

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v9, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 346
    const/16 v11, 0xa

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v6, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 347
    const/16 v11, 0xb

    sget-object v12, Lc8/VZn;->Se:[B

    and-int/lit16 v13, v7, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 349
    iget-object v11, p0, Lc8/VZn;->rek:[I

    add-int/lit8 v12, v4, 0x3

    aget v10, v11, v12

    .line 350
    const/16 v11, 0xc

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v9, 0x18

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x18

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 351
    const/16 v11, 0xd

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v6, 0x10

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 352
    const/16 v11, 0xe

    sget-object v12, Lc8/VZn;->Se:[B

    ushr-int/lit8 v13, v7, 0x8

    and-int/lit16 v13, v13, 0xff

    aget-byte v12, v12, v13

    ushr-int/lit8 v13, v10, 0x8

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 353
    const/16 v11, 0xf

    sget-object v12, Lc8/VZn;->Se:[B

    and-int/lit16 v13, v8, 0xff

    aget-byte v12, v12, v13

    xor-int/2addr v12, v10

    int-to-byte v12, v12

    aput-byte v12, p2, v11

    .line 354
    return-void
.end method

.method protected final finalize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 419
    iget-object v1, p0, Lc8/VZn;->rek:[I

    if-eqz v1, :cond_1

    .line 420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/VZn;->rek:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 421
    iget-object v1, p0, Lc8/VZn;->rek:[I

    aput v2, v1, v0

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    iput-object v3, p0, Lc8/VZn;->rek:[I

    .line 425
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lc8/VZn;->rdk:[I

    if-eqz v1, :cond_3

    .line 426
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lc8/VZn;->rdk:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 427
    iget-object v1, p0, Lc8/VZn;->rdk:[I

    aput v2, v1, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 429
    :cond_2
    iput-object v3, p0, Lc8/VZn;->rdk:[I

    .line 431
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public makeKey([BI)V
    .locals 1
    .param p1, "cipherKey"    # [B
    .param p2, "keyBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 294
    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lc8/VZn;->makeKey([BII)V

    .line 295
    return-void
.end method

.method public makeKey([BII)V
    .locals 3
    .param p1, "cipherKey"    # [B
    .param p2, "keyBits"    # I
    .param p3, "direction"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 265
    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc0

    if-eq p2, v0, :cond_0

    const/16 v0, 0x100

    if-eq p2, v0, :cond_0

    .line 266
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid AES key size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bits)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_0
    ushr-int/lit8 v0, p2, 0x5

    iput v0, p0, Lc8/VZn;->Nk:I

    .line 269
    iget v0, p0, Lc8/VZn;->Nk:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lc8/VZn;->Nr:I

    .line 270
    iget v0, p0, Lc8/VZn;->Nr:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lc8/VZn;->Nw:I

    .line 271
    iget v0, p0, Lc8/VZn;->Nw:I

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/VZn;->rek:[I

    .line 272
    iget v0, p0, Lc8/VZn;->Nw:I

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/VZn;->rdk:[I

    .line 273
    and-int/lit8 v0, p3, 0x3

    if-eqz v0, :cond_1

    .line 274
    invoke-direct {p0, p1}, Lc8/VZn;->expandKey([B)V

    .line 281
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    .line 282
    invoke-direct {p0}, Lc8/VZn;->invertKey()V

    .line 285
    :cond_1
    return-void
.end method
