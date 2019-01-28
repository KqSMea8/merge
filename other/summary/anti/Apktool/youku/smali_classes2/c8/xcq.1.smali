.class public abstract Lc8/xcq;
.super Ljava/lang/Object;
.source "WebSocketAdapter.java"

# interfaces
.implements Lc8/Acq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFlashPolicy(Lc8/wcq;)Ljava/lang/String;
    .locals 4
    .param p1, "conn"    # Lc8/wcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-interface {p1}, Lc8/wcq;->getLocalSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 92
    .local v0, "adr":Ljava/net/InetSocketAddress;
    if-nez v0, :cond_0

    .line 93
    new-instance v2, Lorg/java_websocket/exceptions/InvalidHandshakeException;

    const-string/jumbo v3, "socket not bound"

    invoke-direct {v2, v3}, Lorg/java_websocket/exceptions/InvalidHandshakeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x5a

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 97
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 99
    const-string/jumbo v2, "\" /></cross-domain-policy>\u0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public onWebsocketHandshakeReceivedAsClient(Lc8/wcq;Lc8/Qcq;Lc8/Xcq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "request"    # Lc8/Qcq;
    .param p3, "response"    # Lc8/Xcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 33
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
    .line 28
    new-instance v0, Lc8/Ucq;

    invoke-direct {v0}, Lc8/Ucq;-><init>()V

    return-object v0
.end method

.method public onWebsocketHandshakeSentAsClient(Lc8/wcq;Lc8/Qcq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "request"    # Lc8/Qcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidDataException;
        }
    .end annotation

    .prologue
    .line 42
    return-void
.end method

.method public onWebsocketMessageFragment(Lc8/wcq;Lc8/Ocq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "frame"    # Lc8/Ocq;

    .prologue
    .line 51
    return-void
.end method

.method public onWebsocketPing(Lc8/wcq;Lc8/Ocq;)V
    .locals 2
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "f"    # Lc8/Ocq;

    .prologue
    .line 61
    new-instance v0, Lc8/Pcq;

    invoke-direct {v0, p2}, Lc8/Pcq;-><init>(Lc8/Ocq;)V

    .line 62
    .local v0, "resp":Lc8/Pcq;
    sget-object v1, Lorg/java_websocket/framing/Framedata$Opcode;->PONG:Lorg/java_websocket/framing/Framedata$Opcode;

    invoke-virtual {v0, v1}, Lc8/Pcq;->setOptcode(Lorg/java_websocket/framing/Framedata$Opcode;)V

    .line 63
    invoke-interface {p1, v0}, Lc8/wcq;->sendFrame(Lc8/Ocq;)V

    .line 64
    return-void
.end method

.method public onWebsocketPong(Lc8/wcq;Lc8/Ocq;)V
    .locals 0
    .param p1, "conn"    # Lc8/wcq;
    .param p2, "f"    # Lc8/Ocq;

    .prologue
    .line 73
    return-void
.end method
