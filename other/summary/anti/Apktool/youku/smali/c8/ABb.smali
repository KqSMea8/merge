.class public Lc8/ABb;
.super Ljava/io/FilterInputStream;
.source "Base64_2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/CBb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
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
    .line 1777
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/ABb;-><init>(Ljava/io/InputStream;I)V

    .line 1778
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1803
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1804
    iput p2, p0, Lc8/ABb;->options:I

    .line 1805
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc8/ABb;->breakLines:Z

    .line 1806
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lc8/ABb;->encode:Z

    .line 1807
    iget-boolean v0, p0, Lc8/ABb;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lc8/ABb;->bufferLength:I

    .line 1808
    iget v0, p0, Lc8/ABb;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/ABb;->buffer:[B

    .line 1809
    const/4 v0, -0x1

    iput v0, p0, Lc8/ABb;->position:I

    .line 1810
    iput v2, p0, Lc8/ABb;->lineLength:I

    .line 1811
    invoke-static {p2}, Lc8/CBb;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lc8/ABb;->decodabet:[B

    .line 1812
    return-void

    :cond_0
    move v0, v2

    .line 1805
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1806
    goto :goto_1

    .line 1807
    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method


# virtual methods
.method public read()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v10, 0x4

    const/4 v9, -0x1

    const/4 v1, 0x0

    .line 1825
    iget v3, p0, Lc8/ABb;->position:I

    if-gez v3, :cond_1

    .line 1826
    iget-boolean v3, p0, Lc8/ABb;->encode:Z

    if-eqz v3, :cond_3

    .line 1827
    new-array v0, v4, [B

    .line 1828
    .local v0, "b3":[B
    const/4 v2, 0x0

    .line 1829
    .local v2, "numBinaryBytes":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 1830
    iget-object v3, p0, Lc8/ABb;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1833
    .local v6, "b":I
    if-ltz v6, :cond_0

    .line 1834
    int-to-byte v3, v6

    aput-byte v3, v0, v8

    .line 1835
    add-int/lit8 v2, v2, 0x1

    .line 1829
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1842
    .end local v6    # "b":I
    :cond_0
    if-lez v2, :cond_2

    .line 1843
    iget-object v3, p0, Lc8/ABb;->buffer:[B

    iget v5, p0, Lc8/ABb;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lc8/CBb;->access$100([BII[BII)[B

    .line 1844
    iput v1, p0, Lc8/ABb;->position:I

    .line 1845
    iput v10, p0, Lc8/ABb;->numSigBytes:I

    .line 1888
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_1
    :goto_1
    iget v3, p0, Lc8/ABb;->position:I

    if-ltz v3, :cond_c

    .line 1890
    iget v3, p0, Lc8/ABb;->position:I

    iget v4, p0, Lc8/ABb;->numSigBytes:I

    if-lt v3, v4, :cond_9

    move v1, v9

    .line 1909
    :goto_2
    return v1

    .restart local v0    # "b3":[B
    .restart local v2    # "numBinaryBytes":I
    .restart local v8    # "i":I
    :cond_2
    move v1, v9

    .line 1848
    goto :goto_2

    .line 1854
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_3
    new-array v7, v10, [B

    .line 1856
    .local v7, "b4":[B
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v10, :cond_6

    .line 1860
    :cond_4
    iget-object v3, p0, Lc8/ABb;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1862
    .restart local v6    # "b":I
    if-ltz v6, :cond_5

    iget-object v3, p0, Lc8/ABb;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_4

    .line 1864
    :cond_5
    if-ltz v6, :cond_6

    .line 1868
    int-to-byte v3, v6

    aput-byte v3, v7, v8

    .line 1856
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1871
    .end local v6    # "b":I
    :cond_6
    if-ne v8, v10, :cond_7

    .line 1872
    iget-object v3, p0, Lc8/ABb;->buffer:[B

    iget v4, p0, Lc8/ABb;->options:I

    invoke-static {v7, v1, v3, v1, v4}, Lc8/CBb;->access$200([BI[BII)I

    move-result v3

    iput v3, p0, Lc8/ABb;->numSigBytes:I

    .line 1873
    iput v1, p0, Lc8/ABb;->position:I

    goto :goto_1

    .line 1875
    :cond_7
    if-nez v8, :cond_8

    move v1, v9

    .line 1876
    goto :goto_2

    .line 1880
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1894
    .end local v7    # "b4":[B
    .end local v8    # "i":I
    :cond_9
    iget-boolean v3, p0, Lc8/ABb;->encode:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lc8/ABb;->breakLines:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lc8/ABb;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_a

    .line 1895
    iput v1, p0, Lc8/ABb;->lineLength:I

    .line 1896
    const/16 v1, 0xa

    goto :goto_2

    .line 1899
    :cond_a
    iget v1, p0, Lc8/ABb;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/ABb;->lineLength:I

    .line 1903
    iget-object v1, p0, Lc8/ABb;->buffer:[B

    iget v3, p0, Lc8/ABb;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc8/ABb;->position:I

    aget-byte v6, v1, v3

    .line 1905
    .restart local v6    # "b":I
    iget v1, p0, Lc8/ABb;->position:I

    iget v3, p0, Lc8/ABb;->bufferLength:I

    if-lt v1, v3, :cond_b

    .line 1906
    iput v9, p0, Lc8/ABb;->position:I

    .line 1909
    :cond_b
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1916
    .end local v6    # "b":I
    :cond_c
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
    .line 1937
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 1938
    invoke-virtual {p0}, Lc8/ABb;->read()I

    move-result v0

    .line 1940
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 1941
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 1937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1942
    :cond_0
    if-nez v1, :cond_1

    .line 1943
    const/4 v1, -0x1

    .line 1948
    .end local v0    # "b":I
    .end local v1    # "i":I
    :cond_1
    return v1
.end method
