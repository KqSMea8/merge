.class public final Lc8/Xvq;
.super Lc8/Omq;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Yvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SourceSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Vvq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final csub:Lc8/SBq;

.field done:Z

.field final guard:Ljava/lang/Object;

.field final synthetic this$0:Lc8/Yvq;


# direct methods
.method public constructor <init>(Lc8/Yvq;Lc8/Omq;Lc8/SBq;)V
    .locals 1
    .param p3, "csub"    # Lc8/SBq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;",
            "Lc8/SBq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lc8/Xvq;->this$0:Lc8/Yvq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 105
    new-instance v0, Lc8/qAq;

    invoke-direct {v0, p2}, Lc8/qAq;-><init>(Lc8/Omq;)V

    iput-object v0, p0, Lc8/Xvq;->child:Lc8/Omq;

    .line 106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Xvq;->guard:Ljava/lang/Object;

    .line 107
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    .line 108
    iput-object p3, p0, Lc8/Xvq;->csub:Lc8/SBq;

    .line 109
    return-void
.end method


# virtual methods
.method beginWindow(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "token":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lc8/Xvq;->createSerializedSubject()Lc8/Vvq;

    move-result-object v2

    .line 174
    .local v2, "s":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v5, p0, Lc8/Xvq;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 175
    :try_start_0
    iget-boolean v4, p0, Lc8/Xvq;->done:Z

    if-eqz v4, :cond_0

    .line 176
    monitor-exit v5

    .line 215
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v4, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v4, p0, Lc8/Xvq;->child:Lc8/Omq;

    iget-object v5, v2, Lc8/Vvq;->producer:Lc8/Vlq;

    invoke-virtual {v4, v5}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 184
    :try_start_1
    iget-object v4, p0, Lc8/Xvq;->this$0:Lc8/Yvq;

    iget-object v4, v4, Lc8/Yvq;->windowClosingSelector:Lc8/Inq;

    invoke-interface {v4, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .local v1, "end":Lc8/Vlq;, "Lrx/Observable<+TV;>;"
    new-instance v3, Lc8/Wvq;

    invoke-direct {v3, p0, v2}, Lc8/Wvq;-><init>(Lc8/Xvq;Lc8/Vvq;)V

    .line 212
    .local v3, "v":Lc8/Omq;, "Lrx/Subscriber<TV;>;"
    iget-object v4, p0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v4, v3}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 214
    invoke-virtual {v1, v3}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0

    .line 179
    .end local v1    # "end":Lc8/Vlq;, "Lrx/Observable<+TV;>;"
    .end local v3    # "v":Lc8/Omq;, "Lrx/Subscriber<TV;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lc8/Xvq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method createSerializedSubject()Lc8/Vvq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vvq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    invoke-static {}, Lc8/PBq;->create()Lc8/PBq;

    move-result-object v0

    .line 238
    .local v0, "bus":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    new-instance v1, Lc8/Vvq;

    invoke-direct {v1, v0, v0}, Lc8/Vvq;-><init>(Lc8/Wlq;Lc8/Vlq;)V

    return-object v1
.end method

.method endWindow(Lc8/Vvq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vvq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "window":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    const/4 v2, 0x0

    .line 218
    .local v2, "terminate":Z
    iget-object v4, p0, Lc8/Xvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 219
    :try_start_0
    iget-boolean v3, p0, Lc8/Xvq;->done:Z

    if-eqz v3, :cond_1

    .line 220
    monitor-exit v4

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v3, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 223
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 224
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vvq;

    .line 225
    .local v1, "s":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    if-ne v1, p1, :cond_2

    .line 226
    const/4 v2, 0x1

    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 231
    .end local v1    # "s":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    if-eqz v2, :cond_0

    .line 233
    iget-object v3, p1, Lc8/Vvq;->consumer:Lc8/Wlq;

    invoke-interface {v3}, Lc8/Wlq;->onCompleted()V

    goto :goto_0

    .line 231
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 155
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    :try_start_0
    iget-object v4, p0, Lc8/Xvq;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :try_start_1
    iget-boolean v3, p0, Lc8/Xvq;->done:Z

    if-eqz v3, :cond_0

    .line 157
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    iget-object v3, p0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v3}, Lc8/SBq;->unsubscribe()V

    .line 169
    :goto_0
    return-void

    .line 159
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lc8/Xvq;->done:Z

    .line 160
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 161
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    iget-object v3, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 162
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vvq;

    .line 164
    .local v0, "cs":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lc8/Vvq;->consumer:Lc8/Wlq;

    invoke-interface {v3}, Lc8/Wlq;->onCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 168
    .end local v0    # "cs":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v4}, Lc8/SBq;->unsubscribe()V

    throw v3

    .line 162
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 166
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lc8/Xvq;->child:Lc8/Omq;

    invoke-virtual {v3}, Lc8/Omq;->onCompleted()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    iget-object v3, p0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v3}, Lc8/SBq;->unsubscribe()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    :try_start_0
    iget-object v4, p0, Lc8/Xvq;->guard:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-boolean v3, p0, Lc8/Xvq;->done:Z

    if-eqz v3, :cond_0

    .line 136
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    iget-object v3, p0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v3}, Lc8/SBq;->unsubscribe()V

    .line 148
    :goto_0
    return-void

    .line 138
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lc8/Xvq;->done:Z

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    iget-object v3, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 141
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    :try_start_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vvq;

    .line 143
    .local v0, "cs":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lc8/Vvq;->consumer:Lc8/Wlq;

    invoke-interface {v3, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 147
    .end local v0    # "cs":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v4}, Lc8/SBq;->unsubscribe()V

    throw v3

    .line 141
    :catchall_1
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v3

    .line 145
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lc8/Xvq;->child:Lc8/Omq;

    invoke-virtual {v3, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    iget-object v3, p0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v3}, Lc8/SBq;->unsubscribe()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v4, p0, Lc8/Xvq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 120
    :try_start_0
    iget-boolean v3, p0, Lc8/Xvq;->done:Z

    if-eqz v3, :cond_1

    .line 121
    monitor-exit v4

    .line 128
    :cond_0
    return-void

    .line 123
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/Xvq;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 124
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vvq;

    .line 126
    .local v0, "cs":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    iget-object v3, v0, Lc8/Vvq;->consumer:Lc8/Wlq;

    invoke-interface {v3, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 124
    .end local v0    # "cs":Lc8/Vvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithStartEndObservable$SerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 113
    .local p0, "this":Lc8/Xvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable<TT;TU;TV;>.SourceSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Xvq;->request(J)V

    .line 114
    return-void
.end method
