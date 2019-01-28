.class public Lc8/IQ;
.super Ljava/lang/Object;
.source "Countly.java"


# static fields
.field private static failedTimer:Ljava/util/Timer;

.field private static instance:Lc8/IQ;

.field private static normalTimer:Ljava/util/Timer;

.field private static requestList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctx:Landroid/content/Context;

.field private recordEventMessage:Lc8/KQ;

.field protected sendFailedMessageThread:Lc8/MQ;

.field protected sendNormalMessageThread:Lc8/MQ;

.field private timer_delay:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lc8/IQ;->instance:Lc8/IQ;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/IQ;->timer_delay:J

    .line 23
    return-void
.end method

.method static synthetic access$0(Lc8/IQ;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lc8/IQ;->startFailedRun()V

    return-void
.end method

.method private initDeviceInfo(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lc8/FQ;

    invoke-direct {v1, p0, p1}, Lc8/FQ;-><init>(Lc8/IQ;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    return-void
.end method

.method public static declared-synchronized sharedInstance()Lc8/IQ;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lc8/IQ;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/IQ;->instance:Lc8/IQ;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lc8/IQ;

    invoke-direct {v0}, Lc8/IQ;-><init>()V

    sput-object v0, Lc8/IQ;->instance:Lc8/IQ;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/IQ;->requestList:Ljava/util/HashSet;

    .line 42
    :cond_0
    sget-object v0, Lc8/IQ;->instance:Lc8/IQ;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startFailedRun()V
    .locals 5

    .prologue
    .line 120
    iget-object v1, p0, Lc8/IQ;->sendFailedMessageThread:Lc8/MQ;

    if-eqz v1, :cond_2

    .line 121
    iget-object v1, p0, Lc8/IQ;->sendFailedMessageThread:Lc8/MQ;

    invoke-virtual {v1}, Lc8/MQ;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc8/IQ;->sendFailedMessageThread:Lc8/MQ;

    .line 122
    invoke-virtual {v1}, Lc8/MQ;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "--------------failed\u6b63\u5728\u53d1\u9001\uff0c\u6682\u672a\u505c"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 127
    :cond_2
    iget-object v1, p0, Lc8/IQ;->ctx:Landroid/content/Context;

    .line 128
    const-string/jumbo v2, "cn.com.mma.mobile.tracking.falied"

    .line 127
    invoke-static {v1, v2}, Lc8/hR;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 131
    new-instance v1, Lc8/MQ;

    .line 132
    const-string/jumbo v2, "cn.com.mma.mobile.tracking.falied"

    iget-object v3, p0, Lc8/IQ;->ctx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lc8/MQ;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 131
    iput-object v1, p0, Lc8/IQ;->sendFailedMessageThread:Lc8/MQ;

    .line 133
    iget-object v1, p0, Lc8/IQ;->sendFailedMessageThread:Lc8/MQ;

    invoke-virtual {v1}, Lc8/MQ;->start()V

    goto :goto_0
.end method

.method private startTask(Lc8/TQ;)V
    .locals 7
    .param p1, "sdk"    # Lc8/TQ;

    .prologue
    .line 83
    :try_start_0
    sget-object v0, Lc8/IQ;->normalTimer:Ljava/util/Timer;

    new-instance v1, Lc8/GQ;

    invoke-direct {v1, p0}, Lc8/GQ;-><init>(Lc8/IQ;)V

    .line 87
    const-wide/16 v2, 0x0

    if-nez p1, :cond_0

    iget-wide v4, p0, Lc8/IQ;->timer_delay:J

    .line 83
    :goto_0
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 92
    sget-object v0, Lc8/IQ;->failedTimer:Ljava/util/Timer;

    new-instance v1, Lc8/HQ;

    invoke-direct {v1, p0}, Lc8/HQ;-><init>(Lc8/IQ;)V

    .line 96
    const-wide/16 v2, 0x0

    if-nez p1, :cond_1

    iget-wide v4, p0, Lc8/IQ;->timer_delay:J

    .line 92
    :goto_1
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 101
    :goto_2
    return-void

    .line 88
    :cond_0
    sget v4, Lc8/EQ;->OFFLINECACHE_QUEUEEXPIRATIONSECS:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    goto :goto_0

    .line 97
    :cond_1
    sget v4, Lc8/EQ;->OFFLINECACHE_QUEUEEXPIRATIONSECS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    goto :goto_1

    .line 98
    :catch_0
    move-exception v6

    .line 99
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public getHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    sget-object v0, Lc8/IQ;->requestList:Ljava/util/HashSet;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p1, p0}, Lc8/KQ;->getInstance(Landroid/content/Context;Lc8/IQ;)Lc8/KQ;

    move-result-object v1

    iput-object v1, p0, Lc8/IQ;->recordEventMessage:Lc8/KQ;

    .line 57
    sget-object v1, Lc8/IQ;->instance:Lc8/IQ;

    iput-object p1, v1, Lc8/IQ;->ctx:Landroid/content/Context;

    .line 58
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lc8/IQ;->normalTimer:Ljava/util/Timer;

    .line 59
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lc8/IQ;->failedTimer:Ljava/util/Timer;

    .line 60
    invoke-static {p1, p2}, Lc8/gR;->initSdkConfigResult(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0, p1}, Lc8/IQ;->initDeviceInfo(Landroid/content/Context;)V

    .line 62
    invoke-static {p1}, Lc8/gR;->getSdk(Landroid/content/Context;)Lc8/TQ;

    move-result-object v0

    .line 63
    .local v0, "sdk":Lc8/TQ;
    if-nez v0, :cond_0

    .line 64
    const-wide/32 v2, 0x36ee80

    iput-wide v2, p0, Lc8/IQ;->timer_delay:J

    .line 66
    :cond_0
    sget-object v1, Lc8/IQ;->instance:Lc8/IQ;

    invoke-direct {v1, v0}, Lc8/IQ;->startTask(Lc8/TQ;)V

    .line 67
    return-void
.end method

.method public onClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lc8/IQ;->recordEventMessage:Lc8/KQ;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lc8/IQ;->recordEventMessage:Lc8/KQ;

    invoke-virtual {v1, p1}, Lc8/KQ;->recordEventWithUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onExpose(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 150
    :try_start_0
    iget-object v1, p0, Lc8/IQ;->recordEventMessage:Lc8/KQ;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lc8/IQ;->recordEventMessage:Lc8/KQ;

    invoke-virtual {v1, p1}, Lc8/KQ;->recordEventWithUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startNormalRun()V
    .locals 5

    .prologue
    .line 104
    iget-object v1, p0, Lc8/IQ;->sendNormalMessageThread:Lc8/MQ;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lc8/IQ;->sendNormalMessageThread:Lc8/MQ;

    invoke-virtual {v1}, Lc8/MQ;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc8/IQ;->sendNormalMessageThread:Lc8/MQ;

    .line 106
    invoke-virtual {v1}, Lc8/MQ;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "--------------normal\u6b63\u5728\u53d1\u9001\uff0c\u6682\u672a\u505c"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 117
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v1, p0, Lc8/IQ;->ctx:Landroid/content/Context;

    .line 111
    const-string/jumbo v2, "cn.com.mma.mobile.tracking.normal"

    .line 110
    invoke-static {v1, v2}, Lc8/hR;->getSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 112
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    new-instance v1, Lc8/MQ;

    .line 115
    const-string/jumbo v2, "cn.com.mma.mobile.tracking.normal"

    iget-object v3, p0, Lc8/IQ;->ctx:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lc8/MQ;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 114
    iput-object v1, p0, Lc8/IQ;->sendNormalMessageThread:Lc8/MQ;

    .line 116
    iget-object v1, p0, Lc8/IQ;->sendNormalMessageThread:Lc8/MQ;

    invoke-virtual {v1}, Lc8/MQ;->start()V

    goto :goto_0
.end method
