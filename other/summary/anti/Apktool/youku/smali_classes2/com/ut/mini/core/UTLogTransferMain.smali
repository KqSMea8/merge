.class public Lcom/ut/mini/core/UTLogTransferMain;
.super Ljava/lang/Object;
.source "UTLogTransferMain.java"

# interfaces
.implements Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;


# static fields
.field private static s_instance:Lcom/ut/mini/core/UTLogTransferMain;


# instance fields
.field private mInitializeLockObj:Ljava/lang/Object;

.field private volatile mIsInitialized:Z

.field public mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field private mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/ut/mini/core/UTLogTransferMain;

    invoke-direct {v0}, Lcom/ut/mini/core/UTLogTransferMain;-><init>()V

    sput-object v0, Lcom/ut/mini/core/UTLogTransferMain;->s_instance:Lcom/ut/mini/core/UTLogTransferMain;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mInitializeLockObj:Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    .line 30
    return-void
.end method

.method private _initialize()V
    .locals 2

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    if-nez v0, :cond_1

    .line 38
    iget-object v1, p0, Lcom/ut/mini/core/UTLogTransferMain;->mInitializeLockObj:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    iget-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-direct {v0}, Lcom/ut/mini/core/UTSendLogDelegate;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    .line 41
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-virtual {v0, p0}, Lcom/ut/mini/core/UTSendLogDelegate;->setSendLogListener(Lcom/ut/mini/core/UTSendLogDelegate$ISendLogListener;)V

    .line 42
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-virtual {v0}, Lcom/ut/mini/core/UTSendLogDelegate;->start()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mIsInitialized:Z

    .line 45
    :cond_0
    monitor-exit v1

    .line 47
    :cond_1
    return-void

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private _transferLog(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 67
    if-eqz p1, :cond_1

    .line 68
    :try_start_0
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    .local v1, "eventId":Ljava/lang/String;
    invoke-static {}, Lc8/IAb;->getInstance()Lc8/IAb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/IAb;->isNeedMonitorForUT(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/ut/mini/core/UTLogTransferMain;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    sget v3, Lc8/JAb;->INTERFACE:I

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lc8/JAb;->buildCountEvent(ILjava/lang/String;Ljava/lang/Double;)Lc8/JAb;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;->onEvent(Lc8/JAb;)V

    .line 73
    :cond_0
    invoke-static {}, Lc8/Pzb;->getInstance()Lc8/Pzb;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc8/Pzb;->isSampleSuccess(Ljava/util/Map;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    invoke-static {p1}, Lc8/tzb;->process(Ljava/util/Map;)V

    .line 83
    .end local v1    # "eventId":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 76
    .restart local v1    # "eventId":Ljava/lang/String;
    :cond_2
    const-string/jumbo v2, "log discard"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "aLogMap"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v1    # "eventId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lc8/NBb;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/ut/mini/core/UTLogTransferMain;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/ut/mini/core/UTLogTransferMain;->s_instance:Lcom/ut/mini/core/UTLogTransferMain;

    return-object v0
.end method


# virtual methods
.method public onLogArrived(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 88
    invoke-direct {p0, p1}, Lcom/ut/mini/core/UTLogTransferMain;->_transferLog(Ljava/util/Map;)V

    .line 90
    :cond_0
    return-void
.end method

.method public transferLog(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "aLogMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/ut/mini/core/UTLogTransferMain;->_initialize()V

    .line 56
    const-string/jumbo v0, "_sls"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    invoke-direct {p0, p1}, Lcom/ut/mini/core/UTLogTransferMain;->_transferLog(Ljava/util/Map;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ut/mini/core/UTLogTransferMain;->mSendLogDelegate:Lcom/ut/mini/core/UTSendLogDelegate;

    invoke-virtual {v0, p1}, Lcom/ut/mini/core/UTSendLogDelegate;->send(Ljava/util/Map;)V

    goto :goto_0
.end method
