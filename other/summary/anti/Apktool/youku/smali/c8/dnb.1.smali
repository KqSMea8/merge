.class public Lc8/dnb;
.super Ljava/lang/Object;
.source "ALPCallbackCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cnb;
    }
.end annotation


# static fields
.field private static handler:Landroid/os/Handler;

.field private static isStart:Z

.field private static task:Lc8/cnb;

.field private static timeOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/dnb;->handler:Landroid/os/Handler;

    .line 15
    const v0, 0x493e0

    sput v0, Lc8/dnb;->timeOut:I

    .line 17
    const/4 v0, 0x0

    sput-object v0, Lc8/dnb;->task:Lc8/cnb;

    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lc8/dnb;->isStart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lc8/dnb;->timeOut:I

    return v0
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lc8/dnb;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static setTimeOut(I)V
    .locals 1
    .param p0, "timeOut"    # I

    .prologue
    .line 48
    const/16 v0, 0x1388

    if-gt p0, v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    sput p0, Lc8/dnb;->timeOut:I

    goto :goto_0
.end method

.method public static start()V
    .locals 4

    .prologue
    .line 23
    sget-boolean v0, Lc8/dnb;->isStart:Z

    if-eqz v0, :cond_0

    .line 33
    :goto_0
    return-void

    .line 27
    :cond_0
    sget-object v0, Lc8/dnb;->task:Lc8/cnb;

    if-nez v0, :cond_1

    .line 28
    new-instance v0, Lc8/cnb;

    invoke-direct {v0}, Lc8/cnb;-><init>()V

    sput-object v0, Lc8/dnb;->task:Lc8/cnb;

    .line 31
    :cond_1
    sget-object v0, Lc8/dnb;->handler:Landroid/os/Handler;

    sget-object v1, Lc8/dnb;->task:Lc8/cnb;

    sget v2, Lc8/dnb;->timeOut:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lc8/dnb;->isStart:Z

    goto :goto_0
.end method

.method public static stop()V
    .locals 2

    .prologue
    .line 37
    sget-boolean v0, Lc8/dnb;->isStart:Z

    if-nez v0, :cond_0

    .line 45
    :goto_0
    return-void

    .line 41
    :cond_0
    sget-object v0, Lc8/dnb;->task:Lc8/cnb;

    if-eqz v0, :cond_1

    .line 42
    sget-object v0, Lc8/dnb;->handler:Landroid/os/Handler;

    sget-object v1, Lc8/dnb;->task:Lc8/cnb;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lc8/dnb;->isStart:Z

    goto :goto_0
.end method
