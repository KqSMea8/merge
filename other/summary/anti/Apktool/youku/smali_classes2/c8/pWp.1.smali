.class public Lc8/pWp;
.super Ljava/io/InputStream;
.source "RealBufferedSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qWp;->inputStream()Ljava/io/InputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qWp;


# direct methods
.method constructor <init>(Lc8/qWp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qWp;

    .prologue
    .line 415
    iput-object p1, p0, Lc8/pWp;->this$0:Lc8/qWp;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-boolean v0, v0, Lc8/qWp;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    iget-object v0, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v0, v0, Lc8/qWp;->buffer:Lc8/YVp;

    iget-wide v0, v0, Lc8/YVp;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lc8/pWp;->this$0:Lc8/qWp;

    invoke-virtual {v0}, Lc8/qWp;->close()V

    .line 444
    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget-object v2, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-boolean v2, v2, Lc8/qWp;->closed:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "closed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 418
    :cond_0
    iget-object v2, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v2, v2, Lc8/qWp;->buffer:Lc8/YVp;

    iget-wide v2, v2, Lc8/YVp;->size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 419
    iget-object v2, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v2, v2, Lc8/qWp;->source:Lc8/uWp;

    iget-object v3, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v3, v3, Lc8/qWp;->buffer:Lc8/YVp;

    const-wide/16 v4, 0x2000

    invoke-interface {v2, v3, v4, v5}, Lc8/uWp;->read(Lc8/YVp;J)J

    move-result-wide v0

    .line 420
    .local v0, "count":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 422
    .end local v0    # "count":J
    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v2, v2, Lc8/qWp;->buffer:Lc8/YVp;

    invoke-virtual {v2}, Lc8/YVp;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-boolean v0, v0, Lc8/qWp;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lc8/xWp;->checkOffsetAndCount(JJJ)V

    .line 429
    iget-object v0, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v0, v0, Lc8/qWp;->buffer:Lc8/YVp;

    iget-wide v0, v0, Lc8/YVp;->size:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 430
    iget-object v0, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v0, v0, Lc8/qWp;->source:Lc8/uWp;

    iget-object v1, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v1, v1, Lc8/qWp;->buffer:Lc8/YVp;

    const-wide/16 v2, 0x2000

    invoke-interface {v0, v1, v2, v3}, Lc8/uWp;->read(Lc8/YVp;J)J

    move-result-wide v6

    .line 431
    .local v6, "count":J
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 434
    .end local v6    # "count":J
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lc8/pWp;->this$0:Lc8/qWp;

    iget-object v0, v0, Lc8/qWp;->buffer:Lc8/YVp;

    invoke-virtual {v0, p1, p2, p3}, Lc8/YVp;->read([BII)I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/pWp;->this$0:Lc8/qWp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".inputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
