.class public interface abstract Lc8/Acq;
.super Ljava/lang/Object;
.source "WebSocketListener.java"


# virtual methods
.method public abstract getFlashPolicy(Lc8/wcq;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract getLocalSocketAddress(Lc8/wcq;)Ljava/net/InetSocketAddress;
.end method

.method public abstract getRemoteSocketAddress(Lc8/wcq;)Ljava/net/InetSocketAddress;
.end method

.method public abstract onWebsocketClose(Lc8/wcq;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketCloseInitiated(Lc8/wcq;ILjava/lang/String;)V
.end method

.method public abstract onWebsocketClosing(Lc8/wcq;ILjava/lang/String;Z)V
.end method

.method public abstract onWebsocketError(Lc8/wcq;Ljava/lang/Exception;)V
.end method

.method public abstract onWebsocketHandshakeReceivedAsClient(Lc8/wcq;Lc8/Qcq;Lc8/Xcq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeReceivedAsServer(Lc8/wcq;Lc8/Gcq;Lc8/Qcq;)Lc8/Ycq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketHandshakeSentAsClient(Lc8/wcq;Lc8/Qcq;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation
.end method

.method public abstract onWebsocketMessage(Lc8/wcq;Ljava/lang/String;)V
.end method

.method public abstract onWebsocketMessage(Lc8/wcq;Ljava/nio/ByteBuffer;)V
.end method

.method public abstract onWebsocketMessageFragment(Lc8/wcq;Lc8/Ocq;)V
.end method

.method public abstract onWebsocketOpen(Lc8/wcq;Lc8/Vcq;)V
.end method

.method public abstract onWebsocketPing(Lc8/wcq;Lc8/Ocq;)V
.end method

.method public abstract onWebsocketPong(Lc8/wcq;Lc8/Ocq;)V
.end method

.method public abstract onWriteDemand(Lc8/wcq;)V
.end method
