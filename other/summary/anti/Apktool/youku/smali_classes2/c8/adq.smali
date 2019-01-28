.class public Lc8/adq;
.super Ljava/lang/Object;
.source "DefaultWebSocketServerFactory.java"

# interfaces
.implements Lc8/bdq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createWebSocket(Lc8/xcq;Lc8/Gcq;Ljava/net/Socket;)Lc8/wcq;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lc8/adq;->createWebSocket(Lc8/xcq;Lc8/Gcq;Ljava/net/Socket;)Lc8/zcq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic createWebSocket(Lc8/xcq;Ljava/util/List;Ljava/net/Socket;)Lc8/wcq;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lc8/adq;->createWebSocket(Lc8/xcq;Ljava/util/List;Ljava/net/Socket;)Lc8/zcq;

    move-result-object v0

    return-object v0
.end method

.method public createWebSocket(Lc8/xcq;Lc8/Gcq;Ljava/net/Socket;)Lc8/zcq;
    .locals 1
    .param p1, "a"    # Lc8/xcq;
    .param p2, "d"    # Lc8/Gcq;
    .param p3, "s"    # Ljava/net/Socket;

    .prologue
    .line 16
    new-instance v0, Lc8/zcq;

    invoke-direct {v0, p1, p2}, Lc8/zcq;-><init>(Lc8/Acq;Lc8/Gcq;)V

    return-object v0
.end method

.method public createWebSocket(Lc8/xcq;Ljava/util/List;Ljava/net/Socket;)Lc8/zcq;
    .locals 1
    .param p1, "a"    # Lc8/xcq;
    .param p3, "s"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/xcq;",
            "Ljava/util/List",
            "<",
            "Lc8/Gcq;",
            ">;",
            "Ljava/net/Socket;",
            ")",
            "Lc8/zcq;"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "d":Ljava/util/List;, "Ljava/util/List<Lorg/java_websocket/drafts/Draft;>;"
    new-instance v0, Lc8/zcq;

    invoke-direct {v0, p1, p2}, Lc8/zcq;-><init>(Lc8/Acq;Ljava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2}, Lc8/adq;->wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    return-object v0
.end method

.method public wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/SocketChannel;
    .locals 0
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "key"    # Ljava/nio/channels/SelectionKey;

    .prologue
    .line 24
    return-object p1
.end method
