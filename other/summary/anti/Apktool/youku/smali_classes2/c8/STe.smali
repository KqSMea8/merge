.class public Lc8/STe;
.super Lc8/rTe;
.source "FramedConnection.java"

# interfaces
.implements Lc8/CTe;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/TTe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reader"
.end annotation


# instance fields
.field final frameReader:Lc8/DTe;

.field final synthetic this$0:Lc8/TTe;


# direct methods
.method private constructor <init>(Lc8/TTe;Lc8/DTe;)V
    .locals 4
    .param p1, "this$0"    # Lc8/TTe;
    .param p2, "frameReader"    # Lc8/DTe;

    .prologue
    .line 594
    iput-object p1, p0, Lc8/STe;->this$0:Lc8/TTe;

    .line 595
    const-string/jumbo v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lc8/TTe;->access$1100(Lc8/TTe;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lc8/rTe;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 596
    iput-object p2, p0, Lc8/STe;->frameReader:Lc8/DTe;

    .line 597
    return-void
.end method

.method synthetic constructor <init>(Lc8/TTe;Lc8/DTe;Lc8/FTe;)V
    .locals 0
    .param p1, "x0"    # Lc8/TTe;
    .param p2, "x1"    # Lc8/DTe;
    .param p3, "x2"    # Lc8/FTe;

    .prologue
    .line 591
    invoke-direct {p0, p1, p2}, Lc8/STe;-><init>(Lc8/TTe;Lc8/DTe;)V

    return-void
.end method

.method private ackSettingsLater(Lc8/qUe;)V
    .locals 6
    .param p1, "peerSettings"    # Lc8/qUe;

    .prologue
    .line 749
    invoke-static {}, Lc8/TTe;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lc8/RTe;

    const-string/jumbo v2, "OkHttp %s ACK Settings"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v5}, Lc8/TTe;->access$1100(Lc8/TTe;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, p1}, Lc8/RTe;-><init>(Lc8/STe;Ljava/lang/String;[Ljava/lang/Object;Lc8/qUe;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 757
    return-void
.end method


# virtual methods
.method public ackSettings()V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

.method public alternateService(ILjava/lang/String;Lokio/ByteString;Ljava/lang/String;IJ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "origin"    # Ljava/lang/String;
    .param p3, "protocol"    # Lokio/ByteString;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "maxAge"    # J

    .prologue
    .line 824
    return-void
.end method

.method public data(ZILc8/aWp;I)V
    .locals 4
    .param p1, "inFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lc8/aWp;
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p2}, Lc8/TTe;->access$1300(Lc8/TTe;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 625
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p2, p3, p4, p1}, Lc8/TTe;->access$1400(Lc8/TTe;ILc8/aWp;IZ)V

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v1, p2}, Lc8/TTe;->getStream(I)Lc8/YTe;

    move-result-object v0

    .line 629
    .local v0, "dataStream":Lc8/YTe;
    if-nez v0, :cond_2

    .line 630
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p2, v2}, Lc8/TTe;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 631
    int-to-long v2, p4

    invoke-interface {p3, v2, v3}, Lc8/aWp;->skip(J)V

    goto :goto_0

    .line 634
    :cond_2
    invoke-virtual {v0, p3, p4}, Lc8/YTe;->receiveData(Lc8/aWp;I)V

    .line 635
    if-eqz p1, :cond_0

    .line 636
    invoke-virtual {v0}, Lc8/YTe;->receiveFin()V

    goto :goto_0
.end method

