.class public abstract Lc8/edq;
.super Lc8/xcq;
.source "WebSocketServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bdq;,
        Lc8/ddq;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DECODERS:I


# instance fields
.field private final address:Ljava/net/InetSocketAddress;

.field private buffers:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final connections:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lc8/wcq;",
            ">;"
        }
    .end annotation
.end field

.field private decoders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/ddq;",
            ">;"
        }
    .end annotation
.end field

.field private drafts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Gcq;",
            ">;"
        }
    .end annotation
.end field

.field private iqueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/zcq;",
            ">;"
        }
    .end annotation
.end field

.field private final isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private queueinvokes:I

.field private final queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private selector:Ljava/nio/channels/Selector;

.field private selectorthread:Ljava/lang/Thread;

.field private server:Ljava/nio/channels/ServerSocketChannel;

.field private wsf:Lc8/bdq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lc8/edq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/edq;->$assertionsDisabled:Z

    .line 53
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lc8/edq;->DECODERS:I

    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Ljava/net/InetSocketAddress;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    sget v1, Lc8/edq;->DECODERS:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lc8/edq;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;)V
    .locals 2
    .param p1, "address"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 107
    sget v0, Lc8/edq;->DECODERS:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lc8/edq;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;I)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decoders"    # I

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/edq;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lc8/Gcq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/edq;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;ILjava/util/List;Ljava/util/Collection;)V
    .locals 4
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .param p2, "decodercount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "I",
            "Ljava/util/List",
            "<",
            "Lc8/Gcq;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lc8/wcq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    .local p4, "connectionscontainer":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/java_websocket/WebSocket;>;"
    const/4 v3, 0x0

    .line 151
    invoke-direct {p0}, Lc8/xcq;-><init>()V

    .line 80
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lc8/edq;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput v3, p0, Lc8/edq;->queueinvokes:I

    .line 87
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc8/edq;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    new-instance v2, Lc8/adq;

    invoke-direct {v2}, Lc8/adq;-><init>()V

    iput-object v2, p0, Lc8/edq;->wsf:Lc8/bdq;

    .line 152
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-nez p4, :cond_1

    .line 153
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "address and connectionscontainer must not be null and you need at least 1 decoder"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_1
    if-nez p3, :cond_2

    .line 157
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lc8/edq;->drafts:Ljava/util/List;

    .line 161
    :goto_0
    iput-object p1, p0, Lc8/edq;->address:Ljava/net/InetSocketAddress;

    .line 162
    iput-object p4, p0, Lc8/edq;->connections:Ljava/util/Collection;

    .line 164
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lc8/edq;->iqueue:Ljava/util/List;

    .line 166
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lc8/edq;->decoders:Ljava/util/List;

    .line 167
    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v2, p0, Lc8/edq;->buffers:Ljava/util/concurrent/BlockingQueue;

    .line 168
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, p2, :cond_3

    .line 169
    new-instance v0, Lc8/ddq;

    invoke-direct {v0, p0}, Lc8/ddq;-><init>(Lc8/edq;)V

    .line 170
    .local v0, "ex":Lc8/ddq;
    iget-object v2, p0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    invoke-virtual {v0}, Lc8/ddq;->start()V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 159
    .end local v0    # "ex":Lc8/ddq;
    .end local v1    # "i":I
    :cond_2
    iput-object p3, p0, Lc8/edq;->drafts:Ljava/util/List;

    goto :goto_0

    .line 173
    .restart local v1    # "i":I
    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/net/InetSocketAddress;Ljava/util/List;)V
    .locals 1
    .param p1, "address"    # Ljava/net/InetSocketAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            "Ljava/util/List",
            "<",
            "Lc8/Gcq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "drafts":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    sget v0, Lc8/edq;->DECODERS:I

    invoke-direct {p0, p1, v0, p2}, Lc8/edq;-><init>(Ljava/net/InetSocketAddress;ILjava/util/List;)V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lc8/edq;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p0, "x0"    # Lc8/edq;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lc8/edq;->pushBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic access$100(Lc8/edq;Lc8/wcq;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "x0"    # Lc8/edq;
    .param p1, "x1"    # Lc8/wcq;
    .param p2, "x2"    # Ljava/lang/Exception;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lc8/edq;->handleFatal(Lc8/wcq;Ljava/lang/Exception;)V

    return-void
