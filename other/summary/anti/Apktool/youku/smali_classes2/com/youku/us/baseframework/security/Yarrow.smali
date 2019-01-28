.class public Lcom/youku/us/baseframework/security/Yarrow;
.super Ljava/util/Random;
.source "Yarrow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZZn;
    }
.end annotation


# static fields
.field static final bitTable:[[I

.field private static seedfile:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0xeeac76fa0f0487cL


# instance fields
.field public ZERO_ARRAY:[B

.field private allZeroString:[B

.field private cipher_ctx:Lc8/VZn;

.field private counter:[B

.field protected digestSize:I

.field private entropySeen:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lc8/ZZn;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected fast_entropy:I

.field private fast_pool:Ljava/security/MessageDigest;

.field private fast_select:Z

.field protected fetch_counter:I

.field private output_buffer:[B

.field protected output_count:I

.field private reseed_ctx:Ljava/security/MessageDigest;

.field protected slow_entropy:I

.field private slow_pool:Ljava/security/MessageDigest;

.field private tmp:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 21
    const/16 v0, 0x21

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    sput-object v0, Lcom/youku/us/baseframework/security/Yarrow;->bitTable:[[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x7
    .end array-data

    :array_4
    .array-data 4
        0x1
        0xf
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x1f
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x3f
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x7f
    .end array-data

    :array_8
    .array-data 4
        0x1
        0xff
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x1ff
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x3ff
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x7ff
    .end array-data

    :array_c
    .array-data 4
        0x2
        0xfff
    .end array-data

    :array_d
    .array-data 4
        0x2
        0x1fff
    .end array-data

    :array_e
    .array-data 4
        0x2
        0x3fff
    .end array-data

    :array_f
    .array-data 4
        0x2
        0x7fff
    .end array-data

    :array_10
    .array-data 4
        0x2
        0xffff
    .end array-data

    :array_11
    .array-data 4
        0x3
        0x1ffff
    .end array-data

    :array_12
    .array-data 4
        0x3
        0x3ffff
    .end array-data

    :array_13
    .array-data 4
        0x3
        0x7ffff
    .end array-data

    :array_14
    .array-data 4
        0x3
        0xfffff
    .end array-data

    :array_15
    .array-data 4
        0x3
        0x1fffff
    .end array-data

    :array_16
    .array-data 4
        0x3
        0x3fffff
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x7fffff
    .end array-data

    :array_18
    .array-data 4
        0x3
        0xffffff
    .end array-data

    :array_19
    .array-data 4
        0x4
        0x1ffffff
    .end array-data

    :array_1a
    .array-data 4
        0x4
        0x3ffffff
    .end array-data

    :array_1b
    .array-data 4
        0x4
        0x7ffffff
    .end array-data

    :array_1c
    .array-data 4
        0x4
        0xfffffff
    .end array-data

    :array_1d
    .array-data 4
        0x4
        0x1fffffff
    .end array-data

    :array_1e
    .array-data 4
        0x4
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_1f
    .array-data 4
        0x4
        0x7fffffff
    .end array-data

    :array_20
    .array-data 4
        0x4
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 25
    const/16 v1, 0x4000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->ZERO_ARRAY:[B

    .line 44
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "java.io.tmpdir"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "prng.seed"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/youku/us/baseframework/security/Yarrow;->seedfile:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->accumulator_init()V

    .line 50
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->reseed_init()V

    .line 51
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/youku/us/baseframework/security/Yarrow;->generator_init(I)V

    .line 52
    sget-object v1, Lcom/youku/us/baseframework/security/Yarrow;->seedfile:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/youku/us/baseframework/security/Yarrow;->entropy_init(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 57
    return-void

    .line 46
    :catch_0
    move-exception v1

    const-string/jumbo v1, "prng.seed"

    sput-object v1, Lcom/youku/us/baseframework/security/Yarrow;->seedfile:Ljava/lang/String;

    goto :goto_0

    .line 53
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 55
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private accept_entropy(JLc8/ZZn;I)V
    .locals 11
    .param p1, "data"    # J
    .param p3, "source"    # Lc8/ZZn;
    .param p4, "actualEntropy"    # I

    .prologue
    .line 116
    iget-boolean v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_select:Z

    if-eqz v7, :cond_1

    iget-object v5, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool:Ljava/security/MessageDigest;

    .line 117
    .local v5, "pool":Ljava/security/MessageDigest;
    :goto_0
    long-to-int v7, p1

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 118
    const/16 v7, 0x8

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 119
    const/16 v7, 0x10

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 120
    const/16 v7, 0x18

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 121
    const/16 v7, 0x20

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 122
    const/16 v7, 0x28

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 123
    const/16 v7, 0x30

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 124
    const/16 v7, 0x38

    shr-long v8, p1, v7

    long-to-int v7, v8

    int-to-byte v7, v7

    invoke-virtual {v5, v7}, Ljava/security/MessageDigest;->update(B)V

    .line 125
    iget-boolean v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_select:Z

    if-nez v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_select:Z

    .line 126
    iget-boolean v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_select:Z

    if-eqz v7, :cond_3

    .line 127
    iget v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_entropy:I

    add-int/2addr v7, p4

    iput v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_entropy:I

    .line 128
    iget v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_entropy:I

    const/16 v8, 0x64

    if-le v7, v8, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool_reseed()V

    .line 157
    :cond_0
    :goto_2
    return-void

    .line 116
    .end local v5    # "pool":Ljava/security/MessageDigest;
    :cond_1
    iget-object v5, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_pool:Ljava/security/MessageDigest;

    goto :goto_0

    .line 125
    .restart local v5    # "pool":Ljava/security/MessageDigest;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 131
    :cond_3
    iget v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_entropy:I

    add-int/2addr v7, p4

    iput v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_entropy:I

    .line 132
    if-eqz p3, :cond_0

    .line 133
    iget-object v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->entropySeen:Ljava/util/Hashtable;

    invoke-virtual {v7, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 134
    .local v0, "contributedEntropy":Ljava/lang/Integer;
    if-nez v0, :cond_5

    .line 135
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "contributedEntropy":Ljava/lang/Integer;
    invoke-direct {v0, p4}, Ljava/lang/Integer;-><init>(I)V

    .line 139
    .restart local v0    # "contributedEntropy":Ljava/lang/Integer;
    :goto_3
    iget-object v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->entropySeen:Ljava/util/Hashtable;

    invoke-virtual {v7, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_entropy:I

    const/16 v8, 0x140

    if-lt v7, v8, :cond_0

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, "kc":I
    iget-object v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->entropySeen:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 143
    .local v2, "enums":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/youku/us/baseframework/security/Yarrow$EntropySource;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 144
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    .line 145
    .local v4, "key":Ljava/lang/Object;
    iget-object v7, p0, Lcom/youku/us/baseframework/security/Yarrow;->entropySeen:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 146
    .local v6, "v":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0xa0

    if-le v7, v8, :cond_4

    .line 147
    add-int/lit8 v3, v3, 0x1

    .line 148
    const/4 v7, 0x2

    if-lt v3, v7, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->slow_pool_reseed()V

    goto :goto_2

    .line 137
    .end local v2    # "enums":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/youku/us/baseframework/security/Yarrow$EntropySource;>;"
    .end local v3    # "kc":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v6    # "v":Ljava/lang/Integer;
    :cond_5
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v7, p4

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    .end local v0    # "contributedEntropy":Ljava/lang/Integer;
    .local v1, "contributedEntropy":Ljava/lang/Integer;
    move-object v0, v1

    .end local v1    # "contributedEntropy":Ljava/lang/Integer;
    .restart local v0    # "contributedEntropy":Ljava/lang/Integer;
    goto :goto_3
.end method

.method private accumulator_init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 160
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool:Ljava/security/MessageDigest;

    .line 161
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_pool:Ljava/security/MessageDigest;

    .line 162
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    iput v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->digestSize:I

    .line 163
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->entropySeen:Ljava/util/Hashtable;

    .line 164
    return-void
.end method

.method private consumeBytes([B)V
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-boolean v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_select:Z

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool:Ljava/security/MessageDigest;

    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 181
    :goto_0
    iget-boolean v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_select:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_select:Z

    .line 182
    return-void

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_pool:Ljava/security/MessageDigest;

    array-length v2, p1

    invoke-virtual {v1, p1, v0, v2}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
.end method

.method private consumeString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 189
    .local v0, "b":[B
    invoke-direct {p0, v0}, Lcom/youku/us/baseframework/security/Yarrow;->consumeBytes([B)V

    goto :goto_0
.end method

.method private final counterInc()V
    .locals 4

    .prologue
    .line 167
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->counter:[B

    array-length v3, v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 168
    move v2, v0

    .line 169
    .local v2, "tmp17_16":I
    iget-object v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->counter:[B

    .line 170
    .local v1, "tmp17_13":[B
    aget-byte v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    if-nez v3, :cond_0

    .line 167
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 173
    .end local v1    # "tmp17_13":[B
    .end local v2    # "tmp17_16":I
    :cond_0
    return-void
.end method

.method private entropy_init(Ljava/lang/String;)V
    .locals 7
    .param p1, "seed"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    .line 195
    .local v3, "sys":Ljava/util/Properties;
    new-instance v2, Lc8/ZZn;

    invoke-direct {v2, p0}, Lc8/ZZn;-><init>(Lcom/youku/us/baseframework/security/Yarrow;)V

    .line 196
    .local v2, "startupEntropy":Lc8/ZZn;
    invoke-virtual {v3}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    .local v0, "enums":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 198
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/youku/us/baseframework/security/Yarrow;->consumeString(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/youku/us/baseframework/security/Yarrow;->consumeString(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/youku/us/baseframework/security/Yarrow;->consumeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {p0, v2, v4, v5, v6}, Lcom/youku/us/baseframework/security/Yarrow;->acceptEntropy(Lc8/ZZn;JI)V

    .line 206
    invoke-direct {p0, p1}, Lcom/youku/us/baseframework/security/Yarrow;->read_seed(Ljava/lang/String;)V

    .line 207
    return-void

    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private estimateEntropy(Lc8/ZZn;J)I
    .locals 6
    .param p1, "source"    # Lc8/ZZn;
    .param p2, "newVal"    # J

    .prologue
    .line 231
    iget-wide v4, p1, Lc8/ZZn;->lastVal:J

    sub-long v4, p2, v4

    long-to-int v0, v4

    .line 232
    .local v0, "delta":I
    iget v3, p1, Lc8/ZZn;->lastDelta:I

    sub-int v1, v0, v3

    .line 233
    .local v1, "delta2":I
    iput v0, p1, Lc8/ZZn;->lastDelta:I

    .line 234
    iget v3, p1, Lc8/ZZn;->lastDelta2:I

    sub-int v2, v1, v3

    .line 235
    .local v2, "delta3":I
    iput v1, p1, Lc8/ZZn;->lastDelta2:I

    .line 236
    if-gez v0, :cond_0

    .line 237
    neg-int v0, v0

    .line 239
    :cond_0
    if-gez v1, :cond_1

    .line 240
    neg-int v1, v1

    .line 242
    :cond_1
    if-gez v2, :cond_2

    .line 243
    neg-int v2, v2

    .line 245
    :cond_2
    if-le v0, v1, :cond_3

    .line 246
    move v0, v1

    .line 248
    :cond_3
    if-le v0, v2, :cond_4

    .line 249
    move v0, v2

    .line 251
    :cond_4
    shr-int/lit8 v0, v0, 0x1

    .line 252
    and-int/lit16 v0, v0, 0xfff

    .line 253
    shr-int/lit8 v3, v0, 0x8

    or-int/2addr v0, v3

    .line 254
    shr-int/lit8 v3, v0, 0x4

    or-int/2addr v0, v3

    .line 255
    shr-int/lit8 v3, v0, 0x2

    or-int/2addr v0, v3

    .line 256
    shr-int/lit8 v3, v0, 0x1

    or-int/2addr v0, v3

    .line 257
    shr-int/lit8 v0, v0, 0x1

    .line 258
    shr-int/lit8 v3, v0, 0x1

    and-int/lit16 v3, v3, 0x555

    sub-int/2addr v0, v3

    .line 259
    and-int/lit16 v3, v0, 0x333

    shr-int/lit8 v4, v0, 0x2

    and-int/lit16 v4, v4, 0x333

    add-int v0, v3, v4

    .line 260
    shr-int/lit8 v3, v0, 0x4

    add-int/2addr v0, v3

    .line 261
    shr-int/lit8 v3, v0, 0x8

    add-int/2addr v0, v3

    .line 262
    iput-wide p2, p1, Lc8/ZZn;->lastVal:J

    .line 263
    and-int/lit8 v3, v0, 0xf

    return v3
.end method

.method private fast_pool_reseed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 267
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 268
    .local v1, "v0":[B
    move-object v2, v1

    .line 269
    .local v2, "vi":[B
    const/4 v0, 0x0

    .local v0, "i":B
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 270
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->reseed_ctx:Ljava/security/MessageDigest;

    array-length v4, v2

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 271
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->reseed_ctx:Ljava/security/MessageDigest;

    array-length v4, v1

    invoke-virtual {v3, v1, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 272
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->reseed_ctx:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update(B)V

    .line 273
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->reseed_ctx:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 269
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 275
    :cond_0
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->tmp:[B

    iget-object v4, p0, Lcom/youku/us/baseframework/security/Yarrow;->tmp:[B

    array-length v4, v4

    invoke-virtual {p0, v2, v3, v5, v4}, Lcom/youku/us/baseframework/security/Yarrow;->makeKey([B[BII)V

    .line 276
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->tmp:[B

    invoke-direct {p0, v3}, Lcom/youku/us/baseframework/security/Yarrow;->rekey([B)V

    .line 277
    invoke-virtual {p0, v1}, Lcom/youku/us/baseframework/security/Yarrow;->wipe([B)V

    .line 278
    iput v5, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_entropy:I

    .line 279
    sget-object v3, Lcom/youku/us/baseframework/security/Yarrow;->seedfile:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/youku/us/baseframework/security/Yarrow;->write_seed(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private final generateOutput()V
    .locals 3

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->counterInc()V

    .line 211
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->cipher_ctx:Lc8/VZn;

    iget-object v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->counter:[B

    iget-object v2, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    invoke-virtual {v0, v1, v2}, Lc8/VZn;->encrypt([B[B)V

    .line 212
    iget v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_count:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    iput v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_count:I

    .line 214
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->tmp:[B

    invoke-virtual {p0, v0}, Lcom/youku/us/baseframework/security/Yarrow;->nextBytes([B)V

    .line 215
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->tmp:[B

    invoke-direct {p0, v0}, Lcom/youku/us/baseframework/security/Yarrow;->rekey([B)V

    .line 217
    :cond_0
    return-void
.end method

.method private generator_init(I)V
    .locals 1
    .param p1, "nBits"    # I

    .prologue
    .line 283
    new-instance v0, Lc8/VZn;

    invoke-direct {v0}, Lc8/VZn;-><init>()V

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->cipher_ctx:Lc8/VZn;

    .line 284
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    .line 285
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->counter:[B

    .line 286
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->allZeroString:[B

    .line 287
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->tmp:[B

    .line 288
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    array-length v0, v0

    iput v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->fetch_counter:I

    .line 289
    return-void
.end method

.method private declared-synchronized getBytes(I)I
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->fetch_counter:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 221
    const/4 v1, 0x0

    iput v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->fetch_counter:I

    .line 222
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->generateOutput()V

    .line 223
    invoke-direct {p0, p1}, Lcom/youku/us/baseframework/security/Yarrow;->getBytes(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 227
    :goto_0
    monitor-exit p0

    return v0

    .line 225
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->fetch_counter:I

    .line 226
    .local v0, "rv":I
    iget v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->fetch_counter:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->fetch_counter:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    .end local v0    # "rv":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private read_seed(Ljava/lang/String;)V
    .locals 10
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x20

    .line 292
    new-instance v5, Lc8/ZZn;

    invoke-direct {v5, p0}, Lc8/ZZn;-><init>(Lcom/youku/us/baseframework/security/Yarrow;)V

    .line 294
    .local v5, "seedFile":Lc8/ZZn;
    const/4 v0, 0x0

    .line 296
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v9, :cond_0

    .line 298
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    const/16 v8, 0x40

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/youku/us/baseframework/security/Yarrow;->acceptEntropy(Lc8/ZZn;JI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 297
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 308
    :cond_0
    if-eqz v1, :cond_4

    .line 309
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 314
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "i":I
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool_reseed()V

    .line 315
    return-void

    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v6

    .line 301
    :goto_2
    :try_start_3
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 302
    .local v4, "rand":Ljava/util/Random;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v9, :cond_2

    .line 303
    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    const/16 v8, 0x40

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/youku/us/baseframework/security/Yarrow;->acceptEntropy(Lc8/ZZn;JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 304
    .end local v3    # "i":I
    .end local v4    # "rand":Ljava/util/Random;
    :catch_1
    move-exception v2

    .line 305
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "PRNG cannot do initial seed"

    invoke-static {v6, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v0, :cond_1

    .line 309
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 311
    :catch_2
    move-exception v2

    .line 312
    .restart local v2    # "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v6, "Could not read seed properly"

    invoke-static {v6, v2}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v0, :cond_3

    .line 309
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_3
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 311
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "i":I
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .line 308
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :cond_4
    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method private rekey([B)V
    .locals 3
    .param p1, "key"    # [B

    .prologue
    .line 318
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->cipher_ctx:Lc8/VZn;

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Lc8/VZn;->makeKey([BI)V

    .line 319
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->cipher_ctx:Lc8/VZn;

    iget-object v1, p0, Lcom/youku/us/baseframework/security/Yarrow;->allZeroString:[B

    iget-object v2, p0, Lcom/youku/us/baseframework/security/Yarrow;->counter:[B

    invoke-virtual {v0, v1, v2}, Lc8/VZn;->encrypt([B[B)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/youku/us/baseframework/security/Yarrow;->wipe([B)V

    .line 321
    return-void
.end method

.method private reseed_init()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 324
    const-string/jumbo v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->reseed_ctx:Ljava/security/MessageDigest;

    .line 325
    return-void
.end method

.method private slow_pool_reseed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 328
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_pool:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 329
    .local v2, "slow_hash":[B
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool:Ljava/security/MessageDigest;

    array-length v4, v2

    invoke-virtual {v3, v2, v5, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 330
    invoke-direct {p0}, Lcom/youku/us/baseframework/security/Yarrow;->fast_pool_reseed()V

    .line 331
    iput v5, p0, Lcom/youku/us/baseframework/security/Yarrow;->slow_entropy:I

    .line 332
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(I)V

    .line 333
    .local v0, "ZERO":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->entropySeen:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, "enums":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/youku/us/baseframework/security/Yarrow$EntropySource;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->entropySeen:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 335
    :cond_0
    return-void
.end method

.method private write_seed(Ljava/lang/String;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 339
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 340
    .local v0, "dos":Ljava/io/DataOutputStream;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/youku/us/baseframework/security/Yarrow;->nextLong()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 340
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 344
    :catch_0
    move-exception v1

    .line 345
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Could not write seed"

    invoke-static {v3, v1}, Lc8/Oao;->warn(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public acceptEntropy(Lc8/ZZn;JI)V
    .locals 2
    .param p1, "source"    # Lc8/ZZn;
    .param p2, "data"    # J
    .param p4, "entropyGuess"    # I

    .prologue
    .line 61
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, p3}, Lcom/youku/us/baseframework/security/Yarrow;->estimateEntropy(Lc8/ZZn;J)I

    move-result v1

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, p2, p3, p1, v0}, Lcom/youku/us/baseframework/security/Yarrow;->accept_entropy(JLc8/ZZn;I)V

    .line 62
    return-void
.end method

.method public acceptTimerEntropy(Lc8/ZZn;)V
    .locals 5
    .param p1, "timer"    # Lc8/ZZn;

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 66
    .local v0, "now":J
    iget-wide v2, p1, Lc8/ZZn;->lastVal:J

    sub-long v2, v0, v2

    const/16 v4, 0x20

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/youku/us/baseframework/security/Yarrow;->acceptEntropy(Lc8/ZZn;JI)V

    .line 67
    return-void
.end method

.method public makeKey([B[BII)V
    .locals 9
    .param p1, "entropy"    # [B
    .param p2, "key"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .prologue
    const/16 v8, 0x14

    .line 71
    :try_start_0
    const-string/jumbo v6, "SHA1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 72
    .local v1, "ctx":Ljava/security/MessageDigest;
    const/4 v5, 0x0

    .line 73
    .local v5, "ic":I
    :goto_0
    if-lez p4, :cond_2

    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_0

    .line 76
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/security/MessageDigest;->update(B)V

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_0
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {v1, p1, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 80
    if-le p4, v8, :cond_1

    .line 81
    const/16 v6, 0x14

    invoke-virtual {v1, p2, p3, v6}, Ljava/security/MessageDigest;->digest([BII)I

    .line 82
    const/16 v0, 0x14

    .line 88
    .local v0, "bc":I
    :goto_2
    add-int/2addr p3, v0

    .line 89
    sub-int/2addr p4, v0

    .line 90
    goto :goto_0

    .line 84
    .end local v0    # "bc":I
    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 85
    .local v3, "hash":[B
    array-length v6, v3

    invoke-static {p4, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 86
    .restart local v0    # "bc":I
    const/4 v6, 0x0

    invoke-static {v3, v6, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 92
    .end local v0    # "bc":I
    .end local v1    # "ctx":Ljava/security/MessageDigest;
    .end local v3    # "hash":[B
    .end local v4    # "i":I
    .end local v5    # "ic":I
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Could not generate key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 91
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "ctx":Ljava/security/MessageDigest;
    .restart local v5    # "ic":I
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/youku/us/baseframework/security/Yarrow;->wipe([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    return-void
.end method

.method protected next(I)I
    .locals 6
    .param p1, "bits"    # I

    .prologue
    const/4 v5, 0x0

    .line 102
    sget-object v3, Lcom/youku/us/baseframework/security/Yarrow;->bitTable:[[I

    aget-object v1, v3, p1

    .line 103
    .local v1, "parameters":[I
    aget v3, v1, v5

    invoke-direct {p0, v3}, Lcom/youku/us/baseframework/security/Yarrow;->getBytes(I)I

    move-result v0

    .line 104
    .local v0, "offset":I
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    aget-byte v2, v3, v0

    .line 105
    .local v2, "val":I
    aget v3, v1, v5

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 106
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x18

    iget-object v4, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    add-int/lit8 v5, v0, 0x3

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 112
    :cond_0
    :goto_0
    const/4 v3, 0x1

    aget v3, v1, v3

    and-int/2addr v3, v2

    return v3

    .line 107
    :cond_1
    aget v3, v1, v5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 108
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x10

    iget-object v4, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    add-int/lit8 v5, v0, 0x2

    aget-byte v4, v4, v5

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    goto :goto_0

    .line 109
    :cond_2
    aget v3, v1, v5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 110
    iget-object v3, p0, Lcom/youku/us/baseframework/security/Yarrow;->output_buffer:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v3, v3, v4

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public wipe([B)V
    .locals 3
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/youku/us/baseframework/security/Yarrow;->ZERO_ARRAY:[B

    array-length v1, p1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-void
.end method
