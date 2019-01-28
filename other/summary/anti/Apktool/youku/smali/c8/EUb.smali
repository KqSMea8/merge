.class public Lc8/EUb;
.super Ljava/lang/Object;
.source "ApplicationIdleMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/DUb;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private isIdle:Z

.field private mainLooperMonitor:Lc8/QUb;

.field private touchTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc8/QUb;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mainLooperMonitor"    # Lc8/QUb;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v1, p0, Lc8/EUb;->isIdle:Z

    .line 46
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lc8/EUb;->touchTime:J

    .line 48
    iput-object v4, p0, Lc8/EUb;->context:Landroid/content/Context;

    .line 49
    iput-object v4, p0, Lc8/EUb;->mainLooperMonitor:Lc8/QUb;

    .line 53
    :try_start_0
    iput-object p1, p0, Lc8/EUb;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lc8/EUb;->mainLooperMonitor:Lc8/QUb;

    .line 57
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 58
    iget-object v1, p0, Lc8/EUb;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lc8/EUb;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    new-instance v2, Lc8/DUb;

    invoke-direct {v2, p0}, Lc8/DUb;-><init>(Lc8/EUb;)V

    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "build version %s not suppert MainLooperMonitor, registerActivityLifecycleCallbacks failed"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lc8/IUb;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "application monitor err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/EUb;)Lc8/QUb;
    .locals 1
    .param p0, "x0"    # Lc8/EUb;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/EUb;->mainLooperMonitor:Lc8/QUb;

    return-object v0
.end method

.method static synthetic access$102(Lc8/EUb;J)J
    .locals 1
    .param p0, "x0"    # Lc8/EUb;
    .param p1, "x1"    # J

    .prologue
    .line 37
    iput-wide p1, p0, Lc8/EUb;->touchTime:J

    return-wide p1
.end method


# virtual methods
.method public isIdleStatus()Z
    .locals 6

    .prologue
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 72
    .local v0, "currentTimeStamp":J
    iget-wide v2, p0, Lc8/EUb;->touchTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 74
    iget-wide v2, p0, Lc8/EUb;->touchTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 76
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/EUb;->isIdle:Z

    .line 82
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lc8/EUb;->isIdle:Z

    return v2

    .line 78
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/EUb;->isIdle:Z

    goto :goto_0
.end method
