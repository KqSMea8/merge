.class public Lc8/CJj;
.super Lc8/rJj;
.source "NetworkCall.java"


# instance fields
.field private network:Lc8/hM;

.field private request:Lc8/uM;

.field private responseFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lc8/vM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/rJj;-><init>()V

    return-void
.end method


# virtual methods
.method public asyncCall(Lc8/OIj;)V
    .locals 4
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lc8/CJj;->network:Lc8/hM;

    iget-object v1, p0, Lc8/CJj;->request:Lc8/uM;

    new-instance v2, Lc8/HJj;

    invoke-direct {v2, p1}, Lc8/HJj;-><init>(Lc8/OIj;)V

    invoke-interface {v0, v1, v3, v3, v2}, Lc8/hM;->asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lc8/CJj;->responseFuture:Ljava/util/concurrent/Future;

    .line 46
    return-void
.end method

.method public asyncUICall(Lc8/OIj;)V
    .locals 5
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    const/4 v4, 0x0

    .line 50
    iget-object v0, p0, Lc8/CJj;->network:Lc8/hM;

    iget-object v1, p0, Lc8/CJj;->request:Lc8/uM;

    new-instance v2, Lc8/HJj;

    sget-object v3, Lc8/CJj;->handler:Landroid/os/Handler;

    invoke-direct {v2, v3, p1}, Lc8/HJj;-><init>(Landroid/os/Handler;Lc8/OIj;)V

    invoke-interface {v0, v1, v4, v4, v2}, Lc8/hM;->asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lc8/CJj;->responseFuture:Ljava/util/concurrent/Future;

    .line 51
    return-void
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lc8/CJj;->responseFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lc8/CJj;->responseFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 58
    :cond_0
    return-void
.end method

.method public construct(Lc8/dJj;)V
    .locals 2
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 31
    iput-object p1, p0, Lc8/CJj;->ykRequest:Lc8/dJj;

    .line 32
    new-instance v0, Lc8/sN;

    sget-object v1, Lc8/oSh;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/sN;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/CJj;->network:Lc8/hM;

    .line 33
    new-instance v0, Lc8/VJj;

    invoke-direct {v0}, Lc8/VJj;-><init>()V

    iput-object v0, p0, Lc8/CJj;->converter:Lc8/TJj;

    .line 34
    iget-object v0, p0, Lc8/CJj;->converter:Lc8/TJj;

    check-cast v0, Lc8/VJj;

    invoke-virtual {v0, p1}, Lc8/VJj;->requestConvert(Lc8/dJj;)Lc8/uM;

    move-result-object v0

    iput-object v0, p0, Lc8/CJj;->request:Lc8/uM;

    .line 35
    return-void
.end method

.method public syncCall()Lc8/eJj;
    .locals 4

    .prologue
    .line 39
    iget-object v1, p0, Lc8/CJj;->network:Lc8/hM;

    iget-object v2, p0, Lc8/CJj;->request:Lc8/uM;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lc8/hM;->syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;

    move-result-object v0

    .line 40
    .local v0, "response":Lc8/vM;
    iget-object v1, p0, Lc8/CJj;->converter:Lc8/TJj;

    invoke-interface {v1, v0}, Lc8/TJj;->responseConvert(Ljava/lang/Object;)Lc8/eJj;

    move-result-object v1

    return-object v1
.end method
