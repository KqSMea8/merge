.class public Lc8/jsq;
.super Lc8/Omq;
.source "OperatorElementAt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ksq;->call(Lc8/Omq;)Lc8/Omq;
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
.field private currentIndex:I

.field final synthetic this$0:Lc8/ksq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/ksq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 52
    .local p0, "this":Lc8/jsq;, "Lrx/internal/operators/OperatorElementAt.1;"
    iput-object p1, p0, Lc8/jsq;->this$0:Lc8/ksq;

    iput-object p2, p0, Lc8/jsq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .prologue
    .line 72
    .local p0, "this":Lc8/jsq;, "Lrx/internal/operators/OperatorElementAt.1;"
    iget v0, p0, Lc8/jsq;->currentIndex:I

    iget-object v1, p0, Lc8/jsq;->this$0:Lc8/ksq;

    iget v1, v1, Lc8/ksq;->index:I

    if-gt v0, v1, :cond_0

    .line 74
    iget-object v0, p0, Lc8/jsq;->this$0:Lc8/ksq;

    iget-boolean v0, v0, Lc8/ksq;->hasDefault:Z

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lc8/jsq;->val$child:Lc8/Omq;

    iget-object v1, p0, Lc8/jsq;->this$0:Lc8/ksq;

    iget-object v1, v1, Lc8/ksq;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lc8/jsq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lc8/jsq;->val$child:Lc8/Omq;

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/jsq;->this$0:Lc8/ksq;

    iget v3, v3, Lc8/ksq;->index:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is out of bounds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 67
    .local p0, "this":Lc8/jsq;, "Lrx/internal/operators/OperatorElementAt.1;"
    iget-object v0, p0, Lc8/jsq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lc8/jsq;, "Lrx/internal/operators/OperatorElementAt.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lc8/jsq;->currentIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc8/jsq;->currentIndex:I

    iget-object v1, p0, Lc8/jsq;->this$0:Lc8/ksq;

    iget v1, v1, Lc8/ksq;->index:I

    if-ne v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lc8/jsq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lc8/jsq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 61
    invoke-virtual {p0}, Lc8/jsq;->unsubscribe()V

    .line 63
    :cond_0
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 85
    .local p0, "this":Lc8/jsq;, "Lrx/internal/operators/OperatorElementAt.1;"
    iget-object v0, p0, Lc8/jsq;->val$child:Lc8/Omq;

    new-instance v1, Lrx/internal/operators/OperatorElementAt$InnerProducer;

    invoke-direct {v1, p1}, Lrx/internal/operators/OperatorElementAt$InnerProducer;-><init>(Lc8/Xlq;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 86
    return-void
.end method
