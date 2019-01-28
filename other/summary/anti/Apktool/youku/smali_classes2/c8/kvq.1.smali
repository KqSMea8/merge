.class public Lc8/kvq;
.super Lc8/Omq;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/lvq;->call(Lc8/ivq;Ljava/lang/Long;Lc8/Zlq;)Lc8/Pmq;
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
.field final synthetic this$1:Lc8/lvq;

.field final synthetic val$seqId:Ljava/lang/Long;

.field final synthetic val$timeoutSubscriber:Lc8/ivq;


# direct methods
.method constructor <init>(Lc8/lvq;Lc8/ivq;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lc8/kvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iput-object p1, p0, Lc8/kvq;->this$1:Lc8/lvq;

    iput-object p2, p0, Lc8/kvq;->val$timeoutSubscriber:Lc8/ivq;

    iput-object p3, p0, Lc8/kvq;->val$seqId:Ljava/lang/Long;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 58
    .local p0, "this":Lc8/kvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lc8/kvq;->val$timeoutSubscriber:Lc8/ivq;

    iget-object v1, p0, Lc8/kvq;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/ivq;->onTimeout(J)V

    .line 59
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    .local p0, "this":Lc8/kvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    iget-object v0, p0, Lc8/kvq;->val$timeoutSubscriber:Lc8/ivq;

    invoke-virtual {v0, p1}, Lc8/ivq;->onError(Ljava/lang/Throwable;)V

    .line 64
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lc8/kvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lc8/kvq;->val$timeoutSubscriber:Lc8/ivq;

    iget-object v1, p0, Lc8/kvq;->val$seqId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lc8/ivq;->onTimeout(J)V

    .line 69
    return-void
.end method
