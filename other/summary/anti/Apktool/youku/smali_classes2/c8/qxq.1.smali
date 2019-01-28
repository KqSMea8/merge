.class public Lc8/qxq;
.super Lc8/amq;
.source "SchedulerWhen.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation build Lc8/bnq;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation


# static fields
.field private static final SUBSCRIBED:Lc8/Pmq;

.field private static final UNSUBSCRIBED:Lc8/Pmq;


# instance fields
.field private final actualScheduler:Lc8/amq;

.field private final subscription:Lc8/Pmq;

.field private final workerObserver:Lc8/Wlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Wlq",
            "<",
            "Lc8/Vlq",
            "<",
            "Lc8/Plq;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 200
    new-instance v0, Lc8/pxq;

    invoke-direct {v0}, Lc8/pxq;-><init>()V

    sput-object v0, Lc8/qxq;->SUBSCRIBED:Lc8/Pmq;

    .line 211
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    sput-object v0, Lc8/qxq;->UNSUBSCRIBED:Lc8/Pmq;

    return-void
.end method

.method public constructor <init>(Lc8/Inq;Lc8/amq;)V
    .locals 2
    .param p2, "actualScheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Lc8/Vlq",
            "<",
            "Lc8/Vlq",
            "<",
            "Lc8/Plq;",
            ">;>;",
            "Lc8/Plq;",
            ">;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "combine":Lc8/Inq;, "Lrx/functions/Func1<Lrx/Observable<Lrx/Observable<Lrx/Completable;>;>;Lrx/Completable;>;"
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 116
    iput-object p2, p0, Lc8/qxq;->actualScheduler:Lc8/amq;

    .line 118
    invoke-static {}, Lc8/yBq;->create()Lc8/yBq;

    move-result-object v0

    .line 119
    .local v0, "workerSubject":Lc8/yBq;, "Lrx/subjects/PublishSubject<Lrx/Observable<Lrx/Completable;>;>;"
    new-instance v1, Lc8/pAq;

    invoke-direct {v1, v0}, Lc8/pAq;-><init>(Lc8/Wlq;)V

    iput-object v1, p0, Lc8/qxq;->workerObserver:Lc8/Wlq;

    .line 122
    invoke-virtual {v0}, Lc8/yBq;->onBackpressureBuffer()Lc8/Vlq;

    move-result-object v1

    invoke-interface {p1, v1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Plq;

    invoke-virtual {v1}, Lc8/Plq;->subscribe()Lc8/Pmq;

    move-result-object v1

    iput-object v1, p0, Lc8/qxq;->subscription:Lc8/Pmq;

    .line 123
    return-void
.end method

.method public static synthetic access$100()Lc8/Pmq;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lc8/qxq;->SUBSCRIBED:Lc8/Pmq;

    return-object v0
.end method

.method public static synthetic access$200()Lc8/Pmq;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 110
    sget-object v0, Lc8/qxq;->UNSUBSCRIBED:Lc8/Pmq;

    return-object v0
.end method


# virtual methods
.method public createWorker()Lc8/Zlq;
    .locals 6

    .prologue
    .line 137
    iget-object v5, p0, Lc8/qxq;->actualScheduler:Lc8/amq;

    invoke-virtual {v5}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v3

    .line 140
    .local v3, "actualWorker":Lc8/Zlq;
    invoke-static {}, Lc8/Coq;->create()Lc8/Coq;

    move-result-object v1

    .line 141
    .local v1, "actionSubject":Lc8/Coq;, "Lrx/internal/operators/BufferUntilSubscriber<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v0, Lc8/pAq;

    invoke-direct {v0, v1}, Lc8/pAq;-><init>(Lc8/Wlq;)V

    .line 143
    .local v0, "actionObserver":Lc8/Wlq;, "Lrx/Observer<Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;>;"
    new-instance v5, Lc8/nxq;

    invoke-direct {v5, p0, v3}, Lc8/nxq;-><init>(Lc8/qxq;Lc8/Zlq;)V

    invoke-virtual {v1, v5}, Lc8/Coq;->map(Lc8/Inq;)Lc8/Vlq;

    move-result-object v2

    .line 158
    .local v2, "actions":Lc8/Vlq;, "Lrx/Observable<Lrx/Completable;>;"
    new-instance v4, Lc8/oxq;

    invoke-direct {v4, p0, v3, v0}, Lc8/oxq;-><init>(Lc8/qxq;Lc8/Zlq;Lc8/Wlq;)V

    .line 194
    .local v4, "worker":Lc8/Zlq;
    iget-object v5, p0, Lc8/qxq;->workerObserver:Lc8/Wlq;

    invoke-interface {v5, v2}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 197
    return-object v4
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lc8/qxq;->subscription:Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lc8/qxq;->subscription:Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 128
    return-void
.end method
