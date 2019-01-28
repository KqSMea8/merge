.class public Lc8/Yuq;
.super Lc8/Omq;
.source "OperatorTimeInterval.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zuq;->call(Lc8/Omq;)Lc8/Omq;
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
.field private lastTimestamp:J

.field final synthetic this$0:Lc8/Zuq;

.field final synthetic val$subscriber:Lc8/Omq;


# direct methods
.method constructor <init>(Lc8/Zuq;Lc8/Omq;Lc8/Omq;)V
    .locals 2

    .prologue
    .line 36
    .local p0, "this":Lc8/Yuq;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    .local p2, "x0":Lc8/Omq;, "Lrx/Subscriber<*>;"
    iput-object p1, p0, Lc8/Yuq;->this$0:Lc8/Zuq;

    iput-object p3, p0, Lc8/Yuq;->val$subscriber:Lc8/Omq;

    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 39
    iget-object v0, p0, Lc8/Yuq;->this$0:Lc8/Zuq;

    iget-object v0, v0, Lc8/Zuq;->scheduler:Lc8/amq;

    invoke-virtual {v0}, Lc8/amq;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Yuq;->lastTimestamp:J

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 51
    .local p0, "this":Lc8/Yuq;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    iget-object v0, p0, Lc8/Yuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 52
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    .local p0, "this":Lc8/Yuq;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    iget-object v0, p0, Lc8/Yuq;->val$subscriber:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 57
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
    .line 44
    .local p0, "this":Lc8/Yuq;, "Lrx/internal/operators/OperatorTimeInterval.1;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lc8/Yuq;->this$0:Lc8/Zuq;

    iget-object v2, v2, Lc8/Zuq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->now()J

    move-result-wide v0

    .line 45
    .local v0, "nowTimestamp":J
    iget-object v2, p0, Lc8/Yuq;->val$subscriber:Lc8/Omq;

    new-instance v3, Lc8/oBq;

    iget-wide v4, p0, Lc8/Yuq;->lastTimestamp:J

    sub-long v4, v0, v4

    invoke-direct {v3, v4, v5, p1}, Lc8/oBq;-><init>(JLjava/lang/Object;)V

    invoke-virtual {v2, v3}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 46
    iput-wide v0, p0, Lc8/Yuq;->lastTimestamp:J

    .line 47
    return-void
.end method
