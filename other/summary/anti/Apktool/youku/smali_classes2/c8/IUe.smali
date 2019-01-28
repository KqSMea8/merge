.class public final Lc8/IUe;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lc8/SUe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/HUe;,
        Lc8/EUe;,
        Lc8/GUe;,
        Lc8/CUe;,
        Lc8/DUe;,
        Lc8/FUe;
    }
.end annotation


# instance fields
.field private httpEngine:Lc8/QUe;

.field private final sink:Lc8/ZVp;

.field private final source:Lc8/aWp;

.field private state:I

.field private final streamAllocation:Lc8/aVe;


# direct methods
.method public constructor <init>(Lc8/aVe;Lc8/aWp;Lc8/ZVp;)V
    .locals 1
    .param p1, "streamAllocation"    # Lc8/aVe;
    .param p2, "source"    # Lc8/aWp;
    .param p3, "sink"    # Lc8/ZVp;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lc8/IUe;->state:I

    .line 78
    iput-object p1, p0, Lc8/IUe;->streamAllocation:Lc8/aVe;

    .line 79
    iput-object p2, p0, Lc8/IUe;->source:Lc8/aWp;

    .line 80
    iput-object p3, p0, Lc8/IUe;->sink:Lc8/ZVp;

    .line 81
    return-void
.end method

.method static synthetic access$300(Lc8/IUe;)Lc8/ZVp;
    .locals 1
    .param p0, "x0"    # Lc8/IUe;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/IUe;->sink:Lc8/ZVp;

    return-object v0
.end method

.method static synthetic access$400(Lc8/IUe;Lc8/eWp;)V
    .locals 0
    .param p0, "x0"    # Lc8/IUe;
    .param p1, "x1"    # Lc8/eWp;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lc8/IUe;->detachTimeout(Lc8/eWp;)V

    return-void
.end method

.method static synthetic access$500(Lc8/IUe;)I
    .locals 1
    .param p0, "x0"    # Lc8/IUe;

    .prologue
    .line 61
    iget v0, p0, Lc8/IUe;->state:I

    return v0
.end method

.method static synthetic access$502(Lc8/IUe;I)I
    .locals 0
    .param p0, "x0"    # Lc8/IUe;
    .param p1, "x1"    # I

    .prologue
    .line 61
    iput p1, p0, Lc8/IUe;->state:I

    return p1
.end method

.method static synthetic access$600(Lc8/IUe;)Lc8/aWp;
    .locals 1
    .param p0, "x0"    # Lc8/IUe;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/IUe;->source:Lc8/aWp;

    return-object v0
.end method

.method static synthetic access$700(Lc8/IUe;)Lc8/aVe;
    .locals 1
    .param p0, "x0"    # Lc8/IUe;

    .prologue
    .line 61
    iget-object v0, p0, Lc8/IUe;->streamAllocation:Lc8/aVe;

    return-object v0
.end method

.method private detachTimeout(Lc8/eWp;)V
    .locals 2
    .param p1, "timeout"    # Lc8/eWp;

    .prologue
    .line 261
    invoke-virtual {p1}, Lc8/eWp;->delegate()Lc8/wWp;

    move-result-object v0

    .line 262
    .local v0, "oldDelegate":Lc8/wWp;
    sget-object v1, Lc8/wWp;->NONE:Lc8/wWp;

    invoke-virtual {p1, v1}, Lc8/eWp;->setDelegate(Lc8/wWp;)Lc8/eWp;

    .line 263
    invoke-virtual {v0}, Lc8/wWp;->clearDeadline()Lc8/wWp;

    .line 264
    invoke-virtual {v0}, Lc8/wWp;->clearTimeout()Lc8/wWp;

    .line 265
    return-void
.end method

.method private getTransferStream(Lc8/cTe;)Lc8/uWp;
    .locals 4
    .param p1, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-static {p1}, Lc8/QUe;->hasBody(Lc8/cTe;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lc8/IUe;->newFixedLengthSource(J)Lc8/uWp;

    move-result-object v2

    .line 152
    :goto_0
    return-object v2

    .line 140
    :cond_0
    const-string/jumbo v2, "chunked"

    const-string/jumbo v3, "Transfer-Encoding"

    invoke-virtual {p1, v3}, Lc8/cTe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lc8/IUe;->httpEngine:Lc8/QUe;

    invoke-virtual {p0, v2}, Lc8/IUe;->newChunkedSource(Lc8/QUe;)Lc8/uWp;

    move-result-object v2

    goto :goto_0

    .line 144
    :cond_1
    invoke-static {p1}, Lc8/UUe;->contentLength(Lc8/cTe;)J

    move-result-wide v0

    .line 145
    .local v0, "contentLength":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    .line 146
    invoke-virtual {p0, v0, v1}, Lc8/IUe;->newFixedLengthSource(J)Lc8/uWp;

    move-result-object v2

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0}, Lc8/IUe;->newUnknownLengthSource()Lc8/uWp;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lc8/IUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v1}, Lc8/aVe;->connection()Lc8/gVe;

    move-result-object v0

    .line 104
    .local v0, "connection":Lc8/gVe;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/gVe;->cancel()V

    .line 105
    :cond_0
    return-void
