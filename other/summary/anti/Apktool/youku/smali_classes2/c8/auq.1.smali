.class public Lc8/auq;
.super Lc8/Omq;
.source "OperatorSkipLast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/buq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final deque:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final on:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/buq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/buq;Lc8/Omq;Lc8/Omq;)V
    .locals 1

    .prologue
    .line 40
    .local p0, "this":Lc8/auq;, "Lrx/internal/operators/OperatorSkipLast.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/auq;->this$0:Lc8/buq;

    iput-object p3, p0, Lc8/auq;->val$subscriber:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 42
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/auq;->on:Lc8/cpq;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/auq;->deque:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lc8/auq;, "Lrx/internal/operators/OperatorSkipLast.1;"
    iget-object v0, p0, Lc8/auq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lc8/auq;, "Lrx/internal/operators/OperatorSkipLast.1;"
    iget-object v0, p0, Lc8/auq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lc8/auq;, "Lrx/internal/operators/OperatorSkipLast.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/auq;->this$0:Lc8/buq;

    iget v0, v0, Lc8/buq;->count:I

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lc8/auq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 74
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lc8/auq;->deque:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget-object v1, p0, Lc8/auq;->this$0:Lc8/buq;

    iget v1, v1, Lc8/buq;->count:I

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lc8/auq;->val$subscriber:Lc8/Omq;

    iget-object v1, p0, Lc8/auq;->on:Lc8/cpq;

    iget-object v2, p0, Lc8/auq;->deque:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 73
    :goto_1
    iget-object v0, p0, Lc8/auq;->deque:Ljava/util/Deque;

    iget-object v1, p0, Lc8/auq;->on:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lc8/auq;->request(J)V

    goto :goto_1
.end method
