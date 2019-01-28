.class public Lc8/yL;
.super Ljava/io/InputStream;
.source "ByteCounterInputStream.java"


# instance fields
.field private cnt:J

.field private is:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/yL;->is:Ljava/io/InputStream;

    .line 13
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/yL;->cnt:J

    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input stream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lc8/yL;->is:Ljava/io/InputStream;

    .line 20
    return-void
.end method


# virtual methods
.method public getReadByteCount()J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lc8/yL;->cnt:J

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    iget-wide v0, p0, Lc8/yL;->cnt:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lc8/yL;->cnt:J

    .line 29
    iget-object v0, p0, Lc8/yL;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v1, p0, Lc8/yL;->is:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 35
    .local v0, "c":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 36
    iget-wide v2, p0, Lc8/yL;->cnt:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/yL;->cnt:J

    .line 38
    :cond_0
    return v0
.end method
