.class public Lc8/WPp;
.super Ljava/lang/Object;
.source "NetworkListenerAdapter.java"

# interfaces
.implements Lc8/iM;
.implements Lc8/jM;
.implements Lc8/lM;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkListenerAdapter"


# instance fields
.field private bos:Ljava/io/ByteArrayOutputStream;

.field call:Lc8/xPp;

.field private finishEvent:Lc8/nM;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private isNeedCallFinish:Z

.field private volatile isStreamReceived:Z

.field networkCallback:Lc8/yPp;

.field private resLength:I

.field private final seqNo:Ljava/lang/String;

.field private statusCode:I


# direct methods
.method public constructor <init>(Lc8/xPp;Lc8/yPp;Ljava/lang/String;)V
    .locals 2
    .param p1, "call"    # Lc8/xPp;
    .param p2, "networkCallback"    # Lc8/yPp;
    .param p3, "seqNo"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v0, p0, Lc8/WPp;->isStreamReceived:Z

    .line 40
    iput-object v1, p0, Lc8/WPp;->finishEvent:Lc8/nM;

    .line 41
    iput-boolean v0, p0, Lc8/WPp;->isNeedCallFinish:Z

    .line 42
    iput-object v1, p0, Lc8/WPp;->bos:Ljava/io/ByteArrayOutputStream;

    .line 47
    iput v0, p0, Lc8/WPp;->resLength:I

    .line 54
    iput-object p1, p0, Lc8/WPp;->call:Lc8/xPp;

    .line 55
    iput-object p2, p0, Lc8/WPp;->networkCallback:Lc8/yPp;

    .line 56
    iput-object p3, p0, Lc8/WPp;->seqNo:Ljava/lang/String;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lc8/WPp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/WPp;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/WPp;->seqNo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/WPp;)I
    .locals 1
    .param p0, "x0"    # Lc8/WPp;

    .prologue
    .line 31
    iget v0, p0, Lc8/WPp;->resLength:I

    return v0
.end method

.method static synthetic access$200(Lc8/WPp;)Ljava/io/ByteArrayOutputStream;
    .locals 1
    .param p0, "x0"    # Lc8/WPp;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/WPp;->bos:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method static synthetic access$202(Lc8/WPp;Ljava/io/ByteArrayOutputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 0
    .param p0, "x0"    # Lc8/WPp;
    .param p1, "x1"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/WPp;->bos:Ljava/io/ByteArrayOutputStream;

    return-object p1
.end method

.method static synthetic access$300(Lc8/WPp;)Lc8/nM;
    .locals 1
    .param p0, "x0"    # Lc8/WPp;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/WPp;->finishEvent:Lc8/nM;

    return-object v0
.end method

