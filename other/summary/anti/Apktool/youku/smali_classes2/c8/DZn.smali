.class public Lc8/DZn;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64OutputStream"
.end annotation


# instance fields
.field private b4:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private options:I

.field private position:I

.field private suspendEncoding:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/DZn;-><init>(Ljava/io/OutputStream;I)V

    .line 560
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 5
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 563
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 564
    and-int/lit8 v0, p2, 0x8

    const/16 v4, 0x8

    if-eq v0, v4, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc8/DZn;->breakLines:Z

    .line 565
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lc8/DZn;->encode:Z

    .line 566
    iget-boolean v0, p0, Lc8/DZn;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lc8/DZn;->bufferLength:I

    .line 567
    iget v0, p0, Lc8/DZn;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/DZn;->buffer:[B

    .line 568
    iput v2, p0, Lc8/DZn;->position:I

    .line 569
    iput v2, p0, Lc8/DZn;->lineLength:I

    .line 570
    iput-boolean v2, p0, Lc8/DZn;->suspendEncoding:Z

    .line 571
    new-array v0, v3, [B

    iput-object v0, p0, Lc8/DZn;->b4:[B

    .line 572
    iput p2, p0, Lc8/DZn;->options:I

    .line 573
    invoke-static {p2}, Lc8/EZn;->getDecodabet(I)[B

    move-result-object v0

    iput-object v0, p0, Lc8/DZn;->decodabet:[B

    .line 574
    return-void

    :cond_0
    move v0, v2

    .line 564
    goto :goto_0

    :cond_1
    move v1, v2

    .line 565
    goto :goto_1

    :cond_2
    move v0, v3

    .line 566
    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 628
    invoke-virtual {p0}, Lc8/DZn;->flushBase64()V

    .line 630
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 632
    iput-object v0, p0, Lc8/DZn;->buffer:[B

    .line 633
    iput-object v0, p0, Lc8/DZn;->out:Ljava/io/OutputStream;

    .line 634
    return-void
.end method

.method public flushBase64()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    iget v0, p0, Lc8/DZn;->position:I

    if-lez v0, :cond_0

    .line 619
    iget-boolean v0, p0, Lc8/DZn;->encode:Z

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lc8/DZn;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lc8/DZn;->b4:[B

    iget-object v2, p0, Lc8/DZn;->buffer:[B

    iget v3, p0, Lc8/DZn;->position:I

    iget v4, p0, Lc8/DZn;->options:I

    invoke-static {v1, v2, v3, v4}, Lc8/EZn;->encode3to4([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lc8/DZn;->position:I

    .line 625
    :cond_0
    return-void

    .line 623
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/DZn;->suspendEncoding:Z

    .line 643
    return-void
.end method

.method public suspendEncoding()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0}, Lc8/DZn;->flushBase64()V

    .line 638
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/DZn;->suspendEncoding:Z

    .line 639
    return-void
.end method

.method public write(I)V
    .locals 7
    .param p1, "theByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x5

    const/4 v6, 0x0

    .line 577
    iget-boolean v1, p0, Lc8/DZn;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 578
    iget-object v1, p0, Lc8/DZn;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-boolean v1, p0, Lc8/DZn;->encode:Z

    if-eqz v1, :cond_3

    .line 583
    iget-object v1, p0, Lc8/DZn;->buffer:[B

    iget v2, p0, Lc8/DZn;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/DZn;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 584
    iget v1, p0, Lc8/DZn;->position:I

    iget v2, p0, Lc8/DZn;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 585
    iget-object v1, p0, Lc8/DZn;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lc8/DZn;->b4:[B

    iget-object v3, p0, Lc8/DZn;->buffer:[B

    iget v4, p0, Lc8/DZn;->bufferLength:I

    iget v5, p0, Lc8/DZn;->options:I

    invoke-static {v2, v3, v4, v5}, Lc8/EZn;->encode3to4([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 586
    iget v1, p0, Lc8/DZn;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lc8/DZn;->lineLength:I

    .line 587
    iget-boolean v1, p0, Lc8/DZn;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lc8/DZn;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 588
    iget-object v1, p0, Lc8/DZn;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 589
    iput v6, p0, Lc8/DZn;->lineLength:I

    .line 592
    :cond_2
    iput v6, p0, Lc8/DZn;->position:I

    goto :goto_0

    .line 595
    :cond_3
    iget-object v1, p0, Lc8/DZn;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 596
    iget-object v1, p0, Lc8/DZn;->buffer:[B

    iget v2, p0, Lc8/DZn;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/DZn;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 597
    iget v1, p0, Lc8/DZn;->position:I

    iget v2, p0, Lc8/DZn;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 598
    iget-object v1, p0, Lc8/DZn;->buffer:[B

    iget-object v2, p0, Lc8/DZn;->b4:[B

    iget v3, p0, Lc8/DZn;->options:I

    invoke-static {v1, v6, v2, v6, v3}, Lc8/EZn;->decode4to3([BI[BII)I

    move-result v0

    .line 599
    .local v0, "len":I
    iget-object v1, p0, Lc8/DZn;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lc8/DZn;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 600
    iput v6, p0, Lc8/DZn;->position:I

    goto :goto_0

    .line 602
    .end local v0    # "len":I
    :cond_4
    iget-object v1, p0, Lc8/DZn;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 603
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid character in Base64 data."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public write([BII)V
    .locals 2
    .param p1, "theBytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    iget-boolean v1, p0, Lc8/DZn;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 609
    iget-object v1, p0, Lc8/DZn;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 615
    :cond_0
    return-void

    .line 613
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 614
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lc8/DZn;->write(I)V

    .line 613
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
