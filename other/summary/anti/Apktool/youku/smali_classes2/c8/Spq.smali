.class public final Lc8/Spq;
.super Lc8/Omq;
.source "OnSubscribeGroupJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WindowSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final ref:Lc8/Pmq;

.field final subscriber:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Tpq;


# direct methods
.method public constructor <init>(Lc8/Tpq;Lc8/Omq;Lc8/Pmq;)V
    .locals 0
    .param p3, "ref"    # Lc8/Pmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Lc8/Pmq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "this":Lc8/Spq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    .local p2, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iput-object p1, p0, Lc8/Spq;->this$0:Lc8/Tpq;

    .line 358
    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 359
    iput-object p2, p0, Lc8/Spq;->subscriber:Lc8/Omq;

    .line 360
    iput-object p3, p0, Lc8/Spq;->ref:Lc8/Pmq;

    .line 361
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 376
    .local p0, "this":Lc8/Spq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    iget-object v0, p0, Lc8/Spq;->subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 377
    iget-object v0, p0, Lc8/Spq;->ref:Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 378
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 370
    .local p0, "this":Lc8/Spq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    iget-object v0, p0, Lc8/Spq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 371
    iget-object v0, p0, Lc8/Spq;->ref:Lc8/Pmq;

    invoke-interface {v0}, Lc8/Pmq;->unsubscribe()V

    .line 372
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lc8/Spq;, "Lrx/internal/operators/OnSubscribeGroupJoin$WindowObservableFunc<TT;>.WindowSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Spq;->subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 366
    return-void
.end method