.end method

.method public createRequestBody(Lc8/VSe;J)Lc8/tWp;
    .locals 2
    .param p1, "request"    # Lc8/VSe;
    .param p2, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const-string/jumbo v0, "chunked"

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lc8/VSe;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lc8/IUe;->newChunkedSink()Lc8/tWp;

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 93
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p0, p2, p3}, Lc8/IUe;->newFixedLengthSink(J)Lc8/tWp;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lc8/IUe;->sink:Lc8/ZVp;

    invoke-interface {v0}, Lc8/ZVp;->flush()V

    .line 162
    return-void
.end method

.method public newChunkedSink()Lc8/tWp;
    .locals 3

    .prologue
    .line 218
    iget v0, p0, Lc8/IUe;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IUe;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lc8/IUe;->state:I

    .line 220
    new-instance v0, Lc8/DUe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/DUe;-><init>(Lc8/IUe;Lc8/BUe;)V

    return-object v0
.end method

.method public newChunkedSource(Lc8/QUe;)Lc8/uWp;
    .locals 3
    .param p1, "httpEngine"    # Lc8/QUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget v0, p0, Lc8/IUe;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IUe;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lc8/IUe;->state:I

    .line 244
    new-instance v0, Lc8/EUe;

    invoke-direct {v0, p0, p1}, Lc8/EUe;-><init>(Lc8/IUe;Lc8/QUe;)V

    return-object v0
.end method

.method public newFixedLengthSink(J)Lc8/tWp;
    .locals 3
    .param p1, "contentLength"    # J

    .prologue
    .line 224
    iget v0, p0, Lc8/IUe;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IUe;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lc8/IUe;->state:I

    .line 226
    new-instance v0, Lc8/FUe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lc8/FUe;-><init>(Lc8/IUe;JLc8/BUe;)V

    return-object v0
.end method

.method public newFixedLengthSource(J)Lc8/uWp;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    iget v0, p0, Lc8/IUe;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IUe;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :cond_0
    const/4 v0, 0x5

    iput v0, p0, Lc8/IUe;->state:I

    .line 238
    new-instance v0, Lc8/GUe;

    invoke-direct {v0, p0, p1, p2}, Lc8/GUe;-><init>(Lc8/IUe;J)V

    return-object v0
.end method

.method public newUnknownLengthSource()Lc8/uWp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    iget v0, p0, Lc8/IUe;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IUe;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    iget-object v0, p0, Lc8/IUe;->streamAllocation:Lc8/aVe;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    const/4 v0, 0x5

    iput v0, p0, Lc8/IUe;->state:I

    .line 251
    iget-object v0, p0, Lc8/IUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v0}, Lc8/aVe;->noNewStreams()V

    .line 252
    new-instance v0, Lc8/HUe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/HUe;-><init>(Lc8/IUe;Lc8/BUe;)V

    return-object v0
.end method

.method public openResponseBody(Lc8/cTe;)Lc8/dTe;
    .locals 4
    .param p1, "response"    # Lc8/cTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lc8/IUe;->getTransferStream(Lc8/cTe;)Lc8/uWp;

    move-result-object v0

    .line 132
    .local v0, "source":Lc8/uWp;
    new-instance v1, Lc8/VUe;

    invoke-virtual {p1}, Lc8/cTe;->headers()Lc8/GSe;

    move-result-object v2

    invoke-static {v0}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc8/VUe;-><init>(Lc8/GSe;Lc8/aWp;)V

    return-object v1
.end method

