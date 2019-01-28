.class public Lc8/FIf;
.super Ljava/lang/Object;
.source "ResponseManager.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/GIf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Wlq",
        "<",
        "Lc8/RJf;",
        ">;"
    }
.end annotation


# instance fields
.field public item:Lc8/RJf;

.field public subscription:Lc8/Pmq;


# direct methods
.method public constructor <init>(Lc8/RJf;)V
    .locals 0
    .param p1, "item"    # Lc8/RJf;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lc8/FIf;->item:Lc8/RJf;

    .line 82
    return-void
.end method

.method private endUp(Lc8/RJf;)V
    .locals 6
    .param p1, "o"    # Lc8/RJf;

    .prologue
    .line 139
    iget-object v2, p0, Lc8/FIf;->subscription:Lc8/Pmq;

    invoke-interface {v2}, Lc8/Pmq;->unsubscribe()V

    .line 140
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v2

    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/DIf;->getControlStream()Lc8/VJf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    .local v0, "now":J
    iget-object v2, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-object v3, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-wide v4, v3, Lc8/RJf;->netTime:J

    sub-long v4, v0, v4

    iput-wide v4, v2, Lc8/RJf;->netTime:J

    .line 143
    iget-object v2, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-object v3, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-object v3, v3, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->createTime()J

    move-result-wide v4

    sub-long v4, v0, v4

    iput-wide v4, v2, Lc8/RJf;->alongTime:J

    .line 144
    iget-object v2, p0, Lc8/FIf;->item:Lc8/RJf;

    invoke-static {v2}, Lc8/dKf;->commitMonitor(Lc8/RJf;)V

    .line 145
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v2

    iget-object v3, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-object v3, v3, Lc8/RJf;->dataId:Ljava/lang/String;

    iget-object v4, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-object v4, v4, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v4}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lc8/GIf;->pop(Ljava/lang/String;Ljava/lang/String;)Lc8/FIf;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v1, Lc8/RJf;

    iget-object v2, p0, Lc8/FIf;->item:Lc8/RJf;

    invoke-direct {v1, v2}, Lc8/RJf;-><init>(Lc8/RJf;)V

    .line 94
    .local v1, "o":Lc8/RJf;
    new-instance v0, Lcom/taobao/tao/messagekit/core/model/Ack;

    iget-object v2, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-object v2, v2, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-direct {v0, v2}, Lcom/taobao/tao/messagekit/core/model/Ack;-><init>(Lcom/taobao/tao/messagekit/core/model/IProtocol;)V

    .line 95
    .local v0, "ack":Lcom/taobao/tao/messagekit/core/model/Ack;
    const/16 v2, -0xbb9

    invoke-virtual {v0, v2}, Lcom/taobao/tao/messagekit/core/model/Ack;->setStatus(I)V

    .line 96
    iput-object v0, v1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 97
    invoke-static {v1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v2

    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/DIf;->getControlStream()Lc8/VJf;

    move-result-object v3

    invoke-virtual {v2, v3}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 98
    const-string/jumbo v2, "ResponseManager"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "timeout:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/Ack;->statusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "topic:"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/Ack;->topic()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .end local v0    # "ack":Lcom/taobao/tao/messagekit/core/model/Ack;
    .end local v1    # "o":Lc8/RJf;
    :cond_0
    return-void
.end method

.method public onNext(Lc8/RJf;)V
    .locals 6
    .param p1, "o"    # Lc8/RJf;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    check-cast v0, Lcom/taobao/tao/messagekit/core/model/Ack;

    .line 106
    .local v0, "ack":Lcom/taobao/tao/messagekit/core/model/Ack;
    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/Ack;->statusCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 131
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v1

    iget-object v2, p1, Lc8/RJf;->dataId:Ljava/lang/String;

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/GIf;->pop(Ljava/lang/String;Ljava/lang/String;)Lc8/FIf;

    .line 132
    invoke-direct {p0, p1}, Lc8/FIf;->endUp(Lc8/RJf;)V

    .line 135
    :cond_1
    :goto_1
    const-string/jumbo v1, "ResponseManager"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "dataId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lc8/RJf;->dataId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "msgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/Ack;->getID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "status:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/Ack;->statusCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "topic:"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/Ack;->topic()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/ZJf;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :sswitch_0
    invoke-virtual {v0}, Lcom/taobao/tao/messagekit/core/model/Ack;->needACK()Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/taobao/tao/messagekit/core/model/Ack;->setStatus(I)V

    .line 110
    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/DIf;->getResponseManager()Lc8/GIf;

    move-result-object v1

    iget-object v2, p1, Lc8/RJf;->dataId:Ljava/lang/String;

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lc8/GIf;->pop(Ljava/lang/String;Ljava/lang/String;)Lc8/FIf;

    .line 111
    invoke-direct {p0, p1}, Lc8/FIf;->endUp(Lc8/RJf;)V

    goto :goto_1

    .line 118
    :sswitch_1
    iget-object v1, p0, Lc8/FIf;->item:Lc8/RJf;

    iget-wide v2, v1, Lc8/RJf;->packTime:J

    iget-wide v4, p1, Lc8/RJf;->packTime:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lc8/RJf;->packTime:J

    .line 119
    invoke-static {p1}, Lc8/Vlq;->just(Ljava/lang/Object;)Lc8/Vlq;

    move-result-object v1

    invoke-static {}, Lc8/DIf;->getInstance()Lc8/DIf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/DIf;->getControlStream()Lc8/VJf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Vlq;->subscribe(Lc8/Wlq;)Lc8/Pmq;

    .line 120
    invoke-direct {p0, p1}, Lc8/FIf;->endUp(Lc8/RJf;)V

    goto/16 :goto_1

    .line 106
    :sswitch_data_0
    .sparse-switch
        -0x7530 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p1, Lc8/RJf;

    invoke-virtual {p0, p1}, Lc8/FIf;->onNext(Lc8/RJf;)V

    return-void
.end method
