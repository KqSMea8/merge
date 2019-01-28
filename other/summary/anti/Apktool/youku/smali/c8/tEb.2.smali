.class public Lc8/tEb;
.super Ljava/lang/Object;
.source "TempEventMgr.java"

# interfaces
.implements Lc8/FAb;
.implements Lc8/PDb;
.implements Lc8/xzb;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/rEb;,
        Lc8/sEb;
    }
.end annotation


# static fields
.field private static final DB_MAX_COUNT:I = 0xc350

.field private static final MAX_SIZE:I = 0x64

.field private static final OFFLINE_DURATION:Ljava/lang/String; = "offline_duration"

.field private static final ONE_HOUR_SEC:I = 0xe10

.field private static final ONE_SECOND:I = 0x3e8

.field private static instance:Lc8/tEb;


# instance fields
.field private commitTask:Ljava/lang/Runnable;

.field private mAlarmEventLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/oEb;",
            ">;"
        }
    .end annotation
.end field

.field private mCommitFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mCounterEventLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/oEb;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDuration:J

.field private mMetricLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/jEb;",
            ">;"
        }
    .end annotation
.end field

.field private mStatEventLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/oEb;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

.field private storeTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lc8/tEb;

    invoke-direct {v0}, Lc8/tEb;-><init>()V

    sput-object v0, Lc8/tEb;->instance:Lc8/tEb;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mAlarmEventLists:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mCounterEventLists:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mStatEventLists:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mMetricLists:Ljava/util/List;

    .line 36
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lc8/tEb;->mCurrentDuration:J

    .line 37
    iput-object v2, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 38
    iput-object v2, p0, Lc8/tEb;->mCommitFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 39
    new-instance v0, Lc8/pEb;

    invoke-direct {v0, p0}, Lc8/pEb;-><init>(Lc8/tEb;)V

    iput-object v0, p0, Lc8/tEb;->storeTask:Ljava/lang/Runnable;

    .line 45
    new-instance v0, Lc8/qEb;

    invoke-direct {v0, p0}, Lc8/qEb;-><init>(Lc8/tEb;)V

    iput-object v0, p0, Lc8/tEb;->commitTask:Ljava/lang/Runnable;

    .line 54
    invoke-static {p0}, Lc8/QDb;->registerCallback(Lc8/PDb;)V

    .line 55
    invoke-static {}, Lc8/EAb;->getInstance()Lc8/EAb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/EAb;->addCrashListener(Lc8/FAb;)V

    .line 56
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v0

    const-string/jumbo v1, "offline_duration"

    invoke-virtual {v0, v1, p0}, Lc8/zzb;->register(Ljava/lang/String;Lc8/xzb;)V

    .line 57
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    new-instance v1, Lc8/sEb;

    invoke-direct {v1, p0, v2}, Lc8/sEb;-><init>(Lc8/tEb;Lc8/pEb;)V

    invoke-virtual {v0, v1}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V

    .line 58
    invoke-direct {p0}, Lc8/tEb;->startCommitTask()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lc8/tEb;)V
    .locals 0
    .param p0, "x0"    # Lc8/tEb;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/tEb;->commitEventsToComputer()V

    return-void
.end method

.method static synthetic access$200(Lc8/tEb;)V
    .locals 0
    .param p0, "x0"    # Lc8/tEb;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/tEb;->clearTempAlarmTable()V

    return-void
.end method

.method static synthetic access$300(Lc8/tEb;)V
    .locals 0
    .param p0, "x0"    # Lc8/tEb;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/tEb;->clearTempCounterTable()V

    return-void
.end method

.method static synthetic access$400(Lc8/tEb;)V
    .locals 0
    .param p0, "x0"    # Lc8/tEb;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/tEb;->clearTempStatTable()V

    return-void
.end method

