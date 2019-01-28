.class public Lc8/Mtq;
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
.field final synthetic this$0:Lc8/Otq;

.field final synthetic val$initialValue:Ljava/lang/Object;

.field final synthetic val$ip:Lc8/Ntq;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/Otq;Ljava/lang/Object;Lc8/Ntq;)V
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lc8/Mtq;, "Lrx/internal/operators/OperatorScan.3;"
    iput-object p1, p0, Lc8/Mtq;->this$0:Lc8/Otq;

    iput-object p2, p0, Lc8/Mtq;->val$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lc8/Mtq;->val$ip:Lc8/Ntq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 132
    iget-object v0, p0, Lc8/Mtq;->val$initialValue:Ljava/lang/Object;

    iput-object v0, p0, Lc8/Mtq;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 154
    .local p0, "this":Lc8/Mtq;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lc8/Mtq;->val$ip:Lc8/Ntq;

    invoke-virtual {v0}, Lc8/Ntq;->onCompleted()V

    .line 155
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 149
    .local p0, "this":Lc8/Mtq;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lc8/Mtq;->val$ip:Lc8/Ntq;

    invoke-virtual {v0, p1}, Lc8/Ntq;->onError(Ljava/lang/Throwable;)V

    .line 150
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
    .line 136
    .local p0, "this":Lc8/Mtq;, "Lrx/internal/operators/OperatorScan.3;"
    .local p1, "currentValue":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/Mtq;->value:Ljava/lang/Object;

    .line 138
    .local v1, "v":Ljava/lang/Object;, "TR;"
    :try_start_0
    iget-object v2, p0, Lc8/Mtq;->this$0:Lc8/Otq;

    iget-object v2, v2, Lc8/Otq;->accumulator:Lc8/Jnq;

    invoke-interface {v2, v1, p1}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    iput-object v1, p0, Lc8/Mtq;->value:Ljava/lang/Object;

    .line 144
    iget-object v2, p0, Lc8/Mtq;->val$ip:Lc8/Ntq;

    invoke-virtual {v2, v1}, Lc8/Ntq;->onNext(Ljava/lang/Object;)V

    .line 145
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 159
    .local p0, "this":Lc8/Mtq;, "Lrx/internal/operators/OperatorScan.3;"
    iget-object v0, p0, Lc8/Mtq;->val$ip:Lc8/Ntq;

    invoke-virtual {v0, p1}, Lc8/Ntq;->setProducer(Lc8/Xlq;)V

    .line 160
    return-void
.end method
