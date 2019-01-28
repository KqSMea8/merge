.class public Lc8/mUe;
.super Ljava/lang/Object;
.source "NameValueBlockReader.java"


# instance fields
.field private compressedLimit:I

.field private final inflaterSource:Lc8/gWp;

.field private final source:Lc8/aWp;


# direct methods
.method public constructor <init>(Lc8/aWp;)V
    .locals 3
    .param p1, "source"    # Lc8/aWp;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lc8/kUe;

    invoke-direct {v1, p0, p1}, Lc8/kUe;-><init>(Lc8/mUe;Lc8/uWp;)V

    .line 65
    .local v1, "throttleSource":Lc8/uWp;
    new-instance v0, Lc8/lUe;

    invoke-direct {v0, p0}, Lc8/lUe;-><init>(Lc8/mUe;)V

    .line 77
    .local v0, "inflater":Ljava/util/zip/Inflater;
    new-instance v2, Lc8/gWp;

    invoke-direct {v2, v1, v0}, Lc8/gWp;-><init>(Lc8/uWp;Ljava/util/zip/Inflater;)V

    iput-object v2, p0, Lc8/mUe;->inflaterSource:Lc8/gWp;

    .line 78
    iget-object v2, p0, Lc8/mUe;->inflaterSource:Lc8/gWp;

    invoke-static {v2}, Lc8/lWp;->buffer(Lc8/uWp;)Lc8/aWp;

    move-result-object v2

    iput-object v2, p0, Lc8/mUe;->source:Lc8/aWp;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lc8/mUe;)I
    .locals 1
    .param p0, "x0"    # Lc8/mUe;

    .prologue
    .line 37
    iget v0, p0, Lc8/mUe;->compressedLimit:I

    return v0
.end method

.method static synthetic access$002(Lc8/mUe;I)I
    .locals 0
    .param p0, "x0"    # Lc8/mUe;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lc8/mUe;->compressedLimit:I

    return p1
.end method

.method private doneReading()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    iget v0, p0, Lc8/mUe;->compressedLimit:I

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lc8/mUe;->inflaterSource:Lc8/gWp;

    invoke-virtual {v0}, Lc8/gWp;->refill()Z

    .line 111
    iget v0, p0, Lc8/mUe;->compressedLimit:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "compressedLimit > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/mUe;->compressedLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    return-void
.end method

.method private readByteString()Lokio/ByteString;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lc8/mUe;->source:Lc8/aWp;

    invoke-interface {v1}, Lc8/aWp;->readInt()I

    move-result v0

    .line 102
    .local v0, "length":I
    iget-object v1, p0, Lc8/mUe;->source:Lc8/aWp;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lc8/aWp;->readByteString(J)Lokio/ByteString;

    move-result-object v1

    return-object v1
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
    .line 116
    iget-object v0, p0, Lc8/mUe;->source:Lc8/aWp;

    invoke-interface {v0}, Lc8/aWp;->close()V

    .line 117
    return-void
.end method

.method public readNameValueBlock(I)Ljava/util/List;
    .locals 8
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    iget v5, p0, Lc8/mUe;->compressedLimit:I

    add-int/2addr v5, p1

    iput v5, p0, Lc8/mUe;->compressedLimit:I

    .line 84
    iget-object v5, p0, Lc8/mUe;->source:Lc8/aWp;

    invoke-interface {v5}, Lc8/aWp;->readInt()I

    move-result v3

    .line 85
    .local v3, "numberOfPairs":I
    if-gez v3, :cond_0

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numberOfPairs < 0: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_0
    const/16 v5, 0x400

    if-le v3, v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numberOfPairs > 1024: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 88
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 89
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 90
    invoke-direct {p0}, Lc8/mUe;->readByteString()Lokio/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v2

    .line 91
    .local v2, "name":Lokio/ByteString;
    invoke-direct {p0}, Lc8/mUe;->readByteString()Lokio/ByteString;

    move-result-object v4

    .line 92
    .local v4, "values":Lokio/ByteString;
    invoke-virtual {v2}, Lokio/ByteString;->size()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "name.size == 0"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 93
    :cond_2
    new-instance v5, Lc8/ZTe;

    invoke-direct {v5, v2, v4}, Lc8/ZTe;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v2    # "name":Lokio/ByteString;
    .end local v4    # "values":Lokio/ByteString;
    :cond_3
    invoke-direct {p0}, Lc8/mUe;->doneReading()V

    .line 97
    return-object v0
.end method
