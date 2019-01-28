.class public final Lc8/Npq;
.super Lc8/Omq;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LeftDurationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TD1;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$1:Lc8/Rpq;


# direct methods
.method public constructor <init>(Lc8/Rpq;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 267
    .local p0, "this":Lc8/Npq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iput-object p1, p0, Lc8/Npq;->this$1:Lc8/Rpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Npq;->once:Z

    .line 268
    iput p2, p0, Lc8/Npq;->id:I

    .line 269
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 273
    .local p0, "this":Lc8/Npq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iget-boolean v1, p0, Lc8/Npq;->once:Z

    if-eqz v1, :cond_1

    .line 274
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/Npq;->once:Z

    .line 276
    iget-object v1, p0, Lc8/Npq;->this$1:Lc8/Rpq;

    iget-object v2, v1, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v2

    .line 277
    :try_start_0
    iget-object v1, p0, Lc8/Npq;->this$1:Lc8/Rpq;

    iget-object v1, v1, Lc8/Rpq;->leftMap:Ljava/util/Map;

    iget v3, p0, Lc8/Npq;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Wlq;

    .line 278
    .local v0, "gr":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 282
    :cond_0
    iget-object v1, p0, Lc8/Npq;->this$1:Lc8/Rpq;

    iget-object v1, v1, Lc8/Rpq;->group:Lc8/SBq;

    invoke-virtual {v1, p0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 284
    .end local v0    # "gr":Lc8/Wlq;, "Lrx/Observer<TT2;>;"
    :cond_1
    return-void

    .line 278
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 288
    .local p0, "this":Lc8/Npq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    iget-object v0, p0, Lc8/Npq;->this$1:Lc8/Rpq;

    invoke-virtual {v0, p1}, Lc8/Rpq;->errorMain(Ljava/lang/Throwable;)V

    .line 289
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD1;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p0, "this":Lc8/Npq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.LeftDurationObserver;"
    .local p1, "args":Ljava/lang/Object;, "TD1;"
    invoke-virtual {p0}, Lc8/Npq;->onCompleted()V

    .line 294
    return-void
.end method
