.class public Lc8/QUb;
.super Ljava/lang/Thread;
.source "MainLooperMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/OUb;,
        Lc8/PUb;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANR_LISTENER:Lc8/PUb;

.field private static final DEFAULT_ANR_TIMEOUT:I = 0x1388

.field private static final DEFAULT_INTERRUPTION_LISTENER:Lc8/OUb;


# instance fields
.field public _applicationIdleMonitor:Lc8/EUb;

.field public _baseInterval:J

.field private _interruptionListener:Lc8/OUb;

.field public _isBetaVersion:Z

.field public _isCloseSampling:Z

.field public _isStopMonitor:Z

.field private _loopTimeStamp:J

.field private _mainLooperListener:Lc8/PUb;

.field private _namePrefix:Ljava/lang/String;

.field public intervalTime:J

.field final printer:Landroid/util/Printer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lc8/LUb;

    invoke-direct {v0}, Lc8/LUb;-><init>()V

    sput-object v0, Lc8/QUb;->DEFAULT_ANR_LISTENER:Lc8/PUb;

    .line 37
    new-instance v0, Lc8/MUb;

    invoke-direct {v0}, Lc8/MUb;-><init>()V

    sput-object v0, Lc8/QUb;->DEFAULT_INTERRUPTION_LISTENER:Lc8/OUb;

    return-void
.end method

.method public constructor <init>(JLandroid/content/Context;)V
    .locals 3
    .param p1, "baseInterval"    # J
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    sget-object v0, Lc8/QUb;->DEFAULT_ANR_LISTENER:Lc8/PUb;

    iput-object v0, p0, Lc8/QUb;->_mainLooperListener:Lc8/PUb;

    .line 44
    sget-object v0, Lc8/QUb;->DEFAULT_INTERRUPTION_LISTENER:Lc8/OUb;

    iput-object v0, p0, Lc8/QUb;->_interruptionListener:Lc8/OUb;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/QUb;->_namePrefix:Ljava/lang/String;

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lc8/QUb;->_loopTimeStamp:J

    .line 50
    iput-boolean v2, p0, Lc8/QUb;->_isStopMonitor:Z

    .line 51
    iput-boolean v2, p0, Lc8/QUb;->_isCloseSampling:Z

    .line 52
    iput-boolean v2, p0, Lc8/QUb;->_isBetaVersion:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/QUb;->_applicationIdleMonitor:Lc8/EUb;

    .line 55
    new-instance v0, Lc8/NUb;

    invoke-direct {v0, p0}, Lc8/NUb;-><init>(Lc8/QUb;)V

    iput-object v0, p0, Lc8/QUb;->printer:Landroid/util/Printer;

    .line 79
    iput-wide p1, p0, Lc8/QUb;->_baseInterval:J

    .line 80
    iget-wide v0, p0, Lc8/QUb;->_baseInterval:J

    iput-wide v0, p0, Lc8/QUb;->intervalTime:J

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lc8/QUb;->printer:Landroid/util/Printer;

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1, p1}, Lc8/QUb;-><init>(JLandroid/content/Context;)V

    .line 71
    return-void
.end method

.method static synthetic access$002(Lc8/QUb;J)J
    .locals 1
    .param p0, "x0"    # Lc8/QUb;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lc8/QUb;->_loopTimeStamp:J

    return-wide p1
.end method

