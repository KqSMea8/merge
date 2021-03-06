.class public Lanet/channel/bytes/ByteArray;
.super Ljava/lang/Object;
.source "ByteArray.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lanet/channel/bytes/ByteArray;",
        ">;"
    }
.end annotation


# instance fields
.field public final buffer:[B
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public bufferLength:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public dataLength:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field


# direct methods
.method private constructor <init>([BI)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "length"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    if-nez p1, :cond_0

    new-array p1, p2, [B

    .end local p1    # "bytes":[B
    :cond_0
    iput-object p1, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    .line 18
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    .line 19
    iput p2, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    .line 20
    return-void
.end method

.method public static create(I)Lanet/channel/bytes/ByteArray;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 23
    new-instance v0, Lanet/channel/bytes/ByteArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lanet/channel/bytes/ByteArray;-><init>([BI)V

    .line 24
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    return-object v0
.end method

.method public static wrap([B)Lanet/channel/bytes/ByteArray;
    .locals 1
    .param p0, "bytes"    # [B

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    invoke-static {p0, v0}, Lanet/channel/bytes/ByteArray;->wrap([BI)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static wrap([BI)Lanet/channel/bytes/ByteArray;
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "length"    # I

    .prologue
    .line 28
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lanet/channel/bytes/ByteArray;

    invoke-direct {v0, p0, p1}, Lanet/channel/bytes/ByteArray;-><init>([BI)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lanet/channel/bytes/ByteArray;)I
    .locals 2
    .param p1, "other"    # Lanet/channel/bytes/ByteArray;

    .prologue
    .line 76
    iget v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    iget v1, p1, Lanet/channel/bytes/ByteArray;->bufferLength:I

    if-ne v0, v1, :cond_2

    .line 77
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    if-nez v0, :cond_0

    .line 78
    const/4 v0, -0x1

    .line 85
    :goto_0
    return v0

    .line 79
    :cond_0
    iget-object v0, p1, Lanet/channel/bytes/ByteArray;->buffer:[B

    if-nez v0, :cond_1

    .line 80
    const/4 v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 85
    :cond_2
    iget v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    iget v1, p1, Lanet/channel/bytes/ByteArray;->bufferLength:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 11
    check-cast p1, Lanet/channel/bytes/ByteArray;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lanet/channel/bytes/ByteArray;->compareTo(Lanet/channel/bytes/ByteArray;)I

    move-result v0

    return v0
.end method

.method public getBuffer()[B
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    return-object v0
.end method

.method public getBufferLength()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    return v0
.end method

.method public getDataLength()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    return v0
.end method

.method public readFrom(Ljava/io/InputStream;)I
    .locals 4
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    iget v3, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 66
    .local v0, "readLen":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    :cond_0
    iput v1, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    .line 67
    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lanet/channel/bytes/ByteArray;->bufferLength:I

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-static {}, Lc8/uJ;->getInstance()Lc8/uJ;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/uJ;->refund(Lanet/channel/bytes/ByteArray;)V

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lanet/channel/bytes/ByteArray;->buffer:[B

    const/4 v1, 0x0

    iget v2, p0, Lanet/channel/bytes/ByteArray;->dataLength:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 72
    return-void
.end method
