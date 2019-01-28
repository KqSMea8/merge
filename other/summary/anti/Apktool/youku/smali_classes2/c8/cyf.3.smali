.class public final Lc8/cyf;
.super Lc8/Gmd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Subscribe"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lc8/cyf;


# instance fields
.field public bizTag:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public period:I

.field public role:I

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    .line 571
    invoke-virtual {p0}, Lc8/cyf;->clear()Lc8/cyf;

    .line 572
    return-void
.end method

.method public static emptyArray()[Lc8/cyf;
    .locals 2

    .prologue
    .line 541
    sget-object v0, Lc8/cyf;->_emptyArray:[Lc8/cyf;

    if-nez v0, :cond_1

    .line 542
    sget-object v1, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 544
    :try_start_0
    sget-object v0, Lc8/cyf;->_emptyArray:[Lc8/cyf;

    if-nez v0, :cond_0

    .line 545
    const/4 v0, 0x0

    new-array v0, v0, [Lc8/cyf;

    sput-object v0, Lc8/cyf;->_emptyArray:[Lc8/cyf;

    .line 547
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :cond_1
    sget-object v0, Lc8/cyf;->_emptyArray:[Lc8/cyf;

    return-object v0

    .line 547
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lc8/tmd;)Lc8/cyf;
    .locals 1
    .param p0, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 690
    new-instance v0, Lc8/cyf;

    invoke-direct {v0}, Lc8/cyf;-><init>()V

    invoke-virtual {v0, p0}, Lc8/cyf;->mergeFrom(Lc8/tmd;)Lc8/cyf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lc8/cyf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 684
    new-instance v0, Lc8/cyf;

    invoke-direct {v0}, Lc8/cyf;-><init>()V

    invoke-static {v0, p0}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/cyf;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/cyf;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 575
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/cyf;->from:Ljava/lang/String;

    .line 576
    iput v1, p0, Lc8/cyf;->role:I

    .line 577
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/cyf;->bizTag:Ljava/lang/String;

    .line 578
    iput v1, p0, Lc8/cyf;->period:I

    .line 579
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/cyf;->ext:Ljava/lang/String;

    .line 580
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/cyf;->timestamp:J

    .line 581
    const/4 v0, -0x1

    iput v0, p0, Lc8/cyf;->cachedSize:I

    .line 582
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 611
    invoke-super {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 612
    .local v0, "size":I
    iget-object v1, p0, Lc8/cyf;->from:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 613
    const/4 v1, 0x1

    iget-object v2, p0, Lc8/cyf;->from:Ljava/lang/String;

    .line 614
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 616
    :cond_0
    iget v1, p0, Lc8/cyf;->role:I

    if-eqz v1, :cond_1

    .line 617
    const/4 v1, 0x2

    iget v2, p0, Lc8/cyf;->role:I

    .line 618
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 620
    :cond_1
    iget-object v1, p0, Lc8/cyf;->bizTag:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 621
    const/4 v1, 0x3

    iget-object v2, p0, Lc8/cyf;->bizTag:Ljava/lang/String;

    .line 622
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 624
    :cond_2
    iget v1, p0, Lc8/cyf;->period:I

    if-eqz v1, :cond_3

    .line 625
    const/4 v1, 0x4

    iget v2, p0, Lc8/cyf;->period:I

    .line 626
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 628
    :cond_3
    iget-object v1, p0, Lc8/cyf;->ext:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 629
    const/4 v1, 0x5

    iget-object v2, p0, Lc8/cyf;->ext:Ljava/lang/String;

    .line 630
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 632
    :cond_4
    iget-wide v2, p0, Lc8/cyf;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    .line 633
    const/4 v1, 0x6

    iget-wide v2, p0, Lc8/cyf;->timestamp:J

    .line 634
    invoke-static {v1, v2, v3}, Lc8/umd;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 636
    :cond_5
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
    .line 535
    invoke-virtual {p0, p1}, Lc8/cyf;->mergeFrom(Lc8/tmd;)Lc8/cyf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lc8/tmd;)Lc8/cyf;
    .locals 4
    .param p1, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/tmd;->readTag()I

    move-result v0

    .line 645
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 649
    invoke-static {p1, v0}, Lc8/Jmd;->parseUnknownField(Lc8/tmd;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 650
    :sswitch_0
    return-object p0

    .line 655
    :sswitch_1
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/cyf;->from:Ljava/lang/String;

    goto :goto_0

    .line 659
    :sswitch_2
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/cyf;->role:I

    goto :goto_0

    .line 663
    :sswitch_3
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/cyf;->bizTag:Ljava/lang/String;

    goto :goto_0

    .line 667
    :sswitch_4
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/cyf;->period:I

    goto :goto_0

    .line 671
    :sswitch_5
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/cyf;->ext:Ljava/lang/String;

    goto :goto_0

    .line 675
    :sswitch_6
    invoke-virtual {p1}, Lc8/tmd;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/cyf;->timestamp:J

    goto :goto_0

    .line 645
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x30 -> :sswitch_6
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
    .line 588
    iget-object v0, p0, Lc8/cyf;->from:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    const/4 v0, 0x1

    iget-object v1, p0, Lc8/cyf;->from:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 591
    :cond_0
    iget v0, p0, Lc8/cyf;->role:I

    if-eqz v0, :cond_1

    .line 592
    const/4 v0, 0x2

    iget v1, p0, Lc8/cyf;->role:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 594
    :cond_1
    iget-object v0, p0, Lc8/cyf;->bizTag:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 595
    const/4 v0, 0x3

    iget-object v1, p0, Lc8/cyf;->bizTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 597
    :cond_2
    iget v0, p0, Lc8/cyf;->period:I

    if-eqz v0, :cond_3

    .line 598
    const/4 v0, 0x4

    iget v1, p0, Lc8/cyf;->period:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 600
    :cond_3
    iget-object v0, p0, Lc8/cyf;->ext:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 601
    const/4 v0, 0x5

    iget-object v1, p0, Lc8/cyf;->ext:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 603
    :cond_4
    iget-wide v0, p0, Lc8/cyf;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 604
    const/4 v0, 0x6

    iget-wide v2, p0, Lc8/cyf;->timestamp:J

    invoke-virtual {p1, v0, v2, v3}, Lc8/umd;->writeInt64(IJ)V

    .line 606
    :cond_5
    invoke-super {p0, p1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 607
    return-void
.end method
