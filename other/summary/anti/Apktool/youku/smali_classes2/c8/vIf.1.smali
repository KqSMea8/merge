.class public Lc8/vIf;
.super Ljava/lang/Object;
.source "CallbackManager.java"

# interfaces
.implements Lc8/inq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/inq",
        "<",
        "Lc8/RJf;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackManager"


# instance fields
.field private callbacks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/QJf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/vIf;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public call(Lc8/RJf;)V
    .locals 6
    .param p1, "pack"    # Lc8/RJf;

    .prologue
    .line 31
    move-object v0, p1

    .line 32
    .local v0, "p":Lc8/RJf;, "Lcom/taobao/tao/messagekit/core/model/Package<Lcom/taobao/tao/messagekit/core/model/Ack;>;"
    new-instance v1, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    .line 33
    .local v1, "result":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v3, "mqtt_type"

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->msgType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string/jumbo v3, "msg_type"

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    invoke-virtual {v2}, Lcom/taobao/tao/messagekit/core/model/Ack;->type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string/jumbo v3, "sub_type"

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->header:Lc8/eyf;

    iget v2, v2, Lc8/eyf;->subType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string/jumbo v3, "type"

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->header:Lc8/eyf;

    iget v2, v2, Lc8/eyf;->subType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string/jumbo v3, "body"

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->body:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v3, "data"

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->data:Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v2, "context"

    iget-object v3, v0, Lc8/RJf;->context:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->header:Lc8/eyf;

    iget-object v3, v2, Lc8/eyf;->messageId:Ljava/lang/String;

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    invoke-virtual {v2}, Lcom/taobao/tao/messagekit/core/model/Ack;->statusCode()I

    move-result v2

    invoke-virtual {p0, v3, v2, v1}, Lc8/vIf;->invokeCallback(Ljava/lang/String;ILjava/util/Map;)Z

    .line 41
    const-string/jumbo v3, "CallbackManager"

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v5, "callback:"

    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    invoke-virtual {v2}, Lcom/taobao/tao/messagekit/core/model/Ack;->statusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v5, 0x2

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->header:Lc8/eyf;

    iget-object v2, v2, Lc8/eyf;->messageId:Ljava/lang/String;

    aput-object v2, v4, v5

    const/4 v2, 0x3

    const-string/jumbo v5, "subType:"

    aput-object v5, v4, v2

    const/4 v5, 0x4

    iget-object v2, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v2, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, v2, Lcom/taobao/tao/messagekit/core/model/Ack;->header:Lc8/eyf;

    iget v2, v2, Lc8/eyf;->subType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lc8/RJf;

    invoke-virtual {p0, p1}, Lc8/vIf;->call(Lc8/RJf;)V

    return-void
.end method

.method public invokeCallback(Ljava/lang/String;ILjava/util/Map;)Z
    .locals 6
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    const-string/jumbo v3, "CallbackManager"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "callback:"

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x2

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    if-nez p1, :cond_0

    .line 69
    :goto_0
    return v1

    .line 59
    :cond_0
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_2

    .line 60
    const-string/jumbo v1, "MKT"

    const-string/jumbo v3, "MKT_MSG_RATE"

    invoke-static {v1, v3}, Lc8/dKf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_1
    iget-object v1, p0, Lc8/vIf;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/QJf;

    .line 65
    .local v0, "callback":Lc8/QJf;
    if-eqz v0, :cond_1

    .line 66
    invoke-interface {v0, p2, p3}, Lc8/QJf;->onResult(ILjava/util/Map;)V

    .line 67
    iget-object v1, p0, Lc8/vIf;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move v1, v2

    .line 69
    goto :goto_0

    .line 62
    .end local v0    # "callback":Lc8/QJf;
    :cond_2
    const-string/jumbo v1, "MKT"

    const-string/jumbo v3, "MKT_MSG_RATE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lc8/dKf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public register(Ljava/lang/String;Lc8/QJf;)Z
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lc8/QJf;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 46
    if-nez p2, :cond_0

    .line 49
    :goto_0
    return v0

    .line 47
    :cond_0
    iget-object v2, p0, Lc8/vIf;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const-string/jumbo v2, "CallbackManager"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "register:"

    aput-object v4, v3, v0

    aput-object p1, v3, v1

    const/4 v0, 0x2

    const-string/jumbo v4, "subType:"

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 49
    goto :goto_0
.end method

.method public unRegister(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 53
    iget-object v0, p0, Lc8/vIf;->callbacks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
