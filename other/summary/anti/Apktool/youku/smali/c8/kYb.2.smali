.class public Lc8/kYb;
.super Ljava/lang/Object;
.source "EventDispatchManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final KEY_EVENT:Ljava/lang/String; = "event"

.field public static final KEY_RETRY_TIME:Ljava/lang/String; = "retryTime"

.field public static final RETRY_LIMIT:I = 0x3

.field public static final TYPE_NEW_EVENT:I = 0x800

.field public static final TYPE_SAME_EVENT:I = 0x400


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field public mTriggerService:Lc8/gYb;


# direct methods
.method public constructor <init>(Lc8/gYb;)V
    .locals 2
    .param p1, "triggerService"    # Lc8/gYb;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lc8/kYb;->mHandler:Landroid/os/Handler;

    .line 37
    iput-object p1, p0, Lc8/kYb;->mTriggerService:Lc8/gYb;

    .line 38
    return-void
.end method


# virtual methods
.method public dispatchEvent(Lcom/alibaba/poplayer/trigger/Event;JI)V
    .locals 10
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p2, "delayMillis"    # J
    .param p4, "eventType"    # I

    .prologue
    const-wide/16 v4, 0x0

    const/4 v8, 0x0

    .line 41
    const-string/jumbo v3, "EventDispatchManager.dispatchEvent:event:{%s},delay:{%s},type:{%s}."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/poplayer/trigger/Event;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    cmp-long v3, p2, v4

    if-ltz v3, :cond_2

    .line 45
    :goto_0
    const/16 v3, 0x800

    if-ne p4, v3, :cond_0

    const/16 v3, 0x400

    if-eq p4, v3, :cond_1

    .line 47
    :cond_0
    const/16 p4, 0x800

    .line 50
    :cond_1
    :try_start_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 51
    .local v2, "message":Landroid/os/Message;
    iput p4, v2, Landroid/os/Message;->what:I

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 54
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "event"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    const-string/jumbo v3, "retryTime"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 58
    iget-object v3, p0, Lc8/kYb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "message":Landroid/os/Message;
    :goto_1
    return-void

    :cond_2
    move-wide p2, v4

    .line 43
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "DispatchManager.dispatchEvent.error."

    invoke-static {v3, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 81
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "event"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/poplayer/trigger/Event;

    .line 82
    .local v2, "event":Lcom/alibaba/poplayer/trigger/Event;
    const-string/jumbo v7, "DispatchManager.handleMessage,event {%s}."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/alibaba/poplayer/trigger/Event;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "retryTime"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 90
    .local v4, "retryTime":I
    iget-object v7, p0, Lc8/kYb;->mTriggerService:Lc8/gYb;

    iget-object v7, v7, Lc8/gYb;->mConfigMgr:Lc8/eYb;

    invoke-virtual {v7}, Lc8/eYb;->isUpdatingConfig()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 91
    if-ge v4, v11, :cond_0

    .line 92
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v7, "retryTime"

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 97
    .local v3, "newMsg":Landroid/os/Message;
    invoke-virtual {v3, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 98
    iget-object v7, p0, Lc8/kYb;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x12c

    invoke-virtual {v7, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 100
    const-string/jumbo v7, "DispatchManager.handleMessage.isUpdatingConfig,event {%s} retry after 300ms."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/alibaba/poplayer/trigger/Event;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "event":Lcom/alibaba/poplayer/trigger/Event;
    .end local v3    # "newMsg":Landroid/os/Message;
    .end local v4    # "retryTime":I
    :goto_0
    return v5

    .line 102
    .restart local v2    # "event":Lcom/alibaba/poplayer/trigger/Event;
    .restart local v4    # "retryTime":I
    :cond_0
    const-string/jumbo v7, "DispatchManager.handleMessage.isUpdatingConfig,event {%s} retryTime{%s} >= LimitTime {%s} .And dropped event."

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/alibaba/poplayer/trigger/Event;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    .end local v2    # "event":Lcom/alibaba/poplayer/trigger/Event;
    .end local v4    # "retryTime":I
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "DispatchManager.handleMessage.error."

    invoke-static {v5, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v6

    .line 110
    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v2    # "event":Lcom/alibaba/poplayer/trigger/Event;
    .restart local v4    # "retryTime":I
    :cond_1
    :try_start_1
    iget-object v7, p0, Lc8/kYb;->mTriggerService:Lc8/gYb;

    invoke-virtual {v7, v2}, Lc8/gYb;->accept(Lcom/alibaba/poplayer/trigger/Event;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public removeNotStartedEventsByType(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 68
    const/16 v0, 0x800

    if-eq p1, v0, :cond_0

    const/16 v0, 0x400

    if-eq p1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lc8/kYb;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 74
    :goto_0
    const-string/jumbo v0, "DispatchManager.removeNotStartedEventsByType:type-{%s}"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lc8/kYb;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
