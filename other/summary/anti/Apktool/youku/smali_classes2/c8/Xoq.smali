.class public Lc8/Xoq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Zoq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Zoq;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$set:Lc8/SBq;


# direct methods
.method constructor <init>(Lc8/Zoq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/SBq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lc8/Xoq;->this$0:Lc8/Zoq;

    iput-object p2, p0, Lc8/Xoq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lc8/Xoq;->val$set:Lc8/SBq;

    iput-object p4, p0, Lc8/Xoq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lc8/Xoq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lc8/Xoq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->clear()V

    .line 60
    iget-object v0, p0, Lc8/Xoq;->this$0:Lc8/Zoq;

    iget-object v0, v0, Lc8/Zoq;->other:Lc8/Plq;

    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lc8/Xoq;->val$s:Lc8/Nlq;

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-interface {v0, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lc8/Xoq;->this$0:Lc8/Zoq;

    iget-object v0, v0, Lc8/Zoq;->other:Lc8/Plq;

    new-instance v1, Lc8/Woq;

    invoke-direct {v1, p0}, Lc8/Woq;-><init>(Lc8/Xoq;)V

    invoke-virtual {v0, v1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_0
.end method
