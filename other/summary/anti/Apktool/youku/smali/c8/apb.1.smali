.class public Lc8/apb;
.super Ljava/lang/Object;
.source "WXHttpAdapter.java"

# interfaces
.implements Lc8/NN;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bpb;->intercept(Lc8/ON;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bpb;

.field final synthetic val$chain:Lc8/ON;


# direct methods
.method constructor <init>(Lc8/bpb;Lc8/ON;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bpb;

    .prologue
    .line 353
    iput-object p1, p0, Lc8/apb;->this$0:Lc8/bpb;

    iput-object p2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "byteArray"    # Lanet/channel/bytes/ByteArray;

    .prologue
    .line 388
    iget-object v0, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v0}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lc8/NN;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 389
    return-void
.end method

.method public onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V
    .locals 1
    .param p1, "defaultFinishEvent"    # Lanetwork/channel/aidl/DefaultFinishEvent;

    .prologue
    .line 393
    iget-object v0, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v0}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v0

    invoke-interface {v0, p1}, Lc8/NN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 394
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v1}, Lc8/ON;->callback()Lc8/NN;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lc8/NN;->onResponseCode(ILjava/util/Map;)V

    .line 357
    iget-object v1, p0, Lc8/apb;->this$0:Lc8/bpb;

    invoke-static {v1}, Lc8/bpb;->access$100(Lc8/bpb;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    invoke-virtual {v2}, Lc8/eK;->getUrlString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 358
    .local v0, "rs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 359
    const-string/jumbo v1, "bizId"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->bizId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v1, "cacheTime"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string/jumbo v1, "firstDataTime"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->firstDataTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string/jumbo v1, "host"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->host:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string/jumbo v1, "ip"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->ip:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string/jumbo v1, "isDNS"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-boolean v2, v2, Lanet/channel/statist/RequestStatistic;->isDNS:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string/jumbo v1, "isProxy"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-boolean v2, v2, Lanet/channel/statist/RequestStatistic;->isProxy:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string/jumbo v1, "isSSL"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-boolean v2, v2, Lanet/channel/statist/RequestStatistic;->isSSL:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string/jumbo v1, "msg"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string/jumbo v1, "netType"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->netType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string/jumbo v1, "oneWayTime"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string/jumbo v1, "port"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v2, v2, Lanet/channel/statist/RequestStatistic;->port:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string/jumbo v1, "protocolType"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string/jumbo v1, "proxyType"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->proxyType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v1, "recDataSize"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v1, "recDataTime"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->recDataTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v1, "sendBeforeTime"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v1, "sendDataSize"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->sendDataSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v1, "sendDataTime"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->sendDataTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v1, "serverRT"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->serverRT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string/jumbo v1, "statusCode"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget v2, v2, Lanet/channel/statist/RequestStatistic;->statusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string/jumbo v1, "url"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-object v2, v2, Lanet/channel/statist/RequestStatistic;->url:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v1, "waitingTime"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->waitingTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v1, "start"

    iget-object v2, p0, Lc8/apb;->val$chain:Lc8/ON;

    invoke-interface {v2}, Lc8/ON;->request()Lc8/eK;

    move-result-object v2

    iget-object v2, v2, Lc8/eK;->rs:Lanet/channel/statist/RequestStatistic;

    iget-wide v2, v2, Lanet/channel/statist/RequestStatistic;->start:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    :cond_0
    return-void
.end method