.method protected execute()V
    .locals 4

    .prologue
    .line 600
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 601
    .local v0, "connectionErrorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INTERNAL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 603
    .local v1, "streamErrorCode":Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_start_0
    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    iget-boolean v2, v2, Lc8/TTe;->client:Z

    if-nez v2, :cond_0

    .line 604
    iget-object v2, p0, Lc8/STe;->frameReader:Lc8/DTe;

    invoke-interface {v2}, Lc8/DTe;->readConnectionPreface()V

    .line 606
    :cond_0
    iget-object v2, p0, Lc8/STe;->frameReader:Lc8/DTe;

    invoke-interface {v2, p0}, Lc8/DTe;->nextFrame(Lc8/CTe;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 608
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->NO_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 609
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    :try_start_1
    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v2, v0, v1}, Lc8/TTe;->access$1200(Lc8/TTe;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 618
    :goto_0
    iget-object v2, p0, Lc8/STe;->frameReader:Lc8/DTe;

    invoke-static {v2}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    .line 619
    :goto_1
    return-void

    .line 611
    :catch_0
    move-exception v2

    :try_start_2
    sget-object v0, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .line 612
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 615
    :try_start_3
    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v2, v0, v1}, Lc8/TTe;->access$1200(Lc8/TTe;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 618
    :goto_2
    iget-object v2, p0, Lc8/STe;->frameReader:Lc8/DTe;

    invoke-static {v2}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .line 614
    :catchall_0
    move-exception v2

    .line 615
    :try_start_4
    iget-object v3, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v3, v0, v1}, Lc8/TTe;->access$1200(Lc8/TTe;Lcom/squareup/okhttp/internal/framed/ErrorCode;Lcom/squareup/okhttp/internal/framed/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 618
    :goto_3
    iget-object v3, p0, Lc8/STe;->frameReader:Lc8/DTe;

    invoke-static {v3}, Lc8/ATe;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method public goAway(ILcom/squareup/okhttp/internal/framed/ErrorCode;Lokio/ByteString;)V
    .locals 6
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;
    .param p3, "debugData"    # Lokio/ByteString;

    .prologue
    .line 776
    invoke-virtual {p3}, Lokio/ByteString;->size()I

    .line 781
    iget-object v3, p0, Lc8/STe;->this$0:Lc8/TTe;

    monitor-enter v3

    .line 782
    :try_start_0
    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v2}, Lc8/TTe;->access$1900(Lc8/TTe;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v4, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v4}, Lc8/TTe;->access$1900(Lc8/TTe;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lc8/YTe;

    invoke-interface {v2, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lc8/YTe;

    .line 783
    .local v1, "streamsCopy":[Lc8/YTe;
    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lc8/TTe;->access$1602(Lc8/TTe;Z)Z

    .line 784
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 788
    .local v0, "framedStream":Lc8/YTe;
    invoke-virtual {v0}, Lc8/YTe;->getId()I

    move-result v4

    if-le v4, p1, :cond_0

    invoke-virtual {v0}, Lc8/YTe;->isLocallyInitiated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 789
    sget-object v4, Lcom/squareup/okhttp/internal/framed/ErrorCode;->REFUSED_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v0, v4}, Lc8/YTe;->receiveRstStream(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 790
    iget-object v4, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v0}, Lc8/YTe;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Lc8/TTe;->removeStream(I)Lc8/YTe;

    .line 787
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 784
    .end local v0    # "framedStream":Lc8/YTe;
    .end local v1    # "streamsCopy":[Lc8/YTe;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 793
    .restart local v1    # "streamsCopy":[Lc8/YTe;
    :cond_1
    return-void
.end method

.method public headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V
    .locals 9
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .param p6, "headersMode"    # Lcom/squareup/okhttp/internal/framed/HeadersMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;",
            "Lcom/squareup/okhttp/internal/framed/HeadersMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 642
    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p3}, Lc8/TTe;->access$1300(Lc8/TTe;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p3, p5, p2}, Lc8/TTe;->access$1500(Lc8/TTe;ILjava/util/List;Z)V

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget-object v7, p0, Lc8/STe;->this$0:Lc8/TTe;

    monitor-enter v7

    .line 649
    :try_start_0
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1}, Lc8/TTe;->access$1600(Lc8/TTe;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v7

    goto :goto_0

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 651
    :cond_2
    :try_start_1
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v1, p3}, Lc8/TTe;->getStream(I)Lc8/YTe;

    move-result-object v6

    .line 653
    .local v6, "stream":Lc8/YTe;
    if-nez v6, :cond_6

    .line 655
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamAbsent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 656
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    sget-object v2, Lcom/squareup/okhttp/internal/framed/ErrorCode;->INVALID_STREAM:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v1, p3, v2}, Lc8/TTe;->writeSynResetLater(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 657
    monitor-exit v7

    goto :goto_0

    .line 661
    :cond_3
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1}, Lc8/TTe;->access$1700(Lc8/TTe;)I

    move-result v1

    if-gt p3, v1, :cond_4

    monitor-exit v7

    goto :goto_0

    .line 664
    :cond_4
    rem-int/lit8 v1, p3, 0x2

    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v2}, Lc8/TTe;->access$1800(Lc8/TTe;)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_5

    monitor-exit v7

    goto :goto_0

    .line 668
    :cond_5
    new-instance v0, Lc8/YTe;

    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    move v1, p3

    move v3, p1

    move v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lc8/YTe;-><init>(ILc8/TTe;ZZLjava/util/List;)V

    .line 670
    .local v0, "newStream":Lc8/YTe;
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p3}, Lc8/TTe;->access$1702(Lc8/TTe;I)I

    .line 671
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1}, Lc8/TTe;->access$1900(Lc8/TTe;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    invoke-static {}, Lc8/TTe;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lc8/PTe;

    const-string/jumbo v3, "OkHttp %s stream %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v8}, Lc8/TTe;->access$1100(Lc8/TTe;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-direct {v2, p0, v3, v4, v0}, Lc8/PTe;-><init>(Lc8/STe;Ljava/lang/String;[Ljava/lang/Object;Lc8/YTe;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 685
    monitor-exit v7

    goto/16 :goto_0

    .line 687
    .end local v0    # "newStream":Lc8/YTe;
    :cond_6
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    invoke-virtual {p6}, Lcom/squareup/okhttp/internal/framed/HeadersMode;->failIfStreamPresent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 691
    sget-object v1, Lcom/squareup/okhttp/internal/framed/ErrorCode;->PROTOCOL_ERROR:Lcom/squareup/okhttp/internal/framed/ErrorCode;

    invoke-virtual {v6, v1}, Lc8/YTe;->closeLater(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 692
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v1, p3}, Lc8/TTe;->removeStream(I)Lc8/YTe;

    goto/16 :goto_0

    .line 697
    :cond_7
    invoke-virtual {v6, p5, p6}, Lc8/YTe;->receiveHeaders(Ljava/util/List;Lcom/squareup/okhttp/internal/framed/HeadersMode;)V

    .line 698
    if-eqz p2, :cond_0

    invoke-virtual {v6}, Lc8/YTe;->receiveFin()V

    goto/16 :goto_0
.end method

.method public ping(ZII)V
    .locals 4
    .param p1, "reply"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I

    .prologue
    .line 764
    if-eqz p1, :cond_1

    .line 765
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p2}, Lc8/TTe;->access$2400(Lc8/TTe;I)Lc8/nUe;

    move-result-object v0

    .line 766
    .local v0, "ping":Lc8/nUe;
    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {v0}, Lc8/nUe;->receive()V

    .line 773
    .end local v0    # "ping":Lc8/nUe;
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p2, p3, v3}, Lc8/TTe;->access$2500(Lc8/TTe;ZIILc8/nUe;)V

    goto :goto_0
