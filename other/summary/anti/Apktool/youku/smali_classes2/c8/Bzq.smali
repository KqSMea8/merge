.class public Lc8/Bzq;
.super Lc8/Omq;
.source "AsyncOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jzq;->call(Lc8/Omq;)V
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
.field final synthetic this$0:Lc8/Jzq;

.field final synthetic val$actualSubscriber:Lc8/Omq;

.field final synthetic val$outerProducer:Lc8/Gzq;


# direct methods
.method constructor <init>(Lc8/Jzq;Lc8/Omq;Lc8/Gzq;)V
    .locals 0

    .prologue
    .line 326
    .local p0, "this":Lc8/Bzq;, "Lrx/observables/AsyncOnSubscribe.6;"
    iput-object p1, p0, Lc8/Bzq;->this$0:Lc8/Jzq;

    iput-object p2, p0, Lc8/Bzq;->val$actualSubscriber:Lc8/Omq;

    iput-object p3, p0, Lc8/Bzq;->val$outerProducer:Lc8/Gzq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 339
    .local p0, "this":Lc8/Bzq;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lc8/Bzq;->val$actualSubscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 340
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 334
    .local p0, "this":Lc8/Bzq;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lc8/Bzq;->val$actualSubscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 335
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
    .line 329
    .local p0, "this":Lc8/Bzq;, "Lrx/observables/AsyncOnSubscribe.6;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Bzq;->val$actualSubscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 330
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 344
    .local p0, "this":Lc8/Bzq;, "Lrx/observables/AsyncOnSubscribe.6;"
    iget-object v0, p0, Lc8/Bzq;->val$outerProducer:Lc8/Gzq;

    invoke-virtual {v0, p1}, Lc8/Gzq;->setConcatProducer(Lc8/Xlq;)V

    .line 345
    return-void
.end method
