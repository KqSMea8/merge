.class public Lc8/jwf;
.super Ljava/lang/Object;
.source "PhenixProduceListener.java"

# interfaces
.implements Lc8/vyf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/iwf;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/vyf",
        "<",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# instance fields
.field private final mImageDecodingListener:Lc8/ewf;

.field private final mMemMissListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/sxf;",
            ">;"
        }
    .end annotation
.end field

.field private mMemMissScheduler:Lc8/Nyf;

.field private mProduceTimeline:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequest:Lc8/Jxf;

.field private mScheduleAction:Lc8/Kyf;


# direct methods
.method public constructor <init>(Lc8/Jxf;Lc8/qxf;Lc8/ewf;)V
    .locals 1
    .param p1, "imageRequest"    # Lc8/Jxf;
    .param p3, "decodingListener"    # Lc8/ewf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jxf;",
            "Lc8/qxf",
            "<",
            "Lc8/sxf;",
            ">;",
            "Lc8/ewf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "memMissListener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/jwf;->mProduceTimeline:Ljava/util/Map;

    .line 44
    iput-object p2, p0, Lc8/jwf;->mMemMissListener:Lc8/qxf;

    .line 45
    iput-object p1, p0, Lc8/jwf;->mRequest:Lc8/Jxf;

    .line 46
    iput-object p3, p0, Lc8/jwf;->mImageDecodingListener:Lc8/ewf;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lc8/jwf;)Lc8/Jxf;
    .locals 1
    .param p0, "x0"    # Lc8/jwf;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/jwf;->mRequest:Lc8/Jxf;

    return-object v0
.end method

.method static synthetic access$100(Lc8/jwf;)Lc8/qxf;
    .locals 1
    .param p0, "x0"    # Lc8/jwf;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/jwf;->mMemMissListener:Lc8/qxf;

    return-object v0
.end method

.method private callMemMissListenerIfNeed(Ljava/lang/Class;ZZ)V
    .locals 3
    .param p1, "producerClazz"    # Ljava/lang/Class;
    .param p2, "isConsumer"    # Z
    .param p3, "isSuccess"    # Z

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lc8/jwf;->mMemMissListener:Lc8/qxf;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    const-class v0, Lc8/Wvf;

    if-ne p1, v0, :cond_2

    .line 127
    iget-object v0, p0, Lc8/jwf;->mMemMissScheduler:Lc8/Nyf;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc8/jwf;->mMemMissScheduler:Lc8/Nyf;

    invoke-interface {v0}, Lc8/Nyf;->isScheduleMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    :cond_0
    iget-object v0, p0, Lc8/jwf;->mScheduleAction:Lc8/Kyf;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Lc8/hwf;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1, v2, v2}, Lc8/hwf;-><init>(Lc8/jwf;ILc8/oyf;Lc8/Jyf;)V

    iput-object v0, p0, Lc8/jwf;->mScheduleAction:Lc8/Kyf;

    .line 138
    :cond_1
    iget-object v0, p0, Lc8/jwf;->mMemMissScheduler:Lc8/Nyf;

    iget-object v1, p0, Lc8/jwf;->mScheduleAction:Lc8/Kyf;

    invoke-interface {v0, v1}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 143
    :cond_2
    :goto_0
    return-void

    .line 140
    :cond_3
    iget-object v0, p0, Lc8/jwf;->mMemMissListener:Lc8/qxf;

    new-instance v1, Lc8/sxf;

    iget-object v2, p0, Lc8/jwf;->mRequest:Lc8/Jxf;

    invoke-virtual {v2}, Lc8/Jxf;->getPhenixTicket()Lc8/nxf;

    move-result-object v2

    invoke-direct {v1, v2}, Lc8/sxf;-><init>(Lc8/nxf;)V

    invoke-interface {v0, v1}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    goto :goto_0
.end method

