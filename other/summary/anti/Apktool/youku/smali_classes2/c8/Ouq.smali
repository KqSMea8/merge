.class public Lc8/Ouq;
.super Lc8/Omq;
.source "OperatorTakeUntil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Puq;->call(Lc8/Omq;)Lc8/Omq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Puq;

.field final synthetic val$main:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Puq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 65
    .local p0, "this":Lc8/Ouq;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iput-object p1, p0, Lc8/Ouq;->this$0:Lc8/Puq;

    iput-object p2, p0, Lc8/Ouq;->val$main:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lc8/Ouq;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iget-object v0, p0, Lc8/Ouq;->val$main:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 74
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 78
    .local p0, "this":Lc8/Ouq;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    iget-object v0, p0, Lc8/Ouq;->val$main:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 79
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lc8/Ouq;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    .local p1, "t":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lc8/Ouq;->onCompleted()V

    .line 84
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lc8/Ouq;, "Lrx/internal/operators/OperatorTakeUntil.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Ouq;->request(J)V

    .line 69
    return-void
.end method
