.class public final Lc8/ayf;
.super Lc8/Gmd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Report"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lc8/ayf;


# instance fields
.field public bizTag:Ljava/lang/String;

.field public ext:Ljava/lang/String;

.field public preSubType:I

.field public source:I

.field public timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    .line 811
    invoke-virtual {p0}, Lc8/ayf;->clear()Lc8/ayf;

    .line 812
    return-void
.end method

.method public static emptyArray()[Lc8/ayf;
    .locals 2

    .prologue
    .line 784
    sget-object v0, Lc8/ayf;->_emptyArray:[Lc8/ayf;

    if-nez v0, :cond_1

    .line 785
    sget-object v1, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 787
    :try_start_0
    sget-object v0, Lc8/ayf;->_emptyArray:[Lc8/ayf;

    if-nez v0, :cond_0

    .line 788
    const/4 v0, 0x0

    new-array v0, v0, [Lc8/ayf;

    sput-object v0, Lc8/ayf;->_emptyArray:[Lc8/ayf;

    .line 790
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    :cond_1
    sget-object v0, Lc8/ayf;->_emptyArray:[Lc8/ayf;

    return-object v0

    .line 790
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lc8/tmd;)Lc8/ayf;
    .locals 1
    .param p0, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 918
    new-instance v0, Lc8/ayf;

    invoke-direct {v0}, Lc8/ayf;-><init>()V

    invoke-virtual {v0, p0}, Lc8/ayf;->mergeFrom(Lc8/tmd;)Lc8/ayf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lc8/ayf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 912
    new-instance v0, Lc8/ayf;

    invoke-direct {v0}, Lc8/ayf;-><init>()V

    invoke-static {v0, p0}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/ayf;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/ayf;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 815
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ayf;->bizTag:Ljava/lang/String;

    .line 816
    iput v1, p0, Lc8/ayf;->preSubType:I

    .line 817
    iput v1, p0, Lc8/ayf;->source:I

    .line 818
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/ayf;->timestamp:J

    .line 819
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ayf;->ext:Ljava/lang/String;

    .line 820
    const/4 v0, -0x1

    iput v0, p0, Lc8/ayf;->cachedSize:I

    .line 821
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 6

    .prologue
    .line 847
    invoke-super {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 848
    .local v0, "size":I
    iget-object v1, p0, Lc8/ayf;->bizTag:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 849
    const/4 v1, 0x1

    iget-object v2, p0, Lc8/ayf;->bizTag:Ljava/lang/String;

    .line 850
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 852
    :cond_0
    iget v1, p0, Lc8/ayf;->preSubType:I

    if-eqz v1, :cond_1

    .line 853
    const/4 v1, 0x2

    iget v2, p0, Lc8/ayf;->preSubType:I

    .line 854
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 856
    :cond_1
    iget v1, p0, Lc8/ayf;->source:I

    if-eqz v1, :cond_2

    .line 857
    const/4 v1, 0x3

    iget v2, p0, Lc8/ayf;->source:I

    .line 858
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 860
    :cond_2
    iget-wide v2, p0, Lc8/ayf;->timestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 861
    const/4 v1, 0x4

    iget-wide v2, p0, Lc8/ayf;->timestamp:J

    .line 862
    invoke-static {v1, v2, v3}, Lc8/umd;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 864
    :cond_3
    iget-object v1, p0, Lc8/ayf;->ext:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 865
    const/4 v1, 0x5

    iget-object v2, p0, Lc8/ayf;->ext:Ljava/lang/String;

    .line 866
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 868
    :cond_4
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
    .line 778
    invoke-virtual {p0, p1}, Lc8/ayf;->mergeFrom(Lc8/tmd;)Lc8/ayf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lc8/tmd;)Lc8/ayf;
    .locals 4
    .param p1, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 876
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/tmd;->readTag()I

    move-result v0

    .line 877
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 881
    invoke-static {p1, v0}, Lc8/Jmd;->parseUnknownField(Lc8/tmd;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 882
    :sswitch_0
    return-object p0

    .line 887
    :sswitch_1
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/ayf;->bizTag:Ljava/lang/String;

    goto :goto_0

    .line 891
    :sswitch_2
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/ayf;->preSubType:I

    goto :goto_0

    .line 895
    :sswitch_3
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/ayf;->source:I

    goto :goto_0

    .line 899
    :sswitch_4
    invoke-virtual {p1}, Lc8/tmd;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/ayf;->timestamp:J

    goto :goto_0

    .line 903
    :sswitch_5
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/ayf;->ext:Ljava/lang/String;

    goto :goto_0

    .line 877
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 827
    iget-object v0, p0, Lc8/ayf;->bizTag:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 828
    const/4 v0, 0x1

    iget-object v1, p0, Lc8/ayf;->bizTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 830
    :cond_0
    iget v0, p0, Lc8/ayf;->preSubType:I

    if-eqz v0, :cond_1

    .line 831
    const/4 v0, 0x2

    iget v1, p0, Lc8/ayf;->preSubType:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 833
    :cond_1
    iget v0, p0, Lc8/ayf;->source:I

    if-eqz v0, :cond_2

    .line 834
    const/4 v0, 0x3

    iget v1, p0, Lc8/ayf;->source:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 836
    :cond_2
    iget-wide v0, p0, Lc8/ayf;->timestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 837
    const/4 v0, 0x4

    iget-wide v2, p0, Lc8/ayf;->timestamp:J

    invoke-virtual {p1, v0, v2, v3}, Lc8/umd;->writeInt64(IJ)V

    .line 839
    :cond_3
    iget-object v0, p0, Lc8/ayf;->ext:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 840
    const/4 v0, 0x5

    iget-object v1, p0, Lc8/ayf;->ext:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 842
    :cond_4
    invoke-super {p0, p1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 843
    return-void
.end method