.method private getMonitorNodeFromProducer(Ljava/lang/Class;Z)Lc8/iwf;
    .locals 3
    .param p1, "producerClazz"    # Ljava/lang/Class;
    .param p2, "isConsumer"    # Z

    .prologue
    .line 54
    const-class v0, Lc8/Wvf;

    if-ne p1, v0, :cond_0

    .line 55
    new-instance v0, Lc8/iwf;

    const-string/jumbo v1, "memoryLookup"

    sget-object v2, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_MEMORY_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-direct {v0, v1, v2}, Lc8/iwf;-><init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    .line 72
    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-class v0, Lc8/Bxf;

    if-ne p1, v0, :cond_1

    .line 58
    new-instance v0, Lc8/iwf;

    const-string/jumbo v1, "localFile"

    sget-object v2, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_LOCAL_FILE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-direct {v0, v1, v2}, Lc8/iwf;-><init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    goto :goto_0

    .line 60
    :cond_1
    const-class v0, Lc8/Lvf;

    if-ne p1, v0, :cond_2

    .line 61
    new-instance v0, Lc8/iwf;

    const-string/jumbo v1, "cacheLookup"

    sget-object v2, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_DISK_CACHE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-direct {v0, v1, v2}, Lc8/iwf;-><init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    goto :goto_0

    .line 63
    :cond_2
    const-class v0, Lc8/Gxf;

    if-ne p1, v0, :cond_4

    .line 64
    new-instance v1, Lc8/iwf;

    if-eqz p2, :cond_3

    const-string/jumbo v0, "download"

    :goto_1
    sget-object v2, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_NETWORK:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-direct {v1, v0, v2}, Lc8/iwf;-><init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "connect"

    goto :goto_1

    .line 66
    :cond_4
    const-class v0, Lc8/mvf;

    if-ne p1, v0, :cond_7

    .line 67
    new-instance v1, Lc8/iwf;

    if-eqz p2, :cond_5

    const-string/jumbo v0, "bitmapProcess"

    move-object v2, v0

    :goto_2
    if-eqz p2, :cond_6

    sget-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    :goto_3
    invoke-direct {v1, v2, v0}, Lc8/iwf;-><init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "scaleTime"

    move-object v2, v0

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_LARGE_SCALE:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    goto :goto_3

    .line 69
    :cond_7
    const-class v0, Lc8/Ywf;

    if-ne p1, v0, :cond_8

    .line 70
    new-instance v0, Lc8/iwf;

    const-string/jumbo v1, "decode"

    sget-object v2, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-direct {v0, v1, v2}, Lc8/iwf;-><init>(Ljava/lang/String;Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    goto :goto_0

    .line 72
    :cond_8
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getProduceTimeline()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lc8/jwf;->mProduceTimeline:Ljava/util/Map;

    return-object v0
.end method

.method public onEnterIn(Lc8/Jxf;Ljava/lang/Class;ZZ)V
    .locals 8
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "producerClazz"    # Ljava/lang/Class;
    .param p3, "isConsumer"    # Z
    .param p4, "isLast"    # Z

    .prologue
    .line 81
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-direct {p0, p2, p3}, Lc8/jwf;->getMonitorNodeFromProducer(Ljava/lang/Class;Z)Lc8/iwf;

    move-result-object v0

    .local v0, "monitor":Lc8/iwf;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lc8/jwf;->mProduceTimeline:Ljava/util/Map;

    iget-object v2, v0, Lc8/iwf;->key:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, p0, Lc8/jwf;->mImageDecodingListener:Lc8/ewf;

    if-eqz v1, :cond_0

    const-class v1, Lc8/Ywf;

    if-ne p2, v1, :cond_0

    .line 91
    iget-object v1, p0, Lc8/jwf;->mImageDecodingListener:Lc8/ewf;

    invoke-virtual {p1}, Lc8/Jxf;->getId()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p1}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lc8/ewf;->onDecodeStart(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onEnterIn(Lc8/zyf;Ljava/lang/Class;ZZ)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lc8/Jxf;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/jwf;->onEnterIn(Lc8/Jxf;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public onExitOut(Lc8/Jxf;Ljava/lang/Class;ZZZ)V
    .locals 8
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "producerClazz"    # Ljava/lang/Class;
    .param p3, "isConsumer"    # Z
    .param p4, "isSuccess"    # Z
    .param p5, "isLast"    # Z

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    .local v0, "currentTime":J
    invoke-direct {p0, p2, p3, p4}, Lc8/jwf;->callMemMissListenerIfNeed(Ljava/lang/Class;ZZ)V

    .line 103
    if-eqz p3, :cond_1

    if-nez p5, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-direct {p0, p2, p3}, Lc8/jwf;->getMonitorNodeFromProducer(Ljava/lang/Class;Z)Lc8/iwf;

    move-result-object v2

    .local v2, "monitor":Lc8/iwf;
    if-eqz v2, :cond_0

    .line 112
    iget-object v4, p0, Lc8/jwf;->mProduceTimeline:Ljava/util/Map;

    iget-object v5, v2, Lc8/iwf;->key:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 113
    .local v3, "startTime":Ljava/lang/Long;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 114
    iget-object v4, p0, Lc8/jwf;->mProduceTimeline:Ljava/util/Map;

    iget-object v5, v2, Lc8/iwf;->key:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_2
    if-eqz p4, :cond_3

    iget-object v4, v2, Lc8/iwf;->from:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    sget-object v5, Lcom/taobao/phenix/request/ImageStatistics$FromType;->FROM_UNKNOWN:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    if-eq v4, v5, :cond_3

    .line 118
    iget-object v4, p0, Lc8/jwf;->mRequest:Lc8/Jxf;

    invoke-virtual {v4}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v4

    iget-object v5, v2, Lc8/iwf;->from:Lcom/taobao/phenix/request/ImageStatistics$FromType;

    invoke-virtual {v4, v5}, Lc8/Kxf;->fromType(Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    .line 120
    :cond_3
    iget-object v4, p0, Lc8/jwf;->mImageDecodingListener:Lc8/ewf;

    if-eqz v4, :cond_0

    const-class v4, Lc8/Ywf;

    if-ne p2, v4, :cond_0

    .line 121
    iget-object v4, p0, Lc8/jwf;->mImageDecodingListener:Lc8/ewf;

    invoke-virtual {p1}, Lc8/Jxf;->getId()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {p1}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v6, v7, v5}, Lc8/ewf;->onDecodeFinish(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic onExitOut(Lc8/zyf;Ljava/lang/Class;ZZZ)V
    .locals 6

    .prologue
    .line 24
    move-object v1, p1

    check-cast v1, Lc8/Jxf;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/jwf;->onExitOut(Lc8/Jxf;Ljava/lang/Class;ZZZ)V

    return-void
.end method

.method public setMemMissScheduler(Lc8/Nyf;)V
    .locals 0
    .param p1, "scheduler"    # Lc8/Nyf;

    .prologue
    .line 50
    iput-object p1, p0, Lc8/jwf;->mMemMissScheduler:Lc8/Nyf;

    .line 51
    return-void
.end method
