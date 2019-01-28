.class public final Lc8/byf;
.super Lc8/Gmd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lc8/byf;


# instance fields
.field public bizTag:Ljava/lang/String;

.field public index:J

.field public pageSize:I

.field public role:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 435
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    .line 436
    invoke-virtual {p0}, Lc8/byf;->clear()Lc8/byf;

    .line 437
    return-void
.end method

.method public static emptyArray()[Lc8/byf;
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lc8/byf;->_emptyArray:[Lc8/byf;

    if-nez v0, :cond_1

    .line 413
    sget-object v1, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 415
    :try_start_0
    sget-object v0, Lc8/byf;->_emptyArray:[Lc8/byf;

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x0

    new-array v0, v0, [Lc8/byf;

    sput-object v0, Lc8/byf;->_emptyArray:[Lc8/byf;

    .line 418
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    :cond_1
    sget-object v0, Lc8/byf;->_emptyArray:[Lc8/byf;

    return-object v0

    .line 418
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lc8/tmd;)Lc8/byf;
    .locals 1
    .param p0, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    new-instance v0, Lc8/byf;

    invoke-direct {v0}, Lc8/byf;-><init>()V

    invoke-virtual {v0, p0}, Lc8/byf;->mergeFrom(Lc8/tmd;)Lc8/byf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lc8/byf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 525
    new-instance v0, Lc8/byf;

    invoke-direct {v0}, Lc8/byf;-><init>()V

    invoke-static {v0, p0}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/byf;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/byf;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 440
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/byf;->index:J

    .line 441
    iput v2, p0, Lc8/byf;->pageSize:I

    .line 442
    iput v2, p0, Lc8/byf;->role:I

    .line 443
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/byf;->bizTag:Ljava/lang/String;

    .line 444
    const/4 v0, -0x1

    iput v0, p0, Lc8/byf;->cachedSize:I

    .line 445
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 468
    invoke-super {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 469
    .local v0, "size":I
    iget-wide v2, p0, Lc8/byf;->index:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 470
    const/4 v1, 0x1

    iget-wide v2, p0, Lc8/byf;->index:J

    .line 471
    invoke-static {v1, v2, v3}, Lc8/umd;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 473
    :cond_0
    iget v1, p0, Lc8/byf;->pageSize:I

    if-eqz v1, :cond_1

    .line 474
    const/4 v1, 0x2

    iget v2, p0, Lc8/byf;->pageSize:I

    .line 475
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 477
    :cond_1
    iget v1, p0, Lc8/byf;->role:I

    if-eqz v1, :cond_2

    .line 478
    const/4 v1, 0x3

    iget v2, p0, Lc8/byf;->role:I

    .line 479
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 481
    :cond_2
    iget-object v1, p0, Lc8/byf;->bizTag:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 482
    const/4 v1, 0x4

    iget-object v2, p0, Lc8/byf;->bizTag:Ljava/lang/String;

    .line 483
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 485
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
    .line 406
    invoke-virtual {p0, p1}, Lc8/byf;->mergeFrom(Lc8/tmd;)Lc8/byf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lc8/tmd;)Lc8/byf;
    .locals 4
    .param p1, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 493
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/tmd;->readTag()I

    move-result v0

    .line 494
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 498
    invoke-static {p1, v0}, Lc8/Jmd;->parseUnknownField(Lc8/tmd;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    :sswitch_0
    return-object p0

    .line 504
    :sswitch_1
    invoke-virtual {p1}, Lc8/tmd;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/byf;->index:J

    goto :goto_0

    .line 508
    :sswitch_2
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/byf;->pageSize:I

    goto :goto_0

    .line 512
    :sswitch_3
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/byf;->role:I

    goto :goto_0

    .line 516
    :sswitch_4
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/byf;->bizTag:Ljava/lang/String;

    goto :goto_0

    .line 494
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public writeTo(Lc8/umd;)V
    .locals 4
    .param p1, "output"    # Lc8/umd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    iget-wide v0, p0, Lc8/byf;->index:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 452
    const/4 v0, 0x1

    iget-wide v2, p0, Lc8/byf;->index:J

    invoke-virtual {p1, v0, v2, v3}, Lc8/umd;->writeInt64(IJ)V

    .line 454
    :cond_0
    iget v0, p0, Lc8/byf;->pageSize:I

    if-eqz v0, :cond_1

    .line 455
    const/4 v0, 0x2

    iget v1, p0, Lc8/byf;->pageSize:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 457
    :cond_1
    iget v0, p0, Lc8/byf;->role:I

    if-eqz v0, :cond_2

    .line 458
    const/4 v0, 0x3

    iget v1, p0, Lc8/byf;->role:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 460
    :cond_2
    iget-object v0, p0, Lc8/byf;->bizTag:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 461
    const/4 v0, 0x4

    iget-object v1, p0, Lc8/byf;->bizTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 463
    :cond_3
    invoke-super {p0, p1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 464
    return-void
.end method
