.class public abstract Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SchedulerWhen.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lc8/Pmq;",
        ">;",
        "Lc8/Pmq;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lc8/qxq;->access$100()Lc8/Pmq;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 217
    return-void
.end method

.method public static synthetic access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Lc8/Zlq;)V
    .locals 0
    .param p0, "x0"    # Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    .param p1, "x1"    # Lc8/Zlq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Lc8/Zlq;)V

    return-void
.end method

.method private final call(Lc8/Zlq;)V
    .locals 3
    .param p1, "actualWorker"    # Lc8/Zlq;

    .prologue
    .line 220
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Pmq;

    .line 222
    .local v1, "oldState":Lc8/Pmq;
    invoke-static {}, Lc8/qxq;->access$200()Lc8/Pmq;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {}, Lc8/qxq;->access$100()Lc8/Pmq;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 233
    invoke-virtual {p0, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Lc8/Zlq;)Lc8/Pmq;

    move-result-object v0

    .line 235
    .local v0, "newState":Lc8/Pmq;
    invoke-static {}, Lc8/qxq;->access$100()Lc8/Pmq;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    goto :goto_0
.end method


# virtual methods
.method protected abstract callActual(Lc8/Zlq;)Lc8/Pmq;
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lc8/qxq;->access$200()Lc8/Pmq;

    move-result-object v0

    .line 257
    .local v0, "newState":Lc8/Pmq;
    :cond_0
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Pmq;

    .line 258
    .local v1, "oldState":Lc8/Pmq;
    invoke-static {}, Lc8/qxq;->access$200()Lc8/Pmq;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 268
    :cond_1
    :goto_0
    return-void

    .line 262
    :cond_2
    invoke-virtual {p0, v1, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    invoke-static {}, Lc8/qxq;->access$100()Lc8/Pmq;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 266
    invoke-interface {v1}, Lc8/Pmq;->unsubscribe()V

    goto :goto_0
.end method
