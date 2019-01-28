.class public Lc8/Wvq;
.super Lc8/Omq;
.source "OperatorWindowWithStartEndObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xvq;->beginWindow(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TV;>;"
    }
.end annotation


# instance fields
.field once:Z

.field final synthetic this$1:Lc8/Xvq;

.field final synthetic val$s:Lc8/Vvq;


# direct methods
.method constructor <init>(Lc8/Xvq;Lc8/Vvq;)V
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lc8/Wvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iput-object p1, p0, Lc8/Wvq;->this$1:Lc8/Xvq;

    iput-object p2, p0, Lc8/Wvq;->val$s:Lc8/Vvq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Wvq;->once:Z

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 204
    .local p0, "this":Lc8/Wvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iget-boolean v0, p0, Lc8/Wvq;->once:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Wvq;->once:Z

    .line 206
    iget-object v0, p0, Lc8/Wvq;->this$1:Lc8/Xvq;

    iget-object v1, p0, Lc8/Wvq;->val$s:Lc8/Vvq;

    invoke-virtual {v0, v1}, Lc8/Xvq;->endWindow(Lc8/Vvq;)V

    .line 207
    iget-object v0, p0, Lc8/Wvq;->this$1:Lc8/Xvq;

    iget-object v0, v0, Lc8/Xvq;->csub:Lc8/SBq;

    invoke-virtual {v0, p0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 199
    .local p0, "this":Lc8/Wvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    iget-object v0, p0, Lc8/Wvq;->this$1:Lc8/Xvq;

    invoke-virtual {v0, p1}, Lc8/Xvq;->onError(Ljava/lang/Throwable;)V

    .line 200
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "this":Lc8/Wvq;, "Lrx/internal/operators/OperatorWindowWithStartEndObservable$SourceSubscriber.1;"
    .local p1, "t":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lc8/Wvq;->onCompleted()V

    .line 195
    return-void
.end method
