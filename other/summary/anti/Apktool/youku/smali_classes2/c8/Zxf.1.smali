.class public final Lc8/Zxf;
.super Lc8/Gmd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "P2p"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lc8/Zxf;


# instance fields
.field public traceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    .line 715
    invoke-virtual {p0}, Lc8/Zxf;->clear()Lc8/Zxf;

    .line 716
    return-void
.end method

.method public static emptyArray()[Lc8/Zxf;
    .locals 2

    .prologue
    .line 700
    sget-object v0, Lc8/Zxf;->_emptyArray:[Lc8/Zxf;

    if-nez v0, :cond_1

    .line 701
    sget-object v1, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_0
    sget-object v0, Lc8/Zxf;->_emptyArray:[Lc8/Zxf;

    if-nez v0, :cond_0

    .line 704
    const/4 v0, 0x0

    new-array v0, v0, [Lc8/Zxf;

    sput-object v0, Lc8/Zxf;->_emptyArray:[Lc8/Zxf;

    .line 706
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 708
    :cond_1
    sget-object v0, Lc8/Zxf;->_emptyArray:[Lc8/Zxf;

    return-object v0

    .line 706
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lc8/tmd;)Lc8/Zxf;
    .locals 1
    .param p0, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 774
    new-instance v0, Lc8/Zxf;

    invoke-direct {v0}, Lc8/Zxf;-><init>()V

    invoke-virtual {v0, p0}, Lc8/Zxf;->mergeFrom(Lc8/tmd;)Lc8/Zxf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lc8/Zxf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 768
    new-instance v0, Lc8/Zxf;

    invoke-direct {v0}, Lc8/Zxf;-><init>()V

    invoke-static {v0, p0}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/Zxf;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/Zxf;
    .locals 1

    .prologue
    .line 719
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Zxf;->traceId:Ljava/lang/String;

    .line 720
    const/4 v0, -0x1

    iput v0, p0, Lc8/Zxf;->cachedSize:I

    .line 721
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 735
    invoke-super {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 736
    .local v0, "size":I
    iget-object v1, p0, Lc8/Zxf;->traceId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 737
    const/4 v1, 0x1

    iget-object v2, p0, Lc8/Zxf;->traceId:Ljava/lang/String;

    .line 738
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 740
    :cond_0
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
    .line 694
    invoke-virtual {p0, p1}, Lc8/Zxf;->mergeFrom(Lc8/tmd;)Lc8/Zxf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lc8/tmd;)Lc8/Zxf;
    .locals 2
    .param p1, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 748
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/tmd;->readTag()I

    move-result v0

    .line 749
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 753
    invoke-static {p1, v0}, Lc8/Jmd;->parseUnknownField(Lc8/tmd;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 754
    :sswitch_0
    return-object p0

    .line 759
    :sswitch_1
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Zxf;->traceId:Ljava/lang/String;

    goto :goto_0

    .line 749
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
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
    .line 727
    iget-object v0, p0, Lc8/Zxf;->traceId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    const/4 v0, 0x1

    iget-object v1, p0, Lc8/Zxf;->traceId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 730
    :cond_0
    invoke-super {p0, p1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 731
    return-void
.end method
