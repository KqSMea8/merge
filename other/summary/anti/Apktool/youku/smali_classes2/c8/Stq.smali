.class public Lc8/Stq;
.super Lc8/Omq;
.source "OperatorSerialize.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Utq;->call(Lc8/Omq;)Lc8/Omq;
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
.field final synthetic this$0:Lc8/Utq;

.field final synthetic val$s:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Utq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lc8/Stq;, "Lrx/internal/operators/OperatorSerialize.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Stq;->this$0:Lc8/Utq;

    iput-object p3, p0, Lc8/Stq;->val$s:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lc8/Stq;, "Lrx/internal/operators/OperatorSerialize.1;"
    iget-object v0, p0, Lc8/Stq;->val$s:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 48
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 52
    .local p0, "this":Lc8/Stq;, "Lrx/internal/operators/OperatorSerialize.1;"
    iget-object v0, p0, Lc8/Stq;->val$s:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 53
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
    .line 57
    .local p0, "this":Lc8/Stq;, "Lrx/internal/operators/OperatorSerialize.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Stq;->val$s:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 58
    return-void
.end method
