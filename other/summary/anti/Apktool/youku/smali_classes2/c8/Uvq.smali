.class public Lc8/Uvq;
.super Lc8/Omq;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Yvq;->call(Lc8/Omq;)Lc8/Omq;
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
.field final synthetic this$0:Lc8/Yvq;

.field final synthetic val$sub:Lc8/Xvq;


# direct methods
.method constructor <init>(Lc8/Yvq;Lc8/Xvq;)V
    .locals 0

    .prologue
    .line 55
    .local p0, "this":Lc8/Uvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    iput-object p1, p0, Lc8/Uvq;->this$0:Lc8/Yvq;

    iput-object p2, p0, Lc8/Uvq;->val$sub:Lc8/Xvq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lc8/Uvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    iget-object v0, p0, Lc8/Uvq;->val$sub:Lc8/Xvq;

    invoke-virtual {v0}, Lc8/Xvq;->onCompleted()V

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    .local p0, "this":Lc8/Uvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    iget-object v0, p0, Lc8/Uvq;->val$sub:Lc8/Xvq;

    invoke-virtual {v0, p1}, Lc8/Xvq;->onError(Ljava/lang/Throwable;)V

    .line 70
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lc8/Uvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    iget-object v0, p0, Lc8/Uvq;->val$sub:Lc8/Xvq;

    invoke-virtual {v0, p1}, Lc8/Xvq;->beginWindow(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 59
    .local p0, "this":Lc8/Uvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Uvq;->request(J)V

    .line 60
    return-void
.end method
