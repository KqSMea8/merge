.class public Lc8/omq;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mmq;-><init>(Lc8/Kmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mmq;

.field final synthetic val$g:Lc8/Kmq;


# direct methods
.method constructor <init>(Lc8/Mmq;Lc8/Kmq;)V
    .locals 0

    .prologue
    .line 70
    .local p0, "this":Lc8/omq;, "Lrx/Single.1;"
    iput-object p1, p0, Lc8/omq;->this$0:Lc8/Mmq;

    iput-object p2, p0, Lc8/omq;->val$g:Lc8/Kmq;

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
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lc8/omq;, "Lrx/Single.1;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lc8/Omq;)V

    .line 75
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<TT;>;"
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 76
    new-instance v1, Lc8/bmq;

    invoke-direct {v1, p0, v0, p1}, Lc8/bmq;-><init>(Lc8/omq;Lrx/internal/producers/SingleDelayedProducer;Lc8/Omq;)V

    .line 89
    .local v1, "ss":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 90
    iget-object v2, p0, Lc8/omq;->val$g:Lc8/Kmq;

    invoke-interface {v2, v1}, Lc8/Kmq;->call(Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 70
    .local p0, "this":Lc8/omq;, "Lrx/Single.1;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/omq;->call(Lc8/Omq;)V

    return-void
.end method
