.class public final Lc8/iWp;
.super Ljava/lang/Object;
.source "Okio.java"

# interfaces
.implements Lc8/uWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lWp;->source(Ljava/io/InputStream;Lc8/wWp;)Lc8/uWp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$in:Ljava/io/InputStream;

.field final synthetic val$timeout:Lc8/wWp;


# direct methods
.method constructor <init>(Lc8/wWp;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lc8/iWp;->val$timeout:Lc8/wWp;

    iput-object p2, p0, Lc8/iWp;->val$in:Ljava/io/InputStream;

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
    .line 151
    iget-object v0, p0, Lc8/iWp;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 152
    return-void
.end method

.method public read(Lc8/YVp;J)J
    .locals 8
    .param p1, "sink"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 133
    cmp-long v6, p2, v4

    if-gez v6, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "byteCount < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 134
    :cond_0
    cmp-long v6, p2, v4

    if-nez v6, :cond_1

    .line 143
    :goto_0
    return-wide v4

    .line 136
    :cond_1
    :try_start_0
    iget-object v4, p0, Lc8/iWp;->val$timeout:Lc8/wWp;

    invoke-virtual {v4}, Lc8/wWp;->throwIfReached()V

    .line 137
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lc8/YVp;->writableSegment(I)Lc8/rWp;

    move-result-object v3

    .line 138
    .local v3, "tail":Lc8/rWp;
    iget v4, v3, Lc8/rWp;->limit:I

    rsub-int v4, v4, 0x2000

    int-to-long v4, v4

    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 139
    .local v2, "maxToCopy":I
    iget-object v4, p0, Lc8/iWp;->val$in:Ljava/io/InputStream;

    iget-object v5, v3, Lc8/rWp;->data:[B

    iget v6, v3, Lc8/rWp;->limit:I

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 140
    .local v0, "bytesRead":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_2

    const-wide/16 v4, -0x1

    goto :goto_0

    .line 141
    :cond_2
    iget v4, v3, Lc8/rWp;->limit:I

    add-int/2addr v4, v0

    iput v4, v3, Lc8/rWp;->limit:I

    .line 142
    iget-wide v4, p1, Lc8/YVp;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lc8/YVp;->size:J
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    int-to-long v4, v0

    goto :goto_0

    .line 144
    .end local v0    # "bytesRead":I
    .end local v2    # "maxToCopy":I
    .end local v3    # "tail":Lc8/rWp;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/AssertionError;
    invoke-static {v1}, Lc8/lWp;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 146
    :cond_3
    throw v1
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lc8/iWp;->val$timeout:Lc8/wWp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "source("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/iWp;->val$in:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
