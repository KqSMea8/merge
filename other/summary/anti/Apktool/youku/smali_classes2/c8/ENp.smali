.class public Lc8/ENp;
.super Ljava/lang/Object;
.source "ApiID.java"

# interfaces
.implements Lc8/dOp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ApiID"


# instance fields
.field private volatile call:Lc8/xPp;

.field private mtopContext:Lc8/IMp;


# direct methods
.method public constructor <init>(Lc8/xPp;Lc8/IMp;)V
    .locals 0
    .param p1, "call"    # Lc8/xPp;
    .param p2, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lc8/ENp;->call:Lc8/xPp;

    .line 33
    iput-object p2, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    .line 34
    return-void
.end method


# virtual methods
.method public cancelApiCall()Z
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lc8/ENp;->call:Lc8/xPp;

    if-nez v0, :cond_0

    .line 56
    const-string/jumbo v0, "mtopsdk.ApiID"

    const-string/jumbo v1, "Future is null,cancel apiCall failed"

    invoke-static {v0, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0

    .line 59
    :cond_0
    iget-object v0, p0, Lc8/ENp;->call:Lc8/xPp;

    invoke-interface {v0}, Lc8/xPp;->cancel()V

    .line 60
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCall()Lc8/xPp;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc8/ENp;->call:Lc8/xPp;

    return-object v0
.end method

.method public getMtopContext()Lc8/IMp;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    return-object v0
.end method

.method public retryApiCall()Lc8/ENp;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/ENp;->retryApiCall(Landroid/os/Handler;)Lc8/ENp;

    move-result-object v0

    return-object v0
.end method

.method public retryApiCall(Landroid/os/Handler;)Lc8/ENp;
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v2, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return-object v1

    .line 75
    :cond_0
    iget-object v2, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v2, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    .line 76
    iget-object v2, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    iget-object v2, v2, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v2}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v2

    iget-object v0, v2, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 77
    .local v0, "filterManager":Lc8/dNp;
    if-eqz v0, :cond_1

    .line 78
    iget-object v2, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    invoke-interface {v0, v1, v2}, Lc8/dNp;->start(Ljava/lang/String;Lc8/IMp;)V

    .line 80
    :cond_1
    iget-object v2, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    invoke-static {v0, v2}, Lc8/jNp;->checkFilterManager(Lc8/dNp;Lc8/IMp;)V

    .line 82
    new-instance v2, Lc8/ENp;

    iget-object v3, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    invoke-direct {v2, v1, v3}, Lc8/ENp;-><init>(Lc8/xPp;Lc8/IMp;)V

    move-object v1, v2

    goto :goto_0
.end method

.method public setCall(Lc8/xPp;)V
    .locals 0
    .param p1, "call"    # Lc8/xPp;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/ENp;->call:Lc8/xPp;

    .line 47
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 97
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ApiID [call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ENp;->call:Lc8/xPp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string/jumbo v1, ", mtopContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/ENp;->mtopContext:Lc8/IMp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
