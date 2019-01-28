.class public Lc8/RVp;
.super Ljava/lang/Object;
.source "AsyncTimeout.java"

# interfaces
.implements Lc8/tWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UVp;->sink(Lc8/tWp;)Lc8/tWp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UVp;

.field final synthetic val$sink:Lc8/tWp;


# direct methods
.method constructor <init>(Lc8/UVp;Lc8/tWp;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UVp;

    .prologue
    .line 160
    iput-object p1, p0, Lc8/RVp;->this$0:Lc8/UVp;

    iput-object p2, p0, Lc8/RVp;->val$sink:Lc8/tWp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v2}, Lc8/UVp;->enter()V

    .line 208
    :try_start_0
    iget-object v2, p0, Lc8/RVp;->val$sink:Lc8/tWp;

    invoke-interface {v2}, Lc8/tWp;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    const/4 v1, 0x1

    .line 213
    iget-object v2, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v2, v1}, Lc8/UVp;->exit(Z)V

    .line 214
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v2, v0}, Lc8/UVp;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v3, v1}, Lc8/UVp;->exit(Z)V

    throw v2
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 193
    .local v1, "throwOnTimeout":Z
    iget-object v2, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v2}, Lc8/UVp;->enter()V

    .line 195
    :try_start_0
    iget-object v2, p0, Lc8/RVp;->val$sink:Lc8/tWp;

    invoke-interface {v2}, Lc8/tWp;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    const/4 v1, 0x1

    .line 200
    iget-object v2, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v2, v1}, Lc8/UVp;->exit(Z)V

    .line 201
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v2, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v2, v0}, Lc8/UVp;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v2

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v3, v1}, Lc8/UVp;->exit(Z)V

    throw v2
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lc8/RVp;->this$0:Lc8/UVp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AsyncTimeout.sink("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/RVp;->val$sink:Lc8/tWp;

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
    .locals 12
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 162
    iget-wide v0, p1, Lc8/YVp;->size:J

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc8/xWp;->checkOffsetAndCount(JJJ)V

    .line 164
    :goto_0
    cmp-long v0, p2, v2

    if-lez v0, :cond_2

    .line 166
    const-wide/16 v10, 0x0

    .line 167
    .local v10, "toWrite":J
    iget-object v0, p1, Lc8/YVp;->head:Lc8/rWp;

    :cond_0
    const-wide/32 v0, 0x10000

    cmp-long v0, v10, v0

    if-gez v0, :cond_1

    .line 168
    iget-object v0, p1, Lc8/YVp;->head:Lc8/rWp;

    iget v0, v0, Lc8/rWp;->limit:I

    iget-object v1, p1, Lc8/YVp;->head:Lc8/rWp;

    iget v1, v1, Lc8/rWp;->pos:I

    sub-int v7, v0, v1

    .line 169
    .local v7, "segmentSize":I
    int-to-long v0, v7

    add-long/2addr v10, v0

    .line 170
    cmp-long v0, v10, p2

    if-ltz v0, :cond_0

    .line 171
    move-wide v10, p2

    .line 177
    .end local v7    # "segmentSize":I
    :cond_1
    const/4 v8, 0x0

    .line 178
    .local v8, "throwOnTimeout":Z
    iget-object v0, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v0}, Lc8/UVp;->enter()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lc8/RVp;->val$sink:Lc8/tWp;

    invoke-interface {v0, p1, v10, v11}, Lc8/tWp;->write(Lc8/YVp;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    sub-long/2addr p2, v10

    .line 182
    const/4 v8, 0x1

    .line 186
    iget-object v0, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v0, v8}, Lc8/UVp;->exit(Z)V

    goto :goto_0

    .line 183
    :catch_0
    move-exception v6

    .line 184
    .local v6, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v0, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v0, v6}, Lc8/UVp;->exit(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lc8/RVp;->this$0:Lc8/UVp;

    invoke-virtual {v1, v8}, Lc8/UVp;->exit(Z)V

    throw v0

    .line 189
    .end local v8    # "throwOnTimeout":Z
    .end local v10    # "toWrite":J
    :cond_2
    return-void
.end method
