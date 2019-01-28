.class public final Lc8/Wmq;
.super Lc8/Zmq;
.source "HandlerScheduler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lc8/Zmq;-><init>(Landroid/os/Handler;)V

    .line 40
    return-void
.end method

.method public static from(Landroid/os/Handler;)Lc8/Wmq;
    .locals 2
    .param p0, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 34
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "handler == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    new-instance v0, Lc8/Wmq;

    invoke-direct {v0, p0}, Lc8/Wmq;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createWorker()Lc8/Zlq;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lc8/Zmq;->createWorker()Lc8/Zlq;

    move-result-object v0

    return-object v0
.end method
