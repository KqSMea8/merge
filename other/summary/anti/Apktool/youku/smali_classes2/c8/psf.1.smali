.class public interface abstract Lc8/psf;
.super Ljava/lang/Object;
.source "OnlineStatistics.java"


# virtual methods
.method public abstract onActivityPaused(Landroid/app/Activity;Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V
.end method

.method public abstract onAnr(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Thread;",
            "[",
            "Ljava/lang/StackTraceElement;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBlockOrCloseGuard(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onBootFinished(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;JJZLjava/lang/String;)V
.end method

.method public abstract onBootPerformance(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/util/List;ZLjava/lang/String;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;",
            ">;Z",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation
.end method

.method public abstract onCreatePerformanceReport(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Lcom/taobao/onlinemonitor/OutputData;)V
.end method

.method public abstract onGotoSleep(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/ThreadInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMemoryLeak(Ljava/lang/String;JLjava/lang/String;)V
.end method

.method public abstract onMemoryProblem(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onThreadPoolProblem(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/String;)V
.end method

.method public abstract onWhiteScreen(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;III)V
.end method
