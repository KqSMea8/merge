.class public Lc8/ltq;
.super Ljava/lang/Object;
.source "OperatorPublish.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mtq;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mtq;


# direct methods
.method constructor <init>(Lc8/mtq;)V
    .locals 0

    .prologue
    .line 260
    .local p0, "this":Lc8/ltq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber.1;"
    iput-object p1, p0, Lc8/ltq;->this$0:Lc8/mtq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 263
    .local p0, "this":Lc8/ltq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber.1;"
    iget-object v0, p0, Lc8/ltq;->this$0:Lc8/mtq;

    iget-object v0, v0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lc8/mtq;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lc8/ltq;->this$0:Lc8/mtq;

    iget-object v0, v0, Lc8/mtq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lc8/ltq;->this$0:Lc8/mtq;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 267
    return-void
.end method
