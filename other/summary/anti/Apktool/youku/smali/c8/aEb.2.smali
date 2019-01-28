.class public Lc8/aEb;
.super Ljava/lang/Object;
.source "EventRepo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventRepo"

.field private static final TAG_COMMIT_DAY:Ljava/lang/String; = "commitDay"

.field private static eventRepo:Lc8/aEb;


# instance fields
.field private durationEventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/XDb;",
            ">;"
        }
    .end annotation
.end field

.field private eventMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
            "Lc8/lEb;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCountCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSTATCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSdf:Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/aEb;->mAlarmCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/aEb;->mCountCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/aEb;->mSTATCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 56
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/aEb;->mSdf:Ljava/text/SimpleDateFormat;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/aEb;->eventMap:Ljava/util/Map;

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    .line 69
    return-void
.end method

.method private checkUploadEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 7
    .param p1, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p2, "counter"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 314
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 315
    .local v0, "size":I
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string/jumbo v3, " EVENT size:"

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lc8/NBb;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->getTriggerCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 317
    const-string/jumbo v1, "EventRepo"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, " event size exceed trigger count."

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 318
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/aEb;->uploadEvent(I)V

    .line 320
    :cond_0
    return-void
.end method

.method private fetchUTDimensionValues(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "commitTime"    # Ljava/lang/Long;
    .param p3, "access"    # Ljava/lang/String;
    .param p4, "subAccessType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x3e8

    .line 72
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v2

    const-class v3, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v1

    check-cast v1, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    .line 74
    .local v1, "values":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 76
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 82
    :goto_0
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->USERID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getUserid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 83
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->USERNICK:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getUsernick()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 84
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->EVENTID:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 86
    if-nez p2, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    div-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 89
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 90
    .local v0, "now":Ljava/util/Date;
    const-string/jumbo v2, "commitDay"

    iget-object v3, p0, Lc8/aEb;->mSdf:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 91
    return-object v1

    .line 78
    .end local v0    # "now":Ljava/util/Date;
    :cond_1
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/yAb;->getAccess(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 79
    sget-object v2, Lcom/alibaba/analytics/core/model/LogField;->ACCESS_SUBTYPE:Lcom/alibaba/analytics/core/model/LogField;

    invoke-virtual {v2}, Lcom/alibaba/analytics/core/model/LogField;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lc8/yAb;->getAccsssSubType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    goto :goto_0
.end method

.method private getCounter(I)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p1, "eventId"    # I

    .prologue
    .line 376
    const v0, 0xffdd

    if-ne v0, p1, :cond_0

    .line 377
    iget-object v0, p0, Lc8/aEb;->mAlarmCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 383
    :goto_0
    return-object v0

    .line 378
    :cond_0
    const v0, 0xffde

    if-ne v0, p1, :cond_1

    .line 379
    iget-object v0, p0, Lc8/aEb;->mCountCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    .line 380
    :cond_1
    const v0, 0xffdf

    if-ne v0, p1, :cond_2

    .line 381
    iget-object v0, p0, Lc8/aEb;->mSTATCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    .line 383
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lc8/YDb;
    .locals 7
    .param p1, "utDimensionValues"    # Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "extraArg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/YDb;",
            ">;)",
            "Lc8/YDb;"
        }
    .end annotation

    .prologue
    .line 295
    .local p5, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alibaba/appmonitor/event/Event;>;"
    invoke-static {p2}, Lc8/aCb;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p3}, Lc8/aCb;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v1

    .line 297
    .local v1, "eventId":Ljava/lang/Integer;
    if-eqz v1, :cond_1

    .line 299
    iget-object v3, p0, Lc8/aEb;->eventMap:Ljava/util/Map;

    monitor-enter v3

    .line 300
    :try_start_0
    iget-object v2, p0, Lc8/aEb;->eventMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/lEb;

    .line 301
    .local v0, "metricValues":Lc8/lEb;
    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v2

    const-class v4, Lc8/lEb;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    .end local v0    # "metricValues":Lc8/lEb;
    check-cast v0, Lc8/lEb;

    .line 303
    .restart local v0    # "metricValues":Lc8/lEb;
    iget-object v2, p0, Lc8/aEb;->eventMap:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string/jumbo v2, "EventRepo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "put in Map utDimensionValues"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 307
    invoke-virtual/range {v0 .. v5}, Lc8/lEb;->getEvent(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lc8/YDb;

    move-result-object v2

    .line 310
    .end local v0    # "metricValues":Lc8/lEb;
    .end local v1    # "eventId":Ljava/lang/Integer;
    :goto_0
    return-object v2

    .line 306
    .restart local v1    # "eventId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 310
    .end local v1    # "eventId":Ljava/lang/Integer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getRepo()Lc8/aEb;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lc8/aEb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/aEb;->eventRepo:Lc8/aEb;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lc8/aEb;

    invoke-direct {v0}, Lc8/aEb;-><init>()V

    sput-object v0, Lc8/aEb;->eventRepo:Lc8/aEb;

    .line 63
    :cond_0
    sget-object v0, Lc8/aEb;->eventRepo:Lc8/aEb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getTransactionId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 273
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc8/kEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v0

    .line 274
    .local v0, "metric":Lc8/jEb;
    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lc8/jEb;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    .line 277
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private resetTransactionId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc8/kEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v0

    .line 285
    .local v0, "metric":Lc8/jEb;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0}, Lc8/jEb;->resetTransactionId()V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public alarmEventFailIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "errorCode"    # Ljava/lang/String;
    .param p6, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v9}, Lc8/aEb;->alarmEventFailIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public alarmEventFailIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "errorCode"    # Ljava/lang/String;
    .param p6, "errorMsg"    # Ljava/lang/String;
    .param p7, "commitTime"    # Ljava/lang/Long;
    .param p8, "access"    # Ljava/lang/String;
    .param p9, "subAccessType"    # Ljava/lang/String;

    .prologue
    .line 123
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/aEb;->fetchUTDimensionValues(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v4

    .line 124
    .local v4, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    const-class v8, Lc8/VDb;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lc8/aEb;->getEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lc8/YDb;

    move-result-object v9

    check-cast v9, Lc8/VDb;

    .line 125
    .local v9, "alarmEvent":Lc8/VDb;
    if-eqz v9, :cond_0

    .line 126
    move-object/from16 v0, p7

    invoke-virtual {v9, v0}, Lc8/VDb;->incrFail(Ljava/lang/Long;)V

    .line 127
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v9, v0, v1}, Lc8/VDb;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->isApRealTimeDebugging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v3

    const-class v5, Lc8/VDb;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v3, v5, v6}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v10

    check-cast v10, Lc8/VDb;

    .line 131
    .local v10, "event":Lc8/VDb;
    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Lc8/VDb;->incrFail(Ljava/lang/Long;)V

    .line 132
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v10, v0, v1}, Lc8/VDb;->addError(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v4, v10}, Lc8/HEb;->sendRealDebugEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lc8/YDb;)V

    .line 135
    .end local v10    # "event":Lc8/VDb;
    :cond_1
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    iget-object v5, p0, Lc8/aEb;->mAlarmCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v3, v5}, Lc8/aEb;->checkUploadEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 136
    return-void
