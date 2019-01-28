.class public final Lc8/yBq;
.super Lc8/GBq;
.source "PublishSubject.java"


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
.field private final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final state:Lrx/subjects/SubjectSubscriptionManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;",
            "Lrx/subjects/SubjectSubscriptionManager",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    invoke-direct {p0, p1}, Lc8/GBq;-><init>(Lc8/Rlq;)V

    .line 54
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/yBq;->nl:Lc8/cpq;

    .line 77
    iput-object p2, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    .line 78
    return-void
.end method

.method public static create()Lc8/yBq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc8/yBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {v0}, Lrx/subjects/SubjectSubscriptionManager;-><init>()V

    .line 64
    .local v0, "state":Lrx/subjects/SubjectSubscriptionManager;, "Lrx/subjects/SubjectSubscriptionManager<TT;>;"
    new-instance v1, Lc8/xBq;

    invoke-direct {v1, v0}, Lc8/xBq;-><init>(Lrx/subjects/SubjectSubscriptionManager;)V

    iput-object v1, v0, Lrx/subjects/SubjectSubscriptionManager;->onTerminated:Lc8/inq;

    .line 72
    new-instance v1, Lc8/yBq;

    invoke-direct {v1, v0, v0}, Lc8/yBq;-><init>(Lc8/Rlq;Lrx/subjects/SubjectSubscriptionManager;)V

    return-object v1
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 147
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v1, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/yBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lc8/yBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCompleted()Z
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v1, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "o":Ljava/lang/Object;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lc8/yBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasObservers()Z
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v0, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

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

.method public hasThrowable()Z
    .locals 2
    .annotation build Lc8/anq;
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v1, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v1}, Lrx/subjects/SubjectSubscriptionManager;->getLatest()Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "o":Ljava/lang/Object;
    iget-object v1, p0, Lc8/yBq;->nl:Lc8/cpq;

    invoke-virtual {v1, v0}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onCompleted()V
    .locals 6

    .prologue
    .line 82
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v5, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v5, v5, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v5, :cond_0

    .line 83
    iget-object v5, p0, Lc8/yBq;->nl:Lc8/cpq;

    invoke-virtual {v5}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v4

    .line 84
    .local v4, "n":Ljava/lang/Object;
    iget-object v5, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v5, v4}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 85
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    iget-object v5, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v5, v5, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    invoke-virtual {v1, v4, v5}, Lc8/JBq;->emitNext(Ljava/lang/Object;Lc8/cpq;)V

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "n":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 93
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    iget-object v7, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-boolean v7, v7, Lrx/subjects/SubjectSubscriptionManager;->active:Z

    if-eqz v7, :cond_2

    .line 94
    iget-object v7, p0, Lc8/yBq;->nl:Lc8/cpq;

    invoke-virtual {v7, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    .line 95
    .local v6, "n":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 96
    .local v3, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    iget-object v7, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v7, v6}, Lrx/subjects/SubjectSubscriptionManager;->terminate(Ljava/lang/Object;)[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 98
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :try_start_0
    iget-object v7, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v7, v7, Lrx/subjects/SubjectSubscriptionManager;->nl:Lc8/cpq;

    invoke-virtual {v1, v6, v7}, Lc8/JBq;->emitNext(Ljava/lang/Object;Lc8/cpq;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e2":Ljava/lang/Throwable;
    if-nez v3, :cond_0

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .restart local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    .end local v2    # "e2":Ljava/lang/Throwable;
    :cond_1
    invoke-static {v3}, Lc8/fnq;->throwIfAny(Ljava/util/List;)V

    .line 108
    .end local v0    # "arr$":[Lc8/JBq;
    .end local v3    # "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "n":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lc8/yBq;, "Lrx/subjects/PublishSubject<TT;>;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lc8/yBq;->state:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v4}, Lrx/subjects/SubjectSubscriptionManager;->observers()[Lc8/JBq;

    move-result-object v0

    .local v0, "arr$":[Lc8/JBq;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 113
    .local v1, "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    invoke-virtual {v1, p1}, Lc8/JBq;->onNext(Ljava/lang/Object;)V

    .line 112
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v1    # "bo":Lc8/JBq;, "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver<TT;>;"
    :cond_0
    return-void
.end method
