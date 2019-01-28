.class public final Lc8/Xpq;
.super Lc8/Omq;
.source "OnSubscribeJoin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ypq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RightDurationSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TTRightDuration;>;"
    }
.end annotation


# instance fields
.field final id:I

.field once:Z

.field final synthetic this$2:Lc8/Ypq;


# direct methods
.method public constructor <init>(Lc8/Ypq;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 296
    .local p0, "this":Lc8/Xpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iput-object p1, p0, Lc8/Xpq;->this$2:Lc8/Ypq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Xpq;->once:Z

    .line 297
    iput p2, p0, Lc8/Xpq;->id:I

    .line 298
    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 312
    .local p0, "this":Lc8/Xpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iget-boolean v0, p0, Lc8/Xpq;->once:Z

    if-eqz v0, :cond_0

    .line 313
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Xpq;->once:Z

    .line 314
    iget-object v0, p0, Lc8/Xpq;->this$2:Lc8/Ypq;

    iget v1, p0, Lc8/Xpq;->id:I

    invoke-virtual {v0, v1, p0}, Lc8/Ypq;->expire(ILc8/Pmq;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 307
    .local p0, "this":Lc8/Xpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    iget-object v0, p0, Lc8/Xpq;->this$2:Lc8/Ypq;

    invoke-virtual {v0, p1}, Lc8/Ypq;->onError(Ljava/lang/Throwable;)V

    .line 308
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRightDuration;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lc8/Xpq;, "Lrx/internal/operators/OnSubscribeJoin<TTLeft;TTRight;TTLeftDuration;TTRightDuration;TR;>.ResultSink.RightSubscriber.RightDurationSubscriber;"
    .local p1, "args":Ljava/lang/Object;, "TTRightDuration;"
    invoke-virtual {p0}, Lc8/Xpq;->onCompleted()V

    .line 303
    return-void
.end method
