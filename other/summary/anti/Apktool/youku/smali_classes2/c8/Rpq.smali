.class public final Lc8/Rpq;
.super Ljava/lang/Object;
.source "OnSubscribeGroupJoin.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Upq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ResultManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Ppq;,
        Lc8/Npq;,
        Lc8/Qpq;,
        Lc8/Opq;
    }
.end annotation


# instance fields
.field final cancel:Lc8/WBq;

.field final group:Lc8/SBq;

.field final guard:Ljava/lang/Object;

.field leftDone:Z

.field leftIds:I

.field final leftMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lc8/Wlq",
            "<TT2;>;>;"
        }
    .end annotation
.end field

.field rightDone:Z

.field rightIds:I

.field final rightMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "TT2;>;"
        }
    .end annotation
.end field

.field final subscriber:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Upq;


# direct methods
.method public constructor <init>(Lc8/Upq;Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p2, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iput-object p1, p0, Lc8/Rpq;->this$0:Lc8/Upq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Rpq;->guard:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Rpq;->leftMap:Ljava/util/Map;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Rpq;->rightMap:Ljava/util/Map;

    .line 87
    iput-object p2, p0, Lc8/Rpq;->subscriber:Lc8/Omq;

    .line 88
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/Rpq;->group:Lc8/SBq;

    .line 89
    new-instance v0, Lc8/WBq;

    iget-object v1, p0, Lc8/Rpq;->group:Lc8/SBq;

    invoke-direct {v0, v1}, Lc8/WBq;-><init>(Lc8/Pmq;)V

    iput-object v0, p0, Lc8/Rpq;->cancel:Lc8/WBq;

    .line 90
    return-void
.end method


# virtual methods
.method complete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/Wlq",
            "<TT2;>;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p0, "this":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    if-eqz p1, :cond_1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Wlq;

    .line 145
    .local v1, "o":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    invoke-interface {v1}, Lc8/Wlq;->onCompleted()V

    goto :goto_0

    .line 147
    .end local v1    # "o":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    :cond_0
    iget-object v2, p0, Lc8/Rpq;->subscriber:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->onCompleted()V

    .line 148
    iget-object v2, p0, Lc8/Rpq;->cancel:Lc8/WBq;

    invoke-virtual {v2}, Lc8/WBq;->unsubscribe()V

    .line 150
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method errorAll(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 119
    .local p0, "this":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v4, p0, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 120
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    iget-object v3, p0, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 122
    iget-object v3, p0, Lc8/Rpq;->rightMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 123
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Wlq;

    .line 125
    .local v2, "o":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    invoke-interface {v2, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    .end local v2    # "o":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 127
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Observer<TT2;>;>;"
    :cond_0
    iget-object v3, p0, Lc8/Rpq;->subscriber:Lc8/Omq;

    invoke-virtual {v3, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 128
    iget-object v3, p0, Lc8/Rpq;->cancel:Lc8/WBq;

    invoke-virtual {v3}, Lc8/WBq;->unsubscribe()V

    .line 129
    return-void
.end method

.method errorMain(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    .local p0, "this":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v1, p0, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lc8/Rpq;->leftMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 137
    iget-object v0, p0, Lc8/Rpq;->rightMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 138
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    iget-object v0, p0, Lc8/Rpq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 140
    iget-object v0, p0, Lc8/Rpq;->cancel:Lc8/WBq;

    invoke-virtual {v0}, Lc8/WBq;->unsubscribe()V

    .line 141
    return-void

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 94
    .local p0, "this":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    new-instance v0, Lc8/Opq;

    invoke-direct {v0, p0}, Lc8/Opq;-><init>(Lc8/Rpq;)V

    .line 95
    .local v0, "s1":Lc8/Omq;, "Lrx/Subscriber<TT1;>;"
    new-instance v1, Lc8/Qpq;

    invoke-direct {v1, p0}, Lc8/Qpq;-><init>(Lc8/Rpq;)V

    .line 97
    .local v1, "s2":Lc8/Omq;, "Lrx/Subscriber<TT2;>;"
    iget-object v2, p0, Lc8/Rpq;->group:Lc8/SBq;

    invoke-virtual {v2, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 98
    iget-object v2, p0, Lc8/Rpq;->group:Lc8/SBq;

    invoke-virtual {v2, v1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 100
    iget-object v2, p0, Lc8/Rpq;->this$0:Lc8/Upq;

    iget-object v2, v2, Lc8/Upq;->left:Lc8/Vlq;

    invoke-virtual {v2, v0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 101
    iget-object v2, p0, Lc8/Rpq;->this$0:Lc8/Upq;

    iget-object v2, v2, Lc8/Upq;->right:Lc8/Vlq;

    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 102
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lc8/Rpq;->cancel:Lc8/WBq;

    invoke-virtual {v0}, Lc8/WBq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lc8/Rpq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager;"
    iget-object v0, p0, Lc8/Rpq;->cancel:Lc8/WBq;

    invoke-virtual {v0}, Lc8/WBq;->unsubscribe()V

    .line 107
    return-void
.end method
