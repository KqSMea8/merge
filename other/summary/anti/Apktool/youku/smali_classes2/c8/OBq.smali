.class public final Lc8/OBq;
.super Lc8/GBq;
.source "TestSubject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/GBq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final innerScheduler:Lc8/Zlq;

.field private final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;Lc8/nBq;)V
    .locals 1
    .param p3, "scheduler"    # Lc8/nBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;",
            "Lc8/nBq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 66
    iput-object p2, p0, Lc8/OBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 67
    invoke-virtual {p3}, Lc8/nBq;->createWorker()Lc8/Zlq;

    move-result-object v0

    iput-object v0, p0, Lc8/OBq;->innerScheduler:Lc8/Zlq;

    .line 68
    return-void
.end method

.method public static create(Lc8/nBq;)Lc8/OBq;
    .locals 2
    .param p0, "scheduler"    # Lc8/nBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/nBq;",
            ")",
            "Lc8/OBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 51
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v1, Lc8/KBq;

    invoke-direct {v1, v0}, Lc8/KBq;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lc8/inq;

    .line 59
    iget-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onAdded:Lc8/inq;

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lc8/inq;

    .line 61
    new-instance v1, Lc8/OBq;

    invoke-direct {v1, v0, v0, p0}, Lc8/OBq;-><init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;Lc8/nBq;)V

    return-object v1
.end method


# virtual methods
.method public hasObservers()Z
    .locals 1

    .prologue
    .line 173
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lc8/OBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lc8/JBq;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method internalOnCompleted()V
    .locals 6

    .prologue
    .line 79
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v4, p0, Lc8/OBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v4, v4, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v4, :cond_0

    .line 80
    iget-object v4, p0, Lc8/OBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v5

    invoke-virtual {v5}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 81
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {v1}, Lc8/JBq;->onCompleted()V

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method internalOnError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 112
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v4, p0, Lc8/OBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v4, v4, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v4, :cond_0

    .line 113
    iget-object v4, p0, Lc8/OBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v5

    invoke-virtual {v5, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 114
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {v1, p1}, Lc8/JBq;->onError(Ljava/lang/Throwable;)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    return-void
.end method

.method internalOnNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lc8/OBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v4}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 148
    .local v3, "o":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    invoke-interface {v3, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "o":Lc8/Wlq;, "Lrx/Observer<-TT;>;"
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 75
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/OBq;->onCompleted(J)V

    .line 76
    return-void
.end method

.method public onCompleted(J)V
    .locals 3
    .param p1, "delayTime"    # J

    .prologue
    .line 93
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lc8/OBq;->innerScheduler:Lc8/Zlq;

    new-instance v1, Lc8/LBq;

    invoke-direct {v1, p0}, Lc8/LBq;-><init>(Lc8/OBq;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 101
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 108
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/OBq;->onError(Ljava/lang/Throwable;J)V

    .line 109
    return-void
.end method

.method public onError(Ljava/lang/Throwable;J)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "delayTime"    # J

    .prologue
    .line 128
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    iget-object v0, p0, Lc8/OBq;->innerScheduler:Lc8/Zlq;

    new-instance v1, Lc8/MBq;

    invoke-direct {v1, p0, p1}, Lc8/MBq;-><init>(Lc8/OBq;Ljava/lang/Throwable;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 136
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/OBq;->onNext(Ljava/lang/Object;J)V

    .line 144
    return-void
.end method

.method public onNext(Ljava/lang/Object;J)V
    .locals 4
    .param p2, "delayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "this":Lc8/OBq;, "Lrx/subjects/TestSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/OBq;->innerScheduler:Lc8/Zlq;

    new-instance v1, Lc8/NBq;

    invoke-direct {v1, p0, p1}, Lc8/NBq;-><init>(Lc8/OBq;Ljava/lang/Object;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p2, p3, v2}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 169
    return-void
.end method
