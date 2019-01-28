.class public Lc8/vcq;
.super Ljava/lang/Object;
.source "SocketChannelIOHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static batch(Lc8/zcq;Ljava/nio/channels/ByteChannel;)Z
    .locals 6
    .param p0, "ws"    # Lc8/zcq;
    .param p1, "sockchannel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 42
    iget-object v4, p0, Lc8/zcq;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 43
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 45
    .local v1, "c":Lc8/Bcq;
    if-nez v0, :cond_3

    .line 46
    instance-of v4, p1, Lc8/Bcq;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 47
    check-cast v1, Lc8/Bcq;

    .line 48
    invoke-interface {v1}, Lc8/Bcq;->isNeedWrite()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    invoke-interface {v1}, Lc8/Bcq;->writeMore()V

    .line 64
    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    iget-object v4, p0, Lc8/zcq;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lc8/zcq;->isFlushAndClose()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lc8/zcq;->getDraft()Lc8/Gcq;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lc8/zcq;->getDraft()Lc8/Gcq;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Gcq;->getRole()Lorg/java_websocket/WebSocket$Role;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lc8/zcq;->getDraft()Lc8/Gcq;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Gcq;->getRole()Lorg/java_websocket/WebSocket$Role;

    move-result-object v4

    sget-object v5, Lorg/java_websocket/WebSocket$Role;->SERVER:Lorg/java_websocket/WebSocket$Role;

    if-ne v4, v5, :cond_1

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Lc8/zcq;->closeConnection()V

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    if-eqz v1, :cond_2

    check-cast p1, Lc8/Bcq;

    .end local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    invoke-interface {p1}, Lc8/Bcq;->isNeedWrite()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_2
    :goto_1
    return v2

    .line 54
    .restart local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    :cond_3
    invoke-interface {p1, v0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 55
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_4

    move v2, v3

    .line 56
    goto :goto_1

    .line 58
    :cond_4
    iget-object v4, p0, Lc8/zcq;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    .line 59
    iget-object v4, p0, Lc8/zcq;->outQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 61
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_3

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local p1    # "sockchannel":Ljava/nio/channels/ByteChannel;
    :cond_5
    move v2, v3

    .line 69
    goto :goto_1
.end method

.method public static read(Ljava/nio/ByteBuffer;Lc8/zcq;Ljava/nio/channels/ByteChannel;)Z
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lc8/zcq;
    .param p2, "channel"    # Ljava/nio/channels/ByteChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 14
    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 15
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 17
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 18
    invoke-virtual {p1}, Lc8/zcq;->eot()V

    .line 21
    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static readMore(Ljava/nio/ByteBuffer;Lc8/zcq;Lc8/Bcq;)Z
    .locals 2
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "ws"    # Lc8/zcq;
    .param p2, "channel"    # Lc8/Bcq;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 30
    invoke-interface {p2, p0}, Lc8/Bcq;->readMore(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 31
    .local v0, "read":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 33
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-virtual {p1}, Lc8/zcq;->eot()V

    .line 35
    const/4 v1, 0x0

    .line 37
    :goto_0
    return v1

    :cond_0
    invoke-interface {p2}, Lc8/Bcq;->isNeedRead()Z

    move-result v1

    goto :goto_0
.end method
