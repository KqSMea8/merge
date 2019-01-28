.class public Lc8/HTb;
.super Ljava/io/FilterOutputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ITb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OutputStream"
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
    .line 2067
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/HTb;-><init>(Ljava/io/OutputStream;I)V

    .line 2068
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "options"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2095
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2096
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lc8/HTb;->breakLines:Z

    .line 2097
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lc8/HTb;->encode:Z

    .line 2098
    iget-boolean v0, p0, Lc8/HTb;->encode:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_2
    iput v0, p0, Lc8/HTb;->bufferLength:I

    .line 2099
    iget v0, p0, Lc8/HTb;->bufferLength:I

    new-array v0, v0, [B

    iput-object v0, p0, Lc8/HTb;->buffer:[B

    .line 2100
    iput v2, p0, Lc8/HTb;->position:I

    .line 2101
    iput v2, p0, Lc8/HTb;->lineLength:I

    .line 2102
    iput-boolean v2, p0, Lc8/HTb;->suspendEncoding:Z

    .line 2103
    new-array v0, v3, [B

    iput-object v0, p0, Lc8/HTb;->b4:[B

    .line 2104
    iput p2, p0, Lc8/HTb;->options:I

    .line 2105
    invoke-static {p2}, Lc8/ITb;->access$000(I)[B

    move-result-object v0

    iput-object v0, p0, Lc8/HTb;->decodabet:[B

    .line 2106
    return-void

    :cond_0
    move v0, v2

    .line 2096
    goto :goto_0

    :cond_1
    move v1, v2

    .line 2097
    goto :goto_1

    :cond_2
    move v0, v3

    .line 2098
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

    .line 2218
    invoke-virtual {p0}, Lc8/HTb;->flushBase64()V

    .line 2222
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2224
    iput-object v0, p0, Lc8/HTb;->buffer:[B

    .line 2225
    iput-object v0, p0, Lc8/HTb;->out:Ljava/io/OutputStream;

    .line 2226
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
    .line 2197
    iget v0, p0, Lc8/HTb;->position:I

    if-lez v0, :cond_0

    .line 2198
    iget-boolean v0, p0, Lc8/HTb;->encode:Z

    if-eqz v0, :cond_1

    .line 2199
    iget-object v0, p0, Lc8/HTb;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lc8/HTb;->b4:[B

    iget-object v2, p0, Lc8/HTb;->buffer:[B

    iget v3, p0, Lc8/HTb;->position:I

    iget v4, p0, Lc8/HTb;->options:I

    invoke-static {v1, v2, v3, v4}, Lc8/ITb;->access$300([B[BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 2200
    const/4 v0, 0x0

    iput v0, p0, Lc8/HTb;->position:I

    .line 2208
    :cond_0
    return-void

    .line 2203
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Base64 input not properly padded."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resumeEncoding()V
    .locals 1

    .prologue
    .line 2248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/HTb;->suspendEncoding:Z

    .line 2249
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
    .line 2237
    invoke-virtual {p0}, Lc8/HTb;->flushBase64()V

    .line 2238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/HTb;->suspendEncoding:Z

    .line 2239
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

    .line 2121
    iget-boolean v1, p0, Lc8/HTb;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 2122
    iget-object v1, p0, Lc8/HTb;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    .line 2160
    :cond_0
    :goto_0
    return-void

    .line 2127
    :cond_1
    iget-boolean v1, p0, Lc8/HTb;->encode:Z

    if-eqz v1, :cond_3

    .line 2128
    iget-object v1, p0, Lc8/HTb;->buffer:[B

    iget v2, p0, Lc8/HTb;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/HTb;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 2129
    iget v1, p0, Lc8/HTb;->position:I

    iget v2, p0, Lc8/HTb;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 2131
    iget-object v1, p0, Lc8/HTb;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lc8/HTb;->b4:[B

    iget-object v3, p0, Lc8/HTb;->buffer:[B

    iget v4, p0, Lc8/HTb;->bufferLength:I

    iget v5, p0, Lc8/HTb;->options:I

    invoke-static {v2, v3, v4, v5}, Lc8/ITb;->access$300([B[BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 2133
    iget v1, p0, Lc8/HTb;->lineLength:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lc8/HTb;->lineLength:I

    .line 2134
    iget-boolean v1, p0, Lc8/HTb;->breakLines:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lc8/HTb;->lineLength:I

    const/16 v2, 0x4c

    if-lt v1, v2, :cond_2

    .line 2135
    iget-object v1, p0, Lc8/HTb;->out:Ljava/io/OutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write(I)V

    .line 2136
    iput v6, p0, Lc8/HTb;->lineLength:I

    .line 2139
    :cond_2
    iput v6, p0, Lc8/HTb;->position:I

    goto :goto_0

    .line 2146
    :cond_3
    iget-object v1, p0, Lc8/HTb;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-le v1, v3, :cond_4

    .line 2147
    iget-object v1, p0, Lc8/HTb;->buffer:[B

    iget v2, p0, Lc8/HTb;->position:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lc8/HTb;->position:I

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 2148
    iget v1, p0, Lc8/HTb;->position:I

    iget v2, p0, Lc8/HTb;->bufferLength:I

    if-lt v1, v2, :cond_0

    .line 2150
    iget-object v1, p0, Lc8/HTb;->buffer:[B

    iget-object v2, p0, Lc8/HTb;->b4:[B

    iget v3, p0, Lc8/HTb;->options:I

    invoke-static {v1, v6, v2, v6, v3}, Lc8/ITb;->access$200([BI[BII)I

    move-result v0

    .line 2151
    .local v0, "len":I
    iget-object v1, p0, Lc8/HTb;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lc8/HTb;->b4:[B

    invoke-virtual {v1, v2, v6, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 2152
    iput v6, p0, Lc8/HTb;->position:I

    goto :goto_0

    .line 2155
    .end local v0    # "len":I
    :cond_4
    iget-object v1, p0, Lc8/HTb;->decodabet:[B

    and-int/lit8 v2, p1, 0x7f

    aget-byte v1, v1, v2

    if-eq v1, v3, :cond_0

    .line 2156
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
    .line 2178
    iget-boolean v1, p0, Lc8/HTb;->suspendEncoding:Z

    if-eqz v1, :cond_1

    .line 2179
    iget-object v1, p0, Lc8/HTb;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 2187
    :cond_0
    return-void

    .line 2183
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2184
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lc8/HTb;->write(I)V

    .line 2183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
