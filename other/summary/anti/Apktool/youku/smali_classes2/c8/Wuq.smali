.class public Lc8/Wuq;
.super Lc8/Omq;
.source "OperatorThrottleFirst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xuq;->call(Lc8/Omq;)Lc8/Omq;
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
.field private lastOnNext:J

.field final synthetic this$0:Lc8/Xuq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Xuq;Lc8/Omq;Lc8/Omq;)V
    .locals 0

    .prologue
    .line 39
    .local p0, "this":Lc8/Wuq;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Wuq;->this$0:Lc8/Xuq;

    iput-object p3, p0, Lc8/Wuq;->val$subscriber:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Lc8/Wuq;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    iget-object v0, p0, Lc8/Wuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 60
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 64
    .local p0, "this":Lc8/Wuq;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    iget-object v0, p0, Lc8/Wuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, "this":Lc8/Wuq;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    .local p1, "v":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lc8/Wuq;->this$0:Lc8/Xuq;

    iget-object v2, v2, Lc8/Xuq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->now()J

    move-result-wide v0

    .line 51
    .local v0, "now":J
    iget-wide v2, p0, Lc8/Wuq;->lastOnNext:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lc8/Wuq;->lastOnNext:J

    sub-long v2, v0, v2

    iget-object v4, p0, Lc8/Wuq;->this$0:Lc8/Xuq;

    iget-wide v4, v4, Lc8/Xuq;->timeInMilliseconds:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 52
    :cond_0
    iput-wide v0, p0, Lc8/Wuq;->lastOnNext:J

    .line 53
    iget-object v2, p0, Lc8/Wuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v2, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 55
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Lc8/Wuq;, "Lrx/internal/operators/OperatorThrottleFirst.1;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Wuq;->request(J)V

    .line 46
    return-void
.end method
