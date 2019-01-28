.class public Lc8/Ltq;
.super Lc8/Omq;
.source "OperatorScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Otq;->call(Lc8/Omq;)Lc8/Omq;
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
.field once:Z

.field final synthetic this$0:Lc8/Otq;

.field final synthetic val$child:Lc8/Omq;

.field value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Otq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 96
    .local p0, "this":Lc8/Ltq;, "Lrx/internal/operators/OperatorScan.2;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Ltq;->this$0:Lc8/Otq;

    iput-object p3, p0, Lc8/Ltq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 124
    .local p0, "this":Lc8/Ltq;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lc8/Ltq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 125
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 120
    .local p0, "this":Lc8/Ltq;, "Lrx/internal/operators/OperatorScan.2;"
    iget-object v0, p0, Lc8/Ltq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 121
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
    .line 103
    .local p0, "this":Lc8/Ltq;, "Lrx/internal/operators/OperatorScan.2;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lc8/Ltq;->once:Z

    if-nez v2, :cond_0

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Ltq;->once:Z

    .line 105
    move-object v1, p1

    .line 115
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :goto_0
    iput-object v1, p0, Lc8/Ltq;->value:Ljava/lang/Object;

    .line 116
    iget-object v2, p0, Lc8/Ltq;->val$child:Lc8/Omq;

    invoke-virtual {v2, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 117
    :goto_1
    return-void

    .line 107
    .end local v1    # "v":Ljava/lang/Object;, "TR;"
    :cond_0
    iget-object v1, p0, Lc8/Ltq;->value:Ljava/lang/Object;

    .line 109
    .restart local v1    # "v":Ljava/lang/Object;, "TR;"
    :try_start_0
    iget-object v2, p0, Lc8/Ltq;->this$0:Lc8/Otq;

    iget-object v2, v2, Lc8/Otq;->accumulator:Lc8/Jnq;

    invoke-interface {v2, v1, p1}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lc8/Ltq;->val$child:Lc8/Omq;

    invoke-static {v0, v2, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_1
.end method
