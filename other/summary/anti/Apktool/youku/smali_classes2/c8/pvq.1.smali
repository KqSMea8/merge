.class public Lc8/pvq;
.super Lc8/Omq;
.source "OperatorTimestamp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qvq;->call(Lc8/Omq;)Lc8/Omq;
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
.field final synthetic this$0:Lc8/qvq;

.field final synthetic val$o:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/qvq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 41
    .local p0, "this":Lc8/pvq;, "Lrx/internal/operators/OperatorTimestamp.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/pvq;->this$0:Lc8/qvq;

    iput-object p3, p0, Lc8/pvq;->val$o:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lc8/pvq;, "Lrx/internal/operators/OperatorTimestamp.1;"
    iget-object v0, p0, Lc8/pvq;->val$o:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 46
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    .local p0, "this":Lc8/pvq;, "Lrx/internal/operators/OperatorTimestamp.1;"
    iget-object v0, p0, Lc8/pvq;->val$o:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/pvq;, "Lrx/internal/operators/OperatorTimestamp.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/pvq;->val$o:Lc8/Omq;

    new-instance v1, Lc8/pBq;

    iget-object v2, p0, Lc8/pvq;->this$0:Lc8/qvq;

    iget-object v2, v2, Lc8/qvq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->now()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, p1}, Lc8/pBq;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 56
    return-void
.end method
