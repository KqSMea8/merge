.class public Lc8/Msq;
.super Lc8/Omq;
.source "OperatorMulticast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nsq;->connect(Lc8/inq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nsq;

.field final synthetic val$s:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Nsq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 116
    .local p0, "this":Lc8/Msq;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Msq;->this$0:Lc8/Nsq;

    iput-object p3, p0, Lc8/Msq;->val$s:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 127
    .local p0, "this":Lc8/Msq;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lc8/Msq;->val$s:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 128
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    .local p0, "this":Lc8/Msq;, "Lrx/internal/operators/OperatorMulticast.3;"
    iget-object v0, p0, Lc8/Msq;->val$s:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lc8/Msq;, "Lrx/internal/operators/OperatorMulticast.3;"
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lc8/Msq;->val$s:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 120
    return-void
.end method
