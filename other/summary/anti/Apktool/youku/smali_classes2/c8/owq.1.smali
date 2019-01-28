.class public final Lc8/owq;
.super Lc8/Omq;
.source "OperatorZip.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorZip$Zip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerSubscriber"
.end annotation


# instance fields
.field public final items:Lc8/fyq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field final synthetic this$0:Lrx/internal/operators/OperatorZip$Zip;


# direct methods
.method public constructor <init>(Lrx/internal/operators/OperatorZip$Zip;)V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 291
    .local p0, "this":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iput-object p1, p0, Lc8/owq;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 293
    invoke-static {}, Lc8/fyq;->getSpmcInstance()Lc8/fyq;

    move-result-object v0

    iput-object v0, p0, Lc8/owq;->items:Lc8/fyq;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 306
    .local p0, "this":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lc8/owq;->items:Lc8/fyq;

    invoke-virtual {v0}, Lc8/fyq;->onCompleted()V

    .line 307
    iget-object v0, p0, Lc8/owq;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v0}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 308
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 313
    .local p0, "this":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    iget-object v0, p0, Lc8/owq;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    iget-object v0, v0, Lrx/internal/operators/OperatorZip$Zip;->child:Lc8/Wlq;

    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 314
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Object;

    .prologue
    .line 319
    .local p0, "this":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    :try_start_0
    iget-object v1, p0, Lc8/owq;->items:Lc8/fyq;

    invoke-virtual {v1, p1}, Lc8/fyq;->onNext(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    iget-object v1, p0, Lc8/owq;->this$0:Lrx/internal/operators/OperatorZip$Zip;

    invoke-virtual {v1}, Lrx/internal/operators/OperatorZip$Zip;->tick()V

    .line 324
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Lrx/exceptions/MissingBackpressureException;
    invoke-virtual {p0, v0}, Lc8/owq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 297
    .local p0, "this":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    sget v0, Lc8/fyq;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lc8/owq;->request(J)V

    .line 298
    return-void
.end method

.method public requestMore(J)V
    .locals 1
    .param p1, "n"    # J

    .prologue
    .line 301
    .local p0, "this":Lc8/owq;, "Lrx/internal/operators/OperatorZip$Zip<TR;>.InnerSubscriber;"
    invoke-virtual {p0, p1, p2}, Lc8/owq;->request(J)V

    .line 302
    return-void
.end method
