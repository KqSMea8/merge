.class public Lc8/nZf;
.super Lc8/WYf;
.source "RefreshFinishAction.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/WYf;-><init>()V

    return-void
.end method


# virtual methods
.method public executeRender(Lc8/sYf;)V
    .locals 10
    .param p1, "context"    # Lc8/sYf;

    .prologue
    .line 33
    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v9

    .line 34
    .local v9, "instance":Lc8/nVf;
    iget v0, p0, Lc8/nZf;->mLayoutWidth:I

    iget v1, p0, Lc8/nZf;->mLayoutHeight:I

    invoke-virtual {v9, v0, v1}, Lc8/nVf;->onRefreshSuccess(II)V

    .line 35
    invoke-static {}, Lc8/mag;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const-string/jumbo v1, "refreshFinish"

    const-string/jumbo v2, "I"

    invoke-interface {p1}, Lc8/sYf;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    new-array v8, v0, [Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lc8/nZf;->submitPerformance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DJ[Z)Lc8/kag;

    .line 38
    :cond_0
    return-void
.end method
