.class public final Lc8/TTe;
.super Ljava/lang/Object;
.source "FramedConnection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OTe;,
        Lc8/STe;,
        Lc8/MTe;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final executor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field bytesLeftInWriteWindow:J

.field final client:Z

.field private final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final frameWriter:Lc8/ETe;

.field private final hostName:Ljava/lang/String;

.field private idleStartTimeNs:J

.field private lastGoodStreamId:I

.field private final listener:Lc8/OTe;

.field private nextPingId:I

.field private nextStreamId:I

.field okHttpSettings:Lc8/qUe;

.field final peerSettings:Lc8/qUe;

.field private pings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/nUe;",
            ">;"
        }
    .end annotation
.end field

.field final protocol:Lcom/squareup/okhttp/Protocol;

.field private final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field private final pushObserver:Lc8/pUe;

.field final readerRunnable:Lc8/STe;

.field private receivedInitialPeerSettings:Z

.field private shutdown:Z

.field final socket:Ljava/net/Socket;

.field private final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/YTe;",
            ">;"
        }
    .end annotation
.end field

.field unacknowledgedBytesRead:J

.field final variant:Lc8/uUe;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 55
    const-class v0, Lc8/TTe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v8

    :goto_0
    sput-boolean v0, Lc8/TTe;->$assertionsDisabled:Z

    .line 69
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v0, "OkHttp FramedConnection"

    .line 71
    invoke-static {v0, v8}, Lc8/ATe;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lc8/TTe;->executor:Ljava/util/concurrent/ExecutorService;

    .line 69
    return-void

    :cond_0
    move v0, v2

    .line 55
    goto :goto_0
.end method

