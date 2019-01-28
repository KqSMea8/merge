.class public final Lc8/CJd;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lc8/LJd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EJd;->sink(Ljava/io/OutputStream;Lc8/OJd;)Lc8/LJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$out:Ljava/io/OutputStream;

.field final synthetic val$timeout:Lc8/OJd;


# direct methods
.method constructor <init>(Lc8/OJd;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lc8/CJd;->val$timeout:Lc8/OJd;

    iput-object p2, p0, Lc8/CJd;->val$out:Ljava/io/OutputStream;

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
    .line 94
    iget-object v0, p0, Lc8/CJd;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 95
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
    .line 90
    iget-object v0, p0, Lc8/CJd;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 91
    return-void
.end method

.method public timeout()Lc8/OJd;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/CJd;->val$timeout:Lc8/OJd;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/CJd;->val$out:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/yJd;J)V
    .locals 8
    .param p1, "source"    # Lc8/yJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 71
    iget-wide v0, p1, Lc8/yJd;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc8/PJd;->checkOffsetAndCount(JJJ)V

    .line 72
    :cond_0
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lc8/CJd;->val$timeout:Lc8/OJd;

    invoke-virtual {v0}, Lc8/OJd;->throwIfReached()V

    .line 74
    iget-object v6, p1, Lc8/yJd;->head:Lc8/JJd;

    .line 75
    .local v6, "head":Lc8/JJd;
    iget v0, v6, Lc8/JJd;->limit:I

    iget v1, v6, Lc8/JJd;->pos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v7, v0

    .line 76
    .local v7, "toCopy":I
    iget-object v0, p0, Lc8/CJd;->val$out:Ljava/io/OutputStream;

    iget-object v1, v6, Lc8/JJd;->data:[B

    iget v4, v6, Lc8/JJd;->pos:I

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 78
    iget v0, v6, Lc8/JJd;->pos:I

    add-int/2addr v0, v7

    iput v0, v6, Lc8/JJd;->pos:I

    .line 79
    int-to-long v0, v7

    sub-long/2addr p2, v0

    .line 80
    iget-wide v0, p1, Lc8/yJd;->size:J

    int-to-long v4, v7

    sub-long/2addr v0, v4

    iput-wide v0, p1, Lc8/yJd;->size:J

    .line 82
    iget v0, v6, Lc8/JJd;->pos:I

    iget v1, v6, Lc8/JJd;->limit:I

    if-ne v0, v1, :cond_0

    .line 83
    invoke-virtual {v6}, Lc8/JJd;->pop()Lc8/JJd;

    move-result-object v0

    iput-object v0, p1, Lc8/yJd;->head:Lc8/JJd;

    .line 84
    invoke-static {v6}, Lc8/KJd;->recycle(Lc8/JJd;)V

    goto :goto_0

    .line 87
    .end local v6    # "head":Lc8/JJd;
    .end local v7    # "toCopy":I
    :cond_1
    return-void
.end method