.end method

.method public alarmEventSuccessIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 95
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Lc8/aEb;->alarmEventSuccessIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public alarmEventSuccessIncr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "commitTime"    # Ljava/lang/Long;
    .param p6, "access"    # Ljava/lang/String;
    .param p7, "subAccessType"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1, p5, p6, p7}, Lc8/aEb;->fetchUTDimensionValues(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v1

    .line 103
    .local v1, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    const-class v5, Lc8/VDb;

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lc8/aEb;->getEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lc8/YDb;

    move-result-object v6

    check-cast v6, Lc8/VDb;

    .line 104
    .local v6, "alarmEvent":Lc8/VDb;
    if-eqz v6, :cond_0

    .line 105
    invoke-virtual {v6, p5}, Lc8/VDb;->incrSuccess(Ljava/lang/Long;)V

    .line 107
    :cond_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uzb;->isApRealTimeDebugging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    const-class v2, Lc8/VDb;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-virtual {v0, v2, v3}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v7

    check-cast v7, Lc8/VDb;

    .line 109
    .local v7, "event":Lc8/VDb;
    invoke-virtual {v7, p5}, Lc8/VDb;->incrSuccess(Ljava/lang/Long;)V

    .line 110
    invoke-static {v1, v7}, Lc8/HEb;->sendRealDebugEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lc8/YDb;)V

    .line 112
    .end local v7    # "event":Lc8/VDb;
    :cond_1
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    iget-object v2, p0, Lc8/aEb;->mAlarmCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v0, v2}, Lc8/aEb;->checkUploadEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 113
    return-void
