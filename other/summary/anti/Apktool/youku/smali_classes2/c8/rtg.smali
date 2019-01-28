.class public Lc8/rtg;
.super Lc8/tsg;
.source "UploaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vtg;-><init>(Landroid/content/Context;Lc8/jsg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/vtg;


# direct methods
.method constructor <init>(Lc8/vtg;I)V
    .locals 0
    .param p2, "x0"    # I

    .prologue
    .line 48
    iput-object p1, p0, Lc8/rtg;->a:Lc8/vtg;

    invoke-direct {p0, p2}, Lc8/tsg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "text"    # [B

    .prologue
    .line 99
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0, p1, p2, p3}, Lc8/lsg;->decrypt(Landroid/content/Context;Ljava/lang/String;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public enableFlowControl()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0}, Lc8/lsg;->enableFlowControl()Z

    move-result v0

    return v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0}, Lc8/lsg;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getCurrentElement()Lc8/gsg;
    .locals 6

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lc8/tsg;->getCurrentElement()Lc8/gsg;

    move-result-object v0

    .line 53
    .local v0, "element":Lc8/gsg;
    iget v1, v0, Lc8/gsg;->environment:I

    iget-object v2, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v2}, Lc8/lsg;->getEnvironment()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lc8/gsg;->appKey:Ljava/lang/String;

    iget-object v2, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v2}, Lc8/lsg;->getAppKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    .end local v0    # "element":Lc8/gsg;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0    # "element":Lc8/gsg;
    :cond_0
    :try_start_1
    new-instance v1, Lc8/gsg;

    iget-object v2, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v2}, Lc8/lsg;->getEnvironment()I

    move-result v3

    iget-object v2, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v2}, Lc8/lsg;->getAppKey()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v2}, Lc8/lsg;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lc8/gsg;->host:Ljava/lang/String;

    :goto_1
    iget-object v5, v0, Lc8/gsg;->ipAddress:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2, v5}, Lc8/gsg;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v2, v2, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v2}, Lc8/lsg;->getDomain()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 52
    .end local v0    # "element":Lc8/gsg;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getEnvironment()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0}, Lc8/lsg;->getEnvironment()I

    move-result v0

    return v0
.end method

.method public getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;

    .prologue
    .line 94
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0, p1, p2}, Lc8/lsg;->getSslTicket(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0}, Lc8/lsg;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0}, Lc8/lsg;->getUtdid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putSslTicket(Landroid/content/Context;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "value"    # [B

    .prologue
    .line 89
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0, p1, p2, p3}, Lc8/lsg;->putSslTicket(Landroid/content/Context;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public signature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 84
    iget-object v0, p0, Lc8/rtg;->a:Lc8/vtg;

    iget-object v0, v0, Lc8/vtg;->d:Lc8/lsg;

    invoke-interface {v0, p1}, Lc8/lsg;->signature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
