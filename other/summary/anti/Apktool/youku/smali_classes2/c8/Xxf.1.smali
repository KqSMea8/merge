.class public final Lc8/Xxf;
.super Lc8/Gmd;
.source "BodyV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/dyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Monitor"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lc8/Xxf;


# instance fields
.field public data:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 945
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    .line 946
    invoke-virtual {p0}, Lc8/Xxf;->clear()Lc8/Xxf;

    .line 947
    return-void
.end method

.method public static emptyArray()[Lc8/Xxf;
    .locals 2

    .prologue
    .line 928
    sget-object v0, Lc8/Xxf;->_emptyArray:[Lc8/Xxf;

    if-nez v0, :cond_1

    .line 929
    sget-object v1, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 931
    :try_start_0
    sget-object v0, Lc8/Xxf;->_emptyArray:[Lc8/Xxf;

    if-nez v0, :cond_0

    .line 932
    const/4 v0, 0x0

    new-array v0, v0, [Lc8/Xxf;

    sput-object v0, Lc8/Xxf;->_emptyArray:[Lc8/Xxf;

    .line 934
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 936
    :cond_1
    sget-object v0, Lc8/Xxf;->_emptyArray:[Lc8/Xxf;

    return-object v0

    .line 934
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lc8/tmd;)Lc8/Xxf;
    .locals 1
    .param p0, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1017
    new-instance v0, Lc8/Xxf;

    invoke-direct {v0}, Lc8/Xxf;-><init>()V

    invoke-virtual {v0, p0}, Lc8/Xxf;->mergeFrom(Lc8/tmd;)Lc8/Xxf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lc8/Xxf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1011
    new-instance v0, Lc8/Xxf;

    invoke-direct {v0}, Lc8/Xxf;-><init>()V

    invoke-static {v0, p0}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/Xxf;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/Xxf;
    .locals 1

    .prologue
    .line 950
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Xxf;->sdkVersion:Ljava/lang/String;

    .line 951
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Xxf;->data:Ljava/lang/String;

    .line 952
    const/4 v0, -0x1

    iput v0, p0, Lc8/Xxf;->cachedSize:I

    .line 953
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 970
    invoke-super {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 971
    .local v0, "size":I
    iget-object v1, p0, Lc8/Xxf;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 972
    const/4 v1, 0x1

    iget-object v2, p0, Lc8/Xxf;->sdkVersion:Ljava/lang/String;

    .line 973
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 975
    :cond_0
    iget-object v1, p0, Lc8/Xxf;->data:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 976
    const/4 v1, 0x2

    iget-object v2, p0, Lc8/Xxf;->data:Ljava/lang/String;

    .line 977
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 979
    :cond_1
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
    .line 922
    invoke-virtual {p0, p1}, Lc8/Xxf;->mergeFrom(Lc8/tmd;)Lc8/Xxf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lc8/tmd;)Lc8/Xxf;
    .locals 2
    .param p1, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 987
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/tmd;->readTag()I

    move-result v0

    .line 988
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 992
    invoke-static {p1, v0}, Lc8/Jmd;->parseUnknownField(Lc8/tmd;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 993
    :sswitch_0
    return-object p0

    .line 998
    :sswitch_1
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Xxf;->sdkVersion:Ljava/lang/String;

    goto :goto_0

    .line 1002
    :sswitch_2
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/Xxf;->data:Ljava/lang/String;

    goto :goto_0

    .line 988
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 959
    iget-object v0, p0, Lc8/Xxf;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    const/4 v0, 0x1

    iget-object v1, p0, Lc8/Xxf;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 962
    :cond_0
    iget-object v0, p0, Lc8/Xxf;->data:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 963
    const/4 v0, 0x2

    iget-object v1, p0, Lc8/Xxf;->data:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 965
    :cond_1
    invoke-super {p0, p1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 966
    return-void
.end method