.end method

.method public beginStatEvent(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/Integer;
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "measureName"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-direct {p0, p2, p3}, Lc8/aEb;->getTransactionId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "transactionId":Ljava/lang/String;
    if-eqz v1, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 201
    invoke-virtual/range {v0 .. v5}, Lc8/aEb;->beginStatEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_0
    return-void
.end method

.method public beginStatEvent(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/Integer;
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "monitorPoint"    # Ljava/lang/String;
    .param p5, "measureName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Lc8/kEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v2

    .line 210
    .local v2, "metric":Lc8/jEb;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 211
    invoke-virtual {v2}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->getMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/Measure;

    move-result-object v1

    .line 212
    .local v1, "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    if-eqz v1, :cond_1

    .line 214
    const-class v4, Lc8/XDb;

    monitor-enter v4

    .line 215
    :try_start_0
    iget-object v3, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/XDb;

    .line 216
    .local v0, "durationEvent":Lc8/XDb;
    if-nez v0, :cond_0

    .line 217
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v3

    const-class v5, Lc8/XDb;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p3, v6, v7

    const/4 v7, 0x2

    aput-object p4, v6, v7

    invoke-virtual {v3, v5, v6}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    .end local v0    # "durationEvent":Lc8/XDb;
    check-cast v0, Lc8/XDb;

    .line 218
    .restart local v0    # "durationEvent":Lc8/XDb;
    iget-object v3, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    invoke-virtual {v0, p5}, Lc8/XDb;->start(Ljava/lang/String;)V

    .line 226
    .end local v0    # "durationEvent":Lc8/XDb;
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_1
    :goto_0
    return-void

    .line 220
    .restart local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 224
    .end local v1    # "measure":Lcom/alibaba/mtl/appmonitor/model/Measure;
    :cond_2
    const-string/jumbo v3, "log discard!,metric is null,please call AppMonitor.register() once before Transaction.begin(measure)"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public cleanExpiredEvent()V
    .locals 6

    .prologue
    .line 352
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 354
    .local v4, "transactionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 355
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 356
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    .local v3, "transactionId":Ljava/lang/String;
    iget-object v5, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/XDb;

    .line 358
    .local v0, "event":Lc8/XDb;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/XDb;->isExpired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    iget-object v5, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    .end local v0    # "event":Lc8/XDb;
    .end local v3    # "transactionId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public commitElapseEventDimensionValue(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 6
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/Integer;
    .param p3, "module"    # Ljava/lang/String;
    .param p4, "monitorPoint"    # Ljava/lang/String;
    .param p5, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    .line 259
    const-class v2, Lc8/XDb;

    monitor-enter v2

    .line 260
    :try_start_0
    iget-object v1, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/XDb;

    .line 261
    .local v0, "durationEvent":Lc8/XDb;
    if-nez v0, :cond_0

    .line 262
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v1

    const-class v3, Lc8/XDb;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    aput-object p4, v4, v5

    invoke-virtual {v1, v3, v4}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    .end local v0    # "durationEvent":Lc8/XDb;
    check-cast v0, Lc8/XDb;

    .line 263
    .restart local v0    # "durationEvent":Lc8/XDb;
    iget-object v1, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    invoke-virtual {v0, p5}, Lc8/XDb;->commitDimensionValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 267
    return-void

    .line 265
    .end local v0    # "durationEvent":Lc8/XDb;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public commitStatEvent(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V
    .locals 9
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p5, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .prologue
    const/4 v6, 0x0

    .line 161
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    move-object v8, v6

    invoke-virtual/range {v0 .. v8}, Lc8/aEb;->commitStatEvent(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public commitStatEvent(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "measureValues"    # Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .param p5, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .param p6, "commitTime"    # Ljava/lang/Long;
    .param p7, "access"    # Ljava/lang/String;
    .param p8, "subAccessType"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lc8/kEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v10

    .line 169
    .local v10, "metric":Lc8/jEb;
    if-eqz v10, :cond_4

    .line 170
    invoke-virtual {v10}, Lc8/jEb;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v10}, Lc8/jEb;->getDimensionSet()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->setConstantValue(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 173
    :cond_0
    invoke-virtual {v10}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 174
    invoke-virtual {v10}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->setConstantValue(Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 177
    :cond_1
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/aEb;->fetchUTDimensionValues(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v4

    .line 178
    .local v4, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    const/4 v7, 0x0

    const-class v8, Lc8/gEb;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lc8/aEb;->getEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lc8/YDb;

    move-result-object v11

    check-cast v11, Lc8/gEb;

    .line 180
    .local v11, "statEvent":Lc8/gEb;
    if-eqz v11, :cond_2

    .line 181
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1}, Lc8/gEb;->commit(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 184
    :cond_2
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->isApRealTimeDebugging()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 185
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v3

    const-class v5, Lc8/gEb;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-virtual {v3, v5, v6}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v9

    check-cast v9, Lc8/gEb;

    .line 186
    .local v9, "event":Lc8/gEb;
    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-virtual {v9, v0, v1}, Lc8/gEb;->commit(Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 187
    invoke-static {v4, v9}, Lc8/HEb;->sendRealDebugEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lc8/YDb;)V

    .line 189
    .end local v9    # "event":Lc8/gEb;
    :cond_3
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    iget-object v5, p0, Lc8/aEb;->mSTATCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v3, v5}, Lc8/aEb;->checkUploadEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 193
    .end local v4    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    .end local v11    # "statEvent":Lc8/gEb;
    :goto_0
    return-void

    .line 191
    :cond_4
    const-string/jumbo v3, "metric is null,stat commit failed,please call AppMonitor.register() once before AppMonitor.STAT.commit()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lc8/NBb;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public countEventCommit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "value"    # D

    .prologue
    .line 142
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v10}, Lc8/aEb;->countEventCommit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public countEventCommit(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "eventId"    # I
    .param p2, "module"    # Ljava/lang/String;
    .param p3, "monitorPoint"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "value"    # D
    .param p7, "commitTime"    # Ljava/lang/Long;
    .param p8, "access"    # Ljava/lang/String;
    .param p9, "subAccessType"    # Ljava/lang/String;

    .prologue
    .line 147
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {p0, p1, v0, v1, v2}, Lc8/aEb;->fetchUTDimensionValues(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    move-result-object v4

    .line 148
    .local v4, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    const-class v8, Lc8/WDb;

    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lc8/aEb;->getEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Lc8/YDb;

    move-result-object v9

    check-cast v9, Lc8/WDb;

    .line 149
    .local v9, "countEvent":Lc8/WDb;
    if-eqz v9, :cond_0

    .line 150
    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    invoke-virtual {v9, v0, v1, v2}, Lc8/WDb;->addValue(DLjava/lang/Long;)V

    .line 152
    :cond_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/uzb;->isApRealTimeDebugging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v3

    const-class v5, Lc8/WDb;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    invoke-virtual {v3, v5, v6}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v10

    check-cast v10, Lc8/WDb;

    .line 154
    .local v10, "event":Lc8/WDb;
    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    invoke-virtual {v10, v0, v1, v2}, Lc8/WDb;->addValue(DLjava/lang/Long;)V

    .line 155
    invoke-static {v4, v10}, Lc8/HEb;->sendRealDebugEvent(Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lc8/YDb;)V

    .line 157
    .end local v10    # "event":Lc8/WDb;
    :cond_1
    invoke-static {p1}, Lcom/alibaba/appmonitor/event/EventType;->getEventType(I)Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v3

    iget-object v5, p0, Lc8/aEb;->mCountCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0, v3, v5}, Lc8/aEb;->checkUploadEvent(Lcom/alibaba/appmonitor/event/EventType;Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 158
    return-void
.end method

.method public endStatEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureName"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0, p1, p2}, Lc8/aEb;->getTransactionId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "transactionId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 234
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lc8/aEb;->endStatEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 236
    :cond_0
    return-void
.end method

.method public endStatEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "transactionId"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;
    .param p3, "resetTransactionId"    # Z

    .prologue
    .line 242
    iget-object v0, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/XDb;

    .line 243
    .local v6, "durationEvent":Lc8/XDb;
    if-eqz v6, :cond_1

    .line 244
    invoke-virtual {v6, p2}, Lc8/XDb;->end(Ljava/lang/String;)Z

    move-result v7

    .line 245
    .local v7, "isComplete":Z
    if-eqz v7, :cond_1

    .line 246
    iget-object v0, p0, Lc8/aEb;->durationEventMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    if-eqz p3, :cond_0

    .line 248
    iget-object v0, v6, Lc8/XDb;->module:Ljava/lang/String;

    iget-object v1, v6, Lc8/XDb;->monitorPoint:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/aEb;->resetTransactionId(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_0
    iget v1, v6, Lc8/XDb;->eventId:I

    iget-object v2, v6, Lc8/XDb;->module:Ljava/lang/String;

    iget-object v3, v6, Lc8/XDb;->monitorPoint:Ljava/lang/String;

    invoke-virtual {v6}, Lc8/XDb;->getMeasureValues()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v4

    invoke-virtual {v6}, Lc8/XDb;->getDimensionValues()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lc8/aEb;->commitStatEvent(ILjava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;)V

    .line 252
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v0

    invoke-virtual {v0, v6}, Lc8/vEb;->offer(Lc8/xEb;)V

    .line 255
    .end local v7    # "isComplete":Z
    :cond_1
    return-void
.end method

.method public getUploadEvent(I)Ljava/util/Map;
    .locals 12
    .param p1, "eventId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Lcom/alibaba/appmonitor/model/UTDimensionValueSet;",
            "Ljava/util/List",
            "<",
            "Lc8/YDb;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 326
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 327
    .local v4, "uploadEventMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;>;"
    iget-object v7, p0, Lc8/aEb;->eventMap:Ljava/util/Map;

    monitor-enter v7

    .line 328
    :try_start_0
    iget-object v6, p0, Lc8/aEb;->eventMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 329
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/model/MetricValueSet;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 330
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 331
    .local v0, "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/model/MetricValueSet;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;

    .line 332
    .local v5, "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/lEb;

    .line 333
    .local v3, "ms":Lc8/lEb;
    invoke-virtual {v5}, Lcom/alibaba/appmonitor/model/UTDimensionValueSet;->getEventId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 334
    if-eqz v3, :cond_1

    .line 335
    invoke-virtual {v3}, Lc8/lEb;->getEvents()Ljava/util/List;

    move-result-object v1

    .line 336
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;"
    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 343
    .end local v0    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/model/MetricValueSet;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/model/MetricValueSet;>;>;"
    .end local v3    # "ms":Lc8/lEb;
    .end local v5    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 338
    .restart local v0    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/model/MetricValueSet;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/model/MetricValueSet;>;>;"
    .restart local v3    # "ms":Lc8/lEb;
    .restart local v5    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    :cond_1
    :try_start_1
    const-string/jumbo v6, "error"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "utDimensionValues"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    invoke-static {v6, v8}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 343
    .end local v0    # "entity":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Lcom/alibaba/appmonitor/model/MetricValueSet;>;"
    .end local v3    # "ms":Lc8/lEb;
    .end local v5    # "utDimensionValues":Lcom/alibaba/appmonitor/model/UTDimensionValueSet;
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    invoke-direct {p0, p1}, Lc8/aEb;->getCounter(I)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 345
    return-object v4
.end method

.method public uploadEvent(I)V
    .locals 3
    .param p1, "eventId"    # I

    .prologue
    .line 365
    invoke-virtual {p0, p1}, Lc8/aEb;->getUploadEvent(I)Ljava/util/Map;

    move-result-object v0

    .line 366
    .local v0, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/alibaba/appmonitor/model/UTDimensionValueSet;Ljava/util/List<Lcom/alibaba/appmonitor/event/Event;>;>;"
    invoke-static {}, Lc8/eCb;->getInstance()Lc8/eCb;

    move-result-object v1

    new-instance v2, Lc8/ZDb;

    invoke-direct {v2, p0, v0}, Lc8/ZDb;-><init>(Lc8/aEb;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lc8/eCb;->submit(Ljava/lang/Runnable;)V

    .line 373
    return-void
.end method
