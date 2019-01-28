.class public final Lc8/YTe;
.super Ljava/lang/Object;
.source "FramedStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/XTe;,
        Lc8/VTe;,
        Lc8/WTe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field private final connection:Lc8/TTe;

.field private errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

.field private final id:I

.field private final readTimeout:Lc8/XTe;

.field private final requestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;"
        }
    .end annotation
.end field

.field private responseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;"
        }
    .end annotation
.end field

.field final sink:Lc8/VTe;

.field private final source:Lc8/WTe;

.field unacknowledgedBytesRead:J

.field private final writeTimeout:Lc8/XTe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lc8/YTe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/YTe;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(ILc8/TTe;ZZLjava/util/List;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "connection"    # Lc8/TTe;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/TTe;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v4, 0x0

    const/high16 v2, 0x10000

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/YTe;->unacknowledgedBytesRead:J

    .line 66
    new-instance v0, Lc8/XTe;

    invoke-direct {v0, p0}, Lc8/XTe;-><init>(Lc8/YTe;)V

    iput-object v0, p0, Lc8/YTe;->readTimeout:Lc8/XTe;

    .line 67
    new-instance v0, Lc8/XTe;

    invoke-direct {v0, p0}, Lc8/XTe;-><init>(Lc8/YTe;)V

    iput-object v0, p0, Lc8/YTe;->writeTimeout:Lc8/XTe;

    .line 74
    iput-object v4, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 78
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    if-nez p5, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    iput p1, p0, Lc8/YTe;->id:I

    .line 81
    iput-object p2, p0, Lc8/YTe;->connection:Lc8/TTe;

    .line 82
    iget-object v0, p2, Lc8/TTe;->peerSettings:Lc8/qUe;

    .line 83
    invoke-virtual {v0, v2}, Lc8/qUe;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lc8/YTe;->bytesLeftInWriteWindow:J

    .line 84
    new-instance v0, Lc8/WTe;

    iget-object v1, p2, Lc8/TTe;->okHttpSettings:Lc8/qUe;

    .line 85
    invoke-virtual {v1, v2}, Lc8/qUe;->getInitialWindowSize(I)I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3, v4}, Lc8/WTe;-><init>(Lc8/YTe;JLc8/UTe;)V

    iput-object v0, p0, Lc8/YTe;->source:Lc8/WTe;

    .line 86
    new-instance v0, Lc8/VTe;

    invoke-direct {v0, p0}, Lc8/VTe;-><init>(Lc8/YTe;)V

    iput-object v0, p0, Lc8/YTe;->sink:Lc8/VTe;

    .line 87
    iget-object v0, p0, Lc8/YTe;->source:Lc8/WTe;

    invoke-static {v0, p4}, Lc8/WTe;->access$102(Lc8/WTe;Z)Z

    .line 88
    iget-object v0, p0, Lc8/YTe;->sink:Lc8/VTe;

    invoke-static {v0, p3}, Lc8/VTe;->access$202(Lc8/VTe;Z)Z

    .line 89
    iput-object p5, p0, Lc8/YTe;->requestHeaders:Ljava/util/List;

    .line 90
    return-void
.end method

.method static synthetic access$1000(Lc8/YTe;)V
    .locals 0
    .param p0, "x0"    # Lc8/YTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/YTe;->cancelStreamIfNecessary()V

    return-void
.end method

.method static synthetic access$1100(Lc8/YTe;)Lc8/XTe;
    .locals 1
    .param p0, "x0"    # Lc8/YTe;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/YTe;->writeTimeout:Lc8/XTe;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/YTe;)V
    .locals 0
    .param p0, "x0"    # Lc8/YTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/YTe;->checkOutNotClosed()V

    return-void
.end method

.method static synthetic access$500(Lc8/YTe;)Lc8/TTe;
    .locals 1
    .param p0, "x0"    # Lc8/YTe;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/YTe;->connection:Lc8/TTe;

    return-object v0
.end method

.method static synthetic access$600(Lc8/YTe;)I
    .locals 1
    .param p0, "x0"    # Lc8/YTe;

    .prologue
    .line 35
    iget v0, p0, Lc8/YTe;->id:I

    return v0
.end method

.method static synthetic access$700(Lc8/YTe;)Lc8/XTe;
    .locals 1
    .param p0, "x0"    # Lc8/YTe;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/YTe;->readTimeout:Lc8/XTe;

    return-object v0
.end method

.method static synthetic access$800(Lc8/YTe;)Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .locals 1
    .param p0, "x0"    # Lc8/YTe;

    .prologue
    .line 35
    iget-object v0, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    return-object v0
.end method