.method private getRandomNumber(II)I
    .locals 6
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 231
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/2addr v1, p1

    .line 235
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "get random number err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 147
    const-string/jumbo v3, "MainLooper_Monitor"

    invoke-virtual {p0, v3}, Lc8/QUb;->setName(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lc8/QUb;->samplingCal()V

    .line 152
    :goto_0
    invoke-virtual {p0}, Lc8/QUb;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lc8/HUb;->getInstance()Lc8/HUb;

    move-result-object v3

    invoke-virtual {v3}, Lc8/HUb;->getWatchConfig()Lc8/IUb;

    move-result-object v3

    iget-boolean v3, v3, Lc8/IUb;->closeMainLooperMonitor:Z

    if-nez v3, :cond_2

    .line 154
    :try_start_0
    iget-boolean v3, p0, Lc8/QUb;->_isStopMonitor:Z

    if-nez v3, :cond_1

    .line 155
    iget-wide v8, p0, Lc8/QUb;->_loopTimeStamp:J

    .line 156
    .local v8, "startTimeStamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "currentTimeStamp":J
    sub-long v10, v0, v8

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 158
    .local v4, "interval":J
    iget-wide v10, p0, Lc8/QUb;->_loopTimeStamp:J

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_0

    .line 159
    iget-wide v10, p0, Lc8/QUb;->intervalTime:J

    cmp-long v3, v4, v10

    if-ltz v3, :cond_0

    .line 160
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lc8/QUb;->_loopTimeStamp:J

    .line 161
    iget-object v3, p0, Lc8/QUb;->_mainLooperListener:Lc8/PUb;

    iget-object v10, p0, Lc8/QUb;->_namePrefix:Ljava/lang/String;

    invoke-interface {v3, v10}, Lc8/PUb;->onAppNotResponding(Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v3, p0, Lc8/QUb;->_applicationIdleMonitor:Lc8/EUb;

    if-eqz v3, :cond_1

    .line 169
    iget-object v3, p0, Lc8/QUb;->_applicationIdleMonitor:Lc8/EUb;

    invoke-virtual {v3}, Lc8/EUb;->isIdleStatus()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 171
    iget-wide v10, p0, Lc8/QUb;->intervalTime:J

    const-wide/16 v12, 0x1388

    cmp-long v3, v10, v12

    if-gez v3, :cond_3

    .line 172
    iget-wide v10, p0, Lc8/QUb;->intervalTime:J

    long-to-int v3, v10

    const/16 v10, 0x1388

    invoke-direct {p0, v3, v10}, Lc8/QUb;->getRandomNumber(II)I

    move-result v3

    int-to-long v6, v3

    .line 178
    .local v6, "sleepTime":J
    :goto_1
    iget-wide v10, p0, Lc8/QUb;->intervalTime:J

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    cmp-long v3, v6, v10

    if-lez v3, :cond_1

    .line 179
    iget-wide v10, p0, Lc8/QUb;->intervalTime:J

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    sub-long v10, v6, v10

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 186
    .end local v0    # "currentTimeStamp":J
    .end local v4    # "interval":J
    .end local v6    # "sleepTime":J
    .end local v8    # "startTimeStamp":J
    :cond_1
    iget-wide v10, p0, Lc8/QUb;->intervalTime:J

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lc8/QUb;->_interruptionListener:Lc8/OUb;

    invoke-interface {v3, v2}, Lc8/OUb;->onInterrupted(Ljava/lang/InterruptedException;)V

    .line 193
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    sget-object v3, Lc8/IUb;->TAG:Ljava/lang/String;

    .line 194
    return-void

    .line 174
    .restart local v0    # "currentTimeStamp":J
    .restart local v4    # "interval":J
    .restart local v8    # "startTimeStamp":J
    :cond_3
    const/16 v3, 0x1388

    :try_start_1
    iget-wide v10, p0, Lc8/QUb;->intervalTime:J

    long-to-int v10, v10

    invoke-direct {p0, v3, v10}, Lc8/QUb;->getRandomNumber(II)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    int-to-long v6, v3

    .restart local v6    # "sleepTime":J
    goto :goto_1
.end method

.method public samplingCal()V
    .locals 3

    .prologue
    .line 201
    :try_start_0
    iget-boolean v1, p0, Lc8/QUb;->_isCloseSampling:Z

    if-nez v1, :cond_1

    .line 212
    iget-boolean v1, p0, Lc8/QUb;->_isBetaVersion:Z

    if-nez v1, :cond_0

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/QUb;->_isStopMonitor:Z

    .line 224
    :goto_0
    return-void

    .line 216
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/QUb;->_isStopMonitor:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "sampling cal err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 219
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lc8/QUb;->_isStopMonitor:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setInterruptionListener(Lc8/OUb;)Lc8/QUb;
    .locals 1
    .param p1, "listener"    # Lc8/OUb;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    sget-object v0, Lc8/QUb;->DEFAULT_INTERRUPTION_LISTENER:Lc8/OUb;

    iput-object v0, p0, Lc8/QUb;->_interruptionListener:Lc8/OUb;

    .line 111
    :goto_0
    return-object p0

    .line 109
    :cond_0
    iput-object p1, p0, Lc8/QUb;->_interruptionListener:Lc8/OUb;

    goto :goto_0
.end method

.method public setMainLooperListener(Lc8/PUb;)Lc8/QUb;
    .locals 1
    .param p1, "listener"    # Lc8/PUb;

    .prologue
    .line 90
    if-nez p1, :cond_0

    .line 91
    sget-object v0, Lc8/QUb;->DEFAULT_ANR_LISTENER:Lc8/PUb;

    iput-object v0, p0, Lc8/QUb;->_mainLooperListener:Lc8/PUb;

    .line 96
    :goto_0
    return-object p0

    .line 94
    :cond_0
    iput-object p1, p0, Lc8/QUb;->_mainLooperListener:Lc8/PUb;

    goto :goto_0
.end method

.method public setReportMainThreadOnly()Lc8/QUb;
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/QUb;->_namePrefix:Ljava/lang/String;

    .line 130
    return-object p0
.end method

.method public setReportThreadNamePrefix(Ljava/lang/String;)Lc8/QUb;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 118
    if-nez p1, :cond_0

    .line 119
    const-string/jumbo p1, ""

    .line 120
    :cond_0
    iput-object p1, p0, Lc8/QUb;->_namePrefix:Ljava/lang/String;

    .line 121
    return-object p0
.end method

.method public setiSStopMonitor(Z)V
    .locals 0
    .param p1, "isStop"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lc8/QUb;->_isStopMonitor:Z

    .line 139
    return-void
.end method
