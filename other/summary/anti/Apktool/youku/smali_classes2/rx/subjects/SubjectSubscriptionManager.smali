.class public final Lrx/subjects/SubjectSubscriptionManager;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SubjectSubscriptionManager.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/JBq;,
        Lc8/IBq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lc8/IBq",
        "<TT;>;>;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x53c184d753c8b010L


# instance fields
.field public active:Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field volatile latest:Ljava/lang/Object;

.field public final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field public onAdded:Lc8/inq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Lc8/JBq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field onStart:Lc8/inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Lc8/JBq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field public onTerminated:Lc8/inq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/inq",
            "<",
            "Lc8/JBq",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    sget-object v0, Lc8/IBq;->EMPTY:Lc8/IBq;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 44
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lc8/inq;

    .line 46
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lc8/inq;

    .line 48
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lc8/inq;

    .line 50
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    .line 54
    return-void
.end method


# virtual methods
.method add(Lc8/JBq;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/JBq",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/IBq;

    .line 96
    .local v1, "oldState":Lc8/IBq;
    iget-boolean v2, v1, Lc8/IBq;->terminated:Z

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lc8/inq;

    invoke-interface {v2, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 98
    const/4 v2, 0x0

    .line 103
    :goto_0
    return v2

    .line 100
    :cond_1
    invoke-virtual {v1, p1}, Lc8/IBq;->add(Lc8/JBq;)Lc8/IBq;

    move-result-object v0

    .line 101
    .local v0, "newState":Lc8/IBq;
    invoke-virtual {p0, v1, v0}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 102
    iget-object v2, p0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lc8/inq;

    invoke-interface {v2, p1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 103
    const/4 v2, 0x1

    goto :goto_0
.end method

.method addUnsubscriber(Lc8/Omq;Lc8/JBq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/JBq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p2, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    new-instance v0, Lc8/HBq;

    invoke-direct {v0, p0, p2}, Lc8/HBq;-><init>(Lrx/subjects/SubjectSubscriptionManager;Lc8/JBq;)V

    invoke-static {v0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 75
    return-void
.end method

.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lc8/JBq;

    invoke-direct {v0, p1}, Lc8/JBq;-><init>(Lc8/Omq;)V

    .line 59
    .local v0, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {p0, p1, v0}, Lrx/subjects/SubjectSubscriptionManager;->addUnsubscriber(Lc8/Omq;Lc8/JBq;)V

    .line 60
    iget-object v1, p0, Lrx/subjects/SubjectSubscriptionManager;->onStart:Lc8/inq;

    invoke-interface {v1, v0}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->add(Lc8/JBq;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc8/Omq;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Lrx/subjects/SubjectSubscriptionManager;->remove(Lc8/JBq;)V

    .line 66
    :cond_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->call(Lc8/Omq;)V

    return-void
.end method

.method public getLatest()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iget-object v0, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    return-object v0
.end method

.method public next(Ljava/lang/Object;)[Lc8/JBq;
    .locals 1
    .param p1, "n"    # Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lc8/JBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IBq;

    iget-object v0, v0, Lc8/IBq;->observers:[Lc8/JBq;

    return-object v0
.end method

.method public observers()[Lc8/JBq;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lc8/JBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IBq;

    iget-object v0, v0, Lc8/IBq;->observers:[Lc8/JBq;

    return-object v0
.end method

.method public remove(Lc8/JBq;)V
    .locals 3
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/JBq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    .local p1, "o":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/IBq;

    .line 114
    .local v1, "oldState":Lc8/IBq;
    iget-boolean v2, v1, Lc8/IBq;->terminated:Z

    if-eqz v2, :cond_2

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    invoke-virtual {v1, p1}, Lc8/IBq;->remove(Lc8/JBq;)Lc8/IBq;

    move-result-object v0

    .line 118
    .local v0, "newState":Lc8/IBq;
    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1, v0}, Lrx/subjects/SubjectSubscriptionManager;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public setLatest(Ljava/lang/Object;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    iput-object p1, p0, Lrx/subjects/SubjectSubscriptionManager;->latest:Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public terminate(Ljava/lang/Object;)[Lc8/JBq;
    .locals 2
    .param p1, "n"    # Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lc8/JBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-virtual {p0, p1}, Lrx/subjects/SubjectSubscriptionManager;->setLatest(Ljava/lang/Object;)V

    .line 140
    const/4 v1, 0x0

    iput-boolean v1, p0, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    .line 142
    invoke-virtual {p0}, Lrx/subjects/SubjectSubscriptionManager;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/IBq;

    .line 143
    .local v0, "oldState":Lc8/IBq;, "Lrx/subjects/SubjectSubscriptionManager$State<TT;>;"
    iget-boolean v1, v0, Lc8/IBq;->terminated:Z

    if-eqz v1, :cond_0

    .line 144
    sget-object v1, Lc8/IBq;->NO_OBSERVERS:[Lc8/JBq;

    .line 146
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lc8/IBq;->TERMINATED:Lc8/IBq;

    invoke-virtual {p0, v1}, Lrx/subjects/SubjectSubscriptionManager;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/IBq;

    iget-object v1, v1, Lc8/IBq;->observers:[Lc8/JBq;

    goto :goto_0
.end method
