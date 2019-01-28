.class public Lcom/taobao/accs/utl/MessageStreamReader;
.super Ljava/io/ByteArrayInputStream;
.source "MessageStreamReader.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "buf"    # [B

    .prologue
    .line 9
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 10
    return-void
.end method


# virtual methods
.method public readAll()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->available()I

    move-result v1

    new-array v0, v1, [B

    .line 57
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamReader;->read([B)I

    .line 58
    return-object v0
.end method

.method public readAllString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->readAll()[B

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public readByte()I
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->read()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public readInt()I
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->readShort()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->readShort()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public readLong()J
    .locals 4

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->readInt()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->readInt()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public readShort()I
    .locals 2

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->readByte()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lcom/taobao/accs/utl/MessageStreamReader;->readByte()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public readString(I)Ljava/lang/String;
    .locals 5
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    new-array v0, p1, [B

    .line 42
    .local v0, "buf":[B
    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamReader;->read([B)I

    move-result v1

    .line 43
    .local v1, "readLen":I
    if-ne v1, p1, :cond_0

    .line 44
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2

    .line 46
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "read len not match. ask for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " but read for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
