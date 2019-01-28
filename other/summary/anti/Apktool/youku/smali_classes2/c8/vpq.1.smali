.class public Lc8/vpq;
.super Lc8/Omq;
.source "OnSubscribeDelaySubscriptionOther.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wpq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TU;>;"
    }
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lc8/wpq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$serial:Lc8/YBq;


# direct methods
.method constructor <init>(Lc8/wpq;Lc8/Omq;Lc8/YBq;)V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lc8/vpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iput-object p1, p0, Lc8/vpq;->this$0:Lc8/wpq;

    iput-object p2, p0, Lc8/vpq;->val$child:Lc8/Omq;

    iput-object p3, p0, Lc8/vpq;->val$serial:Lc8/YBq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 68
    .local p0, "this":Lc8/vpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iget-boolean v0, p0, Lc8/vpq;->done:Z

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vpq;->done:Z

    .line 72
    iget-object v0, p0, Lc8/vpq;->val$serial:Lc8/YBq;

    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 74
    iget-object v0, p0, Lc8/vpq;->this$0:Lc8/wpq;

    iget-object v0, v0, Lc8/wpq;->main:Lc8/Vlq;

    iget-object v1, p0, Lc8/vpq;->val$child:Lc8/Omq;

    invoke-virtual {v0, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    .local p0, "this":Lc8/vpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    iget-boolean v0, p0, Lc8/vpq;->done:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/vpq;->done:Z

    .line 63
    iget-object v0, p0, Lc8/vpq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lc8/vpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    invoke-virtual {p0}, Lc8/vpq;->onCompleted()V

    .line 54
    return-void
.end method
