.class public Lc8/HXb;
.super Ljava/lang/Object;
.source "PopRequestUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notifyStatus(Lc8/yXb;Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V
    .locals 3
    .param p0, "request"    # Lc8/yXb;
    .param p1, "newStatus"    # Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    .prologue
    .line 16
    if-nez p0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Lc8/yXb;->getStatus()Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    move-result-object v1

    .line 19
    .local v1, "preStatus":Lcom/alibaba/poplayer/layermanager/PopRequest$Status;
    if-eq v1, p1, :cond_0

    .line 22
    invoke-virtual {p0, p1}, Lc8/yXb;->setStatus(Lcom/alibaba/poplayer/layermanager/PopRequest$Status;)V

    .line 24
    invoke-virtual {p0}, Lc8/yXb;->getStatusCallBacks()Lc8/xXb;

    move-result-object v0

    .line 25
    .local v0, "callBack":Lc8/xXb;
    if-eqz v0, :cond_0

    .line 29
    sget-object v2, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->READY:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-ne p1, v2, :cond_2

    .line 30
    invoke-interface {v0, p0}, Lc8/xXb;->onReady(Lc8/yXb;)V

    goto :goto_0

    .line 31
    :cond_2
    sget-object v2, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SHOWING:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-ne p1, v2, :cond_3

    .line 32
    invoke-interface {v0, p0}, Lc8/xXb;->onRecovered(Lc8/yXb;)V

    goto :goto_0

    .line 33
    :cond_3
    sget-object v2, Lcom/alibaba/poplayer/layermanager/PopRequest$Status;->SUSPENDED:Lcom/alibaba/poplayer/layermanager/PopRequest$Status;

    if-ne p1, v2, :cond_0

    .line 34
    invoke-interface {v0, p0}, Lc8/xXb;->onSuspended(Lc8/yXb;)V

    goto :goto_0
.end method
