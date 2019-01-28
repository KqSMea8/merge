.class public Lc8/Qoq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeDelayErrorArray.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Roq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Roq;

.field final synthetic val$q:Ljava/util/Queue;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$set:Lc8/SBq;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lc8/Roq;Lc8/SBq;Ljava/util/Queue;Ljava/util/concurrent/atomic/AtomicInteger;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lc8/Qoq;->this$0:Lc8/Roq;

    iput-object p2, p0, Lc8/Qoq;->val$set:Lc8/SBq;

    iput-object p3, p0, Lc8/Qoq;->val$q:Ljava/util/Queue;

    iput-object p4, p0, Lc8/Qoq;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lc8/Qoq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lc8/Qoq;->tryTerminate()V

    .line 69
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    iget-object v0, p0, Lc8/Qoq;->val$q:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p0}, Lc8/Qoq;->tryTerminate()V

    .line 64
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 57
    iget-object v0, p0, Lc8/Qoq;->val$set:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 58
    return-void
.end method

.method tryTerminate()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lc8/Qoq;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lc8/Qoq;->val$q:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lc8/Qoq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v0, p0, Lc8/Qoq;->val$s:Lc8/Nlq;

    iget-object v1, p0, Lc8/Qoq;->val$q:Ljava/util/Queue;

    invoke-static {v1}, Lc8/Noq;->collectErrors(Ljava/util/Queue;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
