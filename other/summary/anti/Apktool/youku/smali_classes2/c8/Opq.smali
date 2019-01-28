.class public final Lc8/Opq;
.super Lc8/Omq;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LeftObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Rpq;


# direct methods
.method constructor <init>(Lc8/Rpq;)V
    .locals 0

    .prologue
    .line 153
    .local p0, "this":Lc8/Opq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    iput-object p1, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 194
    .local p0, "this":Lc8/Opq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    const/4 v0, 0x0

    .line 195
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v2, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v3, v2, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 196
    :try_start_0
    iget-object v2, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lc8/Rpq;->leftDone:Z

    .line 197
    iget-object v2, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-boolean v2, v2, Lc8/Rpq;->rightDone:Z

    if-eqz v2, :cond_0

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v2, v2, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :try_start_1
    iget-object v2, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v2, v2, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 200
    iget-object v2, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v2, v2, Lc8/Rpq;->rightMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 202
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 203
    iget-object v2, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    invoke-virtual {v2, v0}, Lc8/Rpq;->complete(Ljava/util/List;)V

    .line 204
    return-void

    .line 202
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
    .line 208
    .local p0, "this":Lc8/Opq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    iget-object v0, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    invoke-virtual {v0, p1}, Lc8/Rpq;->errorAll(Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT1;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lc8/Opq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftObserver;"
    .local p1, "args":Ljava/lang/Object;, "TT1;"
    :try_start_0
    invoke-static {}, Lc8/yBq;->create()Lc8/yBq;

    move-result-object v6

    .line 159
    .local v6, "subj":Lc8/GBq;, "Lrx/subjects/Subject<TT2;TT2;>;"
    new-instance v7, Lc8/pAq;

    invoke-direct {v7, v6}, Lc8/pAq;-><init>(Lc8/Wlq;)V

    .line 161
    .local v7, "subjSerial":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v12, v11, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :try_start_1
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget v3, v11, Lc8/Rpq;->leftIds:I

    add-int/lit8 v13, v3, 0x1

    iput v13, v11, Lc8/Rpq;->leftIds:I

    .line 163
    .local v3, "id":I
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v11, v11, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    new-instance v11, Lc8/Tpq;

    iget-object v12, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v12, v12, Lc8/Rpq;->cancel:Lc8/WBq;

    invoke-direct {v11, v6, v12}, Lc8/Tpq;-><init>(Lc8/Vlq;Lc8/WBq;)V

    invoke-static {v11}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v10

    .line 168
    .local v10, "window":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v11, v11, Lc8/Rpq;->this$0:Lc8/Upq;

    iget-object v11, v11, Lc8/Upq;->leftDuration:Lc8/Inq;

    invoke-interface {v11, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;

    .line 170
    .local v1, "duration":Lc8/Vlq;, "Lrx/Observable<TD1;>;"
    new-instance v0, Lc8/Npq;

    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    invoke-direct {v0, v11, v3}, Lc8/Npq;-><init>(Lc8/Rpq;I)V

    .line 171
    .local v0, "d1":Lc8/Omq;, "Lrx/Subscriber<TD1;>;"
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v11, v11, Lc8/Rpq;->group:Lc8/SBq;

    invoke-virtual {v11, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 172
    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 174
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v11, v11, Lc8/Rpq;->this$0:Lc8/Upq;

    iget-object v11, v11, Lc8/Upq;->resultSelector:Lc8/Jnq;

    invoke-interface {v11, p1, v10}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 177
    .local v4, "result":Ljava/lang/Object;, "TR;"
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v12, v11, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v12
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    :try_start_3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v11, v11, Lc8/Rpq;->rightMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v5, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 179
    .local v5, "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 181
    :try_start_4
    iget-object v11, p0, Lc8/Opq;->this$1:Lc8/Rpq;

    iget-object v11, v11, Lc8/Rpq;->subscriber:Lc8/Omq;

    invoke-virtual {v11, v4}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 182
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 183
    .local v9, "t2":Ljava/lang/Object;, "TT2;"
    invoke-interface {v7, v9}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "d1":Lc8/Omq;, "Lrx/Subscriber<TD1;>;"
    .end local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TD1;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "id":I
    .end local v4    # "result":Ljava/lang/Object;, "TR;"
    .end local v5    # "rightMapValues":Ljava/util/List;, "Ljava/util/List<TT2;>;"
    .end local v6    # "subj":Lc8/GBq;, "Lrx/subjects/Subject<TT2;TT2;>;"
    .end local v7    # "subjSerial":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    .end local v9    # "t2":Ljava/lang/Object;, "TT2;"
    .end local v10    # "window":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    :catch_0
    move-exception v8

    .line 188
    .local v8, "t":Ljava/lang/Throwable;
    invoke-static {v8, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 190
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 164
    .restart local v6    # "subj":Lc8/GBq;, "Lrx/subjects/Subject<TT2;TT2;>;"
    .restart local v7    # "subjSerial":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 179
    .restart local v0    # "d1":Lc8/Omq;, "Lrx/Subscriber<TD1;>;"
    .restart local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TD1;>;"
    .restart local v3    # "id":I
    .restart local v4    # "result":Ljava/lang/Object;, "TR;"
    .restart local v10    # "window":Lc8/Vlq;, "Lrx/Observable<TT2;>;"
    :catchall_1
    move-exception v11

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v11
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method
