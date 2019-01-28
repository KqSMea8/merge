.class public Lc8/gO;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"

# interfaces
.implements Lc8/ON;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UnifiedRequestChain"
.end annotation


# instance fields
.field private callback:Lc8/NN;

.field private index:I

.field private request:Lc8/eK;

.field final synthetic this$0:Lc8/hO;


# direct methods
.method constructor <init>(Lc8/hO;ILc8/eK;Lc8/NN;)V
    .locals 2
    .param p2, "index"    # I
    .param p3, "request"    # Lc8/eK;
    .param p4, "callback"    # Lc8/NN;

    .prologue
    const/4 v1, 0x0

    .line 46
    iput-object p1, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lc8/gO;->index:I

    .line 43
    iput-object v1, p0, Lc8/gO;->request:Lc8/eK;

    .line 44
    iput-object v1, p0, Lc8/gO;->callback:Lc8/NN;

    .line 47
    iput p2, p0, Lc8/gO;->index:I

    .line 48
    iput-object p3, p0, Lc8/gO;->request:Lc8/eK;

    .line 49
    iput-object p4, p0, Lc8/gO;->callback:Lc8/NN;

    .line 50
    return-void
.end method


# virtual methods
.method public callback()Lc8/NN;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/gO;->callback:Lc8/NN;

    return-object v0
.end method

.method public proceed(Lc8/eK;Lc8/NN;)Ljava/util/concurrent/Future;
    .locals 7
    .param p1, "request"    # Lc8/eK;
    .param p2, "callback"    # Lc8/NN;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 64
    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v2

    iget-object v2, v2, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    const-string/jumbo v2, "anet.UnifiedRequestTask"

    const-string/jumbo v4, "request canneled or timeout in processing interceptor"

    invoke-virtual {p1}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v3

    .line 84
    :goto_0
    return-object v2

    .line 68
    :cond_0
    iget v2, p0, Lc8/gO;->index:I

    invoke-static {}, Lc8/QN;->getSize()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 69
    new-instance v1, Lc8/gO;

    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    iget v3, p0, Lc8/gO;->index:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v1, v2, v3, p1, p2}, Lc8/gO;-><init>(Lc8/hO;ILc8/eK;Lc8/NN;)V

    .line 70
    .local v1, "chain":Lc8/ON;
    iget v2, p0, Lc8/gO;->index:I

    invoke-static {v2}, Lc8/QN;->getInterceptor(I)Lc8/PN;

    move-result-object v2

    invoke-interface {v2, v1}, Lc8/PN;->intercept(Lc8/ON;)Ljava/util/concurrent/Future;

    move-result-object v2

    goto :goto_0

    .line 72
    .end local v1    # "chain":Lc8/ON;
    :cond_1
    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v2

    iget-object v2, v2, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v2, p1}, Lc8/HN;->setAwcnRequest(Lc8/eK;)V

    .line 73
    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v2

    iput-object p2, v2, Lc8/cO;->callback:Lc8/NN;

    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "cache":Lc8/kN;
    invoke-static {}, Lc8/qN;->isHttpCacheEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "no-cache"

    invoke-virtual {p1}, Lc8/eK;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const-string/jumbo v5, "Cache-Control"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 78
    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v2

    iget-object v2, v2, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v2}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v4}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v4

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v4}, Lc8/HN;->getHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/nN;->getCache(Ljava/lang/String;Ljava/util/Map;)Lc8/kN;

    move-result-object v0

    .line 81
    :cond_2
    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v4

    if-eqz v0, :cond_3

    new-instance v2, Lc8/XN;

    iget-object v5, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v5}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lc8/XN;-><init>(Lc8/cO;Lc8/kN;)V

    :goto_1
    iput-object v2, v4, Lc8/cO;->runningTask:Lc8/ZN;

    .line 82
    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v2

    iget-object v2, v2, Lc8/cO;->runningTask:Lc8/ZN;

    invoke-static {v2, v6}, Lc8/EL;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 83
    iget-object v2, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v2}, Lc8/hO;->access$100(Lc8/hO;)V

    move-object v2, v3

    .line 84
    goto/16 :goto_0

    .line 81
    :cond_3
    new-instance v2, Lc8/bO;

    iget-object v5, p0, Lc8/gO;->this$0:Lc8/hO;

    invoke-static {v5}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v5

    invoke-direct {v2, v5, v3, v3}, Lc8/bO;-><init>(Lc8/cO;Lc8/kN;Lanetwork/channel/cache/Cache$Entry;)V

    goto :goto_1
.end method

.method public request()Lc8/eK;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/gO;->request:Lc8/eK;

    return-object v0
.end method
