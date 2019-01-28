.class public final Lc8/Vpq;
.super Lc8/Omq;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LeftDurationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT",
        "LeftDuration;",
        ">;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$2:Lc8/Wpq;


# direct methods
.method public constructor <init>(Lc8/Wpq;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 184
    .local p0, "this":Lc8/Vpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iput-object p1, p0, Lc8/Vpq;->this$2:Lc8/Wpq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Vpq;->once:Z

    .line 185
    iput p2, p0, Lc8/Vpq;->id:I

    .line 186
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 200
    .local p0, "this":Lc8/Vpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iget-boolean v0, p0, Lc8/Vpq;->once:Z

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Vpq;->once:Z

    .line 202
    iget-object v0, p0, Lc8/Vpq;->this$2:Lc8/Wpq;

    iget v1, p0, Lc8/Vpq;->id:I

    invoke-virtual {v0, v1, p0}, Lc8/Wpq;->expire(ILc8/Pmq;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 195
    .local p0, "this":Lc8/Vpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    iget-object v0, p0, Lc8/Vpq;->this$2:Lc8/Wpq;

    invoke-virtual {v0, p1}, Lc8/Wpq;->onError(Ljava/lang/Throwable;)V

    .line 196
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "LeftDuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 190
    .local p0, "this":Lc8/Vpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.LeftSubscriber.LeftDurationSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTLeftDuration;"
    invoke-virtual {p0}, Lc8/Vpq;->onCompleted()V

    .line 191
    return-void
.end method
