.class public final Lc8/uuq;
.super Lc8/Omq;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final id:J

.field private final parent:Lc8/xuq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/xuq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(JLc8/xuq;)V
    .locals 1
    .param p1, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lc8/xuq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 389
    .local p0, "this":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .local p3, "parent":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 390
    iput-wide p1, p0, Lc8/uuq;->id:J

    .line 391
    iput-object p3, p0, Lc8/uuq;->parent:Lc8/xuq;

    .line 392
    return-void
.end method

.method static synthetic access$000(Lc8/uuq;)J
    .locals 2
    .param p0, "x0"    # Lc8/uuq;

    .prologue
    .line 383
    iget-wide v0, p0, Lc8/uuq;->id:J

    return-wide v0
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 411
    .local p0, "this":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lc8/uuq;->parent:Lc8/xuq;

    iget-wide v2, p0, Lc8/uuq;->id:J

    invoke-virtual {v0, v2, v3}, Lc8/xuq;->complete(J)V

    .line 412
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 406
    .local p0, "this":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lc8/uuq;->parent:Lc8/xuq;

    iget-wide v2, p0, Lc8/uuq;->id:J

    invoke-virtual {v0, p1, v2, v3}, Lc8/xuq;->error(Ljava/lang/Throwable;J)V

    .line 407
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
    .line 401
    .local p0, "this":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/uuq;->parent:Lc8/xuq;

    invoke-virtual {v0, p1, p0}, Lc8/xuq;->emit(Ljava/lang/Object;Lc8/uuq;)V

    .line 402
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 4
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 396
    .local p0, "this":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    iget-object v0, p0, Lc8/uuq;->parent:Lc8/xuq;

    iget-wide v2, p0, Lc8/uuq;->id:J

    invoke-virtual {v0, p1, v2, v3}, Lc8/xuq;->innerProducer(Lc8/Xlq;J)V

    .line 397
    return-void
.end method
