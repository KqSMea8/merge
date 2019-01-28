.class public Lc8/Zmq;
.super Lc8/amq;
.source "LooperScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ymq;,
        Lc8/Xmq;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 36
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 37
    iput-object p1, p0, Lc8/Zmq;->handler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/Zmq;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method


# virtual methods
.method public createWorker()Lc8/Zlq;
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lc8/Xmq;

    iget-object v1, p0, Lc8/Zmq;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lc8/Xmq;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
