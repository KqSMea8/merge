.class public Lc8/Hrf;
.super Ljava/lang/Object;
.source "ColdBootCheck.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    sput-boolean v2, Lc8/osf;->sIsCodeBoot:Z

    .line 18
    sget-boolean v0, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v0, :cond_0

    .line 19
    const-string/jumbo v0, "OnLineMonitor"

    const-string/jumbo v1, "\u975e\u5b8c\u5168\u51b7\u542f\u52a8\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    return v2
.end method

.method public startChecker()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 28
    :cond_0
    return-void
.end method

.method public stopChecker()V
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 33
    :cond_0
    return-void
.end method
