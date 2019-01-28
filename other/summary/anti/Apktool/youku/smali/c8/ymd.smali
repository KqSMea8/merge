.class public Lc8/ymd;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xmd;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lc8/vmd",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
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


# instance fields
.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final repeated:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lc8/ymd;->type:I

    .line 169
    iput-object p2, p0, Lc8/ymd;->clazz:Ljava/lang/Class;

    .line 170
    iput p3, p0, Lc8/ymd;->tag:I

    .line 171
    iput-boolean p4, p0, Lc8/ymd;->repeated:Z

    .line 172
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Class;IZLc8/wmd;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lc8/wmd;

    .prologue
    .line 46
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/ymd;-><init>(ILjava/lang/Class;IZ)V

    return-void
.end method

.method public static createMessageTyped(ILjava/lang/Class;I)Lc8/ymd;
    .locals 2
    .param p0, "type"    # I
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lc8/vmd",
            "<TM;>;T:",
            "Lc8/Gmd;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lc8/ymd",
            "<TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 87
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lc8/ymd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lc8/ymd;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createMessageTyped(ILjava/lang/Class;J)Lc8/ymd;
    .locals 4
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lc8/vmd",
            "<TM;>;T:",
            "Lc8/Gmd;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lc8/ymd",
            "<TM;TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lc8/ymd;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lc8/ymd;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createPrimitiveTyped(ILjava/lang/Class;J)Lc8/ymd;
    .locals 8
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lc8/vmd",
            "<TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lc8/ymd",
            "<TM;TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    .line 126
    new-instance v0, Lc8/xmd;

    long-to-int v3, p2

    move v1, p0

    move-object v2, p1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lc8/xmd;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method public static createRepeatedMessageTyped(ILjava/lang/Class;J)Lc8/ymd;
    .locals 4
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lc8/vmd",
            "<TM;>;T:",
            "Lc8/Gmd;",
            ">(I",
            "Ljava/lang/Class",
            "<[TT;>;J)",
            "Lc8/ymd",
            "<TM;[TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    new-instance v0, Lc8/ymd;

    long-to-int v1, p2

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lc8/ymd;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lc8/ymd;
    .locals 8
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .param p4, "nonPackedTag"    # J
    .param p6, "packedTag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lc8/vmd",
            "<TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;JJJ)",
            "Lc8/ymd",
            "<TM;TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lc8/xmd;

    long-to-int v3, p2

    const/4 v4, 0x1

    long-to-int v5, p4

    long-to-int v6, p6

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lc8/xmd;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method private getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Imd;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Imd;

    .line 194
    .local v0, "data":Lc8/Imd;
    iget-object v5, v0, Lc8/Imd;->bytes:[B

    array-length v5, v5

    if-eqz v5, :cond_0

    .line 195
    invoke-virtual {p0, v0, v3}, Lc8/ymd;->readDataInto(Lc8/Imd;Ljava/util/List;)V

    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "data":Lc8/Imd;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 200
    .local v4, "resultSize":I
    if-nez v4, :cond_3

    .line 201
    const/4 v2, 0x0

    .line 207
    :cond_2
    return-object v2

    .line 203
    :cond_3
    iget-object v5, p0, Lc8/ymd;->clazz:Ljava/lang/Class;

    iget-object v6, p0, Lc8/ymd;->clazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 204
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    .line 205
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Imd;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    const/4 v1, 0x0

    .line 217
    :goto_0
    return-object v1

    .line 216
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Imd;

    .line 217
    .local v0, "lastData":Lc8/Imd;
    iget-object v1, p0, Lc8/ymd;->clazz:Ljava/lang/Class;

    iget-object v2, v0, Lc8/Imd;->bytes:[B

    invoke-static {v2}, Lc8/tmd;->newInstance([B)Lc8/tmd;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/ymd;->readData(Lc8/tmd;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 5
    .param p1, "array"    # Ljava/lang/Object;

    .prologue
    .line 306
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    const/4 v3, 0x0

    .line 307
    .local v3, "size":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 308
    .local v0, "arrayLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 309
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 310
    .local v1, "element":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 311
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/ymd;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 308
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 314
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method computeSerializedSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 297
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    iget-boolean v0, p0, Lc8/ymd;->repeated:Z

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0, p1}, Lc8/ymd;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lc8/ymd;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method protected computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 319
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    iget v3, p0, Lc8/ymd;->tag:I

    invoke-static {v3}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v0

    .line 320
    .local v0, "fieldNumber":I
    iget v3, p0, Lc8/ymd;->type:I

    packed-switch v3, :pswitch_data_0

    .line 328
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lc8/ymd;->type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    move-object v1, p1

    .line 322
    check-cast v1, Lc8/Gmd;

    .line 323
    .local v1, "groupValue":Lc8/Gmd;
    invoke-static {v0, v1}, Lc8/umd;->computeGroupSize(ILc8/Gmd;)I

    move-result v3

    .line 326
    .end local v1    # "groupValue":Lc8/Gmd;
    :goto_0
    return v3

    :pswitch_1
    move-object v2, p1

    .line 325
    check-cast v2, Lc8/Gmd;

    .line 326
    .local v2, "messageValue":Lc8/Gmd;
    invoke-static {v0, v2}, Lc8/umd;->computeMessageSize(ILc8/Gmd;)I

    move-result v3

    goto :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Imd;",
            ">;)TT;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    if-nez p1, :cond_0

    .line 184
    const/4 v0, 0x0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lc8/ymd;->repeated:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lc8/ymd;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lc8/ymd;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected readData(Lc8/tmd;)Ljava/lang/Object;
    .locals 7
    .param p1, "input"    # Lc8/tmd;

    .prologue
    .line 222
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    iget-boolean v4, p0, Lc8/ymd;->repeated:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc8/ymd;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    .line 224
    .local v3, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_0
    iget v4, p0, Lc8/ymd;->type:I

    packed-switch v4, :pswitch_data_0

    .line 234
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unknown type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/ymd;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error creating instance of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 222
    .end local v0    # "e":Ljava/lang/InstantiationException;
    .end local v3    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v3, p0, Lc8/ymd;->clazz:Ljava/lang/Class;

    goto :goto_0

    .line 226
    .restart local v3    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :pswitch_0
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Gmd;

    .line 227
    .local v1, "group":Lc8/Gmd;
    iget v4, p0, Lc8/ymd;->tag:I

    invoke-static {v4}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lc8/tmd;->readGroup(Lc8/Gmd;I)V

    .line 232
    .end local v1    # "group":Lc8/Gmd;
    :goto_1
    return-object v1

    .line 230
    :pswitch_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Gmd;

    .line 231
    .local v2, "message":Lc8/Gmd;
    invoke-virtual {p1, v2}, Lc8/tmd;->readMessage(Lc8/Gmd;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 232
    goto :goto_1

    .line 239
    .end local v2    # "message":Lc8/Gmd;
    :catch_1
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error creating instance of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 242
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Error reading extension field"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readDataInto(Lc8/Imd;Ljava/util/List;)V
    .locals 1
    .param p1, "data"    # Lc8/Imd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Imd;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Lc8/Imd;->bytes:[B

    invoke-static {v0}, Lc8/tmd;->newInstance([B)Lc8/tmd;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ymd;->readData(Lc8/tmd;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lc8/umd;)V
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Lc8/umd;

    .prologue
    .line 287
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 288
    .local v0, "arrayLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 289
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 290
    .local v1, "element":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 291
    invoke-virtual {p0, v1, p2}, Lc8/ymd;->writeSingularData(Ljava/lang/Object;Lc8/umd;)V

    .line 288
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 294
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method protected writeSingularData(Ljava/lang/Object;Lc8/umd;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Lc8/umd;

    .prologue
    .line 263
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    :try_start_0
    iget v5, p0, Lc8/ymd;->tag:I

    invoke-virtual {p2, v5}, Lc8/umd;->writeRawVarint32(I)V

    .line 264
    iget v5, p0, Lc8/ymd;->type:I

    packed-switch v5, :pswitch_data_0

    .line 277
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unknown type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lc8/ymd;->type:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_0
    :try_start_1
    move-object v0, p1

    check-cast v0, Lc8/Gmd;

    move-object v3, v0

    .line 267
    .local v3, "groupValue":Lc8/Gmd;
    iget v5, p0, Lc8/ymd;->tag:I

    invoke-static {v5}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v2

    .line 268
    .local v2, "fieldNumber":I
    invoke-virtual {p2, v3}, Lc8/umd;->writeGroupNoTag(Lc8/Gmd;)V

    .line 270
    const/4 v5, 0x4

    invoke-virtual {p2, v2, v5}, Lc8/umd;->writeTag(II)V

    .line 283
    .end local v2    # "fieldNumber":I
    .end local v3    # "groupValue":Lc8/Gmd;
    :goto_0
    return-void

    .line 273
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lc8/Gmd;

    move-object v4, v0

    .line 274
    .local v4, "messageValue":Lc8/Gmd;
    invoke-virtual {p2, v4}, Lc8/umd;->writeMessageNoTag(Lc8/Gmd;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method writeTo(Ljava/lang/Object;Lc8/umd;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lc8/umd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lc8/ymd;, "Lcom/google/protobuf/nano/Extension<TM;TT;>;"
    iget-boolean v0, p0, Lc8/ymd;->repeated:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0, p1, p2}, Lc8/ymd;->writeRepeatedData(Ljava/lang/Object;Lc8/umd;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p0, p1, p2}, Lc8/ymd;->writeSingularData(Ljava/lang/Object;Lc8/umd;)V

    goto :goto_0
.end method
