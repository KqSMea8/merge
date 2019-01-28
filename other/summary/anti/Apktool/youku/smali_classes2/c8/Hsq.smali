.class public final Lc8/Hsq;
.super Lc8/Omq;
.source "OperatorMerge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Jsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final LIMIT:I


# instance fields
.field volatile done:Z

.field final id:J

.field outstanding:I

.field final parent:Lc8/Isq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Isq",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile queue:Lc8/fyq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 839
    sget v0, Lc8/fyq;->SIZE:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lc8/Hsq;->LIMIT:I

    return-void
.end method

.method public constructor <init>(Lc8/Isq;J)V
    .locals 0
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Isq",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 841
    .local p0, "this":Lc8/Hsq;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "parent":Lc8/Isq;, "Lrx/internal/operators/OperatorMerge$MergeSubscriber<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 842
    iput-object p1, p0, Lc8/Hsq;->parent:Lc8/Isq;

    .line 843
    iput-wide p2, p0, Lc8/Hsq;->id:J

    .line 844
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 862
    .local p0, "this":Lc8/Hsq;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hsq;->done:Z

    .line 863
    iget-object v0, p0, Lc8/Hsq;->parent:Lc8/Isq;

    invoke-virtual {v0}, Lc8/Isq;->emit()V

    .line 864
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 856
    .local p0, "this":Lc8/Hsq;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hsq;->done:Z

    .line 857
    iget-object v0, p0, Lc8/Hsq;->parent:Lc8/Isq;

    invoke-virtual {v0}, Lc8/Isq;->getOrCreateErrorQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 858
    iget-object v0, p0, Lc8/Hsq;->parent:Lc8/Isq;

    invoke-virtual {v0}, Lc8/Isq;->emit()V

    .line 859
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
    .line 852
    .local p0, "this":Lc8/Hsq;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Hsq;->parent:Lc8/Isq;

    invoke-virtual {v0, p0, p1}, Lc8/Isq;->tryEmit(Lc8/Hsq;Ljava/lang/Object;)V

    .line 853
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 847
    .local p0, "this":Lc8/Hsq;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    sget v0, Lc8/fyq;->SIZE:I

    iput v0, p0, Lc8/Hsq;->outstanding:I

    .line 848
    sget v0, Lc8/fyq;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lc8/Hsq;->request(J)V

    .line 849
    return-void
.end method

.method public requestMore(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 866
    .local p0, "this":Lc8/Hsq;, "Lrx/internal/operators/OperatorMerge$InnerSubscriber<TT;>;"
    iget v2, p0, Lc8/Hsq;->outstanding:I

    long-to-int v3, p1

    sub-int v1, v2, v3

    .line 867
    .local v1, "r":I
    sget v2, Lc8/Hsq;->LIMIT:I

    if-le v1, v2, :cond_1

    .line 868
    iput v1, p0, Lc8/Hsq;->outstanding:I

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    sget v2, Lc8/fyq;->SIZE:I

    iput v2, p0, Lc8/Hsq;->outstanding:I

    .line 872
    sget v2, Lc8/fyq;->SIZE:I

    sub-int v0, v2, v1

    .line 873
    .local v0, "k":I
    if-lez v0, :cond_0

    .line 874
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lc8/Hsq;->request(J)V

    goto :goto_0
.end method
