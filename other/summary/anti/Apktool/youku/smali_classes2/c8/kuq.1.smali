.class public Lc8/kuq;
.super Lc8/Omq;
.source "OperatorSkipWhile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/muq;->call(Lc8/Omq;)Lc8/Omq;
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
.field index:I

.field skipping:Z

.field final synthetic this$0:Lc8/muq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/muq;Lc8/Omq;Lc8/Omq;)V
    .locals 1

    .prologue
    .line 36
    .local p0, "this":Lc8/kuq;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/kuq;->this$0:Lc8/muq;

    iput-object p3, p0, Lc8/kuq;->val$child:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/kuq;->skipping:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Lc8/kuq;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    iget-object v0, p0, Lc8/kuq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 68
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    .local p0, "this":Lc8/kuq;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    iget-object v0, p0, Lc8/kuq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/kuq;, "Lrx/internal/operators/OperatorSkipWhile.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v2, p0, Lc8/kuq;->skipping:Z

    if-nez v2, :cond_0

    .line 42
    iget-object v2, p0, Lc8/kuq;->val$child:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v2, p0, Lc8/kuq;->this$0:Lc8/muq;

    iget-object v2, v2, Lc8/muq;->predicate:Lc8/Jnq;

    iget v3, p0, Lc8/kuq;->index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc8/kuq;->index:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 51
    .local v1, "skip":Z
    if-nez v1, :cond_1

    .line 52
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/kuq;->skipping:Z

    .line 53
    iget-object v2, p0, Lc8/kuq;->val$child:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    .end local v1    # "skip":Z
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lc8/kuq;->val$child:Lc8/Omq;

    invoke-static {v0, v2, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "skip":Z
    :cond_1
    const-wide/16 v2, 0x1

    invoke-virtual {p0, v2, v3}, Lc8/kuq;->request(J)V

    goto :goto_0
.end method
