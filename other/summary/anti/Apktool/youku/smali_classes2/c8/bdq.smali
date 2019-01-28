.class public interface abstract Lc8/bdq;
.super Ljava/lang/Object;
.source "WebSocketServer.java"

# interfaces
.implements Lc8/ycq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/edq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebSocketServerFactory"
.end annotation


# virtual methods
.method public abstract createWebSocket(Lc8/xcq;Lc8/Gcq;Ljava/net/Socket;)Lc8/zcq;
.end method

.method public abstract createWebSocket(Lc8/xcq;Ljava/util/List;Ljava/net/Socket;)Lc8/zcq;
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
.end method

.method public abstract wrapChannel(Ljava/nio/channels/SocketChannel;Ljava/nio/channels/SelectionKey;)Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
