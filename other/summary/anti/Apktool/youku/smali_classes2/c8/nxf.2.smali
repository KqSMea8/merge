.class public Lc8/nxf;
.super Ljava/lang/Object;
.source "PhenixTicket.java"

# interfaces
.implements Lc8/gxf;


# instance fields
.field done:Z

.field private mRequestContext:Lc8/zyf;

.field protected url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lc8/zyf;)V
    .locals 1
    .param p1, "requestContext"    # Lc8/zyf;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/nxf;->url:Ljava/lang/String;

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/nxf;->done:Z

    .line 14
    iput-object p1, p0, Lc8/nxf;->mRequestContext:Lc8/zyf;

    .line 15
    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v0, p0, Lc8/nxf;->mRequestContext:Lc8/zyf;

    .line 55
    .local v0, "req":Lc8/zyf;
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/nxf;->mRequestContext:Lc8/zyf;

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lc8/zyf;->cancel()V

    .line 60
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 56
    .end local v0    # "req":Lc8/zyf;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lc8/nxf;->done:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lc8/nxf;->mRequestContext:Lc8/zyf;

    .line 46
    .local v0, "req":Lc8/zyf;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/zyf;->isCancelledInMultiplex()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDone(Z)V
    .locals 1
    .param p1, "done"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lc8/nxf;->done:Z

    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/nxf;->mRequestContext:Lc8/zyf;

    .line 30
    :cond_0
    return-void
.end method

.method public setRequestContext(Lc8/zyf;)V
    .locals 0
    .param p1, "requestContext"    # Lc8/zyf;

    .prologue
    .line 41
    iput-object p1, p0, Lc8/nxf;->mRequestContext:Lc8/zyf;

    .line 42
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "u"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lc8/nxf;->url:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public theSame(Ljava/lang/String;)Z
    .locals 1
    .param p1, "anotherUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/nxf;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/nxf;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
