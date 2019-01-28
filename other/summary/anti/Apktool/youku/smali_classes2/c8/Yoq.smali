.class public Lc8/Yoq;
.super Ljava/lang/Object;
.source "CompletableOnSubscribeTimeout.java"

# interfaces
.implements Lc8/Nlq;


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
.method constructor <init>(Lc8/Zoq;Lc8/SBq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lc8/Yoq;->this$0:Lc8/Zoq;

    iput-object p2, p0, Lc8/Yoq;->val$set:Lc8/SBq;

    iput-object p3, p0, Lc8/Yoq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lc8/Yoq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lc8/Yoq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/Yoq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 109
    iget-object v0, p0, Lc8/Yoq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 111
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    iget-object v0, p0, Lc8/Yoq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/Yoq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 99
    iget-object v0, p0, Lc8/Yoq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 92
    iget-object v0, p0, Lc8/Yoq;->val$set:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 93
    return-void
.end method
