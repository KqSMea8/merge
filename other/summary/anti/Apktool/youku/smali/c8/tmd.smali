.class public final Lc8/tmd;
.super Ljava/lang/Object;
.source "CodedInputByteBufferNano.java"


# static fields
.field private static final DEFAULT_RECURSION_LIMIT:I = 0x40

.field private static final DEFAULT_SIZE_LIMIT:I = 0x4000000


# instance fields
.field private final buffer:[B

.field private bufferPos:I

.field private bufferSize:I

.field private bufferSizeAfterLimit:I

.field private bufferStart:I

.field private currentLimit:I

.field private lastTag:I

.field private recursionDepth:I

.field private recursionLimit:I

.field private sizeLimit:I


# direct methods
.method private constructor <init>([BII)V
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const v0, 0x7fffffff

    iput v0, p0, Lc8/tmd;->currentLimit:I

    .line 409
    const/16 v0, 0x40

    iput v0, p0, Lc8/tmd;->recursionLimit:I

    .line 412
    const/high16 v0, 0x4000000

    iput v0, p0, Lc8/tmd;->sizeLimit:I

    .line 418
    iput-object p1, p0, Lc8/tmd;->buffer:[B

    .line 419
    iput p2, p0, Lc8/tmd;->bufferStart:I

    .line 420
    add-int v0, p2, p3

    iput v0, p0, Lc8/tmd;->bufferSize:I

    .line 421
    iput p2, p0, Lc8/tmd;->bufferPos:I

    .line 422
    return-void
.end method

.method public static decodeZigZag32(I)I
    .locals 2
    .param p0, "n"    # I

    .prologue
    .line 378
    ushr-int/lit8 v0, p0, 0x1

    and-int/lit8 v1, p0, 0x1

    neg-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public static decodeZigZag64(J)J
    .locals 4
    .param p0, "n"    # J

    .prologue
    .line 392
    const/4 v0, 0x1

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr v2, p0

    neg-long v2, v2

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method public static newInstance([B)Lc8/tmd;
    .locals 2
    .param p0, "buf"    # [B

    .prologue
    .line 52
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lc8/tmd;->newInstance([BII)Lc8/tmd;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance([BII)Lc8/tmd;
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 60
    new-instance v0, Lc8/tmd;

    invoke-direct {v0, p0, p1, p2}, Lc8/tmd;-><init>([BII)V

    return-object v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .locals 3

    .prologue
    .line 495
    iget v1, p0, Lc8/tmd;->bufferSize:I

    iget v2, p0, Lc8/tmd;->bufferSizeAfterLimit:I

    add-int/2addr v1, v2

    iput v1, p0, Lc8/tmd;->bufferSize:I

    .line 496
    iget v0, p0, Lc8/tmd;->bufferSize:I

    .line 497
    .local v0, "bufferEnd":I
    iget v1, p0, Lc8/tmd;->currentLimit:I

    if-le v0, v1, :cond_0

    .line 499
    iget v1, p0, Lc8/tmd;->currentLimit:I

    sub-int v1, v0, v1

    iput v1, p0, Lc8/tmd;->bufferSizeAfterLimit:I

    .line 500
    iget v1, p0, Lc8/tmd;->bufferSize:I

    iget v2, p0, Lc8/tmd;->bufferSizeAfterLimit:I

    sub-int/2addr v1, v2

    iput v1, p0, Lc8/tmd;->bufferSize:I

    .line 504
    :goto_0
    return-void

    .line 502
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lc8/tmd;->bufferSizeAfterLimit:I

    goto :goto_0
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 94
    iget v0, p0, Lc8/tmd;->lastTag:I

    if-eq v0, p1, :cond_0

    .line 95
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidEndTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 97
    :cond_0
    return-void
.end method

.method public getBytesUntilLimit()I
    .locals 3

    .prologue
    .line 521
    iget v1, p0, Lc8/tmd;->currentLimit:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    .line 522
    const/4 v1, -0x1

    .line 526
    :goto_0
    return v1

    .line 525
    :cond_0
    iget v0, p0, Lc8/tmd;->bufferPos:I

    .line 526
    .local v0, "currentAbsolutePosition":I
    iget v1, p0, Lc8/tmd;->currentLimit:I

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public getData(II)[B
    .locals 4
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 553
    if-nez p2, :cond_0

    .line 554
    sget-object v0, Lc8/Jmd;->EMPTY_BYTES:[B

    .line 559
    :goto_0
    return-object v0

    .line 556
    :cond_0
    new-array v0, p2, [B

    .line 557
    .local v0, "copy":[B
    iget v2, p0, Lc8/tmd;->bufferStart:I

    add-int v1, v2, p1

    .line 558
    .local v1, "start":I
    iget-object v2, p0, Lc8/tmd;->buffer:[B

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getPosition()I
    .locals 2

    .prologue
    .line 542
    iget v0, p0, Lc8/tmd;->bufferPos:I

    iget v1, p0, Lc8/tmd;->bufferStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public isAtEnd()Z
    .locals 2

    .prologue
    .line 535
    iget v0, p0, Lc8/tmd;->bufferPos:I

    iget v1, p0, Lc8/tmd;->bufferSize:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public popLimit(I)V
    .locals 0
    .param p1, "oldLimit"    # I

    .prologue
    .line 512
    iput p1, p0, Lc8/tmd;->currentLimit:I

    .line 513
    invoke-direct {p0}, Lc8/tmd;->recomputeBufferSizeAfterLimit()V

    .line 514
    return-void
.end method

.method public pushLimit(I)I
    .locals 2
    .param p1, "byteLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 479
    if-gez p1, :cond_0

    .line 480
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 482
    :cond_0
    iget v1, p0, Lc8/tmd;->bufferPos:I

    add-int/2addr p1, v1

    .line 483
    iget v0, p0, Lc8/tmd;->currentLimit:I

    .line 484
    .local v0, "oldLimit":I
    if-le p1, v0, :cond_1

    .line 485
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 487
    :cond_1
    iput p1, p0, Lc8/tmd;->currentLimit:I

    .line 489
    invoke-direct {p0}, Lc8/tmd;->recomputeBufferSizeAfterLimit()V

    .line 491
    return v0
.end method

.method public readBool()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readBytes()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 231
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v1

    .line 232
    .local v1, "size":I
    iget v2, p0, Lc8/tmd;->bufferSize:I

    iget v3, p0, Lc8/tmd;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 235
    new-array v0, v1, [B

    .line 236
    .local v0, "result":[B
    iget-object v2, p0, Lc8/tmd;->buffer:[B

    iget v3, p0, Lc8/tmd;->bufferPos:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 237
    iget v2, p0, Lc8/tmd;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lc8/tmd;->bufferPos:I

    .line 243
    .end local v0    # "result":[B
    :goto_0
    return-object v0

    .line 239
    :cond_0
    if-nez v1, :cond_1

    .line 240
    sget-object v0, Lc8/Jmd;->EMPTY_BYTES:[B

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0, v1}, Lc8/tmd;->readRawBytes(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(Lc8/Gmd;I)V
    .locals 2
    .param p1, "msg"    # Lc8/Gmd;
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    iget v0, p0, Lc8/tmd;->recursionDepth:I

    iget v1, p0, Lc8/tmd;->recursionLimit:I

    if-lt v0, v1, :cond_0

    .line 206
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 208
    :cond_0
    iget v0, p0, Lc8/tmd;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/tmd;->recursionDepth:I

    .line 209
    invoke-virtual {p1, p0}, Lc8/Gmd;->mergeFrom(Lc8/tmd;)Lc8/Gmd;

    .line 210
    const/4 v0, 0x4

    .line 211
    invoke-static {p2, v0}, Lc8/Jmd;->makeTag(II)I

    move-result v0

    .line 210
    invoke-virtual {p0, v0}, Lc8/tmd;->checkLastTagWas(I)V

    .line 212
    iget v0, p0, Lc8/tmd;->recursionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/tmd;->recursionDepth:I

    .line 213
    return-void
.end method

.method public readInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lc8/Gmd;)V
    .locals 4
    .param p1, "msg"    # Lc8/Gmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v0

    .line 218
    .local v0, "length":I
    iget v2, p0, Lc8/tmd;->recursionDepth:I

    iget v3, p0, Lc8/tmd;->recursionLimit:I

    if-lt v2, v3, :cond_0

    .line 219
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->recursionLimitExceeded()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v2

    throw v2

    .line 221
    :cond_0
    invoke-virtual {p0, v0}, Lc8/tmd;->pushLimit(I)I

    move-result v1

    .line 222
    .local v1, "oldLimit":I
    iget v2, p0, Lc8/tmd;->recursionDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/tmd;->recursionDepth:I

    .line 223
    invoke-virtual {p1, p0}, Lc8/Gmd;->mergeFrom(Lc8/tmd;)Lc8/Gmd;

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lc8/tmd;->checkLastTagWas(I)V

    .line 225
    iget v2, p0, Lc8/tmd;->recursionDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lc8/tmd;->recursionDepth:I

    .line 226
    invoke-virtual {p0, v1}, Lc8/tmd;->popLimit(I)V

    .line 227
    return-void
.end method

.method readPrimitiveField(I)Ljava/lang/Object;
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    packed-switch p1, :pswitch_data_0

    .line 680
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :pswitch_1
    invoke-virtual {p0}, Lc8/tmd;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 678
    :goto_0
    return-object v0

    .line 650
    :pswitch_2
    invoke-virtual {p0}, Lc8/tmd;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 652
    :pswitch_3
    invoke-virtual {p0}, Lc8/tmd;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 654
    :pswitch_4
    invoke-virtual {p0}, Lc8/tmd;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 656
    :pswitch_5
    invoke-virtual {p0}, Lc8/tmd;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 658
    :pswitch_6
    invoke-virtual {p0}, Lc8/tmd;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 660
    :pswitch_7
    invoke-virtual {p0}, Lc8/tmd;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 662
    :pswitch_8
    invoke-virtual {p0}, Lc8/tmd;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 664
    :pswitch_9
    invoke-virtual {p0}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 666
    :pswitch_a
    invoke-virtual {p0}, Lc8/tmd;->readBytes()[B

    move-result-object v0

    goto :goto_0

    .line 668
    :pswitch_b
    invoke-virtual {p0}, Lc8/tmd;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 670
    :pswitch_c
    invoke-virtual {p0}, Lc8/tmd;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 672
    :pswitch_d
    invoke-virtual {p0}, Lc8/tmd;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 674
    :pswitch_e
    invoke-virtual {p0}, Lc8/tmd;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 676
    :pswitch_f
    invoke-virtual {p0}, Lc8/tmd;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_0

    .line 678
    :pswitch_10
    invoke-virtual {p0}, Lc8/tmd;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public readRawByte()B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    iget v0, p0, Lc8/tmd;->bufferPos:I

    iget v1, p0, Lc8/tmd;->bufferSize:I

    if-ne v0, v1, :cond_0

    .line 584
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lc8/tmd;->buffer:[B

    iget v1, p0, Lc8/tmd;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lc8/tmd;->bufferPos:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public readRawBytes(I)[B
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 596
    if-gez p1, :cond_0

    .line 597
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 600
    :cond_0
    iget v1, p0, Lc8/tmd;->bufferPos:I

    add-int/2addr v1, p1

    iget v2, p0, Lc8/tmd;->currentLimit:I

    if-le v1, v2, :cond_1

    .line 602
    iget v1, p0, Lc8/tmd;->currentLimit:I

    iget v2, p0, Lc8/tmd;->bufferPos:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lc8/tmd;->skipRawBytes(I)V

    .line 604
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1

    .line 607
    :cond_1
    iget v1, p0, Lc8/tmd;->bufferSize:I

    iget v2, p0, Lc8/tmd;->bufferPos:I

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_2

    .line 609
    new-array v0, p1, [B

    .line 610
    .local v0, "bytes":[B
    iget-object v1, p0, Lc8/tmd;->buffer:[B

    iget v2, p0, Lc8/tmd;->bufferPos:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 611
    iget v1, p0, Lc8/tmd;->bufferPos:I

    add-int/2addr v1, p1

    iput v1, p0, Lc8/tmd;->bufferPos:I

    .line 612
    return-object v0

    .line 614
    .end local v0    # "bytes":[B
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v1

    throw v1
.end method

.method public readRawLittleEndian32()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v0

    .line 338
    .local v0, "b1":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v1

    .line 339
    .local v1, "b2":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v2

    .line 340
    .local v2, "b3":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v3

    .line 341
    .local v3, "b4":B
    and-int/lit16 v4, v0, 0xff

    and-int/lit16 v5, v1, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    and-int/lit16 v5, v2, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    and-int/lit16 v5, v3, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4
.end method

.method public readRawLittleEndian64()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 349
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v0

    .line 350
    .local v0, "b1":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v1

    .line 351
    .local v1, "b2":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v2

    .line 352
    .local v2, "b3":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v3

    .line 353
    .local v3, "b4":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v4

    .line 354
    .local v4, "b5":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v5

    .line 355
    .local v5, "b6":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v6

    .line 356
    .local v6, "b7":B
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v7

    .line 357
    .local v7, "b8":B
    int-to-long v8, v0

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    int-to-long v10, v1

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v2

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v3

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v4

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x20

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v5

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x28

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v6

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    int-to-long v10, v7

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shl-long/2addr v10, v12

    or-long/2addr v8, v10

    return-wide v8
.end method

.method public readRawVarint32()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v2

    .line 288
    .local v2, "tmp":B
    if-ltz v2, :cond_1

    move v1, v2

    .line 317
    :cond_0
    :goto_0
    return v1

    .line 291
    :cond_1
    and-int/lit8 v1, v2, 0x7f

    .line 292
    .local v1, "result":I
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_2

    .line 293
    shl-int/lit8 v3, v2, 0x7

    or-int/2addr v1, v3

    goto :goto_0

    .line 295
    :cond_2
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v1, v3

    .line 296
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_3

    .line 297
    shl-int/lit8 v3, v2, 0xe

    or-int/2addr v1, v3

    goto :goto_0

    .line 299
    :cond_3
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v1, v3

    .line 300
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v2

    if-ltz v2, :cond_4

    .line 301
    shl-int/lit8 v3, v2, 0x15

    or-int/2addr v1, v3

    goto :goto_0

    .line 303
    :cond_4
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x15

    or-int/2addr v1, v3

    .line 304
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v2

    shl-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    .line 305
    if-gez v2, :cond_0

    .line 307
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x5

    if-ge v0, v3, :cond_5

    .line 308
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v3

    if-gez v3, :cond_0

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    :cond_5
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v3

    throw v3
.end method

.method public readRawVarint64()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "shift":I
    const-wide/16 v2, 0x0

    .line 324
    .local v2, "result":J
    :goto_0
    const/16 v4, 0x40

    if-ge v1, v4, :cond_1

    .line 325
    invoke-virtual {p0}, Lc8/tmd;->readRawByte()B

    move-result v0

    .line 326
    .local v0, "b":B
    and-int/lit8 v4, v0, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    .line 327
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_0

    .line 328
    return-wide v2

    .line 330
    :cond_0
    add-int/lit8 v1, v1, 0x7

    .line 331
    goto :goto_0

    .line 332
    .end local v0    # "b":B
    :cond_1
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->malformedVarint()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v4

    throw v4
.end method

.method public readSFixed32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 267
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lc8/tmd;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lc8/tmd;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v1

    .line 190
    .local v1, "size":I
    iget v2, p0, Lc8/tmd;->bufferSize:I

    iget v3, p0, Lc8/tmd;->bufferPos:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_0

    if-lez v1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lc8/tmd;->buffer:[B

    iget v3, p0, Lc8/tmd;->bufferPos:I

    sget-object v4, Lc8/Bmd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 194
    .local v0, "result":Ljava/lang/String;
    iget v2, p0, Lc8/tmd;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lc8/tmd;->bufferPos:I

    .line 198
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lc8/tmd;->readRawBytes(I)[B

    move-result-object v2

    sget-object v3, Lc8/Bmd;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public readTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0}, Lc8/tmd;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iput v0, p0, Lc8/tmd;->lastTag:I

    .line 81
    :goto_0
    return v0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lc8/tmd;->lastTag:I

    .line 77
    iget v0, p0, Lc8/tmd;->lastTag:I

    if-nez v0, :cond_1

    .line 79
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidTag()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 81
    :cond_1
    iget v0, p0, Lc8/tmd;->lastTag:I

    goto :goto_0
.end method

.method public readUInt32()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public resetSizeCounter()V
    .locals 0

    .prologue
    .line 470
    return-void
.end method

.method public rewindToPosition(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 566
    iget v0, p0, Lc8/tmd;->bufferPos:I

    iget v1, p0, Lc8/tmd;->bufferStart:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is beyond current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/tmd;->bufferPos:I

    iget v3, p0, Lc8/tmd;->bufferStart:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    if-gez p1, :cond_1

    .line 571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_1
    iget v0, p0, Lc8/tmd;->bufferStart:I

    add-int/2addr v0, p1

    iput v0, p0, Lc8/tmd;->bufferPos:I

    .line 574
    return-void
.end method

.method public setRecursionLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .line 432
    if-gez p1, :cond_0

    .line 433
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_0
    iget v0, p0, Lc8/tmd;->recursionLimit:I

    .line 437
    .local v0, "oldLimit":I
    iput p1, p0, Lc8/tmd;->recursionLimit:I

    .line 438
    return v0
.end method

.method public setSizeLimit(I)I
    .locals 4
    .param p1, "limit"    # I

    .prologue
    .line 457
    if-gez p1, :cond_0

    .line 458
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Size limit cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 461
    :cond_0
    iget v0, p0, Lc8/tmd;->sizeLimit:I

    .line 462
    .local v0, "oldLimit":I
    iput p1, p0, Lc8/tmd;->sizeLimit:I

    .line 463
    return v0
.end method

.method public skipField(I)Z
    .locals 3
    .param p1, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-static {p1}, Lc8/Jmd;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 128
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->invalidWireType()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 108
    :pswitch_0
    invoke-virtual {p0}, Lc8/tmd;->readInt32()I

    .line 126
    :goto_0
    return v0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian64()J

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-virtual {p0}, Lc8/tmd;->readRawVarint32()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/tmd;->skipRawBytes(I)V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-virtual {p0}, Lc8/tmd;->skipMessage()V

    .line 119
    invoke-static {p1}, Lc8/Jmd;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lc8/Jmd;->makeTag(II)I

    move-result v1

    .line 118
    invoke-virtual {p0, v1}, Lc8/tmd;->checkLastTagWas(I)V

    goto :goto_0

    .line 123
    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :pswitch_5
    invoke-virtual {p0}, Lc8/tmd;->readRawLittleEndian32()I

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public skipMessage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    :cond_0
    invoke-virtual {p0}, Lc8/tmd;->readTag()I

    move-result v0

    .line 139
    .local v0, "tag":I
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lc8/tmd;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    :cond_1
    return-void
.end method

.method public skipRawBytes(I)V
    .locals 2
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 625
    if-gez p1, :cond_0

    .line 626
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->negativeSize()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 629
    :cond_0
    iget v0, p0, Lc8/tmd;->bufferPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lc8/tmd;->currentLimit:I

    if-le v0, v1, :cond_1

    .line 631
    iget v0, p0, Lc8/tmd;->currentLimit:I

    iget v1, p0, Lc8/tmd;->bufferPos:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lc8/tmd;->skipRawBytes(I)V

    .line 633
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0

    .line 636
    :cond_1
    iget v0, p0, Lc8/tmd;->bufferSize:I

    iget v1, p0, Lc8/tmd;->bufferPos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    .line 638
    iget v0, p0, Lc8/tmd;->bufferPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lc8/tmd;->bufferPos:I

    return-void

    .line 640
    :cond_2
    invoke-static {}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;->truncatedMessage()Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    move-result-object v0

    throw v0
.end method
