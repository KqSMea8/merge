.class public Lc8/EIf;
.super Ljava/lang/Object;
.source "ReplyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReplyManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Lc8/RJf;)Z
    .locals 6
    .param p0, "p"    # Lc8/RJf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    iget-object v3, p0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->type()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->needACK()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 27
    :goto_0
    return v1

    .line 22
    :cond_1
    new-instance v0, Lc8/RJf;

    invoke-direct {v0, p0}, Lc8/RJf;-><init>(Lc8/RJf;)V

    .line 23
    .local v0, "send":Lc8/RJf;
    new-instance v3, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v4, p0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-direct {v3, v4}, Lcom/taobao/tao/messagekit/core/model/Ack;-><init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V

    iput-object v3, v0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 24
    const-string/jumbo v3, "ReplyManager"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "reply ack >"

    aput-object v5, v4, v2

    iget-object v2, p0, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v2}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->routerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Lc8/ZJf;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-string/jumbo v2, "ReplyManager"

    invoke-static {v2, v0}, Lc8/ZJf;->d(Ljava/lang/String;Lc8/RJf;)V

    .line 26
    invoke-static {v0}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v2

    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/DIf;->getUpStream()Lc8/VJf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    goto :goto_0
.end method
