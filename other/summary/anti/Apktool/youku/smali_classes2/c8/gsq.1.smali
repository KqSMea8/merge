.class public Lc8/gsq;
.super Ljava/lang/Object;
.source "OperatorEagerConcatMap.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hsq;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hsq;


# direct methods
.method constructor <init>(Lc8/hsq;)V
    .locals 0

    .prologue
    .line 98
    .local p0, "this":Lc8/gsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber.1;"
    iput-object p1, p0, Lc8/gsq;->this$0:Lc8/hsq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 101
    .local p0, "this":Lc8/gsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber.1;"
    iget-object v0, p0, Lc8/gsq;->this$0:Lc8/hsq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/hsq;->cancelled:Z

    .line 102
    iget-object v0, p0, Lc8/gsq;->this$0:Lc8/hsq;

    iget-object v0, v0, Lc8/hsq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lc8/gsq;->this$0:Lc8/hsq;

    invoke-virtual {v0}, Lc8/hsq;->cleanup()V

    .line 105
    :cond_0
    return-void
.end method
