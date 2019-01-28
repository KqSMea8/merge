.class public final Lc8/ODb;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/NDb;,
        Lc8/MDb;,
        Lc8/LDb;,
        Lc8/KDb;
    }
.end annotation


# static fields
.field public static IS_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AppMonitorDelegate"

.field private static application:Landroid/app/Application;

.field public static mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

.field static volatile sdkInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lc8/ODb;->IS_DEBUG:Z

    .line 58
    sput-boolean v0, Lc8/ODb;->sdkInit:Z

    .line 59
    new-instance v0, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    invoke-direct {v0}, Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;-><init>()V

    sput-object v0, Lc8/ODb;->mMonitor:Lcom/alibaba/analytics/core/selfmonitor/SelfMonitorEventDispather;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 6

    .prologue
    .line 91
    const-class v2, Lc8/ODb;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "AppMonitorDelegate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "start destory"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    sget-boolean v1, Lc8/ODb;->sdkInit:Z

    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Lc8/SDb;->uploadAllEvent()V

    .line 94
    invoke-static {}, Lc8/SDb;->destroy()V

    .line 95
    invoke-static {}, Lc8/RDb;->destroy()V

    .line 96
    sget-object v1, Lc8/ODb;->application:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lc8/ODb;->application:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/yAb;->unRegister(Landroid/content/Context;)V

    .line 99
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lc8/ODb;->sdkInit:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v0, "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 101
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 102
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lc8/MAb;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static enableLog(Z)V
    .locals 4
    .param p0, "open"    # Z

    .prologue
    .line 145
    const-string/jumbo v0, "AppMonitorDelegate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[enableLog]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {p0}, Lc8/NBb;->setDebug(Z)V

    .line 147
    return-void
.end method