.end method

.method private getSocket(Lc8/wcq;)Ljava/net/Socket;
    .locals 2
    .param p1, "conn"    # Lc8/wcq;

    .prologue
    .line 617
    move-object v0, p1

    check-cast v0, Lc8/zcq;

    .line 618
    .local v0, "impl":Lc8/zcq;
    iget-object v1, v0, Lc8/zcq;->key:Ljava/nio/channels/SelectionKey;

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    return-object v1
.end method

.method private handleFatal(Lc8/wcq;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    const/4 v2, 0x0

    .line 454
    invoke-virtual {p0, p1, p2}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    .line 456
    :try_start_0
    invoke-virtual {p0}, Lc8/edq;->stop()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 463
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e1":Ljava/io/IOException;
    invoke-virtual {p0, v2, v0}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    goto :goto_0

    .line 459
    .end local v0    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 460
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 461
    invoke-virtual {p0, v2, v0}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private handleIOException(Ljava/nio/channels/SelectionKey;Lc8/wcq;Ljava/io/IOException;)V
    .locals 4
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;
    .param p2, "conn"    # Lc8/wcq;
    .param p3, "ex"    # Ljava/io/IOException;

    .prologue
    .line 437
    if-eqz p2, :cond_1

    .line 438
    const/16 v1, 0x3ee

    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lc8/wcq;->closeConnection(ILjava/lang/String;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    if-eqz p1, :cond_0

    .line 440
    invoke-virtual {p1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v0

    .line 441
    .local v0, "channel":Ljava/nio/channels/SelectableChannel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/channels/SelectableChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    :goto_1
    sget-boolean v1, Lc8/zcq;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 448
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Connection closed because of"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private pushBuffer(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 430
    iget-object v0, p0, Lc8/edq;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    iget-object v1, p0, Lc8/edq;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    iget-object v0, p0, Lc8/edq;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private queue(Lc8/zcq;)V
    .locals 3
    .param p1, "ws"    # Lc8/zcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p1, Lc8/zcq;->workerThread:Lc8/ddq;

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lc8/edq;->decoders:Ljava/util/List;

    iget v1, p0, Lc8/edq;->queueinvokes:I

    iget-object v2, p0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/ddq;

    iput-object v0, p1, Lc8/zcq;->workerThread:Lc8/ddq;

    .line 420
    iget v0, p0, Lc8/edq;->queueinvokes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/edq;->queueinvokes:I

    .line 422
    :cond_0
    iget-object v0, p1, Lc8/zcq;->workerThread:Lc8/ddq;

    invoke-virtual {v0, p1}, Lc8/ddq;->put(Lc8/zcq;)V

    .line 423
    return-void
.end method

.method private takeBuffer()Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lc8/edq;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method protected addConnection(Lc8/wcq;)Z
    .locals 3
    .param p1, "ws"    # Lc8/wcq;

    .prologue
    .line 546
    iget-object v1, p0, Lc8/edq;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    iget-object v2, p0, Lc8/edq;->connections:Ljava/util/Collection;

    monitor-enter v2

    .line 548
    :try_start_0
    iget-object v1, p0, Lc8/edq;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 549
    .local v0, "succ":Z
    sget-boolean v1, Lc8/edq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 551
    .end local v0    # "succ":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 550
    .restart local v0    # "succ":Z
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    .end local v0    # "succ":Z
    :goto_0
    return v0

    .line 554
    :cond_1
    const/16 v1, 0x3e9

    invoke-interface {p1, v1}, Lc8/wcq;->close(I)V

    .line 555
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected allocateBuffers(Lc8/wcq;)V
    .locals 2
    .param p1, "c"    # Lc8/wcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lc8/edq;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lc8/edq;->queuesize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 405
    iget-object v0, p0, Lc8/edq;->buffers:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {p0}, Lc8/edq;->createBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public connections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lc8/wcq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lc8/edq;->connections:Ljava/util/Collection;

    return-object v0
.end method

.method public createBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 414
    sget v0, Lc8/zcq;->RCVBUF:I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lc8/edq;->address:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getDraft()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/Gcq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lc8/edq;->drafts:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getFlashSecurityPolicy()Ljava/lang/String;
    .locals 2

    .prologue
    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/edq;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\" /></cross-domain-policy>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lc8/wcq;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lc8/wcq;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lc8/edq;->getSocket(Lc8/wcq;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 251
    invoke-virtual {p0}, Lc8/edq;->getAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    .line 252
    .local v0, "port":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v1}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 255
    :cond_0
    return v0
.end method

.method public getRemoteSocketAddress(Lc8/wcq;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lc8/wcq;

    .prologue
    .line 628
    invoke-direct {p0, p1}, Lc8/edq;->getSocket(Lc8/wcq;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public final getWebSocketFactory()Lc8/ycq;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lc8/edq;->wsf:Lc8/bdq;

    return-object v0
.end method

.method public abstract onClose(Lc8/wcq;ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(Lc8/wcq;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 591
    return-void
.end method

.method public onClosing(Lc8/wcq;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 595
    return-void
.end method

.method protected onConnect(Ljava/nio/channels/SelectionKey;)Z
    .locals 1
    .param p1, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 613
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onError(Lc8/wcq;Ljava/lang/Exception;)V
.end method

.method public onFragment(Lc8/wcq;Lc8/Ocq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "fragment"    # Lc8/Ocq;

    .prologue
    .line 671
    return-void
.end method

.method public abstract onMessage(Lc8/wcq;Ljava/lang/String;)V
.end method

.method public onMessage(Lc8/wcq;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "message"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 665
    return-void
.end method

.method public abstract onOpen(Lc8/wcq;Lc8/Qcq;)V
.end method

.method public final onWebsocketClose(Lc8/wcq;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 507
    iget-object v0, p0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 509
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/edq;->removeConnection(Lc8/wcq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/edq;->onClose(Lc8/wcq;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lc8/edq;->releaseBuffers(Lc8/wcq;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 518
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    .line 514
    :try_start_2
    invoke-virtual {p0, p1}, Lc8/edq;->releaseBuffers(Lc8/wcq;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 517
    :goto_1
    throw v0

    .line 516
    :catch_1
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1
.end method

.method public onWebsocketCloseInitiated(Lc8/wcq;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 581
    invoke-virtual {p0, p1, p2, p3}, Lc8/edq;->onCloseInitiated(Lc8/wcq;ILjava/lang/String;)V

    .line 582
    return-void
.end method

.method public onWebsocketClosing(Lc8/wcq;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 586
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/edq;->onClosing(Lc8/wcq;ILjava/lang/String;Z)V

    .line 588
    return-void
.end method

.method public final onWebsocketError(Lc8/wcq;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 564
    invoke-virtual {p0, p1, p2}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    .line 565
    return-void
.end method

.method public onWebsocketHandshakeReceivedAsServer(Lc8/wcq;Lc8/Gcq;Lc8/Qcq;)Lc8/Ycq;
    .locals 1
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "draft"    # Lc8/Gcq;
    .param p3, "request"    # Lc8/Qcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 541
    invoke-super {p0, p1, p2, p3}, Lc8/xcq;->onWebsocketHandshakeReceivedAsServer(Lc8/wcq;Lc8/Gcq;Lc8/Qcq;)Lc8/Ycq;

    move-result-object v0

    return-object v0
.end method

.method public final onWebsocketMessage(Lc8/wcq;Ljava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 484
    invoke-virtual {p0, p1, p2}, Lc8/edq;->onMessage(Lc8/wcq;Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public final onWebsocketMessage(Lc8/wcq;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "blob"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2}, Lc8/edq;->onMessage(Lc8/wcq;Ljava/nio/ByteBuffer;)V

    .line 496
    return-void
.end method

.method public onWebsocketMessageFragment(Lc8/wcq;Lc8/Ocq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "frame"    # Lc8/Ocq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 490
    invoke-virtual {p0, p1, p2}, Lc8/edq;->onFragment(Lc8/wcq;Lc8/Ocq;)V

    .line 491
    return-void
.end method

.method public final onWebsocketOpen(Lc8/wcq;Lc8/Vcq;)V
    .locals 1
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "handshake"    # Lc8/Vcq;

    .prologue
    .line 500
    invoke-virtual {p0, p1}, Lc8/edq;->addConnection(Lc8/wcq;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    check-cast p2, Lc8/Qcq;

    .end local p2    # "handshake":Lc8/Vcq;
    invoke-virtual {p0, p1, p2}, Lc8/edq;->onOpen(Lc8/wcq;Lc8/Qcq;)V

    .line 503
    :cond_0
    return-void
.end method

.method public final onWriteDemand(Lc8/wcq;)V
    .locals 3
    .param p1, "w"    # Lc8/wcq;

    .prologue
    .line 569
    move-object v0, p1

    check-cast v0, Lc8/zcq;

    .line 571
    .local v0, "conn":Lc8/zcq;
    :try_start_0
    iget-object v1, v0, Lc8/zcq;->key:Ljava/nio/channels/SelectionKey;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_0
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    :goto_0
    iget-object v1, p0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 577
    return-void

    .line 574
    :catch_0
    move-exception v1

    iget-object v1, v0, Lc8/zcq;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    goto :goto_0
.end method

.method protected releaseBuffers(Lc8/wcq;)V
    .locals 0
    .param p1, "c"    # Lc8/wcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method protected removeConnection(Lc8/wcq;)Z
    .locals 3
    .param p1, "ws"    # Lc8/wcq;

    .prologue
    .line 530
    iget-object v2, p0, Lc8/edq;->connections:Ljava/util/Collection;

    monitor-enter v2

    .line 531
    :try_start_0
    iget-object v1, p0, Lc8/edq;->connections:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 532
    .local v0, "removed":Z
    sget-boolean v1, Lc8/edq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 533
    .end local v0    # "removed":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "removed":Z
    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    iget-object v1, p0, Lc8/edq;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/edq;->connections:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 535
    iget-object v1, p0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 537
    :cond_1
    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    if-eqz v13, :cond_0

    .line 266
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-static {v15}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " can only be started once."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 271
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 267
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    .line 268
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 269
    monitor-exit p0

    .line 399
    :cond_1
    :goto_0
    return-void

    .line 271
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "WebsocketSelector"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v15}, Ljava/lang/Thread;->getId()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 274
    :try_start_2
    invoke-static {}, Ljava/nio/channels/ServerSocketChannel;->open()Ljava/nio/channels/ServerSocketChannel;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/channels/ServerSocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->socket()Ljava/net/ServerSocket;

    move-result-object v11

    .line 277
    .local v11, "socket":Ljava/net/ServerSocket;
    sget v13, Lc8/zcq;->RCVBUF:I

    invoke-virtual {v11, v13}, Ljava/net/ServerSocket;->setReceiveBufferSize(I)V

    .line 278
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->address:Ljava/net/InetSocketAddress;

    invoke-virtual {v11, v13}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;)V

    .line 279
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    .line 280
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v15}, Ljava/nio/channels/ServerSocketChannel;->validOps()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/nio/channels/ServerSocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 286
    :cond_3
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v13}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-nez v13, :cond_10

    .line 287
    const/4 v9, 0x0

    .line 288
    .local v9, "key":Ljava/nio/channels/SelectionKey;
    const/4 v5, 0x0

    .line 290
    .local v5, "conn":Lc8/zcq;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v13}, Ljava/nio/channels/Selector;->select()I

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v13}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v10

    .line 292
    .local v10, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 294
    .local v8, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 295
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/nio/channels/SelectionKey;

    move-object v9, v0

    .line 297
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 302
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isAcceptable()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 303
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lc8/edq;->onConnect(Ljava/nio/channels/SelectionKey;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 304
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->cancel()V
    :try_end_4
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 379
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_0
    move-exception v13

    goto :goto_1

    .line 281
    .end local v5    # "conn":Lc8/zcq;
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .end local v11    # "socket":Ljava/net/ServerSocket;
    :catch_1
    move-exception v7

    .line 282
    .local v7, "ex":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v7}, Lc8/edq;->handleFatal(Lc8/wcq;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 308
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v5    # "conn":Lc8/zcq;
    .restart local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .restart local v11    # "socket":Ljava/net/ServerSocket;
    :cond_5
    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->accept()Ljava/nio/channels/SocketChannel;

    move-result-object v4

    .line 309
    .local v4, "channel":Ljava/nio/channels/SocketChannel;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 310
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->wsf:Lc8/bdq;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/edq;->drafts:Ljava/util/List;

    invoke-virtual {v4}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-interface {v13, v0, v14, v15}, Lc8/bdq;->createWebSocket(Lc8/xcq;Ljava/util/List;Ljava/net/Socket;)Lc8/zcq;

    move-result-object v12

    .line 311
    .local v12, "w":Lc8/zcq;
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14, v12}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;

    move-result-object v13

    iput-object v13, v12, Lc8/zcq;->key:Ljava/nio/channels/SelectionKey;

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->wsf:Lc8/bdq;

    iget-object v14, v12, Lc8/zcq;->key:Ljava/nio/channels/SelectionKey;

    invoke-interface {v13, v4, v14}, Lc8/bdq;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;

    move-result-object v13

    iput-object v13, v12, Lc8/zcq;->channel:Ljava/nio/channels/ByteChannel;

    .line 313
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 314
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lc8/edq;->allocateBuffers(Lc8/wcq;)V
    :try_end_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .end local v4    # "channel":Ljava/nio/channels/SocketChannel;
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    .end local v12    # "w":Lc8/zcq;
    :catch_2
    move-exception v13

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    if-eqz v13, :cond_e

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ddq;

    .line 388
    .local v12, "w":Lc8/ddq;
    invoke-virtual {v12}, Lc8/ddq;->interrupt()V

    goto :goto_3

    .line 318
    .end local v12    # "w":Lc8/ddq;
    .restart local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_6
    :try_start_6
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 319
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lc8/zcq;

    move-object v5, v0

    .line 320
    invoke-direct/range {p0 .. p0}, Lc8/edq;->takeBuffer()Ljava/nio/ByteBuffer;
    :try_end_6
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    .line 322
    .local v2, "buf":Ljava/nio/ByteBuffer;
    :try_start_7
    iget-object v13, v5, Lc8/zcq;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v2, v5, v13}, Lc8/vcq;->read(Ljava/nio/ByteBuffer;Lc8/zcq;Ljava/nio/channels/ByteChannel;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 323
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 324
    iget-object v13, v5, Lc8/zcq;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v13, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 325
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lc8/edq;->queue(Lc8/zcq;)V

    .line 326
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 327
    iget-object v13, v5, Lc8/zcq;->channel:Ljava/nio/channels/ByteChannel;

    instance-of v13, v13, Lc8/Bcq;

    if-eqz v13, :cond_7

    .line 328
    iget-object v13, v5, Lc8/zcq;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v13, Lc8/Bcq;

    invoke-interface {v13}, Lc8/Bcq;->isNeedRead()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 329
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->iqueue:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 342
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :cond_7
    :goto_4
    :try_start_8
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isWritable()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 343
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lc8/zcq;

    move-object v5, v0

    .line 344
    iget-object v13, v5, Lc8/zcq;->channel:Ljava/nio/channels/ByteChannel;

    invoke-static {v5, v13}, Lc8/vcq;->batch(Lc8/zcq;Ljava/nio/channels/ByteChannel;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 345
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 346
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;
    :try_end_8
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2

    .line 373
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_3
    move-exception v7

    .line 374
    .restart local v7    # "ex":Ljava/io/IOException;
    if-eqz v9, :cond_8

    .line 375
    :try_start_9
    invoke-virtual {v9}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 376
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5, v7}, Lc8/edq;->handleIOException(Ljava/nio/channels/SelectionKey;Lc8/wcq;Ljava/io/IOException;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 382
    .end local v5    # "conn":Lc8/zcq;
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    :catch_4
    move-exception v6

    .line 384
    .local v6, "e":Ljava/lang/RuntimeException;
    const/4 v13, 0x0

    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v6}, Lc8/edq;->handleFatal(Lc8/wcq;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    if-eqz v13, :cond_12

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_12

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ddq;

    .line 388
    .restart local v12    # "w":Lc8/ddq;
    invoke-virtual {v12}, Lc8/ddq;->interrupt()V

    goto :goto_5

    .line 333
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "w":Lc8/ddq;
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v5    # "conn":Lc8/zcq;
    .restart local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_9
    :try_start_b
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/edq;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_4

    .line 337
    :catch_5
    move-exception v6

    .line 338
    .local v6, "e":Ljava/io/IOException;
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/edq;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 339
    throw v6
    :try_end_c
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catch_6
    move-exception v13

    .line 386
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    if-eqz v13, :cond_f

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ddq;

    .line 388
    .restart local v12    # "w":Lc8/ddq;
    invoke-virtual {v12}, Lc8/ddq;->interrupt()V

    goto :goto_6

    .line 335
    .end local v12    # "w":Lc8/ddq;
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    .restart local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_a
    :try_start_d
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/edq;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_4

    .line 386
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "conn":Lc8/zcq;
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :catchall_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/edq;->decoders:Ljava/util/List;

    if-eqz v14, :cond_13

    .line 387
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_7
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ddq;

    .line 388
    .restart local v12    # "w":Lc8/ddq;
    invoke-virtual {v12}, Lc8/ddq;->interrupt()V

    goto :goto_7

    .line 350
    .end local v12    # "w":Lc8/ddq;
    .restart local v5    # "conn":Lc8/zcq;
    .restart local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .restart local v9    # "key":Ljava/nio/channels/SelectionKey;
    .restart local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_b
    :goto_8
    :try_start_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->iqueue:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 351
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->iqueue:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lc8/zcq;

    move-object v5, v0

    .line 352
    iget-object v3, v5, Lc8/zcq;->channel:Ljava/nio/channels/ByteChannel;

    check-cast v3, Lc8/Bcq;

    .line 353
    .local v3, "c":Lc8/Bcq;
    invoke-direct/range {p0 .. p0}, Lc8/edq;->takeBuffer()Ljava/nio/ByteBuffer;
    :try_end_e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result-object v2

    .line 355
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    :try_start_f
    invoke-static {v2, v5, v3}, Lc8/vcq;->readMore(Ljava/nio/ByteBuffer;Lc8/zcq;Lc8/Bcq;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 356
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->iqueue:Ljava/util/List;

    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    :cond_c
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 358
    iget-object v13, v5, Lc8/zcq;->inQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v13, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 359
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lc8/edq;->queue(Lc8/zcq;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_8

    .line 363
    :catch_7
    move-exception v6

    .line 364
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_10
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/edq;->pushBuffer(Ljava/nio/ByteBuffer;)V

    .line 365
    throw v6
    :try_end_10
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 361
    .end local v6    # "e":Ljava/io/IOException;
    :cond_d
    :try_start_11
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lc8/edq;->pushBuffer(Ljava/nio/ByteBuffer;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_8

    .line 391
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .end local v3    # "c":Lc8/Bcq;
    .end local v8    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/nio/channels/SelectionKey;>;"
    .end local v10    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/nio/channels/SelectionKey;>;"
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 393
    :try_start_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_0

    .line 394
    :catch_8
    move-exception v6

    .line 395
    .restart local v6    # "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 391
    .end local v6    # "e":Ljava/io/IOException;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 393
    :try_start_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_0

    .line 394
    :catch_9
    move-exception v6

    .line 395
    .restart local v6    # "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 386
    .end local v5    # "conn":Lc8/zcq;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "key":Ljava/nio/channels/SelectionKey;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    if-eqz v13, :cond_11

    .line 387
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->decoders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/ddq;

    .line 388
    .restart local v12    # "w":Lc8/ddq;
    invoke-virtual {v12}, Lc8/ddq;->interrupt()V

    goto :goto_9

    .line 391
    .end local v12    # "w":Lc8/ddq;
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 393
    :try_start_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    goto/16 :goto_0

    .line 394
    :catch_a
    move-exception v6

    .line 395
    .restart local v6    # "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 391
    .local v6, "e":Ljava/lang/RuntimeException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v13, :cond_1

    .line 393
    :try_start_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v13}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_0

    .line 394
    :catch_b
    move-exception v6

    .line 395
    .local v6, "e":Ljava/io/IOException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 391
    .end local v6    # "e":Ljava/io/IOException;
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    if-eqz v14, :cond_14

    .line 393
    :try_start_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/edq;->server:Ljava/nio/channels/ServerSocketChannel;

    invoke-virtual {v14}, Ljava/nio/channels/ServerSocketChannel;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    .line 396
    :cond_14
    :goto_a
    throw v13

    .line 394
    :catch_c
    move-exception v6

    .line 395
    .restart local v6    # "e":Ljava/io/IOException;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lc8/edq;->onError(Lc8/wcq;Ljava/lang/Exception;)V

    goto :goto_a
.end method

.method public final setWebSocketFactory(Lc8/bdq;)V
    .locals 0
    .param p1, "wsf"    # Lc8/bdq;

    .prologue
    .line 598
    iput-object p1, p0, Lc8/edq;->wsf:Lc8/bdq;

    .line 599
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can only be started once."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/edq;->stop(I)V

    .line 228
    return-void
.end method

.method public stop(I)V
    .locals 6
    .param p1, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v2, p0, Lc8/edq;->isclosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_0

    .line 224
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v3, p0, Lc8/edq;->connections:Ljava/util/Collection;

    monitor-enter v3

    .line 211
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/edq;->connections:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 212
    .local v0, "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/wcq;

    .line 215
    .local v1, "ws":Lc8/wcq;
    const/16 v3, 0x3e9

    invoke-interface {v1, v3}, Lc8/wcq;->close(I)V

    goto :goto_1

    .line 212
    .end local v0    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    .end local v1    # "ws":Lc8/wcq;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 218
    .restart local v0    # "socketsToClose":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/WebSocket;>;"
    :cond_1
    monitor-enter p0

    .line 219
    :try_start_2
    iget-object v2, p0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 220
    iget-object v2, p0, Lc8/edq;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 221
    iget-object v2, p0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 222
    iget-object v2, p0, Lc8/edq;->selectorthread:Ljava/lang/Thread;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/Thread;->join(J)V

    .line 224
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method
