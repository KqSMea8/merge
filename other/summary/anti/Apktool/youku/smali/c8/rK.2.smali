.class public Lc8/rK;
.super Ljava/lang/Object;
.source "HttpSession.java"

# interfaces
.implements Lc8/VI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sK;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/sK;


# direct methods
.method constructor <init>(Lc8/sK;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lc8/rK;->this$1:Lc8/sK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 1
    .param p1, "data"    # Lanet/channel/bytes/ByteArray;
    .param p2, "fin"    # Z

    .prologue
    .line 157
    iget-object v0, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v0, v0, Lc8/sK;->val$cb:Lc8/VI;

    invoke-interface {v0, p1, p2}, Lc8/VI;->onDataReceive(Lanet/channel/bytes/ByteArray;Z)V

    .line 158
    return-void
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 1
    .param p1, "statusCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "rs"    # Lanet/channel/statist/RequestStatistic;

    .prologue
    .line 162
    iget-object v0, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v0, v0, Lc8/sK;->val$cb:Lc8/VI;

    invoke-interface {v0, p1, p2, p3}, Lc8/VI;->onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    .line 163
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 8
    .param p1, "code"    # I
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
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    const-string/jumbo v0, "awcn.HttpSession"

    const-string/jumbo v1, ""

    iget-object v2, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v2, v2, Lc8/sK;->val$req:Lc8/eK;

    invoke-virtual {v2}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "httpStatusCode"

    aput-object v4, v3, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    const-string/jumbo v0, "awcn.HttpSession"

    const-string/jumbo v1, ""

    iget-object v2, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v2, v2, Lc8/sK;->val$req:Lc8/eK;

    invoke-virtual {v2}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "response headers"

    aput-object v4, v3, v5

    aput-object p2, v3, v6

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    if-gtz p1, :cond_0

    .line 145
    iget-object v0, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v0, v0, Lc8/sK;->this$0:Lc8/tK;

    sget-object v1, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    new-instance v2, Lc8/EJ;

    sget-object v3, Lanet/channel/entity/EventType;->DISCONNECTED:Lanet/channel/entity/EventType;

    const-string/jumbo v4, "Http connect fail"

    invoke-direct {v2, v3, v5, v4}, Lc8/EJ;-><init>(Lanet/channel/entity/EventType;ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Lc8/tK;->access$200(Lc8/tK;Lanet/channel/entity/EventType;Lc8/EJ;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v0, v0, Lc8/sK;->val$cb:Lc8/VI;

    invoke-interface {v0, p1, p2}, Lc8/VI;->onResponseCode(ILjava/util/Map;)V

    .line 150
    iget-object v0, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v0, v0, Lc8/sK;->val$rs:Lanet/channel/statist/RequestStatistic;

    invoke-static {p2}, Lc8/RL;->parseServerRT(Ljava/util/Map;)J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->serverRT:J

    .line 151
    iget-object v0, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v0, v0, Lc8/sK;->this$0:Lc8/tK;

    iget-object v1, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v1, v1, Lc8/sK;->val$req:Lc8/eK;

    invoke-static {v0, v1, p1}, Lc8/tK;->access$300(Lc8/tK;Lc8/eK;I)V

    .line 152
    iget-object v0, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v0, v0, Lc8/sK;->this$0:Lc8/tK;

    iget-object v1, p0, Lc8/rK;->this$1:Lc8/sK;

    iget-object v1, v1, Lc8/sK;->val$req:Lc8/eK;

    invoke-static {v0, v1, p2}, Lc8/tK;->access$400(Lc8/tK;Lc8/eK;Ljava/util/Map;)V

    .line 153
    return-void
.end method
