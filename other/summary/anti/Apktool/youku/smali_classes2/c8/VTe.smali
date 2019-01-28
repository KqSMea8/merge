.class public final Lc8/VTe;
.super Ljava/lang/Object;
.source "FramedStream.java"

# interfaces
.implements Lc8/tWp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/YTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FramedDataSink"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closed:Z

.field private finished:Z

.field private final sendBuffer:Lc8/YVp;

.field final synthetic this$0:Lc8/YTe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 470
    const-class v0, Lc8/YTe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/VTe;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lc8/YTe;)V
    .locals 1
    .param p1, "this$0"    # Lc8/YTe;

    .prologue
    .line 470
    iput-object p1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    new-instance v0, Lc8/YVp;

    invoke-direct {v0}, Lc8/YVp;-><init>()V

    iput-object v0, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    return-void
.end method

.method static synthetic access$200(Lc8/VTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/VTe;

    .prologue
    .line 470
    iget-boolean v0, p0, Lc8/VTe;->finished:Z

    return v0
.end method

.method static synthetic access$202(Lc8/VTe;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/VTe;
    .param p1, "x1"    # Z

    .prologue
    .line 470
    iput-boolean p1, p0, Lc8/VTe;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lc8/VTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/VTe;

    .prologue
    .line 470
    iget-boolean v0, p0, Lc8/VTe;->closed:Z

    return v0
.end method

.method private emitDataFrame(Z)V
    .locals 8
    .param p1, "outFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1100(Lc8/YTe;)Lc8/XTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/XTe;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 504
    :goto_0
    :try_start_1
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    iget-wide v2, v0, Lc8/YTe;->bytesLeftInWriteWindow:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lc8/VTe;->finished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/VTe;->closed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$800(Lc8/YTe;)Lcom/squareup/okhttp/internal/framed/ErrorCode;

    move-result-object v0

    if-nez v0, :cond_0

    .line 505
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$900(Lc8/YTe;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 508
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v2}, Lc8/YTe;->access$1100(Lc8/YTe;)Lc8/XTe;

    move-result-object v2

    invoke-virtual {v2}, Lc8/XTe;->exitAndThrowIfTimedOut()V

    throw v0

    .line 514
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 508
    :cond_0
    :try_start_3
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1100(Lc8/YTe;)Lc8/XTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/XTe;->exitAndThrowIfTimedOut()V

    .line 511
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1200(Lc8/YTe;)V

    .line 512
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    iget-wide v2, v0, Lc8/YTe;->bytesLeftInWriteWindow:J

    iget-object v0, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 513
    .local v4, "toWrite":J
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    iget-wide v2, v0, Lc8/YTe;->bytesLeftInWriteWindow:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lc8/YTe;->bytesLeftInWriteWindow:J

    .line 514
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 516
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1100(Lc8/YTe;)Lc8/XTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/XTe;->enter()V

    .line 518
    :try_start_4
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$500(Lc8/YTe;)Lc8/TTe;

    move-result-object v0

    iget-object v1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v1}, Lc8/YTe;->access$600(Lc8/YTe;)I

    move-result v1

    if-eqz p1, :cond_1

    iget-object v2, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual {v2}, Lc8/YVp;->size()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual/range {v0 .. v5}, Lc8/TTe;->writeData(IZLc8/YVp;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 520
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1100(Lc8/YTe;)Lc8/XTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/XTe;->exitAndThrowIfTimedOut()V

    .line 521
    return-void

    .line 518
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 520
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v1}, Lc8/YTe;->access$1100(Lc8/YTe;)Lc8/XTe;

    move-result-object v1

    invoke-virtual {v1}, Lc8/XTe;->exitAndThrowIfTimedOut()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    .line 540
    sget-boolean v0, Lc8/VTe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 541
    :cond_0
    iget-object v1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-boolean v0, p0, Lc8/VTe;->closed:Z

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 560
    :goto_0
    return-void

    .line 543
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    iget-object v0, v0, Lc8/YTe;->sink:Lc8/VTe;

    iget-boolean v0, v0, Lc8/VTe;->finished:Z

    if-nez v0, :cond_3

    .line 546
    iget-object v0, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    .line 547
    :goto_1
    iget-object v0, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 548
    invoke-direct {p0, v2}, Lc8/VTe;->emitDataFrame(Z)V

    goto :goto_1

    .line 543
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 552
    :cond_2
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$500(Lc8/YTe;)Lc8/TTe;

    move-result-object v0

    iget-object v1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v1}, Lc8/YTe;->access$600(Lc8/YTe;)I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lc8/TTe;->writeData(IZLc8/YVp;J)V

    .line 555
    :cond_3
    iget-object v1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    monitor-enter v1

    .line 556
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lc8/VTe;->closed:Z

    .line 557
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 558
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$500(Lc8/YTe;)Lc8/TTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/TTe;->flush()V

    .line 559
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1000(Lc8/YTe;)V

    goto :goto_0

    .line 557
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    sget-boolean v0, Lc8/VTe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 526
    :cond_0
    iget-object v1, p0, Lc8/VTe;->this$0:Lc8/YTe;

    monitor-enter v1

    .line 527
    :try_start_0
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1200(Lc8/YTe;)V

    .line 528
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    :goto_0
    iget-object v0, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/VTe;->emitDataFrame(Z)V

    .line 531
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$500(Lc8/YTe;)Lc8/TTe;

    move-result-object v0

    invoke-virtual {v0}, Lc8/TTe;->flush()V

    goto :goto_0

    .line 528
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 533
    :cond_1
    return-void
.end method

.method public timeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 536
    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Lc8/YTe;->access$1100(Lc8/YTe;)Lc8/XTe;

    move-result-object v0

    return-object v0
.end method

.method public write(Lc8/YVp;J)V
    .locals 4
    .param p1, "source"    # Lc8/YVp;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 488
    sget-boolean v0, Lc8/VTe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/VTe;->this$0:Lc8/YTe;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 489
    :cond_0
    iget-object v0, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual {v0, p1, p2, p3}, Lc8/YVp;->write(Lc8/YVp;J)V

    .line 490
    :goto_0
    iget-object v0, p0, Lc8/VTe;->sendBuffer:Lc8/YVp;

    invoke-virtual {v0}, Lc8/YVp;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 491
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/VTe;->emitDataFrame(Z)V

    goto :goto_0

    .line 493
    :cond_1
    return-void
.end method