.end method

.method public priority(IIIZ)V
    .locals 0
    .param p1, "streamId"    # I
    .param p2, "streamDependency"    # I
    .param p3, "weight"    # I
    .param p4, "exclusive"    # Z

    .prologue
    .line 814
    return-void
.end method

.method public pushPromise(IILjava/util/List;)V
    .locals 1
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lc8/ZTe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 818
    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/framed/Header;>;"
    iget-object v0, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v0, p2, p3}, Lc8/TTe;->access$2600(Lc8/TTe;ILjava/util/List;)V

    .line 819
    return-void
.end method

.method public rstStream(ILcom/squareup/okhttp/internal/framed/ErrorCode;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/squareup/okhttp/internal/framed/ErrorCode;

    .prologue
    .line 702
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p1}, Lc8/TTe;->access$1300(Lc8/TTe;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v1, p1, p2}, Lc8/TTe;->access$2200(Lc8/TTe;ILcom/squareup/okhttp/internal/framed/ErrorCode;)V

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 706
    :cond_1
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v1, p1}, Lc8/TTe;->removeStream(I)Lc8/YTe;

    move-result-object v0

    .line 707
    .local v0, "rstStream":Lc8/YTe;
    if-eqz v0, :cond_0

    .line 708
    invoke-virtual {v0, p2}, Lc8/YTe;->receiveRstStream(Lcom/squareup/okhttp/internal/framed/ErrorCode;)V

    goto :goto_0
.end method

