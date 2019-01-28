.class public final Lc8/Bmd;
.super Ljava/lang/Object;
.source "InternalNano.java"


# static fields
.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final LAZY_INIT_LOCK:Ljava/lang/Object;

.field public static final TYPE_BOOL:I = 0x8

.field public static final TYPE_BYTES:I = 0xc

.field public static final TYPE_DOUBLE:I = 0x1

.field public static final TYPE_ENUM:I = 0xe

.field public static final TYPE_FIXED32:I = 0x7

.field public static final TYPE_FIXED64:I = 0x6

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_GROUP:I = 0xa

.field public static final TYPE_INT32:I = 0x5

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_MESSAGE:I = 0xb

.field public static final TYPE_SFIXED32:I = 0xf

.field public static final TYPE_SFIXED64:I = 0x10

.field public static final TYPE_SINT32:I = 0x11

.field public static final TYPE_SINT64:I = 0x12

.field public static final TYPE_STRING:I = 0x9

.field public static final TYPE_UINT32:I = 0xd

.field public static final TYPE_UINT64:I = 0x4

.field protected static final UTF_8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc8/Bmd;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc8/Bmd;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesDefaultValue(Ljava/lang/String;)[B
    .locals 1
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 128
    sget-object v0, Lc8/Bmd;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static cloneUnknownFieldData(Lc8/vmd;Lc8/vmd;)V
    .locals 1
    .param p0, "original"    # Lc8/vmd;
    .param p1, "cloned"    # Lc8/vmd;

    .prologue
    .line 543
    iget-object v0, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    invoke-virtual {v0}, Lc8/zmd;->clone()Lc8/zmd;

    move-result-object v0

    iput-object v0, p1, Lc8/vmd;->unknownFieldData:Lc8/zmd;

    .line 546
    :cond_0
    return-void
.end method

.method public static computeMapFieldSize(Ljava/util/Map;III)I
    .locals 9
    .param p1, "number"    # I
    .param p2, "keyType"    # I
    .param p3, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;III)I"
        }
    .end annotation

    .prologue
    .line 463
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v3, 0x0

    .line 464
    .local v3, "size":I
    invoke-static {p1}, Lc8/umd;->computeTagSize(I)I

    move-result v4

    .line 465
    .local v4, "tagSize":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 466
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 467
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 468
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    if-nez v5, :cond_1

    .line 469
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "keys and values in maps cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 472
    :cond_1
    const/4 v7, 0x1

    .line 473
    invoke-static {v7, p2, v2}, Lc8/umd;->computeFieldSize(IILjava/lang/Object;)I

    move-result v7

    const/4 v8, 0x2

    .line 474
    invoke-static {v8, p3, v5}, Lc8/umd;->computeFieldSize(IILjava/lang/Object;)I

    move-result v8

    add-int v1, v7, v8

    .line 475
    .local v1, "entrySize":I
    add-int v7, v4, v1

    .line 476
    invoke-static {v1}, Lc8/umd;->computeRawVarint32Size(I)I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 477
    goto :goto_0

    .line 478
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "entrySize":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return v3
.end method

