.class public Lc8/wbo;
.super Ljava/lang/Object;
.source "Executor.java"


# static fields
.field private static sDefaultObserveScheduler:Lc8/amq;

.field private static sDefaultSubscriberScheduler:Lc8/amq;


# instance fields
.field private final mObserveScheduler:Lc8/amq;

.field private final mSubscribeScheduler:Lc8/amq;

.field private mSubscriptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/Pmq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lc8/Vmq;->mainThread()Lc8/amq;

    move-result-object v0

    sput-object v0, Lc8/wbo;->sDefaultObserveScheduler:Lc8/amq;

    .line 23
    invoke-static {}, Lc8/hBq;->io()Lc8/amq;

    move-result-object v0

    sput-object v0, Lc8/wbo;->sDefaultSubscriberScheduler:Lc8/amq;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lc8/wbo;->sDefaultSubscriberScheduler:Lc8/amq;

    sget-object v1, Lc8/wbo;->sDefaultObserveScheduler:Lc8/amq;

    invoke-direct {p0, v0, v1}, Lc8/wbo;-><init>(Lc8/amq;Lc8/amq;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lc8/amq;Lc8/amq;)V
    .locals 1
    .param p1, "subscribeScheduler"    # Lc8/amq;
    .param p2, "observeScheduler"    # Lc8/amq;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/wbo;->mSubscriptions:Ljava/util/Set;

    .line 34
    iput-object p1, p0, Lc8/wbo;->mSubscribeScheduler:Lc8/amq;

    .line 35
    iput-object p2, p0, Lc8/wbo;->mObserveScheduler:Lc8/amq;

    .line 36
    return-void
.end method


# virtual methods
.method public execute(Lc8/Vlq;Lc8/Omq;)Lc8/Pmq;
    .locals 3
    .param p2, "subscriber"    # Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<TT;>;",
            "Lc8/Omq;",
            ")",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "observable":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    iget-object v1, p0, Lc8/wbo;->mSubscribeScheduler:Lc8/amq;

    invoke-virtual {p1, v1}, Lc8/Vlq;->subscribeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Vlq;->materialize()Lc8/Vlq;

    move-result-object v1

    iget-object v2, p0, Lc8/wbo;->mObserveScheduler:Lc8/amq;

    invoke-virtual {v1, v2}, Lc8/Vlq;->observeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Vlq;->dematerialize()Lc8/Vlq;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v0

    .line 40
    .local v0, "subscription":Lc8/Pmq;
    iget-object v1, p0, Lc8/wbo;->mSubscriptions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    return-object v0
.end method
