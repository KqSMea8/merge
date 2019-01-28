.class public Lc8/cJj;
.super Ljava/lang/Object;
.source "YKNetwork.java"

# interfaces
.implements Lc8/sJj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/bJj;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HttpCommunication.YKNetwork"

.field private static initLock:Ljava/lang/Object;

.field public static volatile isInit:Z


# instance fields
.field private callProxy:Lc8/tJj;

.field private requestFilter:Lc8/XJj;

.field private ykRequest:Lc8/dJj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    sput-boolean v0, Lc8/cJj;->isInit:Z

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/cJj;->initLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lc8/YJj;

    invoke-direct {v0}, Lc8/YJj;-><init>()V

    iput-object v0, p0, Lc8/cJj;->requestFilter:Lc8/XJj;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lc8/cJj;)Lc8/tJj;
    .locals 1
    .param p0, "x0"    # Lc8/cJj;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/cJj;->callProxy:Lc8/tJj;

    return-object v0
.end method

.method static synthetic access$100(Lc8/cJj;)V
    .locals 0
    .param p0, "x0"    # Lc8/cJj;

    .prologue
    .line 28
    invoke-direct {p0}, Lc8/cJj;->construct()V

    return-void
.end method

.method private construct()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lc8/cJj;->requestFilter:Lc8/XJj;

    iget-object v1, p0, Lc8/cJj;->ykRequest:Lc8/dJj;

    invoke-interface {v0, v1}, Lc8/XJj;->doFilter(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lc8/cJj;->callProxy:Lc8/tJj;

    iget-object v1, p0, Lc8/cJj;->ykRequest:Lc8/dJj;

    invoke-virtual {v0, v1}, Lc8/tJj;->construct(Lc8/dJj;)V

    .line 77
    return-void
.end method

.method private runAsynTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    invoke-static {}, Lc8/tSh;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lc8/cJj;->isInit:Z

    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lc8/hJj;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public asyncCall(Lc8/OIj;)V
    .locals 1
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 87
    new-instance v0, Lc8/YIj;

    invoke-direct {v0, p0, p1}, Lc8/YIj;-><init>(Lc8/cJj;Lc8/OIj;)V

    invoke-direct {p0, v0}, Lc8/cJj;->runAsynTask(Ljava/lang/Runnable;)V

    .line 94
    return-void
.end method

.method public asyncUICall(Lc8/OIj;)V
    .locals 1
    .param p1, "callback"    # Lc8/OIj;

    .prologue
    .line 98
    new-instance v0, Lc8/ZIj;

    invoke-direct {v0, p0, p1}, Lc8/ZIj;-><init>(Lc8/cJj;Lc8/OIj;)V

    invoke-direct {p0, v0}, Lc8/cJj;->runAsynTask(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/cJj;->callProxy:Lc8/tJj;

    invoke-virtual {v0}, Lc8/tJj;->cancel()V

    .line 118
    return-void
.end method

.method public checkSDKInit()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method public setCallProxy(Lc8/rJj;)V
    .locals 1
    .param p1, "callProxy"    # Lc8/rJj;

    .prologue
    .line 121
    new-instance v0, Lc8/tJj;

    invoke-direct {v0, p1}, Lc8/tJj;-><init>(Lc8/rJj;)V

    iput-object v0, p0, Lc8/cJj;->callProxy:Lc8/tJj;

    .line 122
    return-void
.end method

.method public setYkRequest(Lc8/dJj;)V
    .locals 0
    .param p1, "ykRequest"    # Lc8/dJj;

    .prologue
    .line 125
    iput-object p1, p0, Lc8/cJj;->ykRequest:Lc8/dJj;

    .line 126
    return-void
.end method

.method public syncCall()Lc8/eJj;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lc8/cJj;->callProxy:Lc8/tJj;

    invoke-virtual {v0}, Lc8/tJj;->syncCall()Lc8/eJj;

    move-result-object v0

    return-object v0
.end method
