.class public abstract Lc8/SGd;
.super Landroid/content/BroadcastReceiver;
.source "IntentReceiver.java"


# static fields
.field private static sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lc8/SGd;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lc8/SGd;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100()Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lc8/SGd;->sHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method protected abstract onHandleIntent(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    sget-object v0, Lc8/SGd;->sAtomicInteger:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "IntentReceiver"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lc8/SGd;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 27
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lc8/SGd;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lc8/SGd;->sHandler:Landroid/os/Handler;

    .line 29
    :cond_0
    sget-object v0, Lc8/SGd;->sHandler:Landroid/os/Handler;

    new-instance v1, Lc8/RGd;

    invoke-direct {v1, p0, p1, p2}, Lc8/RGd;-><init>(Lc8/SGd;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    return-void
.end method