.method public settings(ZLc8/qUe;)V
    .locals 15
    .param p1, "clearPrevious"    # Z
    .param p2, "newSettings"    # Lc8/qUe;

    .prologue
    .line 713
    const-wide/16 v2, 0x0

    .line 714
    .local v2, "delta":J
    const/4 v7, 0x0

    .line 715
    .local v7, "streamsToNotify":[Lc8/YTe;
    iget-object v9, p0, Lc8/STe;->this$0:Lc8/TTe;

    monitor-enter v9

    .line 716
    :try_start_0
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    iget-object v8, v8, Lc8/TTe;->peerSettings:Lc8/qUe;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lc8/qUe;->getInitialWindowSize(I)I

    move-result v5

    .line 717
    .local v5, "priorWriteWindowSize":I
    if-eqz p1, :cond_0

    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    iget-object v8, v8, Lc8/TTe;->peerSettings:Lc8/qUe;

    invoke-virtual {v8}, Lc8/qUe;->clear()V

    .line 718
    :cond_0
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    iget-object v8, v8, Lc8/TTe;->peerSettings:Lc8/qUe;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lc8/qUe;->merge(Lc8/qUe;)V

    .line 719
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v8}, Lc8/TTe;->getProtocol()Lcom/squareup/okhttp/Protocol;

    move-result-object v8

    sget-object v10, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    if-ne v8, v10, :cond_1

    .line 720
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lc8/STe;->ackSettingsLater(Lc8/qUe;)V

    .line 722
    :cond_1
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    iget-object v8, v8, Lc8/TTe;->peerSettings:Lc8/qUe;

    const/high16 v10, 0x10000

    invoke-virtual {v8, v10}, Lc8/qUe;->getInitialWindowSize(I)I

    move-result v4

    .line 723
    .local v4, "peerInitialWindowSize":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    if-eq v4, v5, :cond_3

    .line 724
    sub-int v8, v4, v5

    int-to-long v2, v8

    .line 725
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v8}, Lc8/TTe;->access$2300(Lc8/TTe;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 726
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v8, v2, v3}, Lc8/TTe;->addBytesToWriteWindow(J)V

    .line 727
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lc8/TTe;->access$2302(Lc8/TTe;Z)Z

    .line 729
    :cond_2
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v8}, Lc8/TTe;->access$1900(Lc8/TTe;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 730
    iget-object v8, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v8}, Lc8/TTe;->access$1900(Lc8/TTe;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    iget-object v10, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v10}, Lc8/TTe;->access$1900(Lc8/TTe;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    new-array v10, v10, [Lc8/YTe;

    invoke-interface {v8, v10}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lc8/YTe;

    move-object v7, v0

    .line 733
    :cond_3
    invoke-static {}, Lc8/TTe;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v10, Lc8/QTe;

    const-string/jumbo v11, "OkHttp %s settings"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-static {v14}, Lc8/TTe;->access$1100(Lc8/TTe;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v10, p0, v11, v12}, Lc8/QTe;-><init>(Lc8/STe;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v8, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 738
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    if-eqz v7, :cond_4

    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-eqz v8, :cond_4

    .line 740
    array-length v9, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_4

    aget-object v6, v7, v8

    .line 741
    .local v6, "stream":Lc8/YTe;
    monitor-enter v6

    .line 742
    :try_start_1
    invoke-virtual {v6, v2, v3}, Lc8/YTe;->addBytesToWriteWindow(J)V

    .line 743
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 740
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 738
    .end local v4    # "peerInitialWindowSize":I
    .end local v5    # "priorWriteWindowSize":I
    .end local v6    # "stream":Lc8/YTe;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 743
    .restart local v4    # "peerInitialWindowSize":I
    .restart local v5    # "priorWriteWindowSize":I
    .restart local v6    # "stream":Lc8/YTe;
    :catchall_1
    move-exception v8

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 746
    .end local v6    # "stream":Lc8/YTe;
    :cond_4
    return-void
.end method

.method public windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J

    .prologue
    .line 796
    if-nez p1, :cond_1

    .line 797
    iget-object v2, p0, Lc8/STe;->this$0:Lc8/TTe;

    monitor-enter v2

    .line 798
    :try_start_0
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    iget-wide v4, v1, Lc8/TTe;->bytesLeftInWriteWindow:J

    add-long/2addr v4, p2

    iput-wide v4, v1, Lc8/TTe;->bytesLeftInWriteWindow:J

    .line 799
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 800
    monitor-exit v2

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 800
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 802
    :cond_1
    iget-object v1, p0, Lc8/STe;->this$0:Lc8/TTe;

    invoke-virtual {v1, p1}, Lc8/TTe;->getStream(I)Lc8/YTe;

    move-result-object v0

    .line 803
    .local v0, "stream":Lc8/YTe;
    if-eqz v0, :cond_0

    .line 804
    monitor-enter v0

    .line 805
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lc8/YTe;->addBytesToWriteWindow(J)V

    .line 806
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
