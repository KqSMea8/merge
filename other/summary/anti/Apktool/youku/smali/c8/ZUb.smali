.class public Lc8/ZUb;
.super Ljava/lang/Thread;
.source "ThreadWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/XUb;,
        Lc8/YUb;
    }
.end annotation


# static fields
.field private static final DEFAULT_INTERRUPTION_LISTENER:Lc8/XUb;

.field private static final DEFAULT_THREAD_LISTENER:Lc8/YUb;

.field private static final DEFAULT_THREAD_TIMEOUT:I = 0x1388


# instance fields
.field private _interruptionListener:Lc8/XUb;

.field private _logThreadsWithoutStackTrace:Z

.field private _namePrefix:Ljava/lang/String;

.field private _threadListener:Lc8/YUb;

.field private volatile _tick:I

.field private final _ticker:Ljava/lang/Runnable;

.field private final _timeoutInterval:I

.field private final _uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lc8/UUb;

    invoke-direct {v0}, Lc8/UUb;-><init>()V

    sput-object v0, Lc8/ZUb;->DEFAULT_THREAD_LISTENER:Lc8/YUb;

    .line 31
    new-instance v0, Lc8/VUb;

    invoke-direct {v0}, Lc8/VUb;-><init>()V

    sput-object v0, Lc8/ZUb;->DEFAULT_INTERRUPTION_LISTENER:Lc8/XUb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lc8/ZUb;-><init>(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "timeoutInterval"    # I

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 37
    sget-object v0, Lc8/ZUb;->DEFAULT_THREAD_LISTENER:Lc8/YUb;

    iput-object v0, p0, Lc8/ZUb;->_threadListener:Lc8/YUb;

    .line 38
    sget-object v0, Lc8/ZUb;->DEFAULT_INTERRUPTION_LISTENER:Lc8/XUb;

    iput-object v0, p0, Lc8/ZUb;->_interruptionListener:Lc8/XUb;

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/ZUb;->_uiHandler:Landroid/os/Handler;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/ZUb;->_namePrefix:Ljava/lang/String;

    .line 44
    iput-boolean v2, p0, Lc8/ZUb;->_logThreadsWithoutStackTrace:Z

    .line 46
    iput v2, p0, Lc8/ZUb;->_tick:I

    .line 48
    new-instance v0, Lc8/WUb;

    invoke-direct {v0, p0}, Lc8/WUb;-><init>(Lc8/ZUb;)V

    iput-object v0, p0, Lc8/ZUb;->_ticker:Ljava/lang/Runnable;

    .line 69
    iput p1, p0, Lc8/ZUb;->_timeoutInterval:I

    .line 70
    return-void
.end method

.method static synthetic access$000(Lc8/ZUb;)I
    .locals 1
    .param p0, "x0"    # Lc8/ZUb;

    .prologue
    .line 10
    iget v0, p0, Lc8/ZUb;->_tick:I

    return v0
.end method

.method static synthetic access$002(Lc8/ZUb;I)I
    .locals 0
    .param p0, "x0"    # Lc8/ZUb;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lc8/ZUb;->_tick:I

    return p1
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 136
    const-string/jumbo v5, "Thread-WatchDog"

    invoke-virtual {p0, v5}, Lc8/ZUb;->setName(Ljava/lang/String;)V

    .line 139
    const/4 v3, 0x1

    .line 140
    .local v3, "sleepCount":I
    :cond_0
    invoke-virtual {p0}, Lc8/ZUb;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 141
    iget v2, p0, Lc8/ZUb;->_tick:I

    .line 142
    .local v2, "lastTick":I
    iget-object v5, p0, Lc8/ZUb;->_uiHandler:Landroid/os/Handler;

    iget-object v6, p0, Lc8/ZUb;->_ticker:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    :try_start_0
    iget v5, p0, Lc8/ZUb;->_timeoutInterval:I

    div-int/lit16 v0, v5, 0x3e8

    .line 146
    .local v0, "count":I
    const/4 v4, 0x1

    .local v4, "timer":I
    :goto_0
    if-gt v4, v0, :cond_1

    .line 147
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 148
    iget v5, p0, Lc8/ZUb;->_tick:I

    if-eq v5, v2, :cond_4

    .line 149
    iget-object v5, p0, Lc8/ZUb;->_threadListener:Lc8/YUb;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Lc8/YUb;->onThreadMonitorStat(Ljava/lang/String;I)V

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    const/4 v5, 0x3

    if-le v3, v5, :cond_3

    .line 153
    const/4 v3, 0x1

    .line 154
    const-wide/32 v6, 0xea60

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_1
    :goto_1
    iget v5, p0, Lc8/ZUb;->_tick:I

    if-ne v5, v2, :cond_0

    .line 169
    iget-object v5, p0, Lc8/ZUb;->_threadListener:Lc8/YUb;

    iget-object v6, p0, Lc8/ZUb;->_namePrefix:Ljava/lang/String;

    invoke-interface {v5, v6}, Lc8/YUb;->onThreadNotResponding(Ljava/lang/String;)V

    .line 173
    .end local v0    # "count":I
    .end local v2    # "lastTick":I
    .end local v4    # "timer":I
    :cond_2
    :goto_2
    return-void

    .line 156
    .restart local v0    # "count":I
    .restart local v2    # "lastTick":I
    .restart local v4    # "timer":I
    :cond_3
    sub-int v5, v0, v4

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v6, v5

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 162
    .end local v0    # "count":I
    .end local v4    # "timer":I
    :catch_0
    move-exception v1

    .line 163
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v5, p0, Lc8/ZUb;->_interruptionListener:Lc8/XUb;

    invoke-interface {v5, v1}, Lc8/XUb;->onInterrupted(Ljava/lang/InterruptedException;)V

    goto :goto_2

    .line 146
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "count":I
    .restart local v4    # "timer":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public setInterruptionListener(Lc8/XUb;)Lc8/ZUb;
    .locals 1
    .param p1, "listener"    # Lc8/XUb;

    .prologue
    .line 97
    if-nez p1, :cond_0

    .line 98
    sget-object v0, Lc8/ZUb;->DEFAULT_INTERRUPTION_LISTENER:Lc8/XUb;

    iput-object v0, p0, Lc8/ZUb;->_interruptionListener:Lc8/XUb;

    .line 103
    :goto_0
    return-object p0

    .line 101
    :cond_0
    iput-object p1, p0, Lc8/ZUb;->_interruptionListener:Lc8/XUb;

    goto :goto_0
.end method

.method public setLogThreadsWithoutStackTrace(Z)V
    .locals 0
    .param p1, "logThreadsWithoutStackTrace"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lc8/ZUb;->_logThreadsWithoutStackTrace:Z

    .line 132
    return-void
.end method

.method public setReportMainThreadOnly()Lc8/ZUb;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ZUb;->_namePrefix:Ljava/lang/String;

    .line 127
    return-object p0
.end method

.method public setReportThreadNamePrefix(Ljava/lang/String;)Lc8/ZUb;
    .locals 0
    .param p1, "prefix"    # Ljava/lang/String;

    .prologue
    .line 114
    if-nez p1, :cond_0

    .line 115
    const-string/jumbo p1, ""

    .line 116
    :cond_0
    iput-object p1, p0, Lc8/ZUb;->_namePrefix:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public setThreadListener(Lc8/YUb;)Lc8/ZUb;
    .locals 1
    .param p1, "listener"    # Lc8/YUb;

    .prologue
    .line 80
    if-nez p1, :cond_0

    .line 81
    sget-object v0, Lc8/ZUb;->DEFAULT_THREAD_LISTENER:Lc8/YUb;

    iput-object v0, p0, Lc8/ZUb;->_threadListener:Lc8/YUb;

    .line 86
    :goto_0
    return-object p0

    .line 84
    :cond_0
    iput-object p1, p0, Lc8/ZUb;->_threadListener:Lc8/YUb;

    goto :goto_0
.end method
