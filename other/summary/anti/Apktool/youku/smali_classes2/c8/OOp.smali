.class public Lc8/OOp;
.super Ljava/lang/Object;
.source "NetworkCallbackAdapter.java"

# interfaces
.implements Lc8/yPp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.NetworkCallbackAdapter"


# instance fields
.field filterManager:Lc8/dNp;

.field public finishListener:Lc8/JNp;

.field public headerListener:Lc8/KNp;

.field final mtopContext:Lc8/IMp;


# direct methods
.method public constructor <init>(Lc8/IMp;)V
    .locals 2
    .param p1, "mtopContext"    # Lc8/IMp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lc8/OOp;->mtopContext:Lc8/IMp;

    .line 44
    if-eqz p1, :cond_2

    .line 45
    iget-object v1, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v1

    iget-object v1, v1, Lc8/kOp;->filterManager:Lc8/dNp;

    iput-object v1, p0, Lc8/OOp;->filterManager:Lc8/dNp;

    .line 48
    :cond_0
    iget-object v0, p1, Lc8/IMp;->mtopListener:Lc8/QNp;

    .line 49
    .local v0, "mtopListener":Lc8/QNp;
    instance-of v1, v0, Lc8/KNp;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 50
    check-cast v1, Lc8/KNp;

    iput-object v1, p0, Lc8/OOp;->headerListener:Lc8/KNp;

    .line 52
    :cond_1
    instance-of v1, v0, Lc8/JNp;

    if-eqz v1, :cond_2

    .line 53
    check-cast v0, Lc8/JNp;

    .end local v0    # "mtopListener":Lc8/QNp;
    iput-object v0, p0, Lc8/OOp;->finishListener:Lc8/JNp;

    .line 56
    :cond_2
    return-void
.end method


# virtual methods
.method public onCancel(Lc8/xPp;)V
    .locals 3
    .param p1, "call"    # Lc8/xPp;

    .prologue
    .line 124
    new-instance v1, Lc8/JPp;

    invoke-direct {v1}, Lc8/JPp;-><init>()V

    invoke-interface {p1}, Lc8/xPp;->request()Lc8/FPp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/JPp;->request(Lc8/FPp;)Lc8/JPp;

    move-result-object v1

    const/4 v2, -0x8

    invoke-virtual {v1, v2}, Lc8/JPp;->code(I)Lc8/JPp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JPp;->build()Lc8/KPp;

    move-result-object v0

    .line 125
    .local v0, "response":Lc8/KPp;
    iget-object v1, v0, Lc8/KPp;->request:Lc8/FPp;

    iget-object v1, v1, Lc8/FPp;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lc8/OOp;->onFinish(Lc8/KPp;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public onFailure(Lc8/xPp;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "call"    # Lc8/xPp;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 112
    new-instance v1, Lc8/JPp;

    invoke-direct {v1}, Lc8/JPp;-><init>()V

    invoke-interface {p1}, Lc8/xPp;->request()Lc8/FPp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/JPp;->request(Lc8/FPp;)Lc8/JPp;

    move-result-object v1

    const/4 v2, -0x7

    invoke-virtual {v1, v2}, Lc8/JPp;->code(I)Lc8/JPp;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/JPp;->message(Ljava/lang/String;)Lc8/JPp;

    move-result-object v1

    invoke-virtual {v1}, Lc8/JPp;->build()Lc8/KPp;

    move-result-object v0

    .line 113
    .local v0, "response":Lc8/KPp;
    iget-object v1, v0, Lc8/KPp;->request:Lc8/FPp;

    iget-object v1, v1, Lc8/FPp;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lc8/OOp;->onFinish(Lc8/KPp;Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public onFinish(Lc8/KPp;Ljava/lang/Object;)V
    .locals 4
    .param p1, "response"    # Lc8/KPp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 80
    iget-object v1, p0, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v1, v1, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v2, p0, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->stats:Lc8/pPp;

    invoke-virtual {v2}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lc8/pPp;->netSendEndTime:J

    .line 81
    iget-object v1, p0, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v1, v1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 82
    new-instance v0, Lc8/NOp;

    invoke-direct {v0, p0, p1}, Lc8/NOp;-><init>(Lc8/OOp;Lc8/KPp;)V

    .line 107
    .local v0, "onFinishRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v1, v1, Lc8/IMp;->seqNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1, v0}, Lc8/mPp;->submitCallbackTask(ILjava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 108
    return-void
.end method

.method public onHeader(Lc8/KPp;Ljava/lang/Object;)V
    .locals 3
    .param p1, "response"    # Lc8/KPp;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 59
    new-instance v0, Lc8/MOp;

    invoke-direct {v0, p0, p1, p2}, Lc8/MOp;-><init>(Lc8/OOp;Lc8/KPp;Ljava/lang/Object;)V

    .line 75
    .local v0, "onHeaderRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v1, v1, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->seqNo:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v1, v0, v2}, Lc8/jNp;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    .line 76
    return-void
.end method

.method public onResponse(Lc8/xPp;Lc8/KPp;)V
    .locals 1
    .param p1, "call"    # Lc8/xPp;
    .param p2, "response"    # Lc8/KPp;

    .prologue
    .line 118
    iget-object v0, p2, Lc8/KPp;->request:Lc8/FPp;

    iget-object v0, v0, Lc8/FPp;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lc8/OOp;->onHeader(Lc8/KPp;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p2, Lc8/KPp;->request:Lc8/FPp;

    iget-object v0, v0, Lc8/FPp;->reqContext:Ljava/lang/Object;

    invoke-virtual {p0, p2, v0}, Lc8/OOp;->onFinish(Lc8/KPp;Ljava/lang/Object;)V

    .line 120
    return-void
.end method
