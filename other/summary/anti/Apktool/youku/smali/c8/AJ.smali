.class public Lc8/AJ;
.super Ljava/lang/Object;
.source "ConnInfo.java"


# instance fields
.field private host:Ljava/lang/String;

.field public maxRetryTime:I

.field public retryTime:I

.field private seq:Ljava/lang/String;

.field public final strategy:Lanet/channel/strategy/IConnStrategy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lanet/channel/strategy/IConnStrategy;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "seq"    # Ljava/lang/String;
    .param p3, "strategy"    # Lanet/channel/strategy/IConnStrategy;

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lc8/AJ;->retryTime:I

    .line 11
    iput v0, p0, Lc8/AJ;->maxRetryTime:I

    .line 14
    iput-object p3, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    .line 15
    iput-object p1, p0, Lc8/AJ;->host:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lc8/AJ;->seq:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getConnType()Lc8/BJ;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getProtocol()Lanet/channel/strategy/ConnProtocol;

    move-result-object v0

    invoke-static {v0}, Lc8/BJ;->valueOf(Lanet/channel/strategy/ConnProtocol;)Lc8/BJ;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/BJ;->HTTP:Lc8/BJ;

    goto :goto_0
.end method

.method public getConnectionTimeout()I
    .locals 2

    .prologue
    const/16 v0, 0x4e20

    .line 44
    iget-object v1, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v1, :cond_0

    .line 45
    iget-object v1, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getConnectionTimeout()I

    move-result v1

    if-nez v1, :cond_1

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getConnectionTimeout()I

    move-result v0

    goto :goto_0
.end method

.method public getHeartbeat()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getHeartbeat()I

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const v0, 0xafc8

    goto :goto_0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lc8/AJ;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 23
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getPort()I

    move-result v0

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadTimeout()I
    .locals 2

    .prologue
    const/16 v0, 0x4e20

    .line 52
    iget-object v1, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v1}, Lanet/channel/strategy/IConnStrategy;->getReadTimeout()I

    move-result v1

    if-nez v1, :cond_1

    .line 55
    :cond_0
    :goto_0
    return v0

    .line 53
    :cond_1
    iget-object v0, p0, Lc8/AJ;->strategy:Lanet/channel/strategy/IConnStrategy;

    invoke-interface {v0}, Lanet/channel/strategy/IConnStrategy;->getReadTimeout()I

    move-result v0

    goto :goto_0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lc8/AJ;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConnInfo [ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/AJ;->getIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/AJ;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/AJ;->getConnType()Lc8/BJ;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",hb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/AJ;->getHeartbeat()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
