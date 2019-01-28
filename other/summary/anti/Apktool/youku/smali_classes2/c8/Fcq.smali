.class public abstract Lc8/Fcq;
.super Lc8/xcq;
.source "WebSocketClient.java"

# interfaces
.implements Lc8/wcq;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ecq;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private closeLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectLatch:Ljava/util/concurrent/CountDownLatch;

.field private connectTimeout:I

.field private draft:Lc8/Gcq;

.field private engine:Lc8/zcq;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private istream:Ljava/io/InputStream;

.field private ostream:Ljava/io/OutputStream;

.field private proxy:Ljava/net/Proxy;

.field private socket:Ljava/net/Socket;

.field protected uri:Ljava/net/URI;

.field private writeThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lc8/Fcq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/Fcq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1
    .param p1, "serverURI"    # Ljava/net/URI;

    .prologue
    .line 63
    new-instance v0, Lc8/Icq;

    invoke-direct {v0}, Lc8/Icq;-><init>()V

    invoke-direct {p0, p1, v0}, Lc8/Fcq;-><init>(Ljava/net/URI;Lc8/Gcq;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lc8/Gcq;)V
    .locals 2
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "draft"    # Lc8/Gcq;

    .prologue
    .line 72
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lc8/Fcq;-><init>(Ljava/net/URI;Lc8/Gcq;Ljava/util/Map;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Lc8/Gcq;Ljava/util/Map;I)V
    .locals 2
    .param p1, "serverUri"    # Ljava/net/URI;
    .param p2, "protocolDraft"    # Lc8/Gcq;
    .param p4, "connectTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Lc8/Gcq;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "httpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lc8/xcq;-><init>()V

    .line 37
    iput-object v0, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    .line 39
    iput-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    .line 41
    iput-object v0, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    .line 47
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lc8/Fcq;->proxy:Ljava/net/Proxy;

    .line 55
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc8/Fcq;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    .line 57
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lc8/Fcq;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lc8/Fcq;->connectTimeout:I

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 78
    :cond_0
    if-nez p2, :cond_1

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "null as draft is permitted for `WebSocketServer` only!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iput-object p1, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    .line 82
    iput-object p2, p0, Lc8/Fcq;->draft:Lc8/Gcq;

    .line 83
    iput-object p3, p0, Lc8/Fcq;->headers:Ljava/util/Map;

    .line 84
    iput p4, p0, Lc8/Fcq;->connectTimeout:I

    .line 85
    new-instance v0, Lc8/zcq;

    invoke-direct {v0, p0, p2}, Lc8/zcq;-><init>(Lc8/Acq;Lc8/Gcq;)V

    iput-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    .line 86
    return-void
.end method

.method static synthetic access$100(Lc8/Fcq;)Lc8/zcq;
    .locals 1
    .param p0, "x0"    # Lc8/Fcq;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Fcq;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "x0"    # Lc8/Fcq;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Fcq;->ostream:Ljava/io/OutputStream;

    return-object v0
.end method

.method private getPort()I
    .locals 5

    .prologue
    .line 198
    iget-object v2, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getPort()I

    move-result v0

    .line 199
    .local v0, "port":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 200
    iget-object v2, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v2, "wss"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    const/16 v0, 0x1bb

    .line 209
    .end local v0    # "port":I
    .end local v1    # "scheme":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 203
    .restart local v0    # "port":I
    .restart local v1    # "scheme":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "ws"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 204
    const/16 v0, 0x50

    goto :goto_0

    .line 206
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unkonow scheme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private sendHandshake()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v7, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "part1":Ljava/lang/String;
    iget-object v7, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    invoke-virtual {v7}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, "part2":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 217
    :cond_0
    const-string/jumbo v5, "/"

    .line 220
    .local v5, "path":Ljava/lang/String;
    :goto_0
    if-eqz v4, :cond_1

    .line 221
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 222
    :cond_1
    invoke-direct {p0}, Lc8/Fcq;->getPort()I

    move-result v6

    .line 223
    .local v6, "port":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v7, 0x50

    if-eq v6, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "host":Ljava/lang/String;
    new-instance v0, Lc8/Tcq;

    invoke-direct {v0}, Lc8/Tcq;-><init>()V

    .line 226
    .local v0, "handshake":Lc8/Tcq;
    invoke-virtual {v0, v5}, Lc8/Tcq;->setResourceDescriptor(Ljava/lang/String;)V

    .line 227
    const-string/jumbo v7, "Host"

    invoke-virtual {v0, v7, v1}, Lc8/Tcq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v7, p0, Lc8/Fcq;->headers:Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 229
    iget-object v7, p0, Lc8/Fcq;->headers:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 230
    .local v2, "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Lc8/Tcq;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 219
    .end local v0    # "handshake":Lc8/Tcq;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "kv":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "port":I
    :cond_2
    move-object v5, v3

    .restart local v5    # "path":Ljava/lang/String;
    goto/16 :goto_0

    .line 223
    .restart local v6    # "port":I
    :cond_3
    const-string/jumbo v7, ""

    goto :goto_1

    .line 233
    .restart local v0    # "handshake":Lc8/Tcq;
    .restart local v1    # "host":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v7, v0}, Lc8/zcq;->startHandshake(Lc8/Rcq;)V

    .line 234
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lc8/zcq;->close(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public close(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 418
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->close()V

    .line 419
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0, p1, p2}, Lc8/zcq;->close(ILjava/lang/String;)V

    .line 424
    return-void
.end method

.method public closeBlocking()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lc8/Fcq;->close()V

    .line 135
    iget-object v0, p0, Lc8/Fcq;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 136
    return-void
.end method

.method public closeConnection(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0, p1, p2}, Lc8/zcq;->closeConnection(ILjava/lang/String;)V

    .line 429
    return-void
.end method

.method public connect()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "WebSocketClient objects are not reuseable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    .line 110
    iget-object v0, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method public connectBlocking()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p0}, Lc8/Fcq;->connect()V

    .line 119
    iget-object v0, p0, Lc8/Fcq;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 120
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->isOpen()Z

    move-result v0

    return v0