.method public static copyFromUtf8(Ljava/lang/String;)[B
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lc8/Bmd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method

.method public static equals(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/util/Map",
            "<TK;TV;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "a":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "b":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 487
    if-ne p0, p1, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v1

    .line 490
    :cond_1
    if-nez p0, :cond_2

    .line 491
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 493
    :cond_2
    if-nez p1, :cond_3

    .line 494
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 496
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 497
    goto :goto_0

    .line 499
    :cond_4
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 500
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move v1, v2

    .line 501
    goto :goto_0

    .line 503
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Bmd;->equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    .line 504
    goto :goto_0
.end method

.method public static equals([D[D)Z
    .locals 1
    .param p0, "field1"    # [D
    .param p1, "field2"    # [D

    .prologue
    .line 180
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 183
    :goto_0
    return v0

    .line 181
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 183
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([F[F)Z
    .locals 1
    .param p0, "field1"    # [F
    .param p1, "field2"    # [F

    .prologue
    .line 168
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 169
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 171
    :goto_0
    return v0

    .line 169
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([I[I)Z
    .locals 1
    .param p0, "field1"    # [I
    .param p1, "field2"    # [I

    .prologue
    .line 144
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 145
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    .line 145
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([J[J)Z
    .locals 1
    .param p0, "field1"    # [J
    .param p1, "field2"    # [J

    .prologue
    .line 156
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 157
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 159
    :goto_0
    return v0

    .line 157
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 10
    .param p0, "field1"    # [Ljava/lang/Object;
    .param p1, "field2"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "index1":I
    if-nez p0, :cond_0

    move v4, v6

    .line 243
    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .line 244
    .local v3, "index2":I
    if-nez p1, :cond_1

    move v5, v6

    .line 246
    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v8, p0, v2

    if-nez v8, :cond_2

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 242
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    goto :goto_0

    .line 244
    .restart local v3    # "index2":I
    .restart local v4    # "length1":I
    :cond_1
    array-length v5, p1

    goto :goto_1

    .line 249
    .restart local v5    # "length2":I
    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v8, p1, v3

    if-nez v8, :cond_3

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 252
    :cond_3
    if-lt v2, v4, :cond_5

    move v0, v7

    .line 253
    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_6

    move v1, v7

    .line 254
    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v6, v7

    .line 262
    :cond_4
    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_5
    move v0, v6

    .line 252
    goto :goto_3

    .restart local v0    # "atEndOf1":Z
    :cond_6
    move v1, v6

    .line 253
    goto :goto_4

    .line 257
    .restart local v1    # "atEndOf2":Z
    :cond_7
    if-ne v0, v1, :cond_4

    .line 260
    aget-object v8, p0, v2

    aget-object v9, p1, v3

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 264
    add-int/lit8 v2, v2, 0x1

    .line 265
    add-int/lit8 v3, v3, 0x1

    .line 266
    goto :goto_1
.end method

.method public static equals([Z[Z)Z
    .locals 1
    .param p0, "field1"    # [Z
    .param p1, "field2"    # [Z

    .prologue
    .line 192
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_3

    .line 193
    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 195
    :cond_3
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static equals([[B[[B)Z
    .locals 10
    .param p0, "field1"    # [[B
    .param p1, "field2"    # [[B

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 206
    const/4 v2, 0x0

    .line 207
    .local v2, "index1":I
    if-nez p0, :cond_0

    move v4, v6

    .line 208
    .local v4, "length1":I
    :goto_0
    const/4 v3, 0x0

    .line 209
    .local v3, "index2":I
    if-nez p1, :cond_1

    move v5, v6

    .line 211
    .local v5, "length2":I
    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v8, p0, v2

    if-nez v8, :cond_2

    .line 212
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 207
    .end local v3    # "index2":I
    .end local v4    # "length1":I
    .end local v5    # "length2":I
    :cond_0
    array-length v4, p0

    goto :goto_0

    .line 209
    .restart local v3    # "index2":I
    .restart local v4    # "length1":I
    :cond_1
    array-length v5, p1

    goto :goto_1

    .line 214
    .restart local v5    # "length2":I
    :cond_2
    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v8, p1, v3

    if-nez v8, :cond_3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 217
    :cond_3
    if-lt v2, v4, :cond_5

    move v0, v7

    .line 218
    .local v0, "atEndOf1":Z
    :goto_3
    if-lt v3, v5, :cond_6

    move v1, v7

    .line 219
    .local v1, "atEndOf2":Z
    :goto_4
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v6, v7

    .line 227
    :cond_4
    return v6

    .end local v0    # "atEndOf1":Z
    .end local v1    # "atEndOf2":Z
    :cond_5
    move v0, v6

    .line 217
    goto :goto_3

    .restart local v0    # "atEndOf1":Z
    :cond_6
    move v1, v6

    .line 218
    goto :goto_4

    .line 222
    .restart local v1    # "atEndOf2":Z
    :cond_7
    if-ne v0, v1, :cond_4

    .line 225
    aget-object v8, p0, v2

    aget-object v9, p1, v3

    invoke-static {v8, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 229
    add-int/lit8 v2, v2, 0x1

    .line 230
    add-int/lit8 v3, v3, 0x1

    .line 231
    goto :goto_1
.end method

.method private static equalsMapValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 511
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 512
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "keys and values in maps cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 515
    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    .line 516
    check-cast p0, [B

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, [B

    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 518
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static hashCode(Ljava/util/Map;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;)I"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez p0, :cond_1

    .line 523
    const/4 v1, 0x0

    .line 530
    :cond_0
    return v1

    .line 525
    :cond_1
    const/4 v1, 0x0

    .line 526
    .local v1, "result":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 527
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lc8/Bmd;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v3

    .line 528
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lc8/Bmd;->hashCodeForMap(Ljava/lang/Object;)I

    move-result v4

    xor-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 529
    goto :goto_0
.end method

.method public static hashCode([D)I
    .locals 1
    .param p0, "field"    # [D

    .prologue
    .line 298
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([F)I
    .locals 1
    .param p0, "field"    # [F

    .prologue
    .line 290
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([I)I
    .locals 1
    .param p0, "field"    # [I

    .prologue
    .line 274
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([J)I
    .locals 1
    .param p0, "field"    # [J

    .prologue
    .line 282
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([Ljava/lang/Object;)I
    .locals 6
    .param p0, "field"    # [Ljava/lang/Object;

    .prologue
    .line 332
    const/4 v2, 0x0

    .line 333
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 334
    aget-object v0, p0, v1

    .line 335
    .local v0, "element":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 336
    mul-int/lit8 v4, v2, 0x1f

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int v2, v4, v5

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/Object;
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    goto :goto_0

    .line 339
    .restart local v3    # "size":I
    :cond_2
    return v2
.end method

.method public static hashCode([Z)I
    .locals 1
    .param p0, "field"    # [Z

    .prologue
    .line 306
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Z)I

    move-result v0

    goto :goto_0
.end method

.method public static hashCode([[B)I
    .locals 6
    .param p0, "field"    # [[B

    .prologue
    .line 315
    const/4 v2, 0x0

    .line 316
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    if-nez p0, :cond_1

    const/4 v3, 0x0

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 317
    aget-object v0, p0, v1

    .line 318
    .local v0, "element":[B
    if-eqz v0, :cond_0

    .line 319
    mul-int/lit8 v4, v2, 0x1f

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v5

    add-int v2, v4, v5

    .line 316
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "element":[B
    .end local v3    # "size":I
    :cond_1
    array-length v3, p0

    goto :goto_0

    .line 322
    .restart local v3    # "size":I
    :cond_2
    return v2
.end method

.method private static hashCodeForMap(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 534
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 535
    check-cast p0, [B

    .end local p0    # "o":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    .line 537
    .restart local p0    # "o":Ljava/lang/Object;
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static final mergeMapEntry(Lc8/tmd;Ljava/util/Map;Lc8/Emd;IILjava/lang/Object;II)Ljava/util/Map;
    .locals 5
    .param p0, "input"    # Lc8/tmd;
    .param p2, "mapFactory"    # Lc8/Emd;
    .param p3, "keyType"    # I
    .param p4, "valueType"    # I
    .param p6, "keyTag"    # I
    .param p7, "valueTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/tmd;",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lc8/Emd;",
            "IITV;II)",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, p1}, Lc8/Emd;->forMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 401
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v1

    .line 402
    .local v1, "length":I
    invoke-virtual {p0, v1}, Lc8/tmd;->pushLimit(I)I

    move-result v2

    .line 403
    .local v2, "oldLimit":I
    const/4 v0, 0x0

    .line 405
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lc8/tmd;->readTag()I

    move-result v3

    .line 406
    .local v3, "tag":I
    if-eqz v3, :cond_4

    .line 409
    if-ne v3, p6, :cond_1

    .line 410
    invoke-virtual {p0, p3}, Lc8/tmd;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 411
    .end local v0    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    if-ne v3, p7, :cond_3

    .line 412
    const/16 v4, 0xb

    if-ne p4, v4, :cond_2

    move-object v4, p5

    .line 413
    check-cast v4, Lc8/Gmd;

    invoke-virtual {p0, v4}, Lc8/tmd;->readMessage(Lc8/Gmd;)V

    goto :goto_0

    .line 415
    :cond_2
    invoke-virtual {p0, p4}, Lc8/tmd;->readPrimitiveField(I)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p0, v3}, Lc8/tmd;->skipField(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lc8/tmd;->checkLastTagWas(I)V

    .line 424
    invoke-virtual {p0, v2}, Lc8/tmd;->popLimit(I)V

    .line 426
    if-nez v0, :cond_5

    .line 428
    invoke-static {p3}, Lc8/Bmd;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object v0

    .line 431
    :cond_5
    if-nez p5, :cond_6

    .line 433
    invoke-static {p4}, Lc8/Bmd;->primitiveDefaultValue(I)Ljava/lang/Object;

    move-result-object p5

    .line 436
    :cond_6
    invoke-interface {p1, v0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    return-object p1
.end method

.method private static primitiveDefaultValue(I)Ljava/lang/Object;
    .locals 3
    .param p0, "type"    # I

    .prologue
    .line 342
    packed-switch p0, :pswitch_data_0

    .line 369
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a primitive type."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 365
    :goto_0
    return-object v0

    .line 346
    :pswitch_2
    sget-object v0, Lc8/Jmd;->EMPTY_BYTES:[B

    goto :goto_0

    .line 348
    :pswitch_3
    const-string/jumbo v0, ""

    goto :goto_0

    .line 350
    :pswitch_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 352
    :pswitch_5
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    .line 359
    :pswitch_6
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 365
    :pswitch_7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static serializeMapField(Lc8/umd;Ljava/util/Map;III)V
    .locals 9
    .param p0, "output"    # Lc8/umd;
    .param p2, "number"    # I
    .param p3, "keyType"    # I
    .param p4, "valueType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/umd;",
            "Ljava/util/Map",
            "<TK;TV;>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v8, 0x1

    const/4 v7, 0x2

    .line 444
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 445
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 446
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 447
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_0

    if-nez v3, :cond_1

    .line 448
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "keys and values in maps cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 452
    :cond_1
    invoke-static {v8, p3, v2}, Lc8/umd;->computeFieldSize(IILjava/lang/Object;)I

    move-result v5

    .line 453
    invoke-static {v7, p4, v3}, Lc8/umd;->computeFieldSize(IILjava/lang/Object;)I

    move-result v6

    add-int v1, v5, v6

    .line 454
    .local v1, "entrySize":I
    invoke-virtual {p0, p2, v7}, Lc8/umd;->writeTag(II)V

    .line 455
    invoke-virtual {p0, v1}, Lc8/umd;->writeRawVarint32(I)V

    .line 456
    invoke-virtual {p0, v8, p3, v2}, Lc8/umd;->writeField(IILjava/lang/Object;)V

    .line 457
    invoke-virtual {p0, v7, p4, v3}, Lc8/umd;->writeField(IILjava/lang/Object;)V

    goto :goto_0

    .line 459
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v1    # "entrySize":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_2
    return-void
.end method

.method public static stringDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "bytes"    # Ljava/lang/String;

    .prologue
    .line 116
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lc8/Bmd;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Lc8/Bmd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
