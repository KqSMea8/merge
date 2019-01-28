.class public final Lc8/pwq;
.super Lc8/Omq;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ZipSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<[",
        "Lc8/Vlq;",
        ">;"
    }
.end annotation


# instance fields
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorZip$ZipProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;"
        }
    .end annotation
.end field

.field started:Z

.field final synthetic this$0:Lc8/qwq;

.field final zipper:Lrx/internal/operators/OperatorZip$Zip;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/qwq;Lc8/Omq;Lrx/internal/operators/OperatorZip$Zip;Lrx/internal/operators/OperatorZip$ZipProducer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;",
            "Lrx/internal/operators/OperatorZip$Zip",
            "<TR;>;",
            "Lrx/internal/operators/OperatorZip$ZipProducer",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lc8/pwq;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p3, "zipper":Lrx/internal/operators/OperatorZip$Zip;, "Lrx/internal/operators/OperatorZip$Zip<TR;>;"
    .local p4, "producer":Lrx/internal/operators/OperatorZip$ZipProducer;, "Lrx/internal/operators/OperatorZip$ZipProducer<TR;>;"
    iput-object p1, p0, Lc8/pwq;->this$0:Lc8/qwq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 119
    iput-object p2, p0, Lc8/pwq;->child:Lc8/Omq;

    .line 120
    iput-object p3, p0, Lc8/pwq;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    .line 121
    iput-object p4, p0, Lc8/pwq;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    .line 122
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 126
    .local p0, "this":Lc8/pwq;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-boolean v0, p0, Lc8/pwq;->started:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lc8/pwq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 130
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 134
    .local p0, "this":Lc8/pwq;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    iget-object v0, p0, Lc8/pwq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    .local p0, "this":Lc8/pwq;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    check-cast p1, [Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/pwq;->onNext([Lc8/Vlq;)V

    return-void
.end method

.method public onNext([Lc8/Vlq;)V
    .locals 2
    .param p1, "observables"    # [Lc8/Vlq;

    .prologue
    .line 139
    .local p0, "this":Lc8/pwq;, "Lrx/internal/operators/OperatorZip<TR;>.ZipSubscriber;"
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lc8/pwq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/pwq;->started:Z

    .line 143
    iget-object v0, p0, Lc8/pwq;->zipper:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v1, p0, Lc8/pwq;->producer:Lrx/internal/operators/OperatorZip$ZipProducer;

    invoke-virtual {v0, p1, v1}, Lrx/internal/operators/OperatorZip$Zip;->start([Lc8/Vlq;Ljava/util/concurrent/atomic/AtomicLong;)V

    goto :goto_0
.end method
