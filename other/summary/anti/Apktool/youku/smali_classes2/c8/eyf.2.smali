.class public final Lc8/eyf;
.super Lc8/Gmd;
.source "HeaderV1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/fyf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lc8/eyf;


# instance fields
.field public appVersion:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public monitorTag:I

.field public priority:I

.field public sdkVersion:Ljava/lang/String;

.field public statusCode:I

.field public subType:I

.field public token:Ljava/lang/String;

.field public topic:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lc8/Gmd;-><init>()V

    .line 56
    invoke-virtual {p0}, Lc8/eyf;->clear()Lc8/eyf;

    .line 57
    return-void
.end method

.method public static emptyArray()[Lc8/eyf;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lc8/eyf;->_emptyArray:[Lc8/eyf;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lc8/Bmd;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lc8/eyf;->_emptyArray:[Lc8/eyf;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lc8/eyf;

    sput-object v0, Lc8/eyf;->_emptyArray:[Lc8/eyf;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lc8/eyf;->_emptyArray:[Lc8/eyf;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lc8/tmd;)Lc8/eyf;
    .locals 1
    .param p0, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    new-instance v0, Lc8/eyf;

    invoke-direct {v0}, Lc8/eyf;-><init>()V

    invoke-virtual {v0, p0}, Lc8/eyf;->mergeFrom(Lc8/tmd;)Lc8/eyf;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lc8/eyf;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 217
    new-instance v0, Lc8/eyf;

    invoke-direct {v0}, Lc8/eyf;-><init>()V

    invoke-static {v0, p0}, Lc8/Gmd;->mergeFrom(Lc8/Gmd;[B)Lc8/Gmd;

    move-result-object v0

    check-cast v0, Lc8/eyf;

    return-object v0
.end method


# virtual methods
.method public clear()Lc8/eyf;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eyf;->topic:Ljava/lang/String;

    .line 61
    iput v1, p0, Lc8/eyf;->priority:I

    .line 62
    iput v1, p0, Lc8/eyf;->statusCode:I

    .line 63
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eyf;->sdkVersion:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eyf;->appVersion:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eyf;->messageId:Ljava/lang/String;

    .line 66
    iput v1, p0, Lc8/eyf;->subType:I

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eyf;->userId:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eyf;->token:Ljava/lang/String;

    .line 69
    iput v1, p0, Lc8/eyf;->monitorTag:I

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lc8/eyf;->cachedSize:I

    .line 71
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 112
    invoke-super {p0}, Lc8/Gmd;->computeSerializedSize()I

    move-result v0

    .line 113
    .local v0, "size":I
    iget-object v1, p0, Lc8/eyf;->topic:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v1, 0x1

    iget-object v2, p0, Lc8/eyf;->topic:Ljava/lang/String;

    .line 115
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_0
    iget v1, p0, Lc8/eyf;->priority:I

    if-eqz v1, :cond_1

    .line 118
    const/4 v1, 0x2

    iget v2, p0, Lc8/eyf;->priority:I

    .line 119
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 121
    :cond_1
    iget v1, p0, Lc8/eyf;->statusCode:I

    if-eqz v1, :cond_2

    .line 122
    const/4 v1, 0x3

    iget v2, p0, Lc8/eyf;->statusCode:I

    .line 123
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 125
    :cond_2
    iget-object v1, p0, Lc8/eyf;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 126
    const/4 v1, 0x4

    iget-object v2, p0, Lc8/eyf;->sdkVersion:Ljava/lang/String;

    .line 127
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 129
    :cond_3
    iget-object v1, p0, Lc8/eyf;->appVersion:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 130
    const/4 v1, 0x5

    iget-object v2, p0, Lc8/eyf;->appVersion:Ljava/lang/String;

    .line 131
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 133
    :cond_4
    iget-object v1, p0, Lc8/eyf;->messageId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 134
    const/4 v1, 0x6

    iget-object v2, p0, Lc8/eyf;->messageId:Ljava/lang/String;

    .line 135
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 137
    :cond_5
    iget v1, p0, Lc8/eyf;->subType:I

    if-eqz v1, :cond_6

    .line 138
    const/4 v1, 0x7

    iget v2, p0, Lc8/eyf;->subType:I

    .line 139
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_6
    iget-object v1, p0, Lc8/eyf;->userId:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 142
    const/16 v1, 0x8

    iget-object v2, p0, Lc8/eyf;->userId:Ljava/lang/String;

    .line 143
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_7
    iget-object v1, p0, Lc8/eyf;->token:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 146
    const/16 v1, 0x9

    iget-object v2, p0, Lc8/eyf;->token:Ljava/lang/String;

    .line 147
    invoke-static {v1, v2}, Lc8/umd;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_8
    iget v1, p0, Lc8/eyf;->monitorTag:I

    if-eqz v1, :cond_9

    .line 150
    const/16 v1, 0xa

    iget v2, p0, Lc8/eyf;->monitorTag:I

    .line 151
    invoke-static {v1, v2}, Lc8/umd;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_9
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
    .line 8
    invoke-virtual {p0, p1}, Lc8/eyf;->mergeFrom(Lc8/tmd;)Lc8/eyf;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lc8/tmd;)Lc8/eyf;
    .locals 2
    .param p1, "input"    # Lc8/tmd;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lc8/tmd;->readTag()I

    move-result v0

    .line 162
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 166
    invoke-static {p1, v0}, Lc8/Jmd;->parseUnknownField(Lc8/tmd;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    :sswitch_0
    return-object p0

    .line 172
    :sswitch_1
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/eyf;->topic:Ljava/lang/String;

    goto :goto_0

    .line 176
    :sswitch_2
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/eyf;->priority:I

    goto :goto_0

    .line 180
    :sswitch_3
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/eyf;->statusCode:I

    goto :goto_0

    .line 184
    :sswitch_4
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/eyf;->sdkVersion:Ljava/lang/String;

    goto :goto_0

    .line 188
    :sswitch_5
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/eyf;->appVersion:Ljava/lang/String;

    goto :goto_0

    .line 192
    :sswitch_6
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/eyf;->messageId:Ljava/lang/String;

    goto :goto_0

    .line 196
    :sswitch_7
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/eyf;->subType:I

    goto :goto_0

    .line 200
    :sswitch_8
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/eyf;->userId:Ljava/lang/String;

    goto :goto_0

    .line 204
    :sswitch_9
    invoke-virtual {p1}, Lc8/tmd;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/eyf;->token:Ljava/lang/String;

    goto :goto_0

    .line 208
    :sswitch_a
    invoke-virtual {p1}, Lc8/tmd;->readInt32()I

    move-result v1

    iput v1, p0, Lc8/eyf;->monitorTag:I

    goto :goto_0

    .line 162
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
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
    .line 77
    iget-object v0, p0, Lc8/eyf;->topic:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iget-object v1, p0, Lc8/eyf;->topic:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 80
    :cond_0
    iget v0, p0, Lc8/eyf;->priority:I

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x2

    iget v1, p0, Lc8/eyf;->priority:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 83
    :cond_1
    iget v0, p0, Lc8/eyf;->statusCode:I

    if-eqz v0, :cond_2

    .line 84
    const/4 v0, 0x3

    iget v1, p0, Lc8/eyf;->statusCode:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 86
    :cond_2
    iget-object v0, p0, Lc8/eyf;->sdkVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    const/4 v0, 0x4

    iget-object v1, p0, Lc8/eyf;->sdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 89
    :cond_3
    iget-object v0, p0, Lc8/eyf;->appVersion:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    const/4 v0, 0x5

    iget-object v1, p0, Lc8/eyf;->appVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 92
    :cond_4
    iget-object v0, p0, Lc8/eyf;->messageId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    const/4 v0, 0x6

    iget-object v1, p0, Lc8/eyf;->messageId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 95
    :cond_5
    iget v0, p0, Lc8/eyf;->subType:I

    if-eqz v0, :cond_6

    .line 96
    const/4 v0, 0x7

    iget v1, p0, Lc8/eyf;->subType:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 98
    :cond_6
    iget-object v0, p0, Lc8/eyf;->userId:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 99
    const/16 v0, 0x8

    iget-object v1, p0, Lc8/eyf;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 101
    :cond_7
    iget-object v0, p0, Lc8/eyf;->token:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 102
    const/16 v0, 0x9

    iget-object v1, p0, Lc8/eyf;->token:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeString(ILjava/lang/String;)V

    .line 104
    :cond_8
    iget v0, p0, Lc8/eyf;->monitorTag:I

    if-eqz v0, :cond_9

    .line 105
    const/16 v0, 0xa

    iget v1, p0, Lc8/eyf;->monitorTag:I

    invoke-virtual {p1, v0, v1}, Lc8/umd;->writeInt32(II)V

    .line 107
    :cond_9
    invoke-super {p0, p1}, Lc8/Gmd;->writeTo(Lc8/umd;)V

    .line 108
    return-void
.end method
