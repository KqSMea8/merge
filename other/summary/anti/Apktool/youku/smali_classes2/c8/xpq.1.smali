.class public Lc8/xpq;
.super Lc8/Omq;
.source "OnSubscribeDelaySubscriptionWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ypq;->call(Lc8/Omq;)V
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
.field final synthetic this$0:Lc8/ypq;

.field final synthetic val$child:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/ypq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 43
    .local p0, "this":Lc8/xpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    iput-object p1, p0, Lc8/xpq;->this$0:Lc8/ypq;

    iput-object p2, p0, Lc8/xpq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 48
    .local p0, "this":Lc8/xpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    iget-object v0, p0, Lc8/xpq;->this$0:Lc8/ypq;

    iget-object v0, v0, Lc8/ypq;->source:Lc8/Vlq;

    iget-object v1, p0, Lc8/xpq;->val$child:Lc8/Omq;

    invoke-static {v1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 49
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 53
    .local p0, "this":Lc8/xpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    iget-object v0, p0, Lc8/xpq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 54
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/xpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector.1;"
    .local p1, "t":Ljava/lang/Object;, "TU;"
    return-void
.end method