.method static synthetic access$400(Lc8/WPp;Lc8/nM;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/WPp;
    .param p1, "x1"    # Lc8/nM;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lc8/WPp;->callFinish(Lc8/nM;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$502(Lc8/WPp;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/WPp;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lc8/WPp;->isNeedCallFinish:Z

    return p1
.end method

.method static synthetic access$600(Lc8/WPp;Lc8/nM;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lc8/WPp;
    .param p1, "x1"    # Lc8/nM;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lc8/WPp;->onFinishTask(Lc8/nM;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lc8/WPp;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lc8/WPp;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/WPp;->headers:Ljava/util/Map;

    return-object v0
.end method

.method private callFinish(Lc8/nM;Ljava/lang/Object;)V
    .locals 1
    .param p1, "finishEvent"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 148
    new-instance v0, Lc8/UPp;

    invoke-direct {v0, p0, p1, p2}, Lc8/UPp;-><init>(Lc8/WPp;Lc8/nM;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lc8/WPp;->submitCallbackTask(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method private onFinishTask(Lc8/nM;Ljava/lang/Object;)V
    .locals 8
    .param p1, "event"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 167
    iget-object v5, p0, Lc8/WPp;->networkCallback:Lc8/yPp;

    if-nez v5, :cond_0

    .line 168
    const-string/jumbo v5, "mtopsdk.NetworkListenerAdapter"

    iget-object v6, p0, Lc8/WPp;->seqNo:Ljava/lang/String;

    const-string/jumbo v7, "[onFinishTask]networkCallback is null"

    invoke-static {v5, v6, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    .line 173
    .local v0, "byteArray":[B
    iget-object v5, p0, Lc8/WPp;->bos:Ljava/io/ByteArrayOutputStream;

    if-eqz v5, :cond_1

    .line 174
    iget-object v5, p0, Lc8/WPp;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 176
    :cond_1
    move-object v1, v0

    .line 177
    .local v1, "byteData":[B
    new-instance v4, Lc8/VPp;

    invoke-direct {v4, p0, v1}, Lc8/VPp;-><init>(Lc8/WPp;[B)V

    .line 199
    .local v4, "responseBody":Lc8/LPp;
    invoke-interface {p1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v5

    invoke-static {v5}, Lc8/YPp;->convertNetworkStats(Lanetwork/channel/statist/StatisticData;)Lmtopsdk/network/domain/NetworkStats;

    move-result-object v2

    .line 200
    .local v2, "networkStats":Lmtopsdk/network/domain/NetworkStats;
    new-instance v5, Lc8/JPp;

    invoke-direct {v5}, Lc8/JPp;-><init>()V

    iget-object v6, p0, Lc8/WPp;->call:Lc8/xPp;

    invoke-interface {v6}, Lc8/xPp;->request()Lc8/FPp;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/JPp;->request(Lc8/FPp;)Lc8/JPp;

    move-result-object v5

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lc8/JPp;->code(I)Lc8/JPp;

    move-result-object v5

    invoke-interface {p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/JPp;->message(Ljava/lang/String;)Lc8/JPp;

    move-result-object v5

    iget-object v6, p0, Lc8/WPp;->headers:Ljava/util/Map;

    invoke-virtual {v5, v6}, Lc8/JPp;->headers(Ljava/util/Map;)Lc8/JPp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc8/JPp;->body(Lc8/LPp;)Lc8/JPp;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/JPp;->stat(Lmtopsdk/network/domain/NetworkStats;)Lc8/JPp;

    move-result-object v5

    invoke-virtual {v5}, Lc8/JPp;->build()Lc8/KPp;

    move-result-object v3

    .line 204
    .local v3, "response":Lc8/KPp;
    iget-object v5, p0, Lc8/WPp;->networkCallback:Lc8/yPp;

    iget-object v6, p0, Lc8/WPp;->call:Lc8/xPp;

    invoke-interface {v5, v6, v3}, Lc8/yPp;->onResponse(Lc8/xPp;Lc8/KPp;)V

    goto :goto_0
.end method

.method private parseResLength()I
    .locals 5

    .prologue
    .line 127
    iget-object v2, p0, Lc8/WPp;->headers:Ljava/util/Map;

    const-string/jumbo v3, "content-length"

    invoke-static {v2, v3}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "contentLength":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lc8/WPp;->headers:Ljava/util/Map;

    const-string/jumbo v3, "x-bin-length"

    invoke-static {v2, v3}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    :cond_0
    const/4 v1, 0x0

    .line 132
    .local v1, "resLength":I
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    :cond_1
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v2

    const-string/jumbo v2, "mtopsdk.NetworkListenerAdapter"

    iget-object v3, p0, Lc8/WPp;->seqNo:Ljava/lang/String;

    const-string/jumbo v4, "[parseResLength]parse Response HeaderField ContentLength error "

    invoke-static {v2, v3, v4}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private submitCallbackTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 214
    iget-object v1, p0, Lc8/WPp;->seqNo:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/WPp;->seqNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 215
    .local v0, "id":I
    :goto_0
    invoke-static {v0, p1}, Lc8/mPp;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 216
    return-void

    .line 214
    .end local v0    # "id":I
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onFinished(Lc8/nM;Ljava/lang/Object;)V
    .locals 1
    .param p1, "event"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 69
    monitor-enter p0

    .line 70
    :try_start_0
    iput-object p1, p0, Lc8/WPp;->finishEvent:Lc8/nM;

    .line 71
    iget-boolean v0, p0, Lc8/WPp;->isNeedCallFinish:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/WPp;->isStreamReceived:Z

    if-nez v0, :cond_1

    .line 72
    :cond_0
    invoke-direct {p0, p1, p2}, Lc8/WPp;->callFinish(Lc8/nM;Ljava/lang/Object;)V

    .line 74
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onInputStreamGet(Lc8/PM;Ljava/lang/Object;)V
    .locals 1
    .param p1, "inputStream"    # Lc8/PM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/WPp;->isStreamReceived:Z

    .line 81
    new-instance v0, Lc8/TPp;

    invoke-direct {v0, p0, p1, p2}, Lc8/TPp;-><init>(Lc8/WPp;Lc8/PM;Ljava/lang/Object;)V

    invoke-static {v0}, Lc8/mPp;->submitRequestTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 119
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iput p1, p0, Lc8/WPp;->statusCode:I

    .line 62
    iput-object p2, p0, Lc8/WPp;->headers:Ljava/util/Map;

    .line 63
    invoke-direct {p0}, Lc8/WPp;->parseResLength()I

    move-result v0

    iput v0, p0, Lc8/WPp;->resLength:I

    .line 64
    const/4 v0, 0x0

    return v0
.end method
