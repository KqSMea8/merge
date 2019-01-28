.class public Lc8/Ooq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeMergeArray.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Poq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Poq;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$set:Lc8/SBq;

.field final synthetic val$wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lc8/Poq;Lc8/SBq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Nlq;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lc8/Ooq;->this$0:Lc8/Poq;

    iput-object p2, p0, Lc8/Ooq;->val$set:Lc8/SBq;

    iput-object p3, p0, Lc8/Ooq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lc8/Ooq;->val$s:Lc8/Nlq;

    iput-object p5, p0, Lc8/Ooq;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Ooq;->val$wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lc8/Ooq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lc8/Ooq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 80
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 65
    iget-object v0, p0, Lc8/Ooq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 66
    iget-object v0, p0, Lc8/Ooq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lc8/Ooq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 60
    iget-object v0, p0, Lc8/Ooq;->val$set:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 61
    return-void
.end method
