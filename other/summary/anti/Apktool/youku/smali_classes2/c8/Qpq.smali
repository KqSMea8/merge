.class public final Lc8/Qpq;
.super Lc8/Omq;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RightObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Rpq;


# direct methods
.method constructor <init>(Lc8/Rpq;)V
    .locals 0

    .prologue
    .line 214
    .local p0, "this":Lc8/Qpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    iput-object p1, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 244
    .local p0, "this":Lc8/Qpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    const/4 v0, 0x0

    .line 245
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v2, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v3, v2, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 246
    :try_start_0
    iget-object v2, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lc8/Rpq;->rightDone:Z

    .line 247
    iget-object v2, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-boolean v2, v2, Lc8/Rpq;->leftDone:Z

    if-eqz v2, :cond_0

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v2, v2, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :try_start_1
    iget-object v2, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v2, v2, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 250
    iget-object v2, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v2, v2, Lc8/Rpq;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 252
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    iget-object v2, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    invoke-virtual {v2, v0}, Lc8/Rpq;->complete(Ljava/util/List;)V

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v2

    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 258
    .local p0, "this":Lc8/Qpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    iget-object v0, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    invoke-virtual {v0, p1}, Lc8/Rpq;->errorAll(Ljava/lang/Throwable;)V

    .line 259
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lc8/Qpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightObserver;"
    .local p1, "args":Ljava/lang/Object;, "TT2;"
    :try_start_0
    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v8, v7, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :try_start_1
    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget v3, v7, Lc8/Rpq;->rightIds:I

    add-int/lit8 v9, v3, 0x1

    iput v9, v7, Lc8/Rpq;->rightIds:I

    .line 221
    .local v3, "id":I
    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v7, v7, Lc8/Rpq;->rightMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    :try_start_2
    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v7, v7, Lc8/Rpq;->this$0:Lc8/Upq;

    iget-object v7, v7, Lc8/Upq;->rightDuration:Lc8/Inq;

    invoke-interface {v7, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;

    .line 225
    .local v1, "duration":Lc8/Vlq;, "Lrx/Observable<TD2;>;"
    new-instance v0, Lc8/Ppq;

    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    invoke-direct {v0, v7, v3}, Lc8/Ppq;-><init>(Lc8/Rpq;I)V

    .line 227
    .local v0, "d2":Lc8/Omq;, "Lrx/Subscriber<TD2;>;"
    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v7, v7, Lc8/Rpq;->group:Lc8/SBq;

    invoke-virtual {v7, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 228
    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 231
    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v8, v7, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 232
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, p0, Lc8/Qpq;->this$1:Lc8/Rpq;

    iget-object v7, v7, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    :try_start_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Wlq;

    .line 235
    .local v5, "o":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    invoke-interface {v5, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "d2":Lc8/Omq;, "Lrx/Subscriber<TD2;>;"
    .end local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TD2;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .end local v5    # "o":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    :catch_0
    move-exception v6

    .line 238
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {v6, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 240
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 222
    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 233
    .restart local v0    # "d2":Lc8/Omq;, "Lrx/Subscriber<TD2;>;"
    .restart local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TD2;>;"
    .restart local v3    # "id":I
    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
