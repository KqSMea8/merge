.class public Lc8/xrq;
.super Lc8/Omq;
.source "OperatorDebounceWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/yrq;->onNext(Ljava/lang/Object;)V
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
.field final synthetic this$1:Lc8/yrq;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lc8/yrq;I)V
    .locals 0

    .prologue
    .line 69
    .local p0, "this":Lc8/xrq;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iput-object p1, p0, Lc8/xrq;->this$1:Lc8/yrq;

    iput p2, p0, Lc8/xrq;->val$index:I

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 83
    .local p0, "this":Lc8/xrq;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iget-object v0, p0, Lc8/xrq;->this$1:Lc8/yrq;

    iget-object v0, v0, Lc8/yrq;->state:Lc8/Crq;

    iget v1, p0, Lc8/xrq;->val$index:I

    iget-object v2, p0, Lc8/xrq;->this$1:Lc8/yrq;

    iget-object v2, v2, Lc8/yrq;->val$s:Lc8/qAq;

    iget-object v3, p0, Lc8/xrq;->this$1:Lc8/yrq;

    iget-object v3, v3, Lc8/yrq;->self:Lc8/Omq;

    invoke-virtual {v0, v1, v2, v3}, Lc8/Crq;->emit(ILc8/Omq;Lc8/Omq;)V

    .line 84
    invoke-virtual {p0}, Lc8/xrq;->unsubscribe()V

    .line 85
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lc8/xrq;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    iget-object v0, p0, Lc8/xrq;->this$1:Lc8/yrq;

    iget-object v0, v0, Lc8/yrq;->self:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lc8/xrq;, "Lrx/internal/operators/OperatorDebounceWithSelector$1.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lc8/xrq;->onCompleted()V

    .line 74
    return-void
.end method
