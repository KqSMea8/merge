.class public Lc8/kyq;
.super Ljava/lang/Object;
.source "ScalarSynchronousObservable.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oyq;->scalarFlatMap(Lc8/Inq;)Lc8/Vlq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/oyq;

.field final synthetic val$func:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/oyq;Lc8/Inq;)V
    .locals 0

    .prologue
    .line 228
    .local p0, "this":Lc8/kyq;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    iput-object p1, p0, Lc8/kyq;->this$0:Lc8/oyq;

    iput-object p2, p0, Lc8/kyq;->val$func:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, "this":Lc8/kyq;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    iget-object v1, p0, Lc8/kyq;->val$func:Lc8/Inq;

    iget-object v2, p0, Lc8/kyq;->this$0:Lc8/oyq;

    iget-object v2, v2, Lc8/oyq;->t:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vlq;

    .line 232
    .local v0, "o":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    instance-of v1, v0, Lc8/oyq;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Lc8/oyq;

    .end local v0    # "o":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    iget-object v1, v0, Lc8/oyq;->t:Ljava/lang/Object;

    invoke-static {p1, v1}, Lc8/oyq;->createProducer(Lc8/Omq;Ljava/lang/Object;)Lc8/Xlq;

    move-result-object v1

    invoke-virtual {p1, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 237
    :goto_0
    return-void

    .line 235
    .restart local v0    # "o":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    :cond_0
    invoke-static {p1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 228
    .local p0, "this":Lc8/kyq;, "Lrx/internal/util/ScalarSynchronousObservable.3;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/kyq;->call(Lc8/Omq;)V

    return-void
.end method
