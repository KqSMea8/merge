.class public final Lc8/Wpq;
.super Lc8/Omq;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Zpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LeftSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Vpq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT",
        "Left;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Zpq;


# direct methods
.method constructor <init>(Lc8/Zpq;)V
    .locals 0

    .prologue
    .line 102
    .local p0, "this":Lc8/Wpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    iput-object p1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 180
    return-void
.end method


# virtual methods
.method protected expire(ILc8/Pmq;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "resource"    # Lc8/Pmq;

    .prologue
    .line 105
    .local p0, "this":Lc8/Wpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    const/4 v0, 0x0

    .line 106
    .local v0, "complete":Z
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v2, v1, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->leftMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->leftMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-boolean v1, v1, Lc8/Zpq;->leftDone:Z

    if-eqz v1, :cond_0

    .line 108
    const/4 v0, 0x1

    .line 110
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v0, :cond_1

    .line 112
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 113
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->unsubscribe()V

    .line 117
    :goto_0
    return-void

    .line 110
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 115
    :cond_1
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v1, p2}, Lc8/SBq;->remove(Lc8/Pmq;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 164
    .local p0, "this":Lc8/Wpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    const/4 v0, 0x0

    .line 165
    .local v0, "complete":Z
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v2, v1, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 166
    :try_start_0
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lc8/Zpq;->leftDone:Z

    .line 167
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-boolean v1, v1, Lc8/Zpq;->rightDone:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->leftMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    const/4 v0, 0x1

    .line 170
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 173
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->unsubscribe()V

    .line 177
    :goto_0
    return-void

    .line 170
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 175
    :cond_2
    iget-object v1, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v1, v1, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v1, p0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 158
    .local p0, "this":Lc8/Wpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    iget-object v0, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v0, v0, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 159
    iget-object v0, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v0, v0, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->unsubscribe()V

    .line 160
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Left;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lc8/Wpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTLeft;"
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v11, v10, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v11

    .line 125
    :try_start_0
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget v5, v10, Lc8/Zpq;->leftId:I

    add-int/lit8 v12, v5, 0x1

    iput v12, v10, Lc8/Zpq;->leftId:I

    .line 126
    .local v5, "id":I
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v10, v10, Lc8/Zpq;->leftMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget v3, v10, Lc8/Zpq;->rightId:I

    .line 128
    .local v3, "highRightId":I
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v10, v10, Lc8/Zpq;->this$0:Lc8/aqq;

    iget-object v10, v10, Lc8/aqq;->leftDurationSelector:Lc8/Inq;

    invoke-interface {v10, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;

    .line 134
    .local v1, "duration":Lc8/Vlq;, "Lrx/Observable<TTLeftDuration;>;"
    new-instance v0, Lc8/Vpq;

    invoke-direct {v0, p0, v5}, Lc8/Vpq;-><init>(Lc8/Wpq;I)V

    .line 135
    .local v0, "d1":Lc8/Omq;, "Lrx/Subscriber<TTLeftDuration;>;"
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v10, v10, Lc8/Zpq;->group:Lc8/SBq;

    invoke-virtual {v10, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 137
    invoke-virtual {v1, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 139
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v8, "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v11, v10, Lc8/Zpq;->guard:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :try_start_2
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v10, v10, Lc8/Zpq;->rightMap:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v10, v3, :cond_0

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 146
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;TTRight;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 151
    .end local v0    # "d1":Lc8/Omq;, "Lrx/Subscriber<TTLeftDuration;>;"
    .end local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TTLeftDuration;>;"
    .end local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :catch_0
    move-exception v9

    .line 152
    .local v9, "t":Ljava/lang/Throwable;
    invoke-static {v9, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 154
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 128
    .end local v3    # "highRightId":I
    .end local v5    # "id":I
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 146
    .restart local v0    # "d1":Lc8/Omq;, "Lrx/Subscriber<TTLeftDuration;>;"
    .restart local v1    # "duration":Lc8/Vlq;, "Lrx/Observable<TTLeftDuration;>;"
    .restart local v3    # "highRightId":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "id":I
    .restart local v8    # "rightValues":Ljava/util/List;, "Ljava/util/List<TTRight;>;"
    :cond_2
    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 147
    :try_start_6
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 148
    .local v6, "r":Ljava/lang/Object;, "TTRight;"
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v10, v10, Lc8/Zpq;->this$0:Lc8/aqq;

    iget-object v10, v10, Lc8/aqq;->resultSelector:Lc8/Jnq;

    invoke-interface {v10, p1, v6}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 149
    .local v7, "result":Ljava/lang/Object;, "TR;"
    iget-object v10, p0, Lc8/Wpq;->this$1:Lc8/Zpq;

    iget-object v10, v10, Lc8/Zpq;->subscriber:Lc8/Omq;

    invoke-virtual {v10, v7}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1
.end method
