.class public final Lc8/FUe;
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
    name = "FixedLengthSink"
.end annotation


# instance fields
.field private bytesRemaining:J

.field private closed:Z

.field final synthetic this$0:Lc8/IUe;

.field private final timeout:Lc8/eWp;


# direct methods
.method private constructor <init>(Lc8/IUe;J)V
    .locals 2
    .param p2, "bytesRemaining"    # J

    .prologue
    .line 273
    iput-object p1, p0, Lc8/FUe;->this$0:Lc8/IUe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    new-instance v0, Lc8/eWp;

    iget-object v1, p0, Lc8/FUe;->this$0:Lc8/IUe;

    invoke-static {v1}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v1

    invoke-interface {v1}, Lc8/ZVp;->timeout()Lc8/wWp;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/eWp;-><init>(Lc8/wWp;)V

    iput-object v0, p0, Lc8/FUe;->timeout:Lc8/eWp;

    .line 274
    iput-wide p2, p0, Lc8/FUe;->bytesRemaining:J

    .line 275
    return-void
.end method

.method synthetic constructor <init>(Lc8/IUe;JLc8/BUe;)V
    .locals 0
    .param p1, "x0"    # Lc8/IUe;
    .param p2, "x1"    # J
    .param p4, "x2"    # Lc8/BUe;

    .prologue
    .line 268
    invoke-direct {p0, p1, p2, p3}, Lc8/FUe;-><init>(Lc8/IUe;J)V

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
    .line 298
    iget-boolean v0, p0, Lc8/FUe;->closed:Z

    if-eqz v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/FUe;->closed:Z

    .line 300
    iget-wide v0, p0, Lc8/FUe;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :cond_1
    iget-object v0, p0, Lc8/FUe;->this$0:Lc8/IUe;

    iget-object v1, p0, Lc8/FUe;->timeout:Lc8/eWp;

    invoke-static {v0, v1}, Lc8/IUe;->access$400(Lc8/IUe;Lc8/eWp;)V

    .line 302
    iget-object v0, p0, Lc8/FUe;->this$0:Lc8/IUe;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lc8/IUe;->access$502(Lc8/IUe;I)I

    goto :goto_0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    iget-boolean v0, p0, Lc8/FUe;->closed:Z

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lc8/FUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    invoke-interface {v0}, Lc8/ZVp;->flush()V

    goto :goto_0
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lc8/FUe;->timeout:Lc8/eWp;

    return-object v0
.end method

.method public write(Lc8/YVp;J)V
    .locals 6
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 282
    iget-boolean v0, p0, Lc8/FUe;->closed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    invoke-virtual {p1}, Lc8/YVp;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lc8/ATe;->checkOffsetAndCount(JJJ)V

    .line 284
    iget-wide v0, p0, Lc8/FUe;->bytesRemaining:J

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 285
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/FUe;->bytesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes but received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    iget-object v0, p0, Lc8/FUe;->this$0:Lc8/IUe;

    invoke-static {v0}, Lc8/IUe;->access$300(Lc8/IUe;)Lc8/ZVp;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc8/ZVp;->write(Lc8/YVp;J)V

    .line 289
    iget-wide v0, p0, Lc8/FUe;->bytesRemaining:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lc8/FUe;->bytesRemaining:J

    .line 290
    return-void
.end method
