.class public Lc8/CWf;
.super Lc8/ZUf;
.source "WebSocketModule.java"


# static fields
.field private static final KEY_CODE:Ljava/lang/String; = "code"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_REASON:Ljava/lang/String; = "reason"

.field private static final KEY_WAS_CLEAN:Ljava/lang/String; = "wasClean"

.field private static final TAG:Ljava/lang/String; = "WebSocketModule"


# instance fields
.field private eventListener:Lc8/yWf;

.field private onClose:Lc8/EWf;

.field private onError:Lc8/EWf;

.field private onMessage:Lc8/EWf;

.field private onOpen:Lc8/EWf;

.field private webSocketAdapter:Lc8/zWf;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/ZUf;-><init>()V

    .line 46
    new-instance v0, Lc8/BWf;

    invoke-direct {v0, p0}, Lc8/BWf;-><init>(Lc8/CWf;)V

    iput-object v0, p0, Lc8/CWf;->eventListener:Lc8/yWf;

    return-void
.end method

.method static synthetic access$000(Lc8/CWf;)Lc8/EWf;
    .locals 1
    .param p0, "x0"    # Lc8/CWf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/CWf;->onOpen:Lc8/EWf;

    return-object v0
.end method

.method static synthetic access$100(Lc8/CWf;)Lc8/EWf;
    .locals 1
    .param p0, "x0"    # Lc8/CWf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/CWf;->onMessage:Lc8/EWf;

    return-object v0
.end method

.method static synthetic access$200(Lc8/CWf;)Lc8/EWf;
    .locals 1
    .param p0, "x0"    # Lc8/CWf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/CWf;->onClose:Lc8/EWf;

    return-object v0
.end method

.method static synthetic access$300(Lc8/CWf;)Lc8/EWf;
    .locals 1
    .param p0, "x0"    # Lc8/CWf;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/CWf;->onError:Lc8/EWf;

    return-object v0
.end method

.method private reportErrorIfNoAdapter()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    if-nez v0, :cond_1

    .line 147
    iget-object v0, p0, Lc8/CWf;->eventListener:Lc8/yWf;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lc8/CWf;->eventListener:Lc8/yWf;

    const-string/jumbo v1, "No implementation found for IWebSocketAdapter"

    invoke-interface {v0, v1}, Lc8/yWf;->onError(Ljava/lang/String;)V

    .line 150
    :cond_0
    const-string/jumbo v0, "WebSocketModule"

    const-string/jumbo v1, "No implementation found for IWebSocketAdapter"

    invoke-static {v0, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public WebSocket(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "protocol"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v1

    sget-object v2, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_GOING_AWAY:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v2}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/zWf;->close(ILjava/lang/String;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lc8/CWf;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getWXWebSocketAdapter()Lc8/zWf;

    move-result-object v0

    iput-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    .line 90
    invoke-direct {p0}, Lc8/CWf;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    iget-object v1, p0, Lc8/CWf;->eventListener:Lc8/yWf;

    invoke-interface {v0, p1, p2, v1}, Lc8/zWf;->connect(Ljava/lang/String;Ljava/lang/String;Lc8/yWf;)V

    .line 93
    :cond_1
    return-void
.end method

.method public close(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0}, Lc8/CWf;->reportErrorIfNoAdapter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    sget-object v1, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->CLOSE_NORMAL:Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;

    invoke-virtual {v1}, Lcom/taobao/weex/appfram/websocket/WebSocketCloseCodes;->getCode()I

    move-result v0

    .line 106
    .local v0, "codeNumber":I
    if-eqz p1, :cond_0

    .line 108
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 113
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    invoke-interface {v1, v0, p2}, Lc8/zWf;->close(ILjava/lang/String;)V

    .line 115
    .end local v0    # "codeNumber":I
    :cond_1
    return-void

    .restart local v0    # "codeNumber":I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    invoke-interface {v0}, Lc8/zWf;->destroy()V

    .line 142
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/CWf;->eventListener:Lc8/yWf;

    .line 143
    return-void
.end method

.method public onclose(Lc8/EWf;)V
    .locals 0
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 129
    iput-object p1, p0, Lc8/CWf;->onClose:Lc8/EWf;

    .line 130
    return-void
.end method

.method public onerror(Lc8/EWf;)V
    .locals 0
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 134
    iput-object p1, p0, Lc8/CWf;->onError:Lc8/EWf;

    .line 135
    return-void
.end method

.method public onmessage(Lc8/EWf;)V
    .locals 0
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lc8/CWf;->onMessage:Lc8/EWf;

    .line 125
    return-void
.end method

.method public onopen(Lc8/EWf;)V
    .locals 0
    .param p1, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 119
    iput-object p1, p0, Lc8/CWf;->onOpen:Lc8/EWf;

    .line 120
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lc8/CWf;->reportErrorIfNoAdapter()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/CWf;->webSocketAdapter:Lc8/zWf;

    invoke-interface {v0, p1}, Lc8/zWf;->send(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method
