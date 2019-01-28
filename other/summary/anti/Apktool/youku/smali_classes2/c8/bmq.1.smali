.class public Lc8/bmq;
.super Lc8/Nmq;
.source "Single.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/omq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lc8/omq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lc8/omq;Lrx/internal/producers/SingleDelayedProducer;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lc8/bmq;, "Lrx/Single$1.1;"
    iput-object p1, p0, Lc8/bmq;->this$1:Lc8/omq;

    iput-object p2, p0, Lc8/bmq;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lc8/bmq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 85
    .local p0, "this":Lc8/bmq;, "Lrx/Single$1.1;"
    iget-object v0, p0, Lc8/bmq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 86
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lc8/bmq;, "Lrx/Single$1.1;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/bmq;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 81
    return-void
.end method
