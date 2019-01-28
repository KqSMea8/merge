.class public Lc8/ryq;
.super Ljava/lang/Object;
.source "ScalarSynchronousSingle.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/vyq;->scalarFlatMap(Lc8/Inq;)Lc8/Mmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vyq;

.field final synthetic val$func:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/vyq;Lc8/Inq;)V
    .locals 0

    .prologue
    .line 128
    .local p0, "this":Lc8/ryq;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    iput-object p1, p0, Lc8/ryq;->this$0:Lc8/vyq;

    iput-object p2, p0, Lc8/ryq;->val$func:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lc8/ryq;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    .local p1, "child":Lc8/Nmq;, "Lrx/SingleSubscriber<-TR;>;"
    iget-object v2, p0, Lc8/ryq;->val$func:Lc8/Inq;

    iget-object v3, p0, Lc8/ryq;->this$0:Lc8/vyq;

    iget-object v3, v3, Lc8/vyq;->value:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Mmq;

    .line 133
    .local v0, "o":Lc8/Mmq;, "Lrx/Single<+TR;>;"
    instance-of v2, v0, Lc8/vyq;

    if-eqz v2, :cond_0

    .line 134
    check-cast v0, Lc8/vyq;

    .end local v0    # "o":Lc8/Mmq;, "Lrx/Single<+TR;>;"
    iget-object v2, v0, Lc8/vyq;->value:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-void

    .line 136
    .restart local v0    # "o":Lc8/Mmq;, "Lrx/Single<+TR;>;"
    :cond_0
    new-instance v1, Lc8/qyq;

    invoke-direct {v1, p0, p1}, Lc8/qyq;-><init>(Lc8/ryq;Lc8/Nmq;)V

    .line 152
    .local v1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<TR;>;"
    invoke-virtual {p1, v1}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 153
    invoke-virtual {v0, v1}, Lc8/Mmq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 128
    .local p0, "this":Lc8/ryq;, "Lrx/internal/util/ScalarSynchronousSingle.2;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ryq;->call(Lc8/Nmq;)V

    return-void
.end method
