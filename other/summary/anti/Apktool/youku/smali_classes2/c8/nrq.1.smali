.class public final Lc8/nrq;
.super Lc8/Omq;
.source "OperatorBufferWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/orq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BufferingSubscriber"
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
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final closingSubscriptions:Lc8/SBq;

.field done:Z

.field final synthetic this$0:Lc8/orq;


# direct methods
.method public constructor <init>(Lc8/orq;Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, "this":Lc8/nrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iput-object p1, p0, Lc8/nrq;->this$0:Lc8/orq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 105
    iput-object p2, p0, Lc8/nrq;->child:Lc8/Omq;

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/nrq;->chunks:Ljava/util/List;

    .line 107
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/nrq;->closingSubscriptions:Lc8/SBq;

    .line 108
    iget-object v0, p0, Lc8/nrq;->closingSubscriptions:Lc8/SBq;

    invoke-virtual {p0, v0}, Lc8/nrq;->add(Lc8/Pmq;)V

    .line 109
    return-void
.end method


# virtual methods
.method endBuffer(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lc8/nrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p1, "toEnd":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 196
    .local v0, "canEnd":Z
    monitor-enter p0

    .line 197
    :try_start_0
    iget-boolean v3, p0, Lc8/nrq;->done:Z

    if-eqz v3, :cond_1

    .line 198
    monitor-exit p0

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v3, p0, Lc8/nrq;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 201
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 202
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 203
    .local v1, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-ne v1, p1, :cond_2

    .line 204
    const/4 v0, 0x1

    .line 205
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 209
    .end local v1    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    iget-object v3, p0, Lc8/nrq;->child:Lc8/Omq;

    invoke-virtual {v3, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 209
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/List<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 137
    .local p0, "this":Lc8/nrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :try_start_1
    iget-boolean v4, p0, Lc8/nrq;->done:Z

    if-eqz v4, :cond_0

    .line 139
    monitor-exit p0

    .line 154
    :goto_0
    return-void

    .line 141
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/nrq;->done:Z

    .line 142
    new-instance v3, Ljava/util/LinkedList;

    iget-object v4, p0, Lc8/nrq;->chunks:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 143
    .local v3, "toEmit":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lc8/nrq;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 144
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    :try_start_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 146
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lc8/nrq;->child:Lc8/Omq;

    invoke-virtual {v4, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 148
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "toEmit":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :catch_0
    move-exception v2

    .line 149
    .local v2, "t":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/nrq;->child:Lc8/Omq;

    invoke-static {v2, v4}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0

    .line 144
    .end local v2    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 152
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "toEmit":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<TT;>;>;"
    :cond_1
    iget-object v4, p0, Lc8/nrq;->child:Lc8/Omq;

    invoke-virtual {v4}, Lc8/Omq;->onCompleted()V

    .line 153
    invoke-virtual {p0}, Lc8/nrq;->unsubscribe()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    .local p0, "this":Lc8/nrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    monitor-enter p0

    .line 123
    :try_start_0
    iget-boolean v0, p0, Lc8/nrq;->done:Z

    if-eqz v0, :cond_0

    .line 124
    monitor-exit p0

    .line 131
    :goto_0
    return-void

    .line 126
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/nrq;->done:Z

    .line 127
    iget-object v0, p0, Lc8/nrq;->chunks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget-object v0, p0, Lc8/nrq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 130
    invoke-virtual {p0}, Lc8/nrq;->unsubscribe()V

    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lc8/nrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v2, p0, Lc8/nrq;->chunks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 117
    .end local v0    # "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method startBuffer(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTOpening;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, "this":Lc8/nrq;, "Lrx/internal/operators/OperatorBufferWithStartEndObservable<TT;TTOpening;TTClosing;>.BufferingSubscriber;"
    .local p1, "v":Ljava/lang/Object;, "TTOpening;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "chunk":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v4, p0, Lc8/nrq;->done:Z

    if-eqz v4, :cond_0

    .line 159
    monitor-exit p0

    .line 193
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v4, p0, Lc8/nrq;->chunks:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    :try_start_1
    iget-object v4, p0, Lc8/nrq;->this$0:Lc8/orq;

    iget-object v4, v4, Lc8/orq;->bufferClosing:Lc8/Inq;

    invoke-interface {v4, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Vlq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    .local v2, "cobs":Lc8/Vlq;, "Lrx/Observable<+TTClosing;>;"
    new-instance v1, Lc8/mrq;

    invoke-direct {v1, p0, v0}, Lc8/mrq;-><init>(Lc8/nrq;Ljava/util/List;)V

    .line 190
    .local v1, "closeSubscriber":Lc8/Omq;, "Lrx/Subscriber<TTClosing;>;"
    iget-object v4, p0, Lc8/nrq;->closingSubscriptions:Lc8/SBq;

    invoke-virtual {v4, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 192
    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0

    .line 162
    .end local v1    # "closeSubscriber":Lc8/Omq;, "Lrx/Subscriber<TTClosing;>;"
    .end local v2    # "cobs":Lc8/Vlq;, "Lrx/Observable<+TTClosing;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 166
    :catch_0
    move-exception v3

    .line 167
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method