.method private constructor <init>(Lc8/MTe;)V
    .locals 12
    .param p1, "builder"    # Lc8/MTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x7

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/TTe;->streams:Ljava/util/Map;

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lc8/TTe;->idleStartTimeNs:J

    .line 105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lc8/TTe;->unacknowledgedBytesRead:J

    .line 115
    new-instance v0, Lc8/qUe;

    invoke-direct {v0}, Lc8/qUe;-><init>()V

    iput-object v0, p0, Lc8/TTe;->okHttpSettings:Lc8/qUe;

    .line 121
    new-instance v0, Lc8/qUe;

    invoke-direct {v0}, Lc8/qUe;-><init>()V

    iput-object v0, p0, Lc8/TTe;->peerSettings:Lc8/qUe;

    .line 123
    iput-boolean v2, p0, Lc8/TTe;->receivedInitialPeerSettings:Z

    .line 833
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc8/TTe;->currentPushRequests:Ljava/util/Set;

    .line 132
    invoke-static {p1}, Lc8/MTe;->access$000(Lc8/MTe;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lc8/TTe;->protocol:Lcom/squareup/okhttp/Protocol;

    .line 133
    invoke-static {p1}, Lc8/MTe;->access$100(Lc8/MTe;)Lc8/pUe;

    move-result-object v0

    iput-object v0, p0, Lc8/TTe;->pushObserver:Lc8/pUe;

    .line 134
    invoke-static {p1}, Lc8/MTe;->access$200(Lc8/MTe;)Z

    move-result v0

    iput-boolean v0, p0, Lc8/TTe;->client:Z

    .line 135
    invoke-static {p1}, Lc8/MTe;->access$300(Lc8/MTe;)Lc8/OTe;

    move-result-object v0

    iput-object v0, p0, Lc8/TTe;->listener:Lc8/OTe;

    .line 137
    invoke-static {p1}, Lc8/MTe;->access$200(Lc8/MTe;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_0
    iput v0, p0, Lc8/TTe;->nextStreamId:I

    .line 138
    invoke-static {p1}, Lc8/MTe;->access$200(Lc8/MTe;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/TTe;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v4, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v4, :cond_0

    .line 139
    iget v0, p0, Lc8/TTe;->nextStreamId:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc8/TTe;->nextStreamId:I

    .line 142
    :cond_0
    invoke-static {p1}, Lc8/MTe;->access$200(Lc8/MTe;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    :cond_1
    iput v1, p0, Lc8/TTe;->nextPingId:I

    .line 148
    invoke-static {p1}, Lc8/MTe;->access$200(Lc8/MTe;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lc8/TTe;->okHttpSettings:Lc8/qUe;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v10, v2, v1}, Lc8/qUe;->set(III)Lc8/qUe;

    .line 152
    :cond_2
    invoke-static {p1}, Lc8/MTe;->access$400(Lc8/MTe;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lc8/TTe;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_4

    .line 155
    new-instance v0, Lc8/hUe;

    invoke-direct {v0}, Lc8/hUe;-><init>()V

    iput-object v0, p0, Lc8/TTe;->variant:Lc8/uUe;

    .line 157
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v0, "OkHttp %s Push Observer"

    new-array v8, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 159
    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lc8/ATe;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/TTe;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    .line 161
    iget-object v0, p0, Lc8/TTe;->peerSettings:Lc8/qUe;

    const v1, 0xffff

    invoke-virtual {v0, v10, v2, v1}, Lc8/qUe;->set(III)Lc8/qUe;

    .line 162
    iget-object v0, p0, Lc8/TTe;->peerSettings:Lc8/qUe;

    const/4 v1, 0x5

    const/16 v3, 0x4000

    invoke-virtual {v0, v1, v2, v3}, Lc8/qUe;->set(III)Lc8/qUe;

    .line 169
    :goto_1
    iget-object v0, p0, Lc8/TTe;->peerSettings:Lc8/qUe;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Lc8/qUe;->getInitialWindowSize(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lc8/TTe;->bytesLeftInWriteWindow:J

    .line 170
    invoke-static {p1}, Lc8/MTe;->access$500(Lc8/MTe;)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lc8/TTe;->socket:Ljava/net/Socket;

    .line 171
    iget-object v0, p0, Lc8/TTe;->variant:Lc8/uUe;

    invoke-static {p1}, Lc8/MTe;->access$600(Lc8/MTe;)Lc8/ZVp;

    move-result-object v1

    iget-boolean v2, p0, Lc8/TTe;->client:Z

    invoke-interface {v0, v1, v2}, Lc8/uUe;->newWriter(Lc8/ZVp;Z)Lc8/ETe;

    move-result-object v0

    iput-object v0, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    .line 173
    new-instance v0, Lc8/STe;

    iget-object v1, p0, Lc8/TTe;->variant:Lc8/uUe;

    invoke-static {p1}, Lc8/MTe;->access$700(Lc8/MTe;)Lc8/aWp;

    move-result-object v2

    iget-boolean v3, p0, Lc8/TTe;->client:Z

    invoke-interface {v1, v2, v3}, Lc8/uUe;->newReader(Lc8/aWp;Z)Lc8/DTe;

    move-result-object v1

    invoke-direct {v0, p0, v1, v11}, Lc8/STe;-><init>(Lc8/TTe;Lc8/DTe;Lc8/FTe;)V

    iput-object v0, p0, Lc8/TTe;->readerRunnable:Lc8/STe;

    .line 174
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lc8/TTe;->readerRunnable:Lc8/STe;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    return-void

    :cond_3
    move v0, v1

    .line 137
    goto/16 :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lc8/TTe;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_5

    .line 164
    new-instance v0, Lc8/tUe;

    invoke-direct {v0}, Lc8/tUe;-><init>()V

    iput-object v0, p0, Lc8/TTe;->variant:Lc8/uUe;

    .line 165
    iput-object v11, p0, Lc8/TTe;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 167
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lc8/TTe;->protocol:Lcom/squareup/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lc8/MTe;Lc8/FTe;)V
    .locals 0
    .param p1, "x0"    # Lc8/MTe;
    .param p2, "x1"    # Lc8/FTe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lc8/TTe;-><init>(Lc8/MTe;)V

    return-void
.end method

.method static synthetic access$1100(Lc8/TTe;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lc8/TTe;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lc8/TTe;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1300(Lc8/TTe;I)Z
    .locals 1
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lc8/TTe;->pushedStream(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lc8/TTe;ILc8/aWp;IZ)V
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lc8/aWp;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/TTe;->pushDataLater(ILc8/aWp;IZ)V

    return-void
.end method

.method static synthetic access$1500(Lc8/TTe;ILjava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lc8/TTe;->pushHeadersLater(ILjava/util/List;Z)V

    return-void
.end method

.method static synthetic access$1600(Lc8/TTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget-boolean v0, p0, Lc8/TTe;->shutdown:Z

    return v0
.end method

.method static synthetic access$1602(Lc8/TTe;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lc8/TTe;->shutdown:Z

    return p1
.end method

.method static synthetic access$1700(Lc8/TTe;)I
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget v0, p0, Lc8/TTe;->lastGoodStreamId:I

    return v0
.end method

.method static synthetic access$1702(Lc8/TTe;I)I
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lc8/TTe;->lastGoodStreamId:I

    return p1
.end method

.method static synthetic access$1800(Lc8/TTe;)I
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget v0, p0, Lc8/TTe;->nextStreamId:I

    return v0
.end method

.method static synthetic access$1900(Lc8/TTe;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/TTe;->streams:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Lc8/TTe;)Lc8/OTe;
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/TTe;->listener:Lc8/OTe;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lc8/TTe;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lc8/TTe;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lc8/TTe;->pushResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    return-void
.end method

.method static synthetic access$2300(Lc8/TTe;)Z
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget-boolean v0, p0, Lc8/TTe;->receivedInitialPeerSettings:Z

    return v0
.end method

.method static synthetic access$2302(Lc8/TTe;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lc8/TTe;->receivedInitialPeerSettings:Z

    return p1
.end method

.method static synthetic access$2400(Lc8/TTe;I)Lc8/nUe;
    .locals 1
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # I

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lc8/TTe;->removePing(I)Lc8/nUe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lc8/TTe;ZIILc8/nUe;)V
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lc8/nUe;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/TTe;->writePingLater(ZIILc8/nUe;)V

    return-void
.end method

.method static synthetic access$2600(Lc8/TTe;ILjava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lc8/TTe;->pushRequestLater(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$2700(Lc8/TTe;)Lc8/pUe;
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/TTe;->pushObserver:Lc8/pUe;

    return-object v0
.end method

.method static synthetic access$2800(Lc8/TTe;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lc8/TTe;

    .prologue
    .line 55
    iget-object v0, p0, Lc8/TTe;->currentPushRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$900(Lc8/TTe;ZIILc8/nUe;)V
    .locals 0
    .param p0, "x0"    # Lc8/TTe;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lc8/nUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/TTe;->writePing(ZIILc8/nUe;)V

    return-void
.end method

.method private close(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 10
    .param p1, "connectionCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p2, "streamCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 454
    sget-boolean v7, Lc8/TTe;->$assertionsDisabled:Z

    if-nez v7, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7

    .line 455
    :cond_0
    const/4 v6, 0x0

    .line 457
    .local v6, "thrown":Ljava/io/IOException;
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/TTe;->shutdown(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    const/4 v5, 0x0

    .line 463
    .local v5, "streamsToClose":[Lc8/YTe;
    const/4 v3, 0x0

    .line 464
    .local v3, "pingsToCancel":[Lc8/nUe;
    monitor-enter p0

    .line 465
    :try_start_1
    iget-object v7, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 466
    iget-object v7, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lc8/YTe;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lc8/YTe;

    move-object v5, v0

    .line 467
    iget-object v7, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 468
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lc8/TTe;->setIdle(Z)V

    .line 470
    :cond_1
    iget-object v7, p0, Lc8/TTe;->pings:Ljava/util/Map;

    if-eqz v7, :cond_2

    .line 471
    iget-object v7, p0, Lc8/TTe;->pings:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    iget-object v9, p0, Lc8/TTe;->pings:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    new-array v9, v9, [Lc8/nUe;

    invoke-interface {v7, v9}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, [Lc8/nUe;

    move-object v3, v0

    .line 472
    const/4 v7, 0x0

    iput-object v7, p0, Lc8/TTe;->pings:Ljava/util/Map;

    .line 474
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    if-eqz v5, :cond_4

    .line 477
    array-length v9, v5

    move v7, v8

    :goto_1
    if-ge v7, v9, :cond_4

    aget-object v4, v5, v7

    .line 479
    .local v4, "stream":Lc8/YTe;
    :try_start_2
    invoke-virtual {v4, p2}, Lc8/YTe;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 477
    :cond_3
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 458
    .end local v3    # "pingsToCancel":[Lc8/nUe;
    .end local v4    # "stream":Lc8/YTe;
    .end local v5    # "streamsToClose":[Lc8/YTe;
    :catch_0
    move-exception v1

    .line 459
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_0

    .line 474
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "pingsToCancel":[Lc8/nUe;
    .restart local v5    # "streamsToClose":[Lc8/YTe;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 480
    .restart local v4    # "stream":Lc8/YTe;
    :catch_1
    move-exception v1

    .line 481
    .restart local v1    # "e":Ljava/io/IOException;
    if-eqz v6, :cond_3

    move-object v6, v1

    goto :goto_2

    .line 486
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "stream":Lc8/YTe;
    :cond_4
    if-eqz v3, :cond_5

    .line 487
    array-length v9, v3

    move v7, v8

    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v2, v3, v7

    .line 488
    .local v2, "ping":Lc8/nUe;
    invoke-virtual {v2}, Lc8/nUe;->cancel()V

    .line 487
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 494
    .end local v2    # "ping":Lc8/nUe;
    :cond_5
    :try_start_4
    iget-object v7, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v7}, Lc8/ETe;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 501
    :cond_6
    :goto_4
    :try_start_5
    iget-object v7, p0, Lc8/TTe;->socket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 506
    :goto_5
    if-eqz v6, :cond_7

    throw v6

    .line 495
    :catch_2
    move-exception v1

    .line 496
    .restart local v1    # "e":Ljava/io/IOException;
    if-nez v6, :cond_6

    move-object v6, v1

    goto :goto_4

    .line 502
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 503
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v6, v1

    goto :goto_5

    .line 507
    .end local v1    # "e":Ljava/io/IOException;
    :cond_7
    return-void
.end method

.method private newStream(ILjava/util/List;ZZ)Lc8/YTe;
    .locals 9
    .param p1, "associatedStreamId"    # I
    .param p3, "out"    # Z
    .param p4, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;ZZ)",
            "Lc8/YTe;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 254
    if-nez p3, :cond_0

    move v3, v4

    .line 255
    .local v3, "outFinished":Z
    :goto_0
    if-nez p4, :cond_1

    .line 259
    .local v4, "inFinished":Z
    :goto_1
    iget-object v8, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    monitor-enter v8

    .line 260
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 261
    :try_start_1
    iget-boolean v2, p0, Lc8/TTe;->shutdown:Z

    if-eqz v2, :cond_2

    .line 262
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "shutdown"

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 280
    :catchall_1
    move-exception v2

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .end local v3    # "outFinished":Z
    .end local v4    # "inFinished":Z
    :cond_0
    move v3, v2

    .line 254
    goto :goto_0

    .restart local v3    # "outFinished":Z
    :cond_1
    move v4, v2

    .line 255
    goto :goto_1

    .line 264
    .restart local v4    # "inFinished":Z
    :cond_2
    :try_start_3
    iget v1, p0, Lc8/TTe;->nextStreamId:I

    .line 265
    .local v1, "streamId":I
    iget v2, p0, Lc8/TTe;->nextStreamId:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lc8/TTe;->nextStreamId:I

    .line 266
    new-instance v0, Lc8/YTe;

    move-object v2, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/YTe;-><init>(ILc8/TTe;ZZLjava/util/List;)V

    .line 267
    .local v0, "stream":Lc8/YTe;
    invoke-virtual {v0}, Lc8/YTe;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    iget-object v2, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lc8/TTe;->setIdle(Z)V

    .line 271
    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 272
    if-nez p1, :cond_5

    .line 273
    :try_start_4
    iget-object v2, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    move v5, v1

    move v6, p1

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lc8/ETe;->synStream(ZZIILjava/util/List;)V

    .line 280
    :goto_2
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 282
    if-nez p3, :cond_4

    .line 283
    iget-object v2, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v2}, Lc8/ETe;->flush()V

    .line 286
    :cond_4
    return-object v0

    .line 275
    :cond_5
    :try_start_5
    iget-boolean v2, p0, Lc8/TTe;->client:Z

    if-eqz v2, :cond_6

    .line 276
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_6
    iget-object v2, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v2, p1, v1, p2}, Lc8/ETe;->pushPromise(IILjava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2
.end method

.method private pushDataLater(ILc8/aWp;IZ)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "source"    # Lc8/aWp;
    .param p3, "byteCount"    # I
    .param p4, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 883
    new-instance v5, Lc8/YVp;

    invoke-direct {v5}, Lc8/YVp;-><init>()V

    .line 884
    .local v5, "buffer":Lc8/YVp;
    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lc8/aWp;->require(J)V

    .line 885
    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lc8/aWp;->read(Lc8/YVp;J)J

    .line 886
    invoke-virtual {v5}, Lc8/YVp;->size()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lc8/YVp;->size()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_0
    iget-object v8, p0, Lc8/TTe;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc8/KTe;

    const-string/jumbo v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lc8/KTe;-><init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ILc8/YVp;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 901
    return-void
.end method

.method private pushHeadersLater(ILjava/util/List;Z)V
    .locals 8
    .param p1, "streamId"    # I
    .param p3, "inFinished"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 861
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v7, p0, Lc8/TTe;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc8/JTe;

    const-string/jumbo v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lc8/JTe;-><init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 875
    return-void
.end method

.method private pushRequestLater(ILjava/util/List;)V
    .locals 7
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 836
    .local p2, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    monitor-enter p0

    .line 837
    :try_start_0
    iget-object v0, p0, Lc8/TTe;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lc8/TTe;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 839
    monitor-exit p0

    .line 857
    :goto_0
    return-void

    .line 841
    :cond_0
    iget-object v0, p0, Lc8/TTe;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 842
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    iget-object v6, p0, Lc8/TTe;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc8/ITe;

    const-string/jumbo v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/ITe;-><init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 842
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private pushResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 904
    iget-object v6, p0, Lc8/TTe;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc8/LTe;

    const-string/jumbo v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/LTe;-><init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 912
    return-void
.end method

.method private pushedStream(I)Z
    .locals 2
    .param p1, "streamId"    # I

    .prologue
    .line 829
    iget-object v0, p0, Lc8/TTe;->protocol:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized removePing(I)Lc8/nUe;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 416
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/TTe;->pings:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/TTe;->pings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/nUe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setIdle(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 204
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lc8/TTe;->idleStartTimeNs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private writePing(ZIILc8/nUe;)V
    .locals 2
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lc8/nUe;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    iget-object v1, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    monitor-enter v1

    .line 410
    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lc8/nUe;->send()V

    .line 411
    :cond_0
    iget-object v0, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v0, p1, p2, p3}, Lc8/ETe;->ping(ZII)V

    .line 412
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writePingLater(ZIILc8/nUe;)V
    .locals 9
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .param p4, "ping"    # Lc8/nUe;

    .prologue
    .line 396
    sget-object v8, Lc8/TTe;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc8/HTe;

    const-string/jumbo v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    .line 397
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lc8/HTe;-><init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ZIILc8/nUe;)V

    .line 396
    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 405
    return-void
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .prologue
    .line 344
    iget-wide v0, p0, Lc8/TTe;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lc8/TTe;->bytesLeftInWriteWindow:J

    .line 345
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 346
    :cond_0
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 450
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-direct {p0, v0, v1}, Lc8/TTe;->close(Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 451
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
    .line 420
    iget-object v0, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v0}, Lc8/ETe;->flush()V

    .line 421
    return-void
.end method

.method public getProtocol()Lcom/squareup/okhttp/Protocol;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc8/TTe;->protocol:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method declared-synchronized getStream(I)Lc8/YTe;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/YTe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/TTe;->peerSettings:Lc8/qUe;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lc8/qUe;->getMaxConcurrentStreams(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newStream(Ljava/util/List;ZZ)Lc8/YTe;
    .locals 1
    .param p2, "out"    # Z
    .param p3, "in"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;ZZ)",
            "Lc8/YTe;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lc8/TTe;->newStream(ILjava/util/List;ZZ)Lc8/YTe;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized removeStream(I)Lc8/YTe;
    .locals 3
    .param p1, "streamId"    # I

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/YTe;

    .line 196
    .local v0, "stream":Lc8/YTe;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lc8/TTe;->setIdle(Z)V

    .line 199
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-object v0

    .line 195
    .end local v0    # "stream":Lc8/YTe;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendConnectionPreface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v3, 0x10000

    .line 514
    iget-object v1, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v1}, Lc8/ETe;->connectionPreface()V

    .line 515
    iget-object v1, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    iget-object v2, p0, Lc8/TTe;->okHttpSettings:Lc8/qUe;

    invoke-interface {v1, v2}, Lc8/ETe;->settings(Lc8/qUe;)V

    .line 516
    iget-object v1, p0, Lc8/TTe;->okHttpSettings:Lc8/qUe;

    invoke-virtual {v1, v3}, Lc8/qUe;->getInitialWindowSize(I)I

    move-result v0

    .line 517
    .local v0, "windowSize":I
    if-eq v0, v3, :cond_0

    .line 518
    iget-object v1, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    const/4 v2, 0x0

    sub-int v3, v0, v3

    int-to-long v4, v3

    invoke-interface {v1, v2, v4, v5}, Lc8/ETe;->windowUpdate(IJ)V

    .line 520
    :cond_0
    return-void
.end method

.method public shutdown(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 4
    .param p1, "statusCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v2, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    monitor-enter v2

    .line 432
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :try_start_1
    iget-boolean v1, p0, Lc8/TTe;->shutdown:Z

    if-eqz v1, :cond_0

    .line 434
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 441
    :goto_0
    return-void

    .line 436
    :cond_0
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lc8/TTe;->shutdown:Z

    .line 437
    iget v0, p0, Lc8/TTe;->lastGoodStreamId:I

    .line 438
    .local v0, "lastGoodStreamId":I
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 440
    :try_start_4
    iget-object v1, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    sget-object v3, Lc8/ATe;->EMPTY_BYTE_ARRAY:[B

    invoke-interface {v1, v0, p1, v3}, Lc8/ETe;->goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;[B)V

    .line 441
    monitor-exit v2

    goto :goto_0

    .end local v0    # "lastGoodStreamId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 438
    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public writeData(IZLc8/YVp;J)V
    .locals 10
    .param p1, "streamId"    # I
    .param p2, "outFinished"    # Z
    .param p3, "buffer"    # Lc8/YVp;
    .param p4, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 308
    cmp-long v1, p4, v8

    if-nez v1, :cond_2

    .line 309
    iget-object v1, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v1, p2, p1, p3, v2}, Lc8/ETe;->data(ZILc8/YVp;I)V

    .line 337
    :cond_0
    return-void

    .line 329
    :cond_1
    :try_start_0
    iget-wide v4, p0, Lc8/TTe;->bytesLeftInWriteWindow:J

    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v0, v4

    .line 330
    .local v0, "toWrite":I
    iget-object v1, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v1}, Lc8/ETe;->maxDataLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 331
    iget-wide v4, p0, Lc8/TTe;->bytesLeftInWriteWindow:J

    int-to-long v6, v0

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lc8/TTe;->bytesLeftInWriteWindow:J

    .line 332
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    int-to-long v4, v0

    sub-long/2addr p4, v4

    .line 335
    iget-object v3, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    if-eqz p2, :cond_4

    cmp-long v1, p4, v8

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v3, v1, p1, p3, v0}, Lc8/ETe;->data(ZILc8/YVp;I)V

    .line 313
    .end local v0    # "toWrite":I
    :cond_2
    cmp-long v1, p4, v8

    if-lez v1, :cond_0

    .line 315
    monitor-enter p0

    .line 317
    :goto_1
    :try_start_1
    iget-wide v4, p0, Lc8/TTe;->bytesLeftInWriteWindow:J

    cmp-long v1, v4, v8

    if-gtz v1, :cond_1

    .line 320
    iget-object v1, p0, Lc8/TTe;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 321
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "stream closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :catch_0
    move-exception v1

    :try_start_2
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 323
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .restart local v0    # "toWrite":I
    :cond_4
    move v1, v2

    .line 335
    goto :goto_0
.end method

.method writeSynReset(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "statusCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lc8/TTe;->frameWriter:Lc8/ETe;

    invoke-interface {v0, p1, p2}, Lc8/ETe;->rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 361
    return-void
.end method

.method writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 7
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 349
    sget-object v6, Lc8/TTe;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lc8/FTe;

    const-string/jumbo v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/FTe;-><init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 357
    return-void
.end method

.method writeWindowUpdateLater(IJ)V
    .locals 8
    .param p1, "streamId"    # I
    .param p2, "unacknowledgedBytesRead"    # J

    .prologue
    .line 364
    sget-object v0, Lc8/TTe;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lc8/GTe;

    const-string/jumbo v3, "OkHttp Window Update %s stream %d"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v5, p0, Lc8/TTe;->hostName:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lc8/GTe;-><init>(Lc8/TTe;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method
