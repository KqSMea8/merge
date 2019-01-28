.class public Lc8/ZJf;
.super Ljava/lang/Object;
.source "MsgLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/YJf;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "MESSAGES_"

.field private static log:Lc8/YJf;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method private static varargs assembleThrowableMessage(Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "tr"    # Ljava/lang/Throwable;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lc8/ZJf;->buildString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs buildString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v1, "msg":Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    .line 90
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 91
    .local v0, "message":Ljava/lang/Object;
    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "message":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static d(Ljava/lang/String;Lc8/RJf;)V
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "p"    # Lc8/RJf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    const/4 v0, 0x0

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "msg:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lc8/RJf;->sysCode:I

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "biz:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 34
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->bizCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "topic:"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 35
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->topic()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "mqtt:"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 36
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->msgType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "type:"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 37
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->type()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "subType:"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 38
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->subType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "ack:"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 39
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->needACK()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "router:"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 40
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->routerId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "usr"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 41
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->userId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "qos"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 42
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->qosLevel()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "tag"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    iget-object v3, p1, Lc8/RJf;->tag:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "mid:"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    iget-object v3, p1, Lc8/RJf;->msg:Lcom/taobao/tao/messagekit/core/model/IProtocol;

    .line 44
    invoke-interface {v3}, Lcom/taobao/tao/messagekit/core/model/IProtocol;->getID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "dataid"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    iget-object v3, p1, Lc8/RJf;->dataId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "source"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    iget v3, p1, Lc8/RJf;->dataSourceType:I

    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 32
    invoke-static {p0, v0, v1}, Lc8/ZJf;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 55
    invoke-static {}, Lc8/ZJf;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZJf;->assembleThrowableMessage(Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/YJf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/ZJf;->d(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 79
    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZJf;->assembleThrowableMessage(Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/YJf;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/ZJf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 63
    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZJf;->assembleThrowableMessage(Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/YJf;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/ZJf;->i(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lc8/PJf;->isDebug()Z

    move-result v0

    return v0
.end method

.method public static setLog(Lc8/YJf;)V
    .locals 0
    .param p0, "log"    # Lc8/YJf;

    .prologue
    .line 20
    sput-object p0, Lc8/ZJf;->log:Lc8/YJf;

    .line 21
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 28
    invoke-static {}, Lc8/ZJf;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZJf;->assembleThrowableMessage(Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/YJf;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/ZJf;->v(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 71
    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    if-eqz v0, :cond_0

    sget-object v0, Lc8/ZJf;->log:Lc8/YJf;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MESSAGES_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2}, Lc8/ZJf;->assembleThrowableMessage(Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc8/YJf;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "messages"    # [Ljava/lang/Object;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lc8/ZJf;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    return-void
.end method
