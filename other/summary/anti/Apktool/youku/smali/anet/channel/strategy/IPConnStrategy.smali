.class public Lanet/channel/strategy/IPConnStrategy;
.super Ljava/lang/Object;
.source "IPConnStrategy.java"

# interfaces
.implements Lanet/channel/strategy/IConnStrategy;
.implements Ljava/io/Serializable;


# static fields
.field public static final SOURCE_AMDC:I = 0x0

.field public static final SOURCE_CUSTOMIZED:I = 0x2

.field public static final SOURCE_LOCAL_DNS:I = 0x1

.field public static final TYPE_NORMAL:I = 0x1

.field public static final TYPE_STATIC_BANDWITDH:I = 0x0

.field private static final serialVersionUID:J = -0x22957d1a514e422eL


# instance fields
.field public volatile cto:I

.field public volatile heartbeat:I

.field public final ip:Ljava/lang/String;

.field public volatile ipSource:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public volatile ipType:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field transient isToRemove:Z

.field public final port:I

.field public final protocol:Lanet/channel/strategy/ConnProtocol;

.field public volatile retry:I

.field public volatile rto:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V
    .locals 1
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "protocol"    # Lanet/channel/strategy/ConnProtocol;
    .param p4, "cto"    # I
    .param p5, "rto"    # I
    .param p6, "retry"    # I
    .param p7, "heartbeat"    # I

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    .line 29
    iput v0, p0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    .line 54
    iput-object p1, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    .line 55
    iput p2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    .line 56
    iput-object p3, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    .line 57
    iput p4, p0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    .line 58
    iput p5, p0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    .line 59
    iput p6, p0, Lanet/channel/strategy/IPConnStrategy;->retry:I

    .line 60
    iput p7, p0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    .line 61
    return-void
.end method

.method public static create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;
    .locals 8
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "protocol"    # Lanet/channel/strategy/ConnProtocol;
    .param p3, "cto"    # I
    .param p4, "rto"    # I
    .param p5, "retry"    # I
    .param p6, "heartbeat"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 45
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-gtz p1, :cond_1

    .line 46
    :cond_0
    const/4 v0, 0x0

    .line 49
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lanet/channel/strategy/IPConnStrategy;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lanet/channel/strategy/IPConnStrategy;-><init>(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)V

    goto :goto_0
.end method

.method static create(Ljava/lang/String;Lc8/cL;)Lanet/channel/strategy/IPConnStrategy;
    .locals 7
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "aisles"    # Lc8/cL;

    .prologue
    .line 34
    invoke-static {p1}, Lanet/channel/strategy/ConnProtocol;->valueOf(Lc8/cL;)Lanet/channel/strategy/ConnProtocol;

    move-result-object v2

    .line 35
    .local v2, "protocol":Lanet/channel/strategy/ConnProtocol;
    if-nez v2, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Lc8/cL;->port:I

    iget v3, p1, Lc8/cL;->cto:I

    iget v4, p1, Lc8/cL;->rto:I

    iget v5, p1, Lc8/cL;->retry:I

    iget v6, p1, Lc8/cL;->heartbeat:I

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lanet/channel/strategy/IPConnStrategy;->create(Ljava/lang/String;ILanet/channel/strategy/ConnProtocol;IIII)Lanet/channel/strategy/IPConnStrategy;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    if-ne p0, p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 125
    :cond_1
    if-eqz p1, :cond_2

    instance-of v3, p1, Lanet/channel/strategy/IPConnStrategy;

    if-nez v3, :cond_3

    :cond_2
    move v1, v2

    .line 126
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 129
    check-cast v0, Lanet/channel/strategy/IPConnStrategy;

    .line 131
    .local v0, "ips":Lanet/channel/strategy/IPConnStrategy;
    iget v3, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    iget v4, v0, Lanet/channel/strategy/IPConnStrategy;->port:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    iget-object v4, v0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    iget-object v4, v0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v3, v4}, Lanet/channel/strategy/ConnProtocol;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getConnectionTimeout()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->cto:I

    return v0
.end method

.method public getHeartbeat()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->heartbeat:I

    return v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getIpSource()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->ipSource:I

    return v0
.end method

.method public getIpType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    return v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    return v0
.end method

.method public getProtocol()Lanet/channel/strategy/ConnProtocol;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    return-object v0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->rto:I

    return v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lanet/channel/strategy/IPConnStrategy;->retry:I

    return v0
.end method

.method public getUniqueId()I
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Lanet/channel/strategy/IPConnStrategy;->hashCode()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 136
    const/16 v0, 0x11

    .line 137
    .local v0, "result":I
    iget-object v1, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 138
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    add-int v0, v1, v2

    .line 139
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v2}, Lanet/channel/strategy/ConnProtocol;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 140
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 66
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->ip:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget v1, p0, Lanet/channel/strategy/IPConnStrategy;->ipType:I

    if-nez v1, :cond_0

    .line 68
    const-string/jumbo v1, "(*)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lanet/channel/strategy/IPConnStrategy;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanet/channel/strategy/IPConnStrategy;->protocol:Lanet/channel/strategy/ConnProtocol;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
