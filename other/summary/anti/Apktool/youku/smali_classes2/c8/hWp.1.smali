.class public final Lc8/hWp;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lc8/tWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lWp;->sink(Ljava/io/OutputStream;Lc8/wWp;)Lc8/tWp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lc8/wWp;


# direct methods
.method constructor <init>(Lc8/wWp;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lc8/hWp;->val$timeout:Lc8/wWp;

    iput-object p2, p0, Lc8/hWp;->val$out:Ljava/io/OutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 97
    iget-object v0, p0, Lc8/hWp;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 98
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lc8/hWp;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 94
    return-void
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lc8/hWp;->val$timeout:Lc8/wWp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/hWp;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/YVp;J)V
    .locals 8
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 74
    iget-wide v0, p1, Lc8/YVp;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc8/xWp;->checkOffsetAndCount(JJJ)V

    .line 75
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 76
    iget-object v0, p0, Lc8/hWp;->val$timeout:Lc8/wWp;

    invoke-virtual {v0}, Lc8/wWp;->throwIfReached()V

    .line 77
    iget-object v6, p1, Lc8/YVp;->head:Lc8/rWp;

    .line 78
    .local v6, "head":Lc8/rWp;
    iget v0, v6, Lc8/rWp;->limit:I

    iget v1, v6, Lc8/rWp;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 79
    .local v7, "toCopy":I
    iget-object v0, p0, Lc8/hWp;->val$out:Ljava/io/OutputStream;

    iget-object v1, v6, Lc8/rWp;->data:[B

    iget v4, v6, Lc8/rWp;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 81
    iget v0, v6, Lc8/rWp;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lc8/rWp;->pos:I

    .line 82
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 83
    iget-wide v0, p1, Lc8/YVp;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lc8/YVp;->size:J

    .line 85
    iget v0, v6, Lc8/rWp;->pos:I

    iget v1, v6, Lc8/rWp;->limit:I

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {v6}, Lc8/rWp;->pop()Lc8/rWp;

    move-result-object v0

    iput-object v0, p1, Lc8/YVp;->head:Lc8/rWp;

    .line 87
    invoke-static {v6}, Lc8/sWp;->recycle(Lc8/rWp;)V

    goto :goto_0

    .line 90
    .end local v6    # "head":Lc8/rWp;
    .end local v7    # "toCopy":I
    :cond_1
    return-void
.end method