.method public readHeaders()Lc8/GSe;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lc8/FSe;

    invoke-direct {v0}, Lc8/FSe;-><init>()V

    .line 211
    .local v0, "headers":Lc8/FSe;
    :goto_0
    iget-object v2, p0, Lc8/IUe;->source:Lc8/aWp;

    invoke-interface {v2}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    sget-object v2, Lc8/pTe;->instance:Lc8/pTe;

    invoke-virtual {v2, v0, v1}, Lc8/pTe;->addLenient(Lc8/FSe;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {v0}, Lc8/FSe;->build()Lc8/GSe;

    move-result-object v2

    return-object v2
.end method

.method public readResponse()Lc8/bTe;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget v4, p0, Lc8/IUe;->state:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    iget v4, p0, Lc8/IUe;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_0

    .line 181
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/IUe;->state:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 186
    :cond_0
    :try_start_0
    iget-object v4, p0, Lc8/IUe;->source:Lc8/aWp;

    invoke-interface {v4}, Lc8/aWp;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/ZUe;->parse(Ljava/lang/String;)Lc8/ZUe;

    move-result-object v3

    .line 188
    .local v3, "statusLine":Lc8/ZUe;
    new-instance v4, Lc8/bTe;

    invoke-direct {v4}, Lc8/bTe;-><init>()V

    iget-object v5, v3, Lc8/ZUe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 189
    invoke-virtual {v4, v5}, Lc8/bTe;->protocol(Lcom/squareup/okhttp/Protocol;)Lc8/bTe;

    move-result-object v4

    iget v5, v3, Lc8/ZUe;->code:I

    .line 190
    invoke-virtual {v4, v5}, Lc8/bTe;->code(I)Lc8/bTe;

    move-result-object v4

    iget-object v5, v3, Lc8/ZUe;->message:Ljava/lang/String;

    .line 191
    invoke-virtual {v4, v5}, Lc8/bTe;->message(Ljava/lang/String;)Lc8/bTe;

    move-result-object v4

    .line 192
    invoke-virtual {p0}, Lc8/IUe;->readHeaders()Lc8/GSe;

    move-result-object v5

    invoke-virtual {v4, v5}, Lc8/bTe;->headers(Lc8/GSe;)Lc8/bTe;

    move-result-object v2

    .line 194
    .local v2, "responseBuilder":Lc8/bTe;
    iget v4, v3, Lc8/ZUe;->code:I

    const/16 v5, 0x64

    if-eq v4, v5, :cond_0

    .line 195
    const/4 v4, 0x4

    iput v4, p0, Lc8/IUe;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    return-object v2

    .line 199
    .end local v2    # "responseBuilder":Lc8/bTe;
    .end local v3    # "statusLine":Lc8/ZUe;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected end of stream on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/IUe;->streamAllocation:Lc8/aVe;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 203
    throw v1
.end method

.method public readResponseHeaders()Lc8/bTe;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0}, Lc8/IUe;->readResponse()Lc8/bTe;

    move-result-object v0

    return-object v0
.end method

.method public setHttpEngine(Lc8/QUe;)V
    .locals 0
    .param p1, "httpEngine"    # Lc8/QUe;

    .prologue
    .line 84
    iput-object p1, p0, Lc8/IUe;->httpEngine:Lc8/QUe;

    .line 85
    return-void
.end method

.method public writeRequest(Lc8/GSe;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lc8/GSe;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 166
    iget v2, p0, Lc8/IUe;->state:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/IUe;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_0
    iget-object v2, p0, Lc8/IUe;->sink:Lc8/ZVp;

    invoke-interface {v2, p2}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 168
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lc8/GSe;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 169
    iget-object v2, p0, Lc8/IUe;->sink:Lc8/ZVp;

    invoke-virtual {p1, v0}, Lc8/GSe;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const-string/jumbo v3, ": "

    .line 170
    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    .line 171
    invoke-virtual {p1, v0}, Lc8/GSe;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    .line 172
    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v2, p0, Lc8/IUe;->sink:Lc8/ZVp;

    const-string/jumbo v3, "\r\n"

    invoke-interface {v2, v3}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 175
    const/4 v2, 0x1

    iput v2, p0, Lc8/IUe;->state:I

    .line 176
    return-void
.end method

.method public writeRequestBody(Lc8/XUe;)V
    .locals 3
    .param p1, "requestBody"    # Lc8/XUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget v0, p0, Lc8/IUe;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/IUe;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lc8/IUe;->state:I

    .line 232
    iget-object v0, p0, Lc8/IUe;->sink:Lc8/ZVp;

    invoke-virtual {p1, v0}, Lc8/XUe;->writeToSocket(Lc8/tWp;)V

    .line 233
    return-void
.end method

.method public writeRequestHeaders(Lc8/VSe;)V
    .locals 2
    .param p1, "request"    # Lc8/VSe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v1, p0, Lc8/IUe;->httpEngine:Lc8/QUe;

    invoke-virtual {v1}, Lc8/QUe;->writingRequestHeaders()V

    .line 121
    iget-object v1, p0, Lc8/IUe;->httpEngine:Lc8/QUe;

    .line 122
    invoke-virtual {v1}, Lc8/QUe;->getConnection()Lc8/sSe;

    move-result-object v1

    invoke-interface {v1}, Lc8/sSe;->getRoute()Lc8/eTe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/eTe;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    .line 121
    invoke-static {p1, v1}, Lc8/WUe;->get(Lc8/VSe;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lc8/VSe;->headers()Lc8/GSe;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lc8/IUe;->writeRequest(Lc8/GSe;Ljava/lang/String;)V

    .line 124
    return-void
.end method
