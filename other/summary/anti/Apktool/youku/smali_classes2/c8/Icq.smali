.class public Lc8/Icq;
.super Lc8/Hcq;
.source "Draft_17.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lc8/Hcq;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptHandshakeAsServer(Lc8/Qcq;)Lorg/java_websocket/drafts/Draft$HandshakeState;
    .locals 2
    .param p1, "handshakedata"    # Lc8/Qcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/java_websocket/exceptions/InvalidHandshakeException;
        }
    .end annotation

    .prologue
    .line 10
    invoke-static {p1}, Lc8/Icq;->readVersion(Lc8/Vcq;)I

    move-result v0

    .line 11
    .local v0, "v":I
    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 12
    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    .line 13
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lorg/java_websocket/drafts/Draft$HandshakeState;->NOT_MATCHED:Lorg/java_websocket/drafts/Draft$HandshakeState;

    goto :goto_0
.end method

.method public copyInstance()Lc8/Gcq;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lc8/Icq;

    invoke-direct {v0}, Lc8/Icq;-><init>()V

    return-object v0
.end method

.method public postProcessHandshakeRequestAsClient(Lc8/Rcq;)Lc8/Rcq;
    .locals 2
    .param p1, "request"    # Lc8/Rcq;

    .prologue
    .line 18
    invoke-super {p0, p1}, Lc8/Hcq;->postProcessHandshakeRequestAsClient(Lc8/Rcq;)Lc8/Rcq;

    .line 19
    const-string/jumbo v0, "Sec-WebSocket-Version"

    const-string/jumbo v1, "13"

    invoke-interface {p1, v0, v1}, Lc8/Rcq;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object p1
.end method
