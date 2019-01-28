.class public Lc8/gpf;
.super Ljava/lang/Object;
.source "HandlerUtils.java"


# static fields
.field public static instance:Lc8/gpf;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private nonUIThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lc8/gpf;

    invoke-direct {v0}, Lc8/gpf;-><init>()V

    sput-object v0, Lc8/gpf;->instance:Lc8/gpf;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "LinkManagerNonUIThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc8/gpf;->handlerThread:Landroid/os/HandlerThread;

    .line 19
    iget-object v0, p0, Lc8/gpf;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 20
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lc8/gpf;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/gpf;->nonUIThreadHandler:Landroid/os/Handler;

    .line 21
    return-void
.end method


# virtual methods
.method public postNonUIThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 24
    iget-object v0, p0, Lc8/gpf;->nonUIThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