.method private clearAndStore(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p1, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 125
    monitor-enter p1

    .line 126
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 128
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Wzb;->insert(Ljava/util/List;)V

    goto :goto_0

    .line 128
    .end local v0    # "temp":Ljava/util/ArrayList;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private clearAndSyncMetric(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/jEb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/model/Metric;>;"
    if-nez p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v4, "updateList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/model/Metric;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "insertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/model/Metric;>;"
    monitor-enter p1

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 141
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/jEb;

    .line 142
    .local v3, "m":Lc8/jEb;
    invoke-virtual {v3}, Lc8/jEb;->getModule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lc8/jEb;->getMonitorPoint()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lc8/tEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v0

    .line 143
    .local v0, "dbMetric":Lc8/jEb;
    if-eqz v0, :cond_2

    .line 144
    iget-wide v6, v0, Lc8/jEb;->_id:J

    iput-wide v6, v3, Lc8/jEb;->_id:J

    .line 145
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 151
    .end local v0    # "dbMetric":Lc8/jEb;
    .end local v3    # "m":Lc8/jEb;
    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 150
    :cond_3
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 151
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 153
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc8/Wzb;->update(Ljava/util/List;)V

    .line 155
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 156
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v5

    invoke-virtual {v5, v2}, Lc8/Wzb;->insert(Ljava/util/List;)V

    goto :goto_0
.end method

.method private clearEvent(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/Xzb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/analytics/core/db/Entity;>;"
    invoke-direct {p0, p1}, Lc8/tEb;->clearExpiredEvent(Ljava/lang/Class;)I

    .line 296
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Wzb;->count(Ljava/lang/Class;)I

    move-result v0

    .line 297
    .local v0, "count":I
    const v1, 0xc350

    if-le v0, v1, :cond_0

    .line 298
    const/16 v1, 0x2710

    invoke-direct {p0, p1, v1}, Lc8/tEb;->clearEventByCount(Ljava/lang/Class;I)J

    .line 300
    :cond_0
    return-void
.end method

.method private clearEventByCount(Ljava/lang/Class;I)J
    .locals 4
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/Xzb;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/analytics/core/db/Entity;>;"
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/Wzb;->getTablename(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, "tableName":Ljava/lang/String;
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " _id in ( select _id from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  ORDER BY  _id ASC LIMIT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lc8/Wzb;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    return-wide v2
.end method

.method private clearExpiredEvent(Ljava/lang/Class;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lc8/Xzb;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/analytics/core/db/Entity;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 309
    .local v0, "cal1":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v4, -0x7

    invoke-virtual {v0, v1, v4}, Ljava/util/Calendar;->add(II)V

    .line 310
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 311
    .local v2, "servenDayAgo":J
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "commit_time< "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, p1, v4, v5}, Lc8/Wzb;->delete(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private clearTempAlarmTable()V
    .locals 1

    .prologue
    .line 287
    const-class v0, Lc8/mEb;

    invoke-direct {p0, v0}, Lc8/tEb;->clearEvent(Ljava/lang/Class;)V

    .line 288
    return-void
.end method

.method private clearTempCounterTable()V
    .locals 1

    .prologue
    .line 283
    const-class v0, Lc8/nEb;

    invoke-direct {p0, v0}, Lc8/tEb;->clearEvent(Ljava/lang/Class;)V

    .line 284
    return-void
.end method

.method private clearTempStatTable()V
    .locals 1

    .prologue
    .line 291
    const-class v0, Lc8/uEb;

    invoke-direct {p0, v0}, Lc8/tEb;->clearEvent(Ljava/lang/Class;)V

    .line 292
    return-void
.end method

.method private commitEventsToComputer()V
    .locals 22

    .prologue
    .line 195
    invoke-static {}, Lc8/NBb;->d()V

    .line 196
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v14

    .local v14, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v0, v14

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    aget-object v21, v14, v18

    .line 198
    .local v21, "type":Lcom/alibaba/appmonitor/event/EventType;
    :goto_1
    const/16 v2, 0x1f4

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Lc8/tEb;->getExpireEvents(Lcom/alibaba/appmonitor/event/EventType;I)Ljava/util/List;

    move-result-object v16

    .line 199
    .local v16, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/appmonitor/offline/TempEvent;>;"
    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v21, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "events.size()"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 203
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_1

    .line 204
    sget-object v2, Lc8/rEb;->$SwitchMap$com$alibaba$appmonitor$event$EventType:[I

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/appmonitor/event/EventType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 203
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 206
    :pswitch_0
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/mEb;

    .line 207
    .local v13, "alarm":Lc8/mEb;
    invoke-virtual {v13}, Lc8/mEb;->isSuccessEvent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    invoke-static {}, Lc8/aEb;->getRepo()Lc8/aEb;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    iget-object v4, v13, Lc8/mEb;->module:Ljava/lang/String;

    iget-object v5, v13, Lc8/mEb;->monitorPoint:Ljava/lang/String;

    iget-object v6, v13, Lc8/mEb;->arg:Ljava/lang/String;

    iget-wide v8, v13, Lc8/mEb;->commitTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, v13, Lc8/mEb;->access:Ljava/lang/String;

    iget-object v9, v13, Lc8/mEb;->accessSubType:Ljava/lang/String;

    invoke-virtual/range {v2 .. v9}, Lc8/aEb;->alarmEventSuccessIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 210
    :cond_0
    invoke-static {}, Lc8/aEb;->getRepo()Lc8/aEb;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    iget-object v4, v13, Lc8/mEb;->module:Ljava/lang/String;

    iget-object v5, v13, Lc8/mEb;->monitorPoint:Ljava/lang/String;

    iget-object v6, v13, Lc8/mEb;->arg:Ljava/lang/String;

    iget-object v7, v13, Lc8/mEb;->errCode:Ljava/lang/String;

    iget-object v8, v13, Lc8/mEb;->errMsg:Ljava/lang/String;

    iget-wide v10, v13, Lc8/mEb;->commitTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, v13, Lc8/mEb;->access:Ljava/lang/String;

    iget-object v11, v13, Lc8/mEb;->accessSubType:Ljava/lang/String;

    invoke-virtual/range {v2 .. v11}, Lc8/aEb;->alarmEventFailIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 214
    .end local v13    # "alarm":Lc8/mEb;
    :pswitch_1
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lc8/nEb;

    .line 215
    .local v15, "counter":Lc8/nEb;
    invoke-static {}, Lc8/aEb;->getRepo()Lc8/aEb;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v4

    iget-object v5, v15, Lc8/nEb;->module:Ljava/lang/String;

    iget-object v6, v15, Lc8/nEb;->monitorPoint:Ljava/lang/String;

    iget-object v7, v15, Lc8/nEb;->arg:Ljava/lang/String;

    iget-wide v8, v15, Lc8/nEb;->value:D

    iget-wide v10, v15, Lc8/nEb;->commitTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iget-object v11, v15, Lc8/nEb;->access:Ljava/lang/String;

    iget-object v12, v15, Lc8/nEb;->accessSubType:Ljava/lang/String;

    invoke-virtual/range {v3 .. v12}, Lc8/aEb;->countEventCommit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 218
    .end local v15    # "counter":Lc8/nEb;
    :pswitch_2
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lc8/uEb;

    .line 219
    .local v20, "stat":Lc8/uEb;
    invoke-static {}, Lc8/aEb;->getRepo()Lc8/aEb;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v3

    move-object/from16 v0, v20

    iget-object v4, v0, Lc8/uEb;->module:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v5, v0, Lc8/uEb;->monitorPoint:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lc8/uEb;->getMeasureVauleSet()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v6

    invoke-virtual/range {v20 .. v20}, Lc8/uEb;->getDimensionValue()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lc8/aEb;->commitStatEvent(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    goto/16 :goto_3

    .line 223
    .end local v20    # "stat":Lc8/uEb;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/tEb;->delete(Ljava/util/List;)V

    goto/16 :goto_1

    .line 196
    .end local v17    # "i":I
    :cond_2
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 226
    .end local v16    # "events":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/appmonitor/offline/TempEvent;>;"
    .end local v21    # "type":Lcom/alibaba/appmonitor/event/EventType;
    :cond_3
    return-void

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private delete(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lc8/oEb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<+Lcom/alibaba/appmonitor/offline/TempEvent;>;"
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Wzb;->delete(Ljava/util/List;)I

    .line 230
    return-void
.end method

.method private getCls(Lcom/alibaba/appmonitor/event/EventType;)Ljava/lang/Class;
    .locals 1
    .param p1, "type"    # Lcom/alibaba/appmonitor/event/EventType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/event/EventType;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lc8/Xzb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_0

    .line 175
    const-class v0, Lc8/mEb;

    .line 181
    :goto_0
    return-object v0

    .line 176
    :cond_0
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_1

    .line 177
    const-class v0, Lc8/nEb;

    goto :goto_0

    .line 178
    :cond_1
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_2

    .line 179
    const-class v0, Lc8/uEb;

    goto :goto_0

    .line 181
    :cond_2
    const-class v0, Lc8/oEb;

    goto :goto_0
.end method

.method private getDuration()J
    .locals 4

    .prologue
    .line 261
    invoke-static {}, Lc8/zzb;->getInstance()Lc8/zzb;

    move-result-object v1

    const-string/jumbo v2, "offline_duration"

    invoke-virtual {v1, v2}, Lc8/zzb;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 262
    .local v0, "duration":I
    if-gtz v0, :cond_0

    .line 263
    const v0, 0x1499700

    .line 269
    :goto_0
    int-to-long v2, v0

    return-wide v2

    .line 264
    :cond_0
    const/16 v1, 0xe10

    if-gt v0, v1, :cond_1

    .line 265
    const v0, 0x36ee80

    goto :goto_0

    .line 267
    :cond_1
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0
.end method

.method public static getInstance()Lc8/tEb;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lc8/tEb;->instance:Lc8/tEb;

    return-object v0
.end method

.method private startCommitTask()V
    .locals 8

    .prologue
    .line 252
    invoke-direct {p0}, Lc8/tEb;->getDuration()J

    move-result-wide v0

    .line 253
    .local v0, "duration":J
    iget-wide v2, p0, Lc8/tEb;->mCurrentDuration:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 254
    iput-wide v0, p0, Lc8/tEb;->mCurrentDuration:J

    .line 255
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v2

    iget-object v3, p0, Lc8/tEb;->mCommitFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v4, p0, Lc8/tEb;->commitTask:Ljava/lang/Runnable;

    iget-wide v6, p0, Lc8/tEb;->mCurrentDuration:J

    invoke-virtual {v2, v3, v4, v6, v7}, Lc8/eCb;->scheduleAtFixedRate(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, p0, Lc8/tEb;->mCommitFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 257
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lc8/jEb;)V
    .locals 6
    .param p1, "m"    # Lc8/jEb;

    .prologue
    .line 86
    invoke-static {}, Lc8/NBb;->d()V

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iget-object v0, p0, Lc8/tEb;->mMetricLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_0
    iget-object v0, p0, Lc8/tEb;->mMetricLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 91
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/tEb;->storeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/tEb;->storeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public add(Lcom/alibaba/appmonitor/event/EventType;Lc8/oEb;)V
    .locals 6
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "event"    # Lc8/oEb;

    .prologue
    const/16 v1, 0x64

    .line 69
    invoke-static {}, Lc8/NBb;->d()V

    .line 70
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_3

    .line 71
    iget-object v0, p0, Lc8/tEb;->mAlarmEventLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/tEb;->mAlarmEventLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lc8/tEb;->mCounterEventLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lc8/tEb;->mStatEventLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 78
    :cond_1
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/tEb;->storeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 82
    :cond_2
    :goto_1
    return-void

    .line 72
    :cond_3
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->COUNTER:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_4

    .line 73
    iget-object v0, p0, Lc8/tEb;->mCounterEventLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_4
    sget-object v0, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    if-ne v0, p1, :cond_0

    .line 75
    iget-object v0, p0, Lc8/tEb;->mStatEventLists:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 79
    :cond_5
    iget-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    :cond_6
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    iget-object v1, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    iget-object v2, p0, Lc8/tEb;->storeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/mEb;

    invoke-virtual {v0, v1}, Lc8/Wzb;->clear(Ljava/lang/Class;)V

    .line 240
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/nEb;

    invoke-virtual {v0, v1}, Lc8/Wzb;->clear(Ljava/lang/Class;)V

    .line 241
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    const-class v1, Lc8/uEb;

    invoke-virtual {v0, v1}, Lc8/Wzb;->clear(Ljava/lang/Class;)V

    .line 242
    return-void
.end method

.method public get(Lcom/alibaba/appmonitor/event/EventType;I)Ljava/util/List;
    .locals 3
    .param p1, "type"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "I)",
            "Ljava/util/List",
            "<+",
            "Lc8/oEb;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/tEb;->getCls(Lcom/alibaba/appmonitor/event/EventType;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2, p2}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExpireEvents(Lcom/alibaba/appmonitor/event/EventType;I)Ljava/util/List;
    .locals 8
    .param p1, "type"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/event/EventType;",
            "I)",
            "Ljava/util/List",
            "<+",
            "Lc8/oEb;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x3e8

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 165
    .local v2, "now":J
    invoke-direct {p0}, Lc8/tEb;->getDuration()J

    move-result-wide v4

    div-long/2addr v4, v6

    sub-long v0, v2, v4

    .line 166
    .local v0, "last":J
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v4

    invoke-direct {p0, p1}, Lc8/tEb;->getCls(Lcom/alibaba/appmonitor/event/EventType;)Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "commit_time<"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "access,sub_access,module,monitor_point"

    invoke-virtual {v4, v5, v6, v7, p2}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;
    .locals 6
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v2

    invoke-virtual {v2}, Lc8/uzb;->getDbMgr()Lc8/Wzb;

    move-result-object v2

    const-class v3, Lc8/jEb;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "module=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\" and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "monitor_point=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v1, v5}, Lc8/Wzb;->find(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "temp":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/model/Metric;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 102
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/jEb;

    .line 104
    :cond_0
    return-object v1
.end method

.method public onBackground()V
    .locals 6

    .prologue
    .line 186
    invoke-static {}, Lc8/NBb;->d()V

    .line 187
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lc8/tEb;->storeTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lc8/eCb;->schedule(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lc8/tEb;->mStoreFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 188
    return-void
.end method

.method public onChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 246
    const-string/jumbo v0, "offline_duration"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lc8/tEb;->startCommitTask()V

    .line 249
    :cond_0
    return-void
.end method

.method public onCrash(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    invoke-static {}, Lc8/NBb;->d()V

    .line 235
    invoke-virtual {p0}, Lc8/tEb;->store()V

    .line 236
    return-void
.end method

.method public onForeground()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public store()V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lc8/NBb;->d()V

    .line 113
    iget-object v0, p0, Lc8/tEb;->mAlarmEventLists:Ljava/util/List;

    invoke-direct {p0, v0}, Lc8/tEb;->clearAndStore(Ljava/util/List;)V

    .line 114
    iget-object v0, p0, Lc8/tEb;->mCounterEventLists:Ljava/util/List;

    invoke-direct {p0, v0}, Lc8/tEb;->clearAndStore(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lc8/tEb;->mStatEventLists:Ljava/util/List;

    invoke-direct {p0, v0}, Lc8/tEb;->clearAndStore(Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lc8/tEb;->mMetricLists:Ljava/util/List;

    invoke-direct {p0, v0}, Lc8/tEb;->clearAndSyncMetric(Ljava/util/List;)V

    .line 117
    return-void
.end method
