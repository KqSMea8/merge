.class public Lc8/TAb;
.super Ljava/lang/Object;
.source "LogStoreMgr.java"

# interfaces
.implements Lc8/PDb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SAb;,
        Lc8/RAb;
    }
.end annotation


# static fields
.field private static final DELETE:I = 0x2

.field private static final INSERT:I = 0x1

.field private static final MAX_LOG_COUNT:I = 0x2328

.field private static final MAX_LOG_SIZE:I = 0x64

.field private static final STORE_INTERVAL:J = 0x1388L

.field private static final TAG:Ljava/lang/String; = "LogStoreMgr"

.field private static mInstance:Lc8/TAb;

.field public static mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;


# instance fields
.field private mLogChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/NAb;",
            ">;"
        }
    .end annotation
.end field

.field private mLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;"
        }
    .end annotation
.end field

.field private mOneMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mStore:Lc8/OAb;

.field private mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mStoreTask:Ljava/lang/Runnable;

.field private mThrityMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lc8/TAb;

    invoke-direct {v0}, Lc8/TAb;-><init>()V

    sput-object v0, Lc8/TAb;->mInstance:Lc8/TAb;

    .line 32
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lc8/TAb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/TAb;->mLogChangeListeners:Ljava/util/List;

    .line 31
    iput-object v1, p0, Lc8/TAb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 33
    iput-object v1, p0, Lc8/TAb;->mOneMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 34
    iput-object v1, p0, Lc8/TAb;->mThrityMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 35
    new-instance v0, Lc8/QAb;

    invoke-direct {v0, p0}, Lc8/QAb;-><init>(Lc8/TAb;)V

    iput-object v0, p0, Lc8/TAb;->mStoreTask:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lc8/PAb;

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/PAb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    .line 46
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    new-instance v1, Lc8/RAb;

    invoke-direct {v1, p0}, Lc8/RAb;-><init>(Lc8/TAb;)V

    invoke-virtual {v0, v1}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V

    .line 47
    invoke-static {p0}, Lc8/QDb;->registerCallback(Lc8/PDb;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lc8/TAb;)I
    .locals 1
    .param p0, "x0"    # Lc8/TAb;

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/TAb;->clearOldLogByTime()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lc8/TAb;)Lc8/OAb;
    .locals 1
    .param p0, "x0"    # Lc8/TAb;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    return-object v0
.end method

.method static synthetic access$200(Lc8/TAb;)I
    .locals 1
    .param p0, "x0"    # Lc8/TAb;

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/TAb;->clearOldLogByCount()I

    move-result v0

    return v0
.end method

.method private clearOldLogByCount()I
    .locals 2

    .prologue
    .line 179
    invoke-static {}, Lc8/NBb;->d()V

    .line 180
    const/16 v0, 0x3e8

    .line 181
    .local v0, "count":I
    iget-object v1, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v1, v0}, Lc8/OAb;->clearOldLogByCount(I)I

    move-result v1

    return v1
.end method

.method private clearOldLogByTime()I
    .locals 6

    .prologue
    .line 171
    invoke-static {}, Lc8/NBb;->d()V

    .line 172
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 173
    .local v0, "cal1":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v4, -0x3

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 174
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 175
    .local v2, "threeDayAgo":J
    iget-object v1, p0, Lc8/TAb;->mStore:Lc8/OAb;

    const-string/jumbo v4, "time"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lc8/OAb;->clearOldLogByField(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private dispatcherLogChangeEvent(II)V
    .locals 6
    .param p1, "event"    # I
    .param p2, "size"    # I

    .prologue
    .line 154
    invoke-static {}, Lc8/NBb;->d()V

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lc8/TAb;->mLogChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 156
    iget-object v2, p0, Lc8/TAb;->mLogChangeListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/NAb;

    .line 157
    .local v1, "listener":Lc8/NAb;
    if-eqz v1, :cond_0

    .line 158
    packed-switch p1, :pswitch_data_0

    .line 155
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :pswitch_0
    int-to-long v2, p2

    invoke-virtual {p0}, Lc8/TAb;->dbCount()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/NAb;->onDelete(JJ)V

    goto :goto_1

    .line 163
    :pswitch_1
    int-to-long v2, p2

    invoke-virtual {p0}, Lc8/TAb;->dbCount()J

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/NAb;->onInsert(JJ)V

    goto :goto_1

    .line 168
    .end local v1    # "listener":Lc8/NAb;
    :cond_1
    return-void

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lc8/TAb;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lc8/TAb;->mInstance:Lc8/TAb;

    return-object v0
.end method


# virtual methods
.method public add(Lc8/tAb;)V
    .locals 6
    .param p1, "log"    # Lc8/tAb;

    .prologue
    .line 59
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const-string/jumbo v0, "LogStoreMgr"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Log"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lc8/tAb;->getContent()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->isRealTimeDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    :cond_1
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/TAb;->mStoreTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/TAb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 68
    :cond_2
    :goto_0
    return-void

    .line 65
    :cond_3
    iget-object v0, p0, Lc8/TAb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/TAb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_4
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/TAb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/TAb;->mStoreTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/TAb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public addLogAndSave(Lc8/tAb;)V
    .locals 0
    .param p1, "log"    # Lc8/tAb;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lc8/TAb;->add(Lc8/tAb;)V

    .line 72
    invoke-virtual {p0}, Lc8/TAb;->store()V

    .line 73
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 126
    const-string/jumbo v0, "LogStoreMgr"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[clear]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v0}, Lc8/OAb;->clear()V

    .line 128
    iget-object v0, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    return-void
