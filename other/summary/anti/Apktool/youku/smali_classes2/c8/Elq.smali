.class public Lc8/Elq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Flq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Flq;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$set:Lc8/SBq;


# direct methods
.method constructor <init>(Lc8/Flq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/SBq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lc8/Elq;->this$0:Lc8/Flq;

    iput-object p2, p0, Lc8/Elq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lc8/Elq;->val$set:Lc8/SBq;

    iput-object p4, p0, Lc8/Elq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lc8/Elq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lc8/Elq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 220
    iget-object v0, p0, Lc8/Elq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 222
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 226
    iget-object v0, p0, Lc8/Elq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lc8/Elq;->val$set:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 228
    iget-object v0, p0, Lc8/Elq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 236
    iget-object v0, p0, Lc8/Elq;->val$set:Lc8/SBq;

    invoke-virtual {v0, p1}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 237
    return-void
.end method