.method public static declared-synchronized init(Landroid/app/Application;)V
    .locals 5
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 65
    const-class v1, Lc8/ODb;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "AppMonitorDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "start init"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    sget-boolean v0, Lc8/ODb;->sdkInit:Z

    if-nez v0, :cond_0

    .line 68
    sput-object p0, Lc8/ODb;->application:Landroid/app/Application;

    .line 73
    invoke-static {}, Lc8/RDb;->init()V

    .line 75
    invoke-static {}, Lc8/SDb;->init()V

    .line 76
    invoke-static {p0}, Lc8/QDb;->init(Landroid/app/Application;)V

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lc8/ODb;->sdkInit:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 81
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lc8/ODb;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lc8/ODb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 158
    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lc8/ODb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 182
    return-void
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 8
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p4, "isCommitDetail"    # Z

    .prologue
    .line 196
    :try_start_0
    sget-boolean v2, Lc8/ODb;->sdkInit:Z

    if-eqz v2, :cond_1

    .line 197
    invoke-static {p0}, Lc8/aCb;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lc8/aCb;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    :cond_0
    const-string/jumbo v2, "AppMonitorDelegate"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "register stat event. module: "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object p0, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " monitorPoint: "

    aput-object v6, v3, v5

    const/4 v5, 0x3

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget-boolean v2, Lc8/ODb;->IS_DEBUG:Z

    if-eqz v2, :cond_1

    .line 200
    new-instance v2, Lcom/alibaba/analytics/core/selfmonitor/exception/AppMonitorException;

    const-string/jumbo v3, "register error. module and monitorPoint can\'t be null"

    invoke-direct {v2, v3}, Lcom/alibaba/analytics/core/selfmonitor/exception/AppMonitorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :catch_0
    move-exception v7

    .line 216
    .local v7, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v2, v7}, Lc8/MAb;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    .line 218
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    :try_start_1
    new-instance v0, Lc8/jEb;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/jEb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 206
    .local v0, "metric":Lc8/jEb;
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/kEb;->add(Lc8/jEb;)V

    .line 207
    invoke-static {}, Lc8/tEb;->getInstance()Lc8/tEb;

    move-result-object v2

    invoke-virtual {v2, v0}, Lc8/tEb;->add(Lc8/jEb;)V

    .line 209
    invoke-static {}, Lc8/IAb;->getInstance()Lc8/IAb;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lc8/IAb;->getMeasureSet(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 210
    .local v4, "configMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    if-eqz v4, :cond_1

    .line 211
    new-instance v1, Lc8/jEb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_abtest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lc8/jEb;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 212
    .local v1, "metricCopy":Lc8/jEb;
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/kEb;->add(Lc8/jEb;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "isCommitDetail"    # Z

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lc8/ODb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 170
    return-void
.end method

.method public static setChannel(Ljava/lang/String;)V
    .locals 1
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 735
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lc8/uzb;->setChannel(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public static setRequestAuthInfo(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "isSecurity"    # Z
    .param p1, "isEncode"    # Z
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 721
    if-eqz p0, :cond_0

    .line 722
    new-instance v0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    invoke-direct {v0, p2, p3}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .local v0, "requestAuth":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :goto_0
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/uzb;->setRequestAuthenticationInstance(Lcom/ut/mini/core/sign/IUTRequestAuthentication;)V

    .line 727
    return-void

    .line 724
    .end local v0    # "requestAuth":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :cond_0
    new-instance v0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    invoke-direct {v0, p2, p3, p1}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v0    # "requestAuth":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    goto :goto_0
.end method

.method public static setSampling(I)V
    .locals 9
    .param p0, "sampling"    # I

    .prologue
    .line 136
    const-string/jumbo v5, "AppMonitorDelegate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "[setSampling]"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v2

    .line 138
    .local v2, "eventTypes":[Lcom/alibaba/appmonitor/event/EventType;
    move-object v0, v2

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 139
    .local v1, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1, p0}, Lcom/alibaba/appmonitor/event/EventType;->setDefaultSampling(I)V

    .line 140
    invoke-static {}, Lc8/AEb;->getInstance()Lc8/AEb;

    move-result-object v5

    invoke-virtual {v5, v1, p0}, Lc8/AEb;->setEventTypeSampling(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_0
    return-void
.end method

.method public static setStatisticsInterval(I)V
    .locals 4
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 126
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 127
    .local v1, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1, p0}, Lcom/alibaba/appmonitor/event/EventType;->setStatisticsInterval(I)V

    .line 128
    invoke-static {v1, p0}, Lc8/ODb;->setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_0
    return-void
.end method

.method public static setStatisticsInterval(Lcom/alibaba/appmonitor/event/EventType;I)V
    .locals 2
    .param p0, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p1, "statisticsInterval"    # I

    .prologue
    .line 704
    :try_start_0
    sget-boolean v1, Lc8/ODb;->sdkInit:Z

    if-eqz v1, :cond_0

    .line 705
    if-eqz p0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    invoke-static {v1, p1}, Lc8/SDb;->setStatisticsInterval(II)V

    .line 707
    if-lez p1, :cond_1

    .line 708
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/appmonitor/event/EventType;->setOpen(Z)V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/appmonitor/event/EventType;->setOpen(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lc8/MAb;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized triggerUpload()V
    .locals 6

    .prologue
    .line 111
    const-class v2, Lc8/ODb;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "AppMonitorDelegate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "triggerUpload"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sget-boolean v1, Lc8/ODb;->sdkInit:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lc8/uzb;->isNotDisAM()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    invoke-static {}, Lc8/SDb;->uploadAllEvent()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v0, "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 115
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 116
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lc8/MAb;->log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static updateMeasure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "defaultValue"    # D

    .prologue
    .line 221
    const-string/jumbo v1, "AppMonitorDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[updateMeasure]"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :try_start_0
    sget-boolean v1, Lc8/ODb;->sdkInit:Z

    if-eqz v1, :cond_0

    .line 224
    invoke-static {p0}, Lc8/aCb;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lc8/aCb;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lc8/kEb;->getRepo()Lc8/kEb;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lc8/kEb;->getMetric(Ljava/lang/String;Ljava/lang/String;)Lc8/jEb;

    move-result-object v0

    .line 228
    .local v0, "metric":Lc8/jEb;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lc8/jEb;->getMeasureSet()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, p2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->upateMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "metric":Lc8/jEb;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
