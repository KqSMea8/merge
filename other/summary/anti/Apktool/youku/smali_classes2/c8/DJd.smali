.class public final Lc8/DJd;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lc8/MJd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/EJd;->source(Ljava/io/InputStream;Lc8/OJd;)Lc8/MJd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lc8/OJd;


# direct methods
.method constructor <init>(Lc8/OJd;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lc8/DJd;->val$timeout:Lc8/OJd;

    iput-object p2, p0, Lc8/DJd;->val$in:Ljava/io/InputStream;

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
    .line 143
    iget-object v0, p0, Lc8/DJd;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 144
    return-void
.end method

.method public read(Lc8/yJd;J)J
    .locals 8
    .param p1, "sink"    # Lc8/yJd;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 130
    cmp-long v3, p2, v4

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "byteCount < 0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    :cond_0
    cmp-long v3, p2, v4

    if-nez v3, :cond_1

    .line 139
    :goto_0
    return-wide v4

    .line 132
    :cond_1
    iget-object v3, p0, Lc8/DJd;->val$timeout:Lc8/OJd;

    invoke-virtual {v3}, Lc8/OJd;->throwIfReached()V

    .line 133
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lc8/yJd;->writableSegment(I)Lc8/JJd;

    move-result-object v2

    .line 134
    .local v2, "tail":Lc8/JJd;
    iget v3, v2, Lc8/JJd;->limit:I

    rsub-int v3, v3, 0x800

    int-to-long v4, v3

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    .line 135
    .local v1, "maxToCopy":I
    iget-object v3, p0, Lc8/DJd;->val$in:Ljava/io/InputStream;

    iget-object v4, v2, Lc8/JJd;->data:[B

    iget v5, v2, Lc8/JJd;->limit:I

    invoke-virtual {v3, v4, v5, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 136
    .local v0, "bytesRead":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    const-wide/16 v4, -0x1

    goto :goto_0

    .line 137
    :cond_2
    iget v3, v2, Lc8/JJd;->limit:I

    add-int/2addr v3, v0

    iput v3, v2, Lc8/JJd;->limit:I

    .line 138
    iget-wide v4, p1, Lc8/yJd;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lc8/yJd;->size:J

    .line 139
    int-to-long v4, v0

    goto :goto_0
.end method

.method public timeout()Lc8/OJd;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lc8/DJd;->val$timeout:Lc8/OJd;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/DJd;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
