.class public final Lc8/DUe;
.super Ljava/lang/Object;
.source "Http1xStream.java"

# interfaces
.implements Lc8/tWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/IUe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChunkedSink"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lc8/IUe;

.field private final timeout:Lc8/eWp;


# direct methods
.method private constructor <init>(Lc8/IUe;)V
    .locals 2

    .prologue
    .line 311
    iput-object p1, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    new-instance v0, Lc8/eWp;

    iget-object v1, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-static {v1}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v1

    invoke-interface {v1}, Lc8/ZVp;->timeout()Lc8/wWp;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/eWp;-><init>(Lc8/wWp;)V

    iput-object v0, p0, Lc8/DUe;->timeout:Lc8/eWp;

    return-void
.end method

.method synthetic constructor <init>(Lc8/IUe;Lc8/BUe;)V
    .locals 0
    .param p1, "x0"    # Lc8/IUe;
    .param p2, "x1"    # Lc8/BUe;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lc8/DUe;-><init>(Lc8/IUe;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/DUe;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    monitor-exit p0

    return-void

    .line 336
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lc8/DUe;->closed:Z

    .line 337
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    const-string/jumbo v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 338
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    iget-object v1, p0, Lc8/DUe;->timeout:Lc8/eWp;

    invoke-static {v0, v1}, Lc8/IUe;->access$400(Lc8/IUe;Lc8/eWp;)V

    .line 339
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lc8/IUe;->access$502(Lc8/IUe;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/DUe;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    invoke-interface {v0}, Lc8/ZVp;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lc8/DUe;->timeout:Lc8/eWp;

    return-object v0
.end method

.method public write(Lc8/YVp;J)V
    .locals 2
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-boolean v0, p0, Lc8/DUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    .line 327
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lc8/ZVp;->writeHexadecimalUnsignedLong(J)Lc8/ZVp;

    .line 324
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    .line 325
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc8/ZVp;->write(Lc8/YVp;J)V

    .line 326
    iget-object v0, p0, Lc8/DUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    const-string/jumbo v1, "\r\n"

    invoke-interface {v0, v1}, Lc8/ZVp;->writeUtf8(Ljava/lang/String;)Lc8/ZVp;

    goto :goto_0
.end method
