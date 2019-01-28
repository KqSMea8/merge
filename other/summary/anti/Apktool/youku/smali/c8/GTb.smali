.class public Lc8/GTb;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ITb;
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
    .line 1853
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/GTb;-><init>(Ljava/io/InputStream;I)V

    .line 1854
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1882
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1883
    iput p2, p0, Lc8/GTb;->options:I

    .line 1884
    and-int/lit8 v0, p2, 0x8

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc8/GTb;->breakLines:Z

    .line 1885
    and-int/lit8 v0, p2, 0x1

    if-lez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lc8/GTb;->encode:Z

    .line 1886
    iget-boolean v0, p0, Lc8/GTb;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    :goto_2
    iput v0, p0, Lc8/GTb;->bufferLength:I

    .line 1887
    iget v0, p0, Lc8/GTb;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/GTb;->buffer:[B

    .line 1888
    const/4 v0, -0x1

    iput v0, p0, Lc8/GTb;->position:I

    .line 1889
    iput v2, p0, Lc8/GTb;->lineLength:I

    .line 1890
    invoke-static {p2}, Lc8/ITb;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lc8/GTb;->decodabet:[B

    .line 1891
    return-void

    :cond_0
    move v0, v2

    .line 1884
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1885
    goto :goto_1

    .line 1886
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

    .line 1904
    iget v3, p0, Lc8/GTb;->position:I

    if-gez v3, :cond_1

    .line 1905
    iget-boolean v3, p0, Lc8/GTb;->encode:Z

    if-eqz v3, :cond_3

    .line 1906
    new-array v0, v4, [B

    .line 1907
    .local v0, "b3":[B
    const/4 v2, 0x0

    .line 1908
    .local v2, "numBinaryBytes":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v4, :cond_0

    .line 1909
    iget-object v3, p0, Lc8/GTb;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1912
    .local v6, "b":I
    if-ltz v6, :cond_0

    .line 1913
    int-to-byte v3, v6

    aput-byte v3, v0, v8

    .line 1914
    add-int/lit8 v2, v2, 0x1

    .line 1908
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1921
    .end local v6    # "b":I
    :cond_0
    if-lez v2, :cond_2

    .line 1922
    iget-object v3, p0, Lc8/GTb;->buffer:[B

    iget v5, p0, Lc8/GTb;->options:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lc8/ITb;->access$100([BII[BII)[B

    .line 1923
    iput v1, p0, Lc8/GTb;->position:I

    .line 1924
    iput v10, p0, Lc8/GTb;->numSigBytes:I

    .line 1967
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_1
    :goto_1
    iget v3, p0, Lc8/GTb;->position:I

    if-ltz v3, :cond_c

    .line 1969
    iget v3, p0, Lc8/GTb;->position:I

    iget v4, p0, Lc8/GTb;->numSigBytes:I

    if-lt v3, v4, :cond_9

    move v1, v9

    .line 1988
    :goto_2
    return v1

    .restart local v0    # "b3":[B
    .restart local v2    # "numBinaryBytes":I
    .restart local v8    # "i":I
    :cond_2
    move v1, v9

    .line 1927
    goto :goto_2

    .line 1933
    .end local v0    # "b3":[B
    .end local v2    # "numBinaryBytes":I
    .end local v8    # "i":I
    :cond_3
    new-array v7, v10, [B

    .line 1935
    .local v7, "b4":[B
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_3
    if-ge v8, v10, :cond_6

    .line 1939
    :cond_4
    iget-object v3, p0, Lc8/GTb;->in:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    .line 1941
    .restart local v6    # "b":I
    if-ltz v6, :cond_5

    iget-object v3, p0, Lc8/GTb;->decodabet:[B

    and-int/lit8 v4, v6, 0x7f

    aget-byte v3, v3, v4

    const/4 v4, -0x5

    if-le v3, v4, :cond_4

    .line 1943
    :cond_5
    if-ltz v6, :cond_6

    .line 1947
    int-to-byte v3, v6

    aput-byte v3, v7, v8

    .line 1935
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1950
    .end local v6    # "b":I
    :cond_6
    if-ne v8, v10, :cond_7

    .line 1951
    iget-object v3, p0, Lc8/GTb;->buffer:[B

    iget v4, p0, Lc8/GTb;->options:I

    invoke-static {v7, v1, v3, v1, v4}, Lc8/ITb;->access$200([BI[BII)I

    move-result v3

    iput v3, p0, Lc8/GTb;->numSigBytes:I

    .line 1952
    iput v1, p0, Lc8/GTb;->position:I

    goto :goto_1

    .line 1954
    :cond_7
    if-nez v8, :cond_8

    move v1, v9

    .line 1955
    goto :goto_2

    .line 1959
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v3, "Improperly padded Base64 input."

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1973
    .end local v7    # "b4":[B
    .end local v8    # "i":I
    :cond_9
    iget-boolean v3, p0, Lc8/GTb;->encode:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lc8/GTb;->breakLines:Z

    if-eqz v3, :cond_a

    iget v3, p0, Lc8/GTb;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_a

    .line 1974
    iput v1, p0, Lc8/GTb;->lineLength:I

    .line 1975
    const/16 v1, 0xa

    goto :goto_2

    .line 1978
    :cond_a
    iget v1, p0, Lc8/GTb;->lineLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/GTb;->lineLength:I

    .line 1982
    iget-object v1, p0, Lc8/GTb;->buffer:[B

    iget v3, p0, Lc8/GTb;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc8/GTb;->position:I

    aget-byte v6, v1, v3

    .line 1984
    .restart local v6    # "b":I
    iget v1, p0, Lc8/GTb;->position:I

    iget v3, p0, Lc8/GTb;->bufferLength:I

    if-lt v1, v3, :cond_b

    .line 1985
    iput v9, p0, Lc8/GTb;->position:I

    .line 1988
    :cond_b
    and-int/lit16 v1, v6, 0xff

    goto :goto_2

    .line 1995
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
    .line 2019
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 2020
    invoke-virtual {p0}, Lc8/GTb;->read()I

    move-result v0

    .line 2022
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 2023
    add-int v2, p2, v1

    int-to-byte v3, v0

    aput-byte v3, p1, v2

    .line 2019
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2024
    :cond_0
    if-nez v1, :cond_1

    .line 2025
    const/4 v1, -0x1

    .line 2030
    .end local v0    # "b":I
    .end local v1    # "i":I
    :cond_1
    return v1
.end method
