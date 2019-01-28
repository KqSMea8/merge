.class public Lc8/OPp;
.super Ljava/lang/Object;
.source "ANetworkCallImpl.java"

# interfaces
.implements Lc8/xPp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ANetworkCallImpl"

.field static volatile mDegradalbeNetwork:Lc8/hM;

.field static volatile mHttpNetwork:Lc8/hM;


# instance fields
.field volatile canceled:Z

.field future:Ljava/util/concurrent/Future;

.field mContext:Landroid/content/Context;

.field mNetwork:Lc8/hM;

.field mRequest:Lc8/FPp;


# direct methods
.method public constructor <init>(Lc8/FPp;Landroid/content/Context;)V
    .locals 2
    .param p1, "mRequest"    # Lc8/FPp;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lc8/OPp;->mRequest:Lc8/FPp;

    .line 41
    iput-object p2, p0, Lc8/OPp;->mContext:Landroid/content/Context;

    .line 43
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v0

    invoke-virtual {v0}, Lc8/oOp;->isGlobalSpdySwitchOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    sget-object v0, Lc8/OPp;->mHttpNetwork:Lc8/hM;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/KN;

    iget-object v1, p0, Lc8/OPp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/KN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/OPp;->mHttpNetwork:Lc8/hM;

    .line 47
    :cond_0
    sget-object v0, Lc8/OPp;->mHttpNetwork:Lc8/hM;

    iput-object v0, p0, Lc8/OPp;->mNetwork:Lc8/hM;

    .line 55
    :goto_0
    return-void

    .line 51
    :cond_1
    sget-object v0, Lc8/OPp;->mDegradalbeNetwork:Lc8/hM;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lc8/sN;

    iget-object v1, p0, Lc8/OPp;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lc8/sN;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/OPp;->mDegradalbeNetwork:Lc8/hM;

    .line 54
    :cond_2
    sget-object v0, Lc8/OPp;->mDegradalbeNetwork:Lc8/hM;

    iput-object v0, p0, Lc8/OPp;->mNetwork:Lc8/hM;

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 106
    iput-boolean v1, p0, Lc8/OPp;->canceled:Z

    .line 107
    iget-object v0, p0, Lc8/OPp;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/OPp;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 110
    :cond_0
    return-void
.end method

.method public enqueue(Lc8/yPp;)V
    .locals 7
    .param p1, "callback"    # Lc8/yPp;

    .prologue
    .line 100
    invoke-virtual {p0}, Lc8/OPp;->request()Lc8/FPp;

    move-result-object v0

    .line 101
    .local v0, "request":Lc8/FPp;
    iget-object v1, p0, Lc8/OPp;->mNetwork:Lc8/hM;

    invoke-static {v0}, Lc8/YPp;->convertRequest(Lc8/FPp;)Lc8/uM;

    move-result-object v2

    iget-object v3, v0, Lc8/FPp;->reqContext:Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lc8/WPp;

    iget-object v6, v0, Lc8/FPp;->seqNo:Ljava/lang/String;

    invoke-direct {v5, p0, p1, v6}, Lc8/WPp;-><init>(Lc8/xPp;Lc8/yPp;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/hM;->asyncSend(Lc8/uM;Ljava/lang/Object;Landroid/os/Handler;Lc8/sM;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lc8/OPp;->future:Ljava/util/concurrent/Future;

    .line 102
    return-void
.end method

.method public execute()Lc8/KPp;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lc8/OPp;->request()Lc8/FPp;

    move-result-object v2

    .line 67
    .local v2, "request":Lc8/FPp;
    iget-object v6, p0, Lc8/OPp;->mNetwork:Lc8/hM;

    invoke-static {v2}, Lc8/YPp;->convertRequest(Lc8/FPp;)Lc8/uM;

    move-result-object v7

    iget-object v8, v2, Lc8/FPp;->reqContext:Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lc8/hM;->syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;

    move-result-object v3

    .line 68
    .local v3, "resp":Lc8/vM;
    invoke-interface {v3}, Lc8/vM;->getBytedata()[B

    move-result-object v0

    .line 69
    .local v0, "byteData":[B
    new-instance v5, Lc8/NPp;

    invoke-direct {v5, p0, v3, v0}, Lc8/NPp;-><init>(Lc8/OPp;Lc8/vM;[B)V

    .line 91
    .local v5, "responseBody":Lc8/LPp;
    invoke-interface {v3}, Lc8/vM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v6

    invoke-static {v6}, Lc8/YPp;->convertNetworkStats(Lanetwork/channel/statist/StatisticData;)Lmtopsdk/network/domain/NetworkStats;

    move-result-object v1

    .line 93
    .local v1, "networkStats":Lmtopsdk/network/domain/NetworkStats;
    new-instance v6, Lc8/JPp;

    invoke-direct {v6}, Lc8/JPp;-><init>()V

    invoke-virtual {v6, v2}, Lc8/JPp;->request(Lc8/FPp;)Lc8/JPp;

    move-result-object v6

    invoke-interface {v3}, Lc8/vM;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Lc8/JPp;->code(I)Lc8/JPp;

    move-result-object v6

    invoke-interface {v3}, Lc8/vM;->getDesc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/JPp;->message(Ljava/lang/String;)Lc8/JPp;

    move-result-object v6

    invoke-interface {v3}, Lc8/vM;->getConnHeadFields()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v6, v7}, Lc8/JPp;->headers(Ljava/util/Map;)Lc8/JPp;

    move-result-object v6

    invoke-virtual {v6, v5}, Lc8/JPp;->body(Lc8/LPp;)Lc8/JPp;

    move-result-object v6

    invoke-virtual {v6, v1}, Lc8/JPp;->stat(Lmtopsdk/network/domain/NetworkStats;)Lc8/JPp;

    move-result-object v6

    invoke-virtual {v6}, Lc8/JPp;->build()Lc8/KPp;

    move-result-object v4

    .line 95
    .local v4, "response":Lc8/KPp;
    return-object v4
.end method

.method public request()Lc8/FPp;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/OPp;->mRequest:Lc8/FPp;

    return-object v0
.end method
