.class public Lc8/zao;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static final CACHE_SIZE:I = 0x49

.field private static EMPTY:[Ljava/lang/Object;

.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lc8/zao;->EMPTY:[Ljava/lang/Object;

    .line 32
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lc8/zao;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static varargs concatAll([Ljava/lang/Object;[[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "first":[Ljava/lang/Object;, "[TT;"
    .local p1, "rest":[[Ljava/lang/Object;, "[[TT;"
    const/4 v5, 0x0

    .line 172
    array-length v3, p0

    .line 173
    .local v3, "totalLength":I
    array-length v6, p1

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p1, v4

    .line 174
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    array-length v7, v0

    add-int/2addr v3, v7

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_0
    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    .line 177
    .local v2, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    .line 178
    .local v1, "offset":I
    array-length v6, p1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p1, v4

    .line 179
    .restart local v0    # "array":[Ljava/lang/Object;, "[TT;"
    array-length v7, v0

    invoke-static {v0, v5, v2, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    array-length v7, v0

    add-int/2addr v1, v7

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "array":[Ljava/lang/Object;, "[TT;"
    :cond_1
    return-object v2
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 151
    array-length v4, p0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v0, p0, v3

    .line 152
    .local v0, "element":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    .line 153
    if-nez p1, :cond_2

    .line 160
    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_1
    return v1

    .line 156
    .restart local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 151
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "element":Ljava/lang/Object;, "TT;"
    :cond_3
    move v1, v2

    .line 160
    goto :goto_1
.end method

.method public static emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "kind":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v2, Ljava/lang/Object;

    if-ne p0, v2, :cond_0

    .line 126
    sget-object v2, Lc8/zao;->EMPTY:[Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 139
    :goto_0
    return-object v2

    .line 129
    :cond_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0x49

    .line 130
    .local v0, "bucket":I
    sget-object v2, Lc8/zao;->sCache:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 132
    .local v1, "cache":Ljava/lang/Object;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    if-eq v2, p0, :cond_2

    .line 133
    :cond_1
    const/4 v2, 0x0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 134
    sget-object v2, Lc8/zao;->sCache:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 139
    :cond_2
    check-cast v1, [Ljava/lang/Object;

    .end local v1    # "cache":Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public static equals([B[BI)Z
    .locals 5
    .param p0, "array1"    # [B
    .param p1, "array2"    # [B
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 83
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    if-lt v3, p2, :cond_2

    array-length v3, p1

    if-ge v3, p2, :cond_3

    :cond_2
    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_0

    .line 90
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 91
    goto :goto_0

    .line 89
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "array1"    # [Ljava/lang/Object;
    .param p1, "array2"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v3, p0

    array-length v4, p1

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 109
    goto :goto_0

    .line 111
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_0

    .line 112
    aget-object v3, p0, v0

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 113
    goto :goto_0

    .line 111
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static idealBooleanArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 47
    invoke-static {p0}, Lc8/zao;->idealByteArraySize(I)I

    move-result v0

    return v0
.end method

.method public static idealByteArraySize(I)I
    .locals 3
    .param p0, "need"    # I

    .prologue
    const/4 v2, 0x1

    .line 39
    const/4 v0, 0x4

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 40
    shl-int v1, v2, v0

    add-int/lit8 v1, v1, -0xc

    if-gt p0, v1, :cond_1

    .line 41
    shl-int v1, v2, v0

    add-int/lit8 p0, v1, -0xc

    .line 43
    .end local p0    # "need":I
    :cond_0
    return p0

    .line 39
    .restart local p0    # "need":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static idealCharArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 55
    shl-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lc8/zao;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static idealFloatArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 63
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lc8/zao;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealIntArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 59
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lc8/zao;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealLongArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 71
    shl-int/lit8 v0, p0, 0x3

    invoke-static {v0}, Lc8/zao;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static idealObjectArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 67
    shl-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Lc8/zao;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static idealShortArraySize(I)I
    .locals 1
    .param p0, "need"    # I

    .prologue
    .line 51
    shl-int/lit8 v0, p0, 0x1

    invoke-static {v0}, Lc8/zao;->idealByteArraySize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method
