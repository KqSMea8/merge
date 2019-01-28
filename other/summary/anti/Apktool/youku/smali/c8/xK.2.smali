.class public Lc8/xK;
.super Lc8/mK;
.source "TnetSpdySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/session/TnetSpdySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestCallback"
.end annotation


# instance fields
.field private callback:Lc8/VI;

.field private mSRT:J

.field private request:Lc8/eK;

.field final synthetic this$0:Lanet/channel/session/TnetSpdySession;


# direct methods
.method public constructor <init>(Lanet/channel/session/TnetSpdySession;Lc8/eK;Lc8/VI;)V
    .locals 2
    .param p2, "request"    # Lc8/eK;
    .param p3, "cb"    # Lc8/VI;

    .prologue
    .line 631
    iput-object p1, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-direct {p0}, Lc8/mK;-><init>()V

    .line 630
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/xK;->mSRT:J

    .line 632
    iput-object p2, p0, Lc8/xK;->request:Lc8/eK;

    .line 633
    iput-object p3, p0, Lc8/xK;->callback:Lc8/VI;

    .line 634
    return-void
.end method

.method private collectStatisticData(Lorg/android/spdy/SuperviseData;)V
    .locals 6
    .param p1, "data"    # Lorg/android/spdy/SuperviseData;

    .prologue
    .line 684
    :try_start_0
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p0, Lc8/xK;->mSRT:J

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 685
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v1, v1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v1, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 687
    if-eqz p1, :cond_0

    .line 688
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->sendStart:J

    iget-wide v4, p1, Lorg/android/spdy/SuperviseData;->requestStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 690
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->sendEnd:J

    iget-object v1, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v1, v1, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v4, v1, Lanet/channel/statist/RequestStatistic;->sendStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    .line 691
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->responseStart:J

    iget-wide v4, p1, Lorg/android/spdy/SuperviseData;->sendEnd:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    .line 692
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, p1, Lorg/android/spdy/SuperviseData;->responseEnd:J

    iget-wide v4, p1, Lorg/android/spdy/SuperviseData;->responseStart:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    .line 694
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget v2, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    .line 695
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    iget v2, p1, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    add-int/2addr v1, v2

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    .line 697
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->uncompressSize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->reqHeadInflateSize:J

    .line 698
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->reqHeadDeflateSize:J

    .line 699
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->reqBodyInflateSize:J

    .line 700
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->reqBodyDeflateSize:J

    .line 702
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->rspHeadDeflateSize:J

    .line 703
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvUncompressSize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->rspHeadInflateSize:J

    .line 704
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->rspBodyDeflateSize:J

    .line 705
    iget-object v0, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v0, v0, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    int-to-long v2, v1

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->rspBodyInflateSize:J

    .line 708
    iget-object v0, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    iget v1, p1, Lorg/android/spdy/SuperviseData;->recvBodySize:I

    iget v4, p1, Lorg/android/spdy/SuperviseData;->recvCompressSize:I

    add-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->recvSizeCount:J

    .line 709
    iget-object v0, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v0, v0, Lanet/channel/session/TnetSpdySession;->mSessionStat:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J

    iget v1, p1, Lorg/android/spdy/SuperviseData;->bodySize:I

    iget v4, p1, Lorg/android/spdy/SuperviseData;->compressSize:I

    add-int/2addr v1, v4

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->sendSizeCount:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public spdyDataChunkRecvCB(Lorg/android/spdy/SpdySession;ZJLorg/android/spdy/SpdyByteArray;Ljava/lang/Object;)V
    .locals 7
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "fin"    # Z
    .param p3, "streamId"    # J
    .param p5, "data"    # Lorg/android/spdy/SpdyByteArray;
    .param p6, "streamUserData"    # Ljava/lang/Object;

    .prologue
    .line 639
    const-string/jumbo v1, "awcn.TnetSpdySession"

    const-string/jumbo v2, "spdyDataChunkRecvCB"

    iget-object v3, p0, Lc8/xK;->request:Lc8/eK;

    invoke-virtual {v3}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "len"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "fin"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-object v1, p0, Lc8/xK;->callback:Lc8/VI;

    if-eqz v1, :cond_0

    .line 641
    invoke-static {}, Lc8/uJ;->getInstance()Lc8/uJ;

    move-result-object v1

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getByteArray()[B

    move-result-object v2

    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->getDataLength()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lc8/uJ;->retrieveAndCopy([BI)Lanet/channel/bytes/ByteArray;

    move-result-object v0

    .line 642
    .local v0, "byteArray":Lanet/channel/bytes/ByteArray;
    invoke-virtual {p5}, Lorg/android/spdy/SpdyByteArray;->recycle()V

    .line 643
    iget-object v1, p0, Lc8/xK;->callback:Lc8/VI;

    invoke-interface {v1, v0, p2}, Lc8/VI;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    .line 645
    .end local v0    # "byteArray":Lanet/channel/bytes/ByteArray;
    :cond_0
    iget-object v1, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    sget-object v2, Lanet/channel/entity/EventType;->DATA_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lanet/channel/session/TnetSpdySession;->access$400(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lc8/EJ;)V

    .line 646
    return-void
.end method

.method public spdyOnStreamResponse(Lorg/android/spdy/SpdySession;JLjava/util/Map;Ljava/lang/Object;)V
    .locals 10
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/android/spdy/SpdySession;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 719
    const/4 v0, 0x0

    .line 722
    .local v0, "httpStatusCode":I
    :try_start_0
    const-string/jumbo v2, ":status"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 723
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 724
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 729
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 730
    iget-object v2, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iput v8, v2, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 731
    iget-object v2, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {v2, v7}, Lanet/channel/session/TnetSpdySession;->access$502(Lanet/channel/session/TnetSpdySession;I)I

    .line 734
    :cond_1
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lc8/xK;->request:Lc8/eK;

    invoke-virtual {v4}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "httpStatusCode"

    aput-object v6, v5, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    const-string/jumbo v2, "awcn.TnetSpdySession"

    const-string/jumbo v3, ""

    iget-object v4, p0, Lc8/xK;->request:Lc8/eK;

    invoke-virtual {v4}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    const-string/jumbo v6, "response headers"

    aput-object v6, v5, v7

    aput-object p4, v5, v8

    invoke-static {v2, v3, v4, v5}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    iget-object v2, p0, Lc8/xK;->callback:Lc8/VI;

    if-eqz v2, :cond_2

    .line 738
    iget-object v2, p0, Lc8/xK;->callback:Lc8/VI;

    invoke-static {p4}, Lc8/RL;->cloneMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lc8/VI;->onResponseCode(ILjava/util/Map;)V

    .line 741
    :cond_2
    iget-object v2, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    sget-object v3, Lanet/channel/entity/EventType;->HEADER_RECEIVE:Lanet/channel/entity/EventType;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lanet/channel/session/TnetSpdySession;->access$800(Lanet/channel/session/TnetSpdySession;Lanet/channel/entity/EventType;Lc8/EJ;)V

    .line 743
    iget-object v2, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    const-string/jumbo v3, "Content-Encoding"

    invoke-static {p4, v3}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lanet/channel/statist/RequestStatistic;->contentEncoding:Ljava/lang/String;

    .line 744
    invoke-static {p4}, Lc8/RL;->parseServerRT(Ljava/util/Map;)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/xK;->mSRT:J

    .line 745
    iget-object v2, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v3, p0, Lc8/xK;->request:Lc8/eK;

    invoke-static {v2, v3, v0}, Lanet/channel/session/TnetSpdySession;->access$900(Lanet/channel/session/TnetSpdySession;Lc8/eK;I)V

    .line 746
    iget-object v2, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    iget-object v3, p0, Lc8/xK;->request:Lc8/eK;

    invoke-static {v2, v3, p4}, Lanet/channel/session/TnetSpdySession;->access$1000(Lanet/channel/session/TnetSpdySession;Lc8/eK;Ljava/util/Map;)V

    .line 747
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public spdyStreamCloseCallback(Lorg/android/spdy/SpdySession;JILjava/lang/Object;Lorg/android/spdy/SuperviseData;)V
    .locals 12
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "streamId"    # J
    .param p4, "statusCode"    # I
    .param p5, "streamUserData"    # Ljava/lang/Object;
    .param p6, "data"    # Lorg/android/spdy/SuperviseData;

    .prologue
    .line 650
    const-string/jumbo v4, "awcn.TnetSpdySession"

    const-string/jumbo v5, "spdyStreamCloseCallback"

    iget-object v6, p0, Lc8/xK;->request:Lc8/eK;

    invoke-virtual {v6}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "streamId"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 651
    move-object/from16 v0, p6

    invoke-direct {p0, v0}, Lc8/xK;->collectStatisticData(Lorg/android/spdy/SuperviseData;)V

    .line 653
    const/4 v1, 0x0

    .line 654
    .local v1, "code":I
    const-string/jumbo v3, "SUCCESS"

    .line 655
    .local v3, "msg":Ljava/lang/String;
    if-eqz p4, :cond_1

    .line 656
    const/16 v1, -0x130

    .line 657
    const/16 v4, -0x130

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/PL;->formatMsg(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 659
    const/16 v4, -0x7d5

    move/from16 v0, p4

    if-eq v0, v4, :cond_0

    .line 660
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v4

    new-instance v5, Lanet/channel/statist/ExceptionStatistic;

    const/16 v6, -0x12c

    iget-object v7, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v7, v7, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 663
    :cond_0
    const-string/jumbo v4, "awcn.TnetSpdySession"

    const-string/jumbo v5, "spdyStreamCloseCallback error"

    iget-object v6, p0, Lc8/xK;->request:Lc8/eK;

    invoke-virtual {v6}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "status code"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    :cond_1
    iget-object v4, p0, Lc8/xK;->callback:Lc8/VI;

    if-eqz v4, :cond_2

    .line 667
    iget-object v4, p0, Lc8/xK;->callback:Lc8/VI;

    iget-object v5, p0, Lc8/xK;->request:Lc8/eK;

    iget-object v5, v5, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    invoke-interface {v4, v1, v3, v5}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 671
    :cond_2
    const/16 v4, -0x7d4

    move/from16 v0, p4

    if-ne v0, v4, :cond_3

    .line 672
    iget-object v4, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {v4}, Lanet/channel/session/TnetSpdySession;->access$504(Lanet/channel/session/TnetSpdySession;)I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 673
    new-instance v2, Lc8/JK;

    invoke-direct {v2}, Lc8/JK;-><init>()V

    .line 674
    .local v2, "connEvent":Lc8/JK;
    const/4 v4, 0x0

    iput-boolean v4, v2, Lc8/JK;->isSuccess:Z

    .line 675
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v4

    iget-object v5, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {v5}, Lanet/channel/session/TnetSpdySession;->access$600(Lanet/channel/session/TnetSpdySession;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    invoke-static {v6}, Lanet/channel/session/TnetSpdySession;->access$700(Lanet/channel/session/TnetSpdySession;)Lanet/channel/strategy/IConnStrategy;

    move-result-object v6

    invoke-interface {v4, v5, v6, v2}, Lc8/MK;->notifyConnEvent(Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;Lc8/JK;)V

    .line 676
    iget-object v4, p0, Lc8/xK;->this$0:Lanet/channel/session/TnetSpdySession;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lanet/channel/session/TnetSpdySession;->close(Z)V

    .line 679
    .end local v2    # "connEvent":Lc8/JK;
    :cond_3
    return-void
.end method