.end method

.method public getConnection()Lc8/wcq;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    return-object v0
.end method

.method public getDraft()Lc8/Gcq;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lc8/Fcq;->draft:Lc8/Gcq;

    return-object v0
.end method

.method public getLocalSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalSocketAddress(Lc8/wcq;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lc8/wcq;

    .prologue
    .line 323
    iget-object v0, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 325
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->getReadyState()Lorg/java_websocket/WebSocket$READYSTATE;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->getRemoteSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteSocketAddress(Lc8/wcq;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p1, "conn"    # Lc8/wcq;

    .prologue
    .line 330
    iget-object v0, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 332
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResourceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public hasBufferedData()Z
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->hasBufferedData()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->isClosing()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isFlushAndClose()Z
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->isFlushAndClose()Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Lc8/zcq;->isOpen()Z

    move-result v0

    return v0
.end method

.method public abstract onClose(ILjava/lang/String;Z)V
.end method

.method public onCloseInitiated(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 312
    return-void
.end method

.method public onClosing(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "remote"    # Z

    .prologue
    .line 315
    return-void
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public onFragment(Lc8/Ocq;)V
    .locals 0
    .param p1, "frame"    # Lc8/Ocq;

    .prologue
    .line 343
    return-void
.end method

.method public abstract onMessage(Ljava/lang/String;)V
.end method

.method public onMessage(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 341
    return-void
.end method

.method public abstract onOpen(Lc8/Xcq;)V
.end method

.method public final onWebsocketClose(Lc8/wcq;ILjava/lang/String;Z)V
    .locals 2
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 275
    iget-object v1, p0, Lc8/Fcq;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 276
    iget-object v1, p0, Lc8/Fcq;->closeLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 277
    iget-object v1, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 280
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p3, p4}, Lc8/Fcq;->onClose(ILjava/lang/String;Z)V

    .line 286
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0, p0, v0}, Lc8/Fcq;->onWebsocketError(Lc8/wcq;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onWebsocketCloseInitiated(Lc8/wcq;ILjava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-virtual {p0, p2, p3}, Lc8/Fcq;->onCloseInitiated(ILjava/lang/String;)V

    .line 304
    return-void
.end method

.method public onWebsocketClosing(Lc8/wcq;ILjava/lang/String;Z)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "remote"    # Z

    .prologue
    .line 308
    invoke-virtual {p0, p2, p3, p4}, Lc8/Fcq;->onClosing(ILjava/lang/String;Z)V

    .line 309
    return-void
.end method

.method public final onWebsocketError(Lc8/wcq;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 293
    invoke-virtual {p0, p2}, Lc8/Fcq;->onError(Ljava/lang/Exception;)V

    .line 294
    return-void
.end method

.method public final onWebsocketMessage(Lc8/wcq;Ljava/lang/String;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 248
    invoke-virtual {p0, p2}, Lc8/Fcq;->onMessage(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public final onWebsocketMessage(Lc8/wcq;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "blob"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 253
    invoke-virtual {p0, p2}, Lc8/Fcq;->onMessage(Ljava/nio/ByteBuffer;)V

    .line 254
    return-void
.end method

.method public onWebsocketMessageFragment(Lc8/wcq;Lc8/Ocq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "frame"    # Lc8/Ocq;

    .prologue
    .line 258
    invoke-virtual {p0, p2}, Lc8/Fcq;->onFragment(Lc8/Ocq;)V

    .line 259
    return-void
.end method

.method public final onWebsocketOpen(Lc8/wcq;Lc8/Vcq;)V
    .locals 1
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "handshake"    # Lc8/Vcq;

    .prologue
    .line 266
    iget-object v0, p0, Lc8/Fcq;->connectLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 267
    check-cast p2, Lc8/Xcq;

    .end local p2    # "handshake":Lc8/Vcq;
    invoke-virtual {p0, p2}, Lc8/Fcq;->onOpen(Lc8/Xcq;)V

    .line 268
    return-void
.end method

.method public final onWriteDemand(Lc8/wcq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;

    .prologue
    .line 299
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 160
    :try_start_0
    iget-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    if-nez v3, :cond_2

    .line 161
    new-instance v3, Ljava/net/Socket;

    iget-object v4, p0, Lc8/Fcq;->proxy:Ljava/net/Proxy;

    invoke-direct {v3, v4}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    iput-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    .line 165
    :cond_0
    iget-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isBound()Z

    move-result v3

    if-nez v3, :cond_1

    .line 166
    iget-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lc8/Fcq;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lc8/Fcq;->getPort()I

    move-result v6

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget v5, p0, Lc8/Fcq;->connectTimeout:I

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 167
    :cond_1
    iget-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lc8/Fcq;->istream:Ljava/io/InputStream;

    .line 168
    iget-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lc8/Fcq;->ostream:Ljava/io/OutputStream;

    .line 170
    invoke-direct {p0}, Lc8/Fcq;->sendHandshake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 177
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lc8/Ecq;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lc8/Ecq;-><init>(Lc8/Fcq;Lc8/Dcq;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    .line 178
    iget-object v3, p0, Lc8/Fcq;->writeThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 180
    sget v3, Lc8/zcq;->RCVBUF:I

    new-array v1, v3, [B

    .line 184
    .local v1, "rawbuffer":[B
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lc8/Fcq;->isClosed()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lc8/Fcq;->istream:Ljava/io/InputStream;

    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, "readBytes":I
    if-eq v2, v7, :cond_4

    .line 185
    iget-object v3, p0, Lc8/Fcq;->engine:Lc8/zcq;

    const/4 v4, 0x0

    invoke-static {v1, v4, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc8/zcq;->decode(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 189
    .end local v2    # "readBytes":I
    :catch_0
    move-exception v3

    iget-object v3, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v3}, Lc8/zcq;->eot()V

    .line 195
    :goto_1
    sget-boolean v3, Lc8/Fcq;->$assertionsDisabled:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 162
    .end local v1    # "rawbuffer":[B
    :cond_2
    :try_start_2
    iget-object v3, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 171
    :catch_1
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {p0, v3, v0}, Lc8/Fcq;->onWebsocketError(Lc8/wcq;Ljava/lang/Exception;)V

    .line 173
    iget-object v3, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7, v4}, Lc8/zcq;->closeConnection(ILjava/lang/String;)V

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 187
    .restart local v1    # "rawbuffer":[B
    :cond_4
    :try_start_3
    iget-object v3, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v3}, Lc8/zcq;->eot()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 190
    :catch_2
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lc8/Fcq;->onError(Ljava/lang/Exception;)V

    .line 193
    iget-object v3, p0, Lc8/Fcq;->engine:Lc8/zcq;

    const/16 v4, 0x3ee

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lc8/zcq;->closeConnection(ILjava/lang/String;)V

    goto :goto_1
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0, p1}, Lc8/zcq;->send(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public send(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0, p1}, Lc8/zcq;->send(Ljava/nio/ByteBuffer;)V

    .line 434
    return-void
.end method

.method public send([B)V
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/NotYetConnectedException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0, p1}, Lc8/zcq;->send([B)V

    .line 156
    return-void
.end method

.method public sendFragmentedFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V
    .locals 1
    .param p1, "op"    # Lorg/java_websocket/framing/Framedata$Opcode;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "fin"    # Z

    .prologue
    .line 383
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0, p1, p2, p3}, Lc8/zcq;->sendFragmentedFrame(Lorg/java_websocket/framing/Framedata$Opcode;Ljava/nio/ByteBuffer;Z)V

    .line 384
    return-void
.end method

.method public sendFrame(Lc8/Ocq;)V
    .locals 1
    .param p1, "framedata"    # Lc8/Ocq;

    .prologue
    .line 438
    iget-object v0, p0, Lc8/Fcq;->engine:Lc8/zcq;

    invoke-virtual {v0, p1}, Lc8/zcq;->sendFrame(Lc8/Ocq;)V

    .line 439
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 366
    :cond_0
    iput-object p1, p0, Lc8/Fcq;->proxy:Ljava/net/Proxy;

    .line 367
    return-void
.end method

.method public setSocket(Ljava/net/Socket;)V
    .locals 2
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 375
    iget-object v0, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "socket has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    iput-object p1, p0, Lc8/Fcq;->socket:Ljava/net/Socket;

    .line 379
    return-void
.end method
