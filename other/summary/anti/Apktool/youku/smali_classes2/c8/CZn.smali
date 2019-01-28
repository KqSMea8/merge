.class public Lc8/CZn;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/EZn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base64InputStream"
.end annotation


# instance fields
.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 658
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/CZn;-><init>(Ljava/io/InputStream;I)V

    .line 659
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 663
    and-int/lit8 v0, p2, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc8/CZn;->breakLines:Z

    .line 664
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lc8/CZn;->encode:Z

    .line 665
    iget-boolean v0, p0, Lc8/CZn;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lc8/CZn;->bufferLength:I

    .line 666
    iget v0, p0, Lc8/CZn;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/CZn;->buffer:[B

    .line 667
    const/4 v0, -0x1

    iput v0, p0, Lc8/CZn;->position:I

    .line 668
    iput v2, p0, Lc8/CZn;->lineLength:I

    .line 669
    iput p2, p0, Lc8/CZn;->options:I

    .line 671
    invoke-static {p2}, Lc8/EZn;->getDecodabet(I)[B

    move-result-object v0

    iput-object v0, p0, Lc8/CZn;->decodabet:[B

    .line 672
    return-void

    :cond_0
    move v0, v2

    .line 663
    goto :goto_0

    :cond_1
    move v1, v2

    .line 664
    goto :goto_1

    .line 665
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v11, 0x4

    const/4 v10, -0x1

    const/4 v1, 0x0

    .line 675
    iget v3, p0, Lc8/CZn;->position:I

    if-gez v3, :cond_2

    .line 676
    iget-boolean v3, p0, Lc8/CZn;->encode:Z

    if-eqz v3, :cond_4

    .line 677
    new-array v0, v4, [B

    .line 678
    .local v0, "b3":[B
    const/4 v2, 0x0

    .line 679
    .local v2, "numBinaryBytes":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v4, :cond_1

    .line 681
    :try_start_0
    iget-object v3, p0, Lc8/CZn;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 683
    .local v6, "b":I
    if-ltz v6, :cond_0

    .line 684
    int-to-byte v3, v6

    aput-byte v3, v0, v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    add-int/lit8 v2, v2, 0x1

    .line 679
    .end local v6    # "b":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 687
    :catch_0
    move-exception v8

    .line 688
    .local v8, "e":Ljava/io/IOException;
    if-nez v9, :cond_0

    .line 689
    throw v8

    .line 694
    .end local v8    # "e":Ljava/io/IOException;
    :cond_1
    if-lez v2, :cond_3

    .line 695
    iget-object v3, p0, Lc8/CZn;->buffer:[B

    iget v5, p0, Lc8/CZn;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lc8/EZn;->encode3to4([BII[BII)[B

    .line 696
    iput v1, p0, Lc8/CZn;->position:I

    .line 697
    iput v11, p0, Lc8/CZn;->numSigBytes:I

    .line 730
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v9    # "i":I
    :cond_2
    :goto_1
    iget v3, p0, Lc8/CZn;->position:I

    if-ltz v3, :cond_d

    .line 731
    iget v3, p0, Lc8/CZn;->position:I

    iget v4, p0, Lc8/CZn;->numSigBytes:I

    if-lt v3, v4, :cond_a

    move v1, v10

    .line 747
    :goto_2
    return v1

    .restart local v0    # "b3":[B
    .restart local v2    # "numBinaryBytes":I
    .restart local v9    # "i":I
    :cond_3
    move v1, v10

    .line 699
    goto :goto_2

    .line 702
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v9    # "i":I
    :cond_4
    new-array v7, v11, [B

    .line 704
    .local v7, "b4":[B
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v11, :cond_7

    .line 707
    :cond_5
    iget-object v3, p0, Lc8/CZn;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 708
    .restart local v6    # "b":I
    if-ltz v6, :cond_6

    iget-object v3, p0, Lc8/CZn;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_5

    .line 710
    :cond_6
    if-ltz v6, :cond_7

    .line 713
    int-to-byte v3, v6

    aput-byte v3, v7, v9

    .line 704
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 716
    .end local v6    # "b":I
    :cond_7
    if-ne v9, v11, :cond_8

    .line 717
    iget-object v3, p0, Lc8/CZn;->buffer:[B

    iget v4, p0, Lc8/CZn;->options:I

    invoke-static {v7, v1, v3, v1, v4}, Lc8/EZn;->decode4to3([BI[BII)I

    move-result v3

    iput v3, p0, Lc8/CZn;->numSigBytes:I

    .line 718
    iput v1, p0, Lc8/CZn;->position:I

    goto :goto_1

    .line 720
    :cond_8
    if-nez v9, :cond_9

    move v1, v10

    .line 721
    goto :goto_2

    .line 724
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 735
    .end local v7    # "b4":[B
    .end local v9    # "i":I
    :cond_a
    iget-boolean v3, p0, Lc8/CZn;->encode:Z

    if-eqz v3, :cond_b

    iget-boolean v3, p0, Lc8/CZn;->breakLines:Z

    if-eqz v3, :cond_b

    iget v3, p0, Lc8/CZn;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_b

    .line 736
    iput v1, p0, Lc8/CZn;->lineLength:I

    .line 737
    const/16 v1, 0xa

    goto :goto_2

    .line 740
    :cond_b
    iget v1, p0, Lc8/CZn;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/CZn;->lineLength:I

    .line 742
    iget-object v1, p0, Lc8/CZn;->buffer:[B

    iget v3, p0, Lc8/CZn;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc8/CZn;->position:I

    aget-byte v6, v1, v3

    .line 744
    .restart local v6    # "b":I
    iget v1, p0, Lc8/CZn;->position:I

    iget v3, p0, Lc8/CZn;->bufferLength:I

    if-lt v1, v3, :cond_c

    .line 745
    iput v10, p0, Lc8/CZn;->position:I

    .line 747
    :cond_c
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 750
    .end local v6    # "b":I
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Error in Base64 code reading stream."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public read([BII)I
    .locals 4
    .param p1, "dest"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 755
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 756
    invoke-virtual {p0}, Lc8/CZn;->read()I

    move-result v0

    .line 757
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 758
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 760
    :cond_0
    if-nez v1, :cond_1

    .line 762
    const/4 v1, -0x1

    .line 767
    .end local v0    # "b":I
    .end local v1    # "i":I
    :cond_1
    return v1
.end method
