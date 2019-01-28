.class public Lc8/FJd;
.super Ljava/io/OutputStream;
.source "RealBufferedSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/GJd;->outputStream()Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/GJd;


# direct methods
.method constructor <init>(Lc8/GJd;)V
    .locals 0
    .param p1, "this$0"    # Lc8/GJd;

    .prologue
    .line 188
    iput-object p1, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

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
    .line 209
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-virtual {v0}, Lc8/GJd;->close()V

    .line 210
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
    .line 203
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-static {v0}, Lc8/GJd;->access$000(Lc8/GJd;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-virtual {v0}, Lc8/GJd;->flush()V

    .line 206
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".outputStream()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-static {v0}, Lc8/GJd;->access$000(Lc8/GJd;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    iget-object v0, v0, Lc8/GJd;->buffer:Lc8/yJd;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lc8/yJd;->writeByte(I)Lc8/yJd;

    .line 192
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-virtual {v0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    .line 193
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-static {v0}, Lc8/GJd;->access$000(Lc8/GJd;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    iget-object v0, v0, Lc8/GJd;->buffer:Lc8/yJd;

    invoke-virtual {v0, p1, p2, p3}, Lc8/yJd;->write([BII)Lc8/yJd;

    .line 198
    iget-object v0, p0, Lc8/FJd;->this$0:Lc8/GJd;

    invoke-virtual {v0}, Lc8/GJd;->emitCompleteSegments()Lc8/zJd;

    .line 199
    return-void
.end method
