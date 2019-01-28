.class public Lc8/Okq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Pkq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field d:Lc8/Pmq;

.field final synthetic this$0:Lc8/Pkq;

.field final synthetic val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$resource:Ljava/lang/Object;

.field final synthetic val$s:Lc8/Nlq;


# direct methods
.method constructor <init>(Lc8/Pkq;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iput-object p2, p0, Lc8/Okq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lc8/Okq;->val$resource:Ljava/lang/Object;

    iput-object p4, p0, Lc8/Okq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 4

    .prologue
    .line 914
    iget-object v1, p0, Lc8/Okq;->d:Lc8/Pmq;

    invoke-interface {v1}, Lc8/Pmq;->unsubscribe()V

    .line 915
    iget-object v1, p0, Lc8/Okq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    :try_start_0
    iget-object v1, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iget-object v1, v1, Lc8/Pkq;->val$disposer:Lc8/inq;

    iget-object v2, p0, Lc8/Okq;->val$resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 918
    :catch_0
    move-exception v0

    .line 919
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 4

    .prologue
    .line 926
    iget-object v1, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iget-boolean v1, v1, Lc8/Pkq;->val$eager:Z

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lc8/Okq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    :try_start_0
    iget-object v1, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iget-object v1, v1, Lc8/Pkq;->val$disposer:Lc8/inq;

    iget-object v2, p0, Lc8/Okq;->val$resource:Ljava/lang/Object;

    invoke-interface {v1, v2}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :cond_0
    iget-object v1, p0, Lc8/Okq;->val$s:Lc8/Nlq;

    invoke-interface {v1}, Lc8/Nlq;->onCompleted()V

    .line 939
    iget-object v1, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iget-boolean v1, v1, Lc8/Pkq;->val$eager:Z

    if-nez v1, :cond_1

    .line 940
    invoke-virtual {p0}, Lc8/Okq;->dispose()V

    .line 942
    :cond_1
    :goto_0
    return-void

    .line 930
    :catch_0
    move-exception v0

    .line 931
    .local v0, "ex":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/Okq;->val$s:Lc8/Nlq;

    invoke-interface {v1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 946
    iget-object v2, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iget-boolean v2, v2, Lc8/Pkq;->val$eager:Z

    if-eqz v2, :cond_0

    .line 947
    iget-object v2, p0, Lc8/Okq;->val$once:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 949
    :try_start_0
    iget-object v2, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iget-object v2, v2, Lc8/Pkq;->val$disposer:Lc8/inq;

    iget-object v3, p0, Lc8/Okq;->val$resource:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    :cond_0
    :goto_0
    iget-object v2, p0, Lc8/Okq;->val$s:Lc8/Nlq;

    invoke-interface {v2, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 958
    iget-object v2, p0, Lc8/Okq;->this$0:Lc8/Pkq;

    iget-boolean v2, v2, Lc8/Pkq;->val$eager:Z

    if-nez v2, :cond_1

    .line 959
    invoke-virtual {p0}, Lc8/Okq;->dispose()V

    .line 961
    :cond_1
    return-void

    .line 950
    :catch_0
    move-exception v1

    .line 951
    .local v1, "ex":Ljava/lang/Throwable;
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    aput-object p1, v2, v4

    aput-object v1, v2, v5

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 2
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 965
    iput-object p1, p0, Lc8/Okq;->d:Lc8/Pmq;

    .line 966
    iget-object v0, p0, Lc8/Okq;->val$s:Lc8/Nlq;

    new-instance v1, Lc8/Nkq;

    invoke-direct {v1, p0}, Lc8/Nkq;-><init>(Lc8/Okq;)V

    invoke-static {v1}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 972
    return-void
.end method