.end method

.method public count()J
    .locals 4

    .prologue
    .line 132
    const-string/jumbo v0, "LogStoreMgr"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[count] memory count:"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, " db count:"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v3}, Lc8/OAb;->count()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v0}, Lc8/OAb;->count()I

    move-result v0

    iget-object v1, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public dbCount()J
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v0}, Lc8/OAb;->count()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public delete(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v0, p1}, Lc8/OAb;->delete(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public get(I)Ljava/util/List;
    .locals 1
    .param p1, "maxCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v0, p1}, Lc8/OAb;->get(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public memoryCount()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public onBackground()V
    .locals 6

    .prologue
    .line 187
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/TAb;->mStoreTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/TAb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 189
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/TAb;->mOneMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    new-instance v2, Lc8/SAb;

    invoke-direct {v2, p0}, Lc8/SAb;-><init>(Lc8/TAb;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/SAb;->setMin(I)Lc8/SAb;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/TAb;->mOneMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 191
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/TAb;->mThrityMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    new-instance v2, Lc8/SAb;

    invoke-direct {v2, p0}, Lc8/SAb;-><init>(Lc8/TAb;)V

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lc8/SAb;->setMin(I)Lc8/SAb;

    move-result-object v2

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/TAb;->mThrityMinDBMonitorFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 193
    return-void
.end method

.method public onForeground()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public registerLogChangeListener(Lc8/NAb;)V
    .locals 1
    .param p1, "listener"    # Lc8/NAb;

    .prologue
    .line 146
    iget-object v0, p0, Lc8/TAb;->mLogChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public declared-synchronized store()V
    .locals 4

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc8/NBb;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    :try_start_1
    iget-object v3, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    monitor-enter v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 111
    :try_start_2
    iget-object v2, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 113
    .end local v0    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    .local v1, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    :try_start_3
    iget-object v2, p0, Lc8/TAb;->mLogs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v0, v1

    .line 115
    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    .restart local v0    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    :cond_0
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 116
    if-eqz v0, :cond_1

    :try_start_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 117
    iget-object v2, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v2, v0}, Lc8/OAb;->insert(Ljava/util/List;)Z

    .line 118
    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lc8/TAb;->dispatcherLogChangeEvent(II)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 123
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v2

    :goto_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 123
    :catch_0
    move-exception v2

    goto :goto_0

    .line 107
    .end local v0    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2

    .line 115
    .restart local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    :catchall_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    .restart local v0    # "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    goto :goto_1
.end method

.method public unRegisterChangeListener(Lc8/NAb;)V
    .locals 1
    .param p1, "listener"    # Lc8/NAb;

    .prologue
    .line 150
    iget-object v0, p0, Lc8/TAb;->mLogChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v0, p1}, Lc8/OAb;->update(Ljava/util/List;)V

    .line 87
    return-void
.end method

.method public updateLogPriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tAb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "logs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/analytics/core/model/Log;>;"
    iget-object v0, p0, Lc8/TAb;->mStore:Lc8/OAb;

    invoke-interface {v0, p1}, Lc8/OAb;->updateLogPriority(Ljava/util/List;)V

    .line 94
    return-void
.end method
