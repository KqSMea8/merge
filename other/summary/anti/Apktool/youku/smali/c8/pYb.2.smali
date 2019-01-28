.class public Lc8/pYb;
.super Lc8/kYb;
.source "TriggerTimerMgr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/poplayer/trigger/Event;",
        ">",
        "Lc8/kYb;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/gYb;)V
    .locals 0
    .param p1, "triggerService"    # Lc8/gYb;

    .prologue
    .line 15
    .local p0, "this":Lc8/pYb;, "Lcom/alibaba/poplayer/trigger/TriggerTimerMgr<TT;>;"
    invoke-direct {p0, p1}, Lc8/kYb;-><init>(Lc8/gYb;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic dispatchEvent(Lcom/alibaba/poplayer/trigger/Event;JI)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p2, "x1"    # J
    .param p4, "x2"    # I

    .prologue
    .line 12
    .local p0, "this":Lc8/pYb;, "Lcom/alibaba/poplayer/trigger/TriggerTimerMgr<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lc8/kYb;->dispatchEvent(Lcom/alibaba/poplayer/trigger/Event;JI)V

    return-void
.end method

.method public bridge synthetic handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "x0"    # Landroid/os/Message;

    .prologue
    .line 12
    .local p0, "this":Lc8/pYb;, "Lcom/alibaba/poplayer/trigger/TriggerTimerMgr<TT;>;"
    invoke-super {p0, p1}, Lc8/kYb;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public installTimerForConfigs(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/poplayer/trigger/BaseConfigItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/pYb;, "Lcom/alibaba/poplayer/trigger/TriggerTimerMgr<TT;>;"
    .local p1, "event":Lcom/alibaba/poplayer/trigger/Event;, "TT;"
    .local p2, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/trigger/BaseConfigItem;>;"
    const-wide/16 v10, 0x0

    const/16 v12, 0x400

    .line 19
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, v12}, Lc8/pYb;->removeNotStartedEventsByType(I)V

    .line 28
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/poplayer/PopLayer;->getCurrentTimeStamp()J

    move-result-wide v2

    .line 29
    .local v2, "currentTime":J
    const-wide v6, 0x7fffffffffffffffL

    .line 30
    .local v6, "minLeftTime":J
    const/4 v0, 0x0

    .line 31
    .local v0, "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_3

    .line 32
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    invoke-virtual {v8}, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->getStartTimeStamp()J

    move-result-wide v8

    sub-long v4, v8, v2

    .line 33
    .local v4, "leftTime":J
    cmp-long v8, v4, v10

    if-lez v8, :cond_2

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    .line 34
    move-wide v6, v4

    .line 35
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    check-cast v0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .line 31
    .restart local v0    # "configItem":Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 39
    .end local v4    # "leftTime":J
    :cond_3
    cmp-long v8, v6, v10

    if-lez v8, :cond_0

    if-eqz v0, :cond_0

    .line 40
    const-string/jumbo v8, "TriggerTimerMgr.checkTimeAndRescheduleIfNeed.UUID{%s}.timeNotStart.leftTime{%sms}.startLater"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, v0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, p1, v6, v7, v12}, Lc8/pYb;->dispatchEvent(Lcom/alibaba/poplayer/trigger/Event;JI)V

    goto :goto_0
.end method

.method public bridge synthetic removeNotStartedEventsByType(I)V
    .locals 0
    .param p1, "x0"    # I

    .prologue
    .line 12
    .local p0, "this":Lc8/pYb;, "Lcom/alibaba/poplayer/trigger/TriggerTimerMgr<TT;>;"
    invoke-super {p0, p1}, Lc8/kYb;->removeNotStartedEventsByType(I)V

    return-void
.end method
