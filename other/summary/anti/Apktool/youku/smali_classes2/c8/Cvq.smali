.class public Lc8/Cvq;
.super Lc8/Omq;
.source "OperatorToObservableSortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Evq;->call(Lc8/Omq;)Lc8/Omq;
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
.field completed:Z

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/Evq;

.field final synthetic val$child:Lc8/Omq;

.field final synthetic val$producer:Lrx/internal/producers/SingleDelayedProducer;


# direct methods
.method constructor <init>(Lc8/Evq;Lrx/internal/producers/SingleDelayedProducer;Lc8/Omq;)V
    .locals 2

    .prologue
    .line 62
    .local p0, "this":Lc8/Cvq;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iput-object p1, p0, Lc8/Cvq;->this$0:Lc8/Evq;

    iput-object p2, p0, Lc8/Cvq;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    iput-object p3, p0, Lc8/Cvq;->val$child:Lc8/Omq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc8/Cvq;->this$0:Lc8/Evq;

    iget v1, v1, Lc8/Evq;->initialCapacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/Cvq;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 74
    .local p0, "this":Lc8/Cvq;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-boolean v2, p0, Lc8/Cvq;->completed:Z

    if-nez v2, :cond_0

    .line 75
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Cvq;->completed:Z

    .line 76
    iget-object v0, p0, Lc8/Cvq;->list:Ljava/util/List;

    .line 77
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/Cvq;->list:Ljava/util/List;

    .line 80
    :try_start_0
    iget-object v2, p0, Lc8/Cvq;->this$0:Lc8/Evq;

    iget-object v2, v2, Lc8/Evq;->sortFunction:Ljava/util/Comparator;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v2, p0, Lc8/Cvq;->val$producer:Lrx/internal/producers/SingleDelayedProducer;

    invoke-virtual {v2, v0}, Lrx/internal/producers/SingleDelayedProducer;->setValue(Ljava/lang/Object;)V

    .line 87
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {v1, p0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    .local p0, "this":Lc8/Cvq;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    iget-object v0, p0, Lc8/Cvq;->val$child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 92
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
    .line 96
    .local p0, "this":Lc8/Cvq;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/Cvq;->completed:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lc8/Cvq;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lc8/Cvq;, "Lrx/internal/operators/OperatorToObservableSortedList.2;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Cvq;->request(J)V

    .line 70
    return-void
.end method
