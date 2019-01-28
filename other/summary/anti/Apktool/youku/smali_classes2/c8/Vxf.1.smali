.class public final Lc8/Vxf;
.super Lc8/Gmd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Command"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lc8/Vxf;


# instance fields
.field public periodTime:I

.field public permission:I

.field public subType:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    .line 307
    invoke-virtual {p0}, Lc8/Vxf;->clear()Lc8/Vxf;

    .line 308
    return-void
.end method

.method public static emptyArray()[Lc8/Vxf;
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lc8/Vxf;->_emptyArray:[Lc8/Vxf;

    if-nez v0, :cond_1

    .line 284
    sget-object v1, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    sget-object v0, Lc8/Vxf;->_emptyArray:[Lc8/Vxf;

    if-nez v0, :cond_0

    .line 287
    const/4 v0, 0x0

    new-array v0, v0, [Lc8/Vxf;

    sput-object v0, Lc8/Vxf;->_emptyArray:[Lc8/Vxf;

    .line 289
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :cond_1
    sget-object v0, Lc8/Vxf;->_emptyArray:[Lc8/Vxf;

    return-object v0

    .line 289
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lc8/tmd;)Lc8/Vxf;
    .locals 1
    .param p0, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v0, Lc8/Vxf;

    invoke-direct {v0}, Lc8/Vxf;-><init>()V

    invoke-virtual {v0, p0}, Lc8/Vxf;->mergeFrom(Lc8/tmd;)Lc8/Vxf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lc8/Vxf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 396
    new-instance v0, Lc8/Vxf;

    invoke-direct {v0}, Lc8/Vxf;-><init>()V

    invoke-static {v0, p0}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/Vxf;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/Vxf;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 311
    iput v0, p0, Lc8/Vxf;->permission:I

    .line 312
    iput v0, p0, Lc8/Vxf;->periodTime:I

    .line 313
    iput v0, p0, Lc8/Vxf;->type:I

    .line 314
    iput v0, p0, Lc8/Vxf;->subType:I

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lc8/Vxf;->cachedSize:I

    .line 316
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 340
    .local v0, "size":I
    iget v1, p0, Lc8/Vxf;->permission:I

    if-eqz v1, :cond_0

    .line 341
    const/4 v1, 0x2

    iget v2, p0, Lc8/Vxf;->permission:I

    .line 342
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 344
    :cond_0
    iget v1, p0, Lc8/Vxf;->periodTime:I

    if-eqz v1, :cond_1

    .line 345
    const/4 v1, 0x3

    iget v2, p0, Lc8/Vxf;->periodTime:I

    .line 346
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 348
    :cond_1
    iget v1, p0, Lc8/Vxf;->type:I

    if-eqz v1, :cond_2

    .line 349
    const/4 v1, 0x4

    iget v2, p0, Lc8/Vxf;->type:I

    .line 350
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 352
    :cond_2
    iget v1, p0, Lc8/Vxf;->subType:I

    if-eqz v1, :cond_3

    .line 353
    const/4 v1, 0x5

    iget v2, p0, Lc8/Vxf;->subType:I

    .line 354
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 356
    :cond_3
    return v0
.end method

.method public bridge synthetic mergeFrom(Lc8/tmd;)Lc8/Gmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lc8/Vxf;->mergeFrom(Lc8/tmd;)Lc8/Vxf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lc8/tmd;)Lc8/Vxf;
    .locals 2
    .param p1, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 364
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/tmd;->readTag()I

    move-result v0

    .line 365
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 369
    invoke-static {p1, v0}, Lc8/Jmd;->parseUnknownField(Lc8/tmd;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 370
    :sswitch_0
    return-object p0

    .line 375
    :sswitch_1
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/Vxf;->permission:I

    goto :goto_0

    .line 379
    :sswitch_2
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/Vxf;->periodTime:I

    goto :goto_0

    .line 383
    :sswitch_3
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/Vxf;->type:I

    goto :goto_0

    .line 387
    :sswitch_4
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/Vxf;->subType:I

    goto :goto_0

    .line 365
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x10 -> :sswitch_1
        0x18 -> :sswitch_2
        0x20 -> :sswitch_3
        0x28 -> :sswitch_4
    .end sparse-switch
.end method

.method public writeTo(Lc8/umd;)V
    .locals 2
    .param p1, "output"    # Lc8/umd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget v0, p0, Lc8/Vxf;->permission:I

    if-eqz v0, :cond_0

    .line 323
    const/4 v0, 0x2

    iget v1, p0, Lc8/Vxf;->permission:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 325
    :cond_0
    iget v0, p0, Lc8/Vxf;->periodTime:I

    if-eqz v0, :cond_1

    .line 326
    const/4 v0, 0x3

    iget v1, p0, Lc8/Vxf;->periodTime:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 328
    :cond_1
    iget v0, p0, Lc8/Vxf;->type:I

    if-eqz v0, :cond_2

    .line 329
    const/4 v0, 0x4

    iget v1, p0, Lc8/Vxf;->type:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 331
    :cond_2
    iget v0, p0, Lc8/Vxf;->subType:I

    if-eqz v0, :cond_3

    .line 332
    const/4 v0, 0x5

    iget v1, p0, Lc8/Vxf;->subType:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 334
    :cond_3
    invoke-super {p0, p1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 335
    return-void
.end method
