.class public Lc8/jtq;
.super Lc8/Omq;
.source "OperatorPublish.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ktq;->call(Lc8/Omq;)V
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
.field final synthetic this$0:Lc8/ktq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$op:Lrx/internal/operators/OnSubscribePublishMulticast;


# direct methods
.method constructor <init>(Lc8/ktq;Lc8/Omq;Lrx/internal/operators/OnSubscribePublishMulticast;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lc8/jtq;->this$0:Lc8/ktq;

    iput-object p2, p0, Lc8/jtq;->val$child:Lc8/Omq;

    iput-object p3, p0, Lc8/jtq;->val$op:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lc8/jtq;->val$op:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->unsubscribe()V

    .line 146
    iget-object v0, p0, Lc8/jtq;->val$child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 147
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 139
    iget-object v0, p0, Lc8/jtq;->val$op:Lrx/internal/operators/OnSubscribePublishMulticast;

    invoke-virtual {v0}, Lrx/internal/operators/OnSubscribePublishMulticast;->unsubscribe()V

    .line 140
    iget-object v0, p0, Lc8/jtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 141
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
    .line 134
    .local p1, "t":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lc8/jtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 135
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 151
    iget-object v0, p0, Lc8/jtq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 152
    return-void
.end method