.method static synthetic access$900(Lc8/YTe;)V
    .locals 0
    .param p0, "x0"    # Lc8/YTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lc8/YTe;->waitForIo()V

    return-void
.end method

.method private cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    sget-boolean v2, Lc8/YTe;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 451
    :cond_0
    monitor-enter p0

    .line 452
    :try_start_0
    iget-object v2, p0, Lc8/YTe;->source:Lc8/WTe;

    invoke-static {v2}, Lc8/WTe;->access$100(Lc8/WTe;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lc8/YTe;->source:Lc8/WTe;

    invoke-static {v2}, Lc8/WTe;->access$300(Lc8/WTe;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lc8/YTe;->sink:Lc8/VTe;

    invoke-static {v2}, Lc8/VTe;->access$200(Lc8/VTe;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc8/YTe;->sink:Lc8/VTe;

    invoke-static {v2}, Lc8/VTe;->access$400(Lc8/VTe;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 453
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lc8/YTe;->isOpen()Z

    move-result v1

    .line 454
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    if-eqz v0, :cond_4

    .line 460
    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, v2}, Lc8/YTe;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 464
    :cond_2
    :goto_1
    return-void

    .line 452
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 461
    .restart local v0    # "cancel":Z
    .restart local v1    # "open":Z
    :cond_4
    if-nez v1, :cond_2

    .line 462
    iget-object v2, p0, Lc8/YTe;->connection:Lc8/TTe;

    iget v3, p0, Lc8/YTe;->id:I

    invoke-virtual {v2, v3}, Lc8/TTe;->removeStream(I)Lc8/YTe;

    goto :goto_1
.end method

.method private checkOutNotClosed()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lc8/YTe;->sink:Lc8/VTe;

    invoke-static {v0}, Lc8/VTe;->access$400(Lc8/VTe;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_0
    iget-object v0, p0, Lc8/YTe;->sink:Lc8/VTe;

    invoke-static {v0}, Lc8/VTe;->access$200(Lc8/VTe;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 577
    :cond_1
    iget-object v0, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-eqz v0, :cond_2

    .line 578
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_2
    return-void
.end method

.method private closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z
    .locals 2
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .prologue
    const/4 v0, 0x0

    .line 238
    sget-boolean v1, Lc8/YTe;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 239
    :cond_0
    monitor-enter p0

    .line 240
    :try_start_0
    iget-object v1, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-eqz v1, :cond_1

    .line 241
    monitor-exit p0

    .line 250
    :goto_0
    return v0

    .line 243
    :cond_1
    iget-object v1, p0, Lc8/YTe;->source:Lc8/WTe;

    invoke-static {v1}, Lc8/WTe;->access$100(Lc8/WTe;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/YTe;->sink:Lc8/VTe;

    invoke-static {v1}, Lc8/VTe;->access$200(Lc8/VTe;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    monitor-exit p0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 246
    :cond_2
    :try_start_1
    iput-object p1, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 248
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    iget-object v0, p0, Lc8/YTe;->connection:Lc8/TTe;

    iget v1, p0, Lc8/YTe;->id:I

    invoke-virtual {v0, v1}, Lc8/TTe;->removeStream(I)Lc8/YTe;

    .line 250
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private waitForIo()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 588
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    return-void

    .line 590
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 568
    iget-wide v0, p0, Lc8/YTe;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lc8/YTe;->bytesLeftInWriteWindow:J

    .line 569
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 570
    :cond_0
    return-void
.end method

.method public close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lc8/YTe;->closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lc8/YTe;->connection:Lc8/TTe;

    iget v1, p0, Lc8/YTe;->id:I

    invoke-virtual {v0, v1, p1}, Lc8/TTe;->writeSynReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lc8/YTe;->closeInternal(Lcom/squareup/okhttp/internal/framed/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lc8/YTe;->connection:Lc8/TTe;

    iget v1, p0, Lc8/YTe;->id:I

    invoke-virtual {v0, v1, p1}, Lc8/TTe;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lc8/YTe;->id:I

    return v0
.end method

.method public declared-synchronized getResponseHeaders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/YTe;->readTimeout:Lc8/XTe;

    invoke-virtual {v0}, Lc8/XTe;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 139
    :goto_0
    :try_start_1
    iget-object v0, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lc8/YTe;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lc8/YTe;->readTimeout:Lc8/XTe;

    invoke-virtual {v1}, Lc8/XTe;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 137
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :cond_0
    :try_start_3
    iget-object v0, p0, Lc8/YTe;->readTimeout:Lc8/XTe;

    invoke-virtual {v0}, Lc8/XTe;->exitAndThrowIfTimedOut()V

    .line 145
    iget-object v0, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-object v0

    .line 146
    :cond_1
    :try_start_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stream was reset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
.end method

.method public getSink()Lc8/tWp;
    .locals 2

    .prologue
    .line 206
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v0, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/YTe;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    iget-object v0, p0, Lc8/YTe;->sink:Lc8/VTe;

    return-object v0
.end method

.method public getSource()Lc8/uWp;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lc8/YTe;->source:Lc8/WTe;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    iget v3, p0, Lc8/YTe;->id:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 121
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lc8/YTe;->connection:Lc8/TTe;

    iget-boolean v3, v3, Lc8/TTe;->client:Z

    if-ne v3, v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "streamIsClient":Z
    :cond_0
    move v0, v2

    .line 120
    goto :goto_0

    .restart local v0    # "streamIsClient":Z
    :cond_1
    move v1, v2

    .line 121
    goto :goto_1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 115
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 110
    :cond_1
    :try_start_1
    iget-object v1, p0, Lc8/YTe;->source:Lc8/WTe;

    invoke-static {v1}, Lc8/WTe;->access$100(Lc8/WTe;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lc8/YTe;->source:Lc8/WTe;

    invoke-static {v1}, Lc8/WTe;->access$300(Lc8/WTe;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lc8/YTe;->sink:Lc8/VTe;

    .line 111
    invoke-static {v1}, Lc8/VTe;->access$200(Lc8/VTe;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lc8/YTe;->sink:Lc8/VTe;

    invoke-static {v1}, Lc8/VTe;->access$400(Lc8/VTe;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 115
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lc8/YTe;->readTimeout:Lc8/XTe;

    return-object v0
.end method

.method receiveData(Lc8/aWp;I)V
    .locals 4
    .param p1, "in"    # Lc8/aWp;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    sget-boolean v0, Lc8/YTe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 286
    :cond_0
    iget-object v0, p0, Lc8/YTe;->source:Lc8/WTe;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lc8/WTe;->receive(Lc8/aWp;J)V

    .line 287
    return-void
.end method

.method receiveFin()V
    .locals 3

    .prologue
    .line 290
    sget-boolean v1, Lc8/YTe;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 292
    :cond_0
    monitor-enter p0

    .line 293
    :try_start_0
    iget-object v1, p0, Lc8/YTe;->source:Lc8/WTe;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lc8/WTe;->access$102(Lc8/WTe;Z)Z

    .line 294
    invoke-virtual {p0}, Lc8/YTe;->isOpen()Z

    move-result v0

    .line 295
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 296
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    if-nez v0, :cond_1

    .line 298
    iget-object v1, p0, Lc8/YTe;->connection:Lc8/TTe;

    iget v2, p0, Lc8/YTe;->id:I

    invoke-virtual {v1, v2}, Lc8/TTe;->removeStream(I)Lc8/YTe;

    .line 300
    :cond_1
    return-void

    .line 296
    .end local v0    # "open":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method receiveHeaders(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 5
    .param p2, "headersMode"    # Lcom/squareup/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "headers":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    sget-boolean v3, Lc8/YTe;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 256
    .local v0, "errorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    const/4 v2, 0x1

    .line 257
    .local v2, "open":Z
    monitor-enter p0

    .line 258
    :try_start_0
    iget-object v3, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;

    if-nez v3, :cond_3

    .line 259
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersAbsent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 276
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    if-eqz v0, :cond_5

    .line 278
    invoke-virtual {p0, v0}, Lc8/YTe;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 282
    :cond_1
    :goto_1
    return-void

    .line 262
    :cond_2
    :try_start_1
    iput-object p1, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;

    .line 263
    invoke-virtual {p0}, Lc8/YTe;->isOpen()Z

    move-result v2

    .line 264
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 276
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 267
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfHeadersPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 268
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->STREAM_IN_USE:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    goto :goto_0

    .line 270
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v3, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 272
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 273
    iput-object v1, p0, Lc8/YTe;->responseHeaders:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 279
    .end local v1    # "newHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    :cond_5
    if-nez v2, :cond_1

    .line 280
    iget-object v3, p0, Lc8/YTe;->connection:Lc8/TTe;

    iget v4, p0, Lc8/YTe;->id:I

    invoke-virtual {v3, v4}, Lc8/TTe;->removeStream(I)Lc8/YTe;

    goto :goto_1
.end method

.method declared-synchronized receiveRstStream(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 303
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    if-nez v0, :cond_0

    .line 304
    iput-object p1, p0, Lc8/YTe;->errorCode:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 305
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :cond_0
    monitor-exit p0

    return-void

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeTimeout()Lc8/wWp;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lc8/YTe;->writeTimeout:Lc8/XTe;

    return-object v0
.end method
