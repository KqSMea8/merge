.class public Lc8/huq;
.super Lc8/Omq;
.source "OperatorSkipUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/juq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TU;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/juq;

.field final synthetic val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lc8/qAq;


# direct methods
.method constructor <init>(Lc8/juq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/qAq;)V
    .locals 0

    .prologue
    .line 47
    .local p0, "this":Lc8/huq;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    iput-object p1, p0, Lc8/huq;->this$0:Lc8/juq;

    iput-object p2, p0, Lc8/huq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lc8/huq;->val$s:Lc8/qAq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 63
    .local p0, "this":Lc8/huq;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    invoke-virtual {p0}, Lc8/huq;->unsubscribe()V

    .line 64
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 57
    .local p0, "this":Lc8/huq;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    iget-object v0, p0, Lc8/huq;->val$s:Lc8/qAq;

    invoke-virtual {v0, p1}, Lc8/qAq;->onError(Ljava/lang/Throwable;)V

    .line 58
    iget-object v0, p0, Lc8/huq;->val$s:Lc8/qAq;

    invoke-virtual {v0}, Lc8/qAq;->unsubscribe()V

    .line 59
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/huq;, "Lrx/internal/operators/OperatorSkipUntil.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lc8/huq;->val$gate:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    invoke-virtual {p0}, Lc8/huq;->unsubscribe()V

    .line 53
    return-void
.end method
