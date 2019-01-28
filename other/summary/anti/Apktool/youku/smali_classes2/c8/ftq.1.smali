.class public Lc8/ftq;
.super Lc8/Omq;
.source "OperatorOnErrorResumeNextViaFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gtq;->onError(Ljava/lang/Throwable;)V
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
.field final synthetic this$1:Lc8/gtq;


# direct methods
.method constructor <init>(Lc8/gtq;)V
    .locals 0

    .prologue
    .line 115
    .local p0, "this":Lc8/ftq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iput-object p1, p0, Lc8/ftq;->this$1:Lc8/gtq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lc8/ftq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lc8/ftq;->this$1:Lc8/gtq;

    iget-object v0, v0, Lc8/gtq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 127
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 122
    .local p0, "this":Lc8/ftq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lc8/ftq;->this$1:Lc8/gtq;

    iget-object v0, v0, Lc8/gtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 123
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
    .line 118
    .local p0, "this":Lc8/ftq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/ftq;->this$1:Lc8/gtq;

    iget-object v0, v0, Lc8/gtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "producer"    # Lc8/Xlq;

    .prologue
    .line 130
    .local p0, "this":Lc8/ftq;, "Lrx/internal/operators/OperatorOnErrorResumeNextViaFunction$4.1;"
    iget-object v0, p0, Lc8/ftq;->this$1:Lc8/gtq;

    iget-object v0, v0, Lc8/gtq;->val$pa:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 131
    return-void
.end method
