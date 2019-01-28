.class public final Lc8/Ppq;
.super Lc8/Omq;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RightDurationObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TD2;>;"
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
    .line 301
    .local p0, "this":Lc8/Ppq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iput-object p1, p0, Lc8/Ppq;->this$1:Lc8/Rpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Ppq;->once:Z

    .line 302
    iput p2, p0, Lc8/Ppq;->id:I

    .line 303
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 307
    .local p0, "this":Lc8/Ppq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-boolean v0, p0, Lc8/Ppq;->once:Z

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Ppq;->once:Z

    .line 309
    iget-object v0, p0, Lc8/Ppq;->this$1:Lc8/Rpq;

    iget-object v1, v0, Lc8/Rpq;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 310
    :try_start_0
    iget-object v0, p0, Lc8/Ppq;->this$1:Lc8/Rpq;

    iget-object v0, v0, Lc8/Rpq;->rightMap:Ljava/util/Map;

    iget v2, p0, Lc8/Ppq;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    iget-object v0, p0, Lc8/Ppq;->this$1:Lc8/Rpq;

    iget-object v0, v0, Lc8/Rpq;->group:Lc8/SBq;

    invoke-virtual {v0, p0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 314
    :cond_0
    return-void

    .line 311
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 318
    .local p0, "this":Lc8/Ppq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    iget-object v0, p0, Lc8/Ppq;->this$1:Lc8/Rpq;

    invoke-virtual {v0, p1}, Lc8/Rpq;->errorMain(Ljava/lang/Throwable;)V

    .line 319
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD2;)V"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, "this":Lc8/Ppq;, "Lrx/internal/operators/OnSubscribeGroupJoin<TT1;TT2;TD1;TD2;TR;>.ResultManager.RightDurationObserver;"
    .local p1, "args":Ljava/lang/Object;, "TD2;"
    invoke-virtual {p0}, Lc8/Ppq;->onCompleted()V

    .line 324
    return-void
.end method
