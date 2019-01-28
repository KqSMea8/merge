.class public Lc8/NOp;
.super Ljava/lang/Object;
.source "NetworkCallbackAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/OOp;->onFinish(Lc8/KPp;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/OOp;

.field final synthetic val$response:Lc8/KPp;


# direct methods
.method constructor <init>(Lc8/OOp;Lc8/KPp;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iput-object p2, p0, Lc8/NOp;->val$response:Lc8/KPp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 86
    :try_start_0
    iget-object v2, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v3, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v3, v3, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v3, v3, Lc8/IMp;->stats:Lc8/pPp;

    invoke-virtual {v3}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lc8/pPp;->startCallbackTime:J

    .line 87
    iget-object v2, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->stats:Lc8/pPp;

    iget-object v3, p0, Lc8/NOp;->val$response:Lc8/KPp;

    iget-object v3, v3, Lc8/KPp;->stat:Lmtopsdk/network/domain/NetworkStats;

    iput-object v3, v2, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    .line 88
    iget-object v2, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v3, p0, Lc8/NOp;->val$response:Lc8/KPp;

    iput-object v3, v2, Lc8/IMp;->networkResponse:Lc8/KPp;

    .line 89
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v3, v3, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v3, v3, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .local v1, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v2, p0, Lc8/NOp;->val$response:Lc8/KPp;

    iget v2, v2, Lc8/KPp;->code:I

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setResponseCode(I)V

    .line 91
    iget-object v2, p0, Lc8/NOp;->val$response:Lc8/KPp;

    iget-object v2, v2, Lc8/KPp;->headers:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 92
    iget-object v2, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->stats:Lc8/pPp;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lc8/pPp;)V

    .line 93
    iget-object v2, p0, Lc8/NOp;->val$response:Lc8/KPp;

    iget-object v2, v2, Lc8/KPp;->body:Lc8/LPp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    .line 95
    :try_start_1
    iget-object v2, p0, Lc8/NOp;->val$response:Lc8/KPp;

    iget-object v2, v2, Lc8/KPp;->body:Lc8/LPp;

    invoke-virtual {v2}, Lc8/LPp;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setBytedata([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->mtopContext:Lc8/IMp;

    iput-object v1, v2, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 101
    iget-object v2, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v2, v2, Lc8/OOp;->filterManager:Lc8/dNp;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v4, v4, Lc8/OOp;->mtopContext:Lc8/IMp;

    invoke-interface {v2, v3, v4}, Lc8/dNp;->callback(Ljava/lang/String;Lc8/IMp;)V

    .line 105
    .end local v1    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :goto_1
    return-void

    .line 96
    .restart local v1    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "mtopsdk.NetworkCallbackAdapter"

    iget-object v3, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v3, v3, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v3, v3, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v4, "call getBytes of response.body() error."

    invoke-static {v2, v3, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_1
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "mtopsdk.NetworkCallbackAdapter"

    iget-object v3, p0, Lc8/NOp;->this$0:Lc8/OOp;

    iget-object v3, v3, Lc8/OOp;->mtopContext:Lc8/IMp;

    iget-object v3, v3, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v4, "onFinish failed."

    invoke-static {v2, v3, v4, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
