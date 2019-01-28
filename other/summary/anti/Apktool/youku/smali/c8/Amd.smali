.class public Lc8/Amd;
.super Ljava/lang/Object;
.source "FieldData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private cachedExtension:Lc8/ymd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/ymd",
            "<**>;"
        }
    .end annotation
.end field

.field private unknownFieldData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Imd;",
            ">;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    .line 55
    return-void
.end method

.method constructor <init>(Lc8/ymd;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/ymd",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "extension":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    .line 50
    iput-object p2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method private toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lc8/Amd;->computeSerializedSize()I

    move-result v2

    new-array v1, v2, [B

    .line 185
    .local v1, "result":[B
    invoke-static {v1}, Lc8/umd;->newInstance([B)Lc8/umd;

    move-result-object v0

    .line 186
    .local v0, "output":Lc8/umd;
    invoke-virtual {p0, v0}, Lc8/Amd;->writeTo(Lc8/umd;)V

    .line 187
    return-object v1
.end method


# virtual methods
.method addUnknownField(Lc8/Imd;)V
    .locals 1
    .param p1, "unknownField"    # Lc8/Imd;

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method public final clone()Lc8/Amd;
    .locals 7

    .prologue
    .line 192
    new-instance v0, Lc8/Amd;

    invoke-direct {v0}, Lc8/Amd;-><init>()V

    .line 194
    .local v0, "clone":Lc8/Amd;
    :try_start_0
    iget-object v5, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    iput-object v5, v0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    .line 195
    iget-object v5, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    if-nez v5, :cond_1

    .line 196
    const/4 v5, 0x0

    iput-object v5, v0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    .line 204
    :goto_0
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 206
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, Lc8/Gmd;

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v5, Lc8/Gmd;

    invoke-virtual {v5}, Lc8/Gmd;->clone()Lc8/Gmd;

    move-result-object v5

    iput-object v5, v0, Lc8/Amd;->value:Ljava/lang/Object;

    .line 235
    :cond_0
    :goto_1
    return-object v0

    .line 198
    :cond_1
    iget-object v5, v0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    iget-object v6, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 236
    :catch_0
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 208
    .end local v2    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_3

    .line 209
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lc8/Amd;->value:Ljava/lang/Object;

    goto :goto_1

    .line 210
    :cond_3
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [[B

    if-eqz v5, :cond_4

    .line 211
    iget-object v4, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v4, [[B

    .line 212
    .local v4, "valueArray":[[B
    array-length v5, v4

    new-array v1, v5, [[B

    .line 213
    .local v1, "cloneArray":[[B
    iput-object v1, v0, Lc8/Amd;->value:Ljava/lang/Object;

    .line 214
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 215
    aget-object v5, v4, v3

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    aput-object v5, v1, v3

    .line 214
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 217
    .end local v1    # "cloneArray":[[B
    .end local v3    # "i":I
    .end local v4    # "valueArray":[[B
    :cond_4
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [Z

    if-eqz v5, :cond_5

    .line 218
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v5, [Z

    invoke-virtual {v5}, [Z->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lc8/Amd;->value:Ljava/lang/Object;

    goto :goto_1

    .line 219
    :cond_5
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [I

    if-eqz v5, :cond_6

    .line 220
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v5, [I

    invoke-virtual {v5}, [I->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lc8/Amd;->value:Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_6
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [J

    if-eqz v5, :cond_7

    .line 222
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v5, [J

    invoke-virtual {v5}, [J->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lc8/Amd;->value:Ljava/lang/Object;

    goto :goto_1

    .line 223
    :cond_7
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [F

    if-eqz v5, :cond_8

    .line 224
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v5, [F

    invoke-virtual {v5}, [F->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lc8/Amd;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 225
    :cond_8
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [D

    if-eqz v5, :cond_9

    .line 226
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v5, [D

    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lc8/Amd;->value:Ljava/lang/Object;

    goto/16 :goto_1

    .line 227
    :cond_9
    iget-object v5, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v5, v5, [Lc8/Gmd;

    if-eqz v5, :cond_0

    .line 228
    iget-object v4, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v4, [Lc8/Gmd;

    .line 229
    .local v4, "valueArray":[Lc8/Gmd;
    array-length v5, v4

    new-array v1, v5, [Lc8/Gmd;

    .line 230
    .local v1, "cloneArray":[Lc8/Gmd;
    iput-object v1, v0, Lc8/Amd;->value:Ljava/lang/Object;

    .line 231
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 232
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lc8/Gmd;->clone()Lc8/Gmd;

    move-result-object v5

    aput-object v5, v1, v3
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 231
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lc8/Amd;->clone()Lc8/Amd;

    move-result-object v0

    return-object v0
.end method

.method computeSerializedSize()I
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "size":I
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 101
    iget-object v2, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    iget-object v3, p0, Lc8/Amd;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lc8/ymd;->computeSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 107
    :cond_0
    return v0

    .line 103
    :cond_1
    iget-object v2, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Imd;

    .line 104
    .local v1, "unknownField":Lc8/Imd;
    invoke-virtual {v1}, Lc8/Imd;->computeSerializedSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 105
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 122
    if-ne p1, p0, :cond_1

    .line 123
    const/4 v2, 0x1

    .line 163
    :cond_0
    :goto_0
    return v2

    .line 125
    :cond_1
    instance-of v3, p1, Lc8/Amd;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 129
    check-cast v1, Lc8/Amd;

    .line 130
    .local v1, "other":Lc8/Amd;
    iget-object v3, p0, Lc8/Amd;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    if-eqz v3, :cond_9

    .line 134
    iget-object v3, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    iget-object v4, v1, Lc8/Amd;->cachedExtension:Lc8/ymd;

    if-ne v3, v4, :cond_0

    .line 137
    iget-object v2, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    iget-object v2, v2, Lc8/ymd;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 141
    :cond_2
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v2, v2, [B

    if-eqz v2, :cond_3

    .line 142
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_0

    .line 143
    :cond_3
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v2, v2, [I

    if-eqz v2, :cond_4

    .line 144
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v2, [I

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v3, [I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    goto :goto_0

    .line 145
    :cond_4
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v2, v2, [J

    if-eqz v2, :cond_5

    .line 146
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v2, [J

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v3, [J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    goto :goto_0

    .line 147
    :cond_5
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v2, v2, [F

    if-eqz v2, :cond_6

    .line 148
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v2, [F

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v3, [F

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    goto :goto_0

    .line 149
    :cond_6
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v2, v2, [D

    if-eqz v2, :cond_7

    .line 150
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v2, [D

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v3, [D

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v2

    goto/16 :goto_0

    .line 151
    :cond_7
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    instance-of v2, v2, [Z

    if-eqz v2, :cond_8

    .line 152
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v2, [Z

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v3, [Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v2

    goto/16 :goto_0

    .line 154
    :cond_8
    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iget-object v3, v1, Lc8/Amd;->value:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 157
    :cond_9
    iget-object v2, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_a

    .line 159
    iget-object v2, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    iget-object v3, v1, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto/16 :goto_0

    .line 163
    :cond_a
    :try_start_0
    invoke-direct {p0}, Lc8/Amd;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1}, Lc8/Amd;->toByteArray()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto/16 :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method getUnknownField(I)Lc8/Imd;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :cond_1
    iget-object v1, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 66
    iget-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Imd;

    goto :goto_0
.end method

.method getUnknownFieldSize()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method getValue(Lc8/ymd;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/ymd",
            "<*TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "extension":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    iget-object v0, p0, Lc8/Amd;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    if-eq v0, p1, :cond_1

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tried to getExtension with a differernt Extension."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    .line 86
    iget-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-virtual {p1, v0}, Lc8/ymd;->getValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/Amd;->value:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    .line 89
    :cond_1
    iget-object v0, p0, Lc8/Amd;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 172
    const/16 v1, 0x11

    .line 175
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lc8/Amd;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/lit16 v1, v2, 0x20f

    .line 180
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method setValue(Lc8/ymd;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/ymd",
            "<*TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "extension":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<*TT;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    .line 94
    iput-object p2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    .line 96
    return-void
.end method

.method writeTo(Lc8/umd;)V
    .locals 3
    .param p1, "output"    # Lc8/umd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    iget-object v1, p0, Lc8/Amd;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 112
    iget-object v1, p0, Lc8/Amd;->cachedExtension:Lc8/ymd;

    iget-object v2, p0, Lc8/Amd;->value:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Lc8/ymd;->writeTo(Ljava/lang/Object;Lc8/umd;)V

    .line 118
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v1, p0, Lc8/Amd;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Imd;

    .line 115
    .local v0, "unknownField":Lc8/Imd;
    invoke-virtual {v0, p1}, Lc8/Imd;->writeTo(Lc8/umd;)V

    goto :goto_0
.end method
