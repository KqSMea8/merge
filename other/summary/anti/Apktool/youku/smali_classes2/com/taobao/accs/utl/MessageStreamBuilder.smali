.class public Lcom/taobao/accs/utl/MessageStreamBuilder;
.super Ljava/io/ByteArrayOutputStream;
.source "MessageStreamBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public writeByte(B)Lcom/taobao/accs/utl/MessageStreamBuilder;
    .locals 0
    .param p1, "b"    # B

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write(I)V

    .line 17
    return-object p0
.end method

.method public writeInt(I)Lcom/taobao/accs/utl/MessageStreamBuilder;
    .locals 1
    .param p1, "m"    # I

    .prologue
    .line 27
    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write(I)V

    .line 28
    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write(I)V

    .line 29
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write(I)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write(I)V

    .line 31
    return-object p0
.end method

.method public writeLong(J)Lcom/taobao/accs/utl/MessageStreamBuilder;
    .locals 3
    .param p1, "m"    # J

    .prologue
    .line 35
    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeInt(I)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 36
    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->writeInt(I)Lcom/taobao/accs/utl/MessageStreamBuilder;

    .line 37
    return-object p0
.end method

.method public writeShort(S)Lcom/taobao/accs/utl/MessageStreamBuilder;
    .locals 1
    .param p1, "s"    # S

    .prologue
    .line 21
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write(I)V

    .line 22
    invoke-virtual {p0, p1}, Lcom/taobao/accs/utl/MessageStreamBuilder;->write(I)V

    .line 23
    return-object p0
.end method
