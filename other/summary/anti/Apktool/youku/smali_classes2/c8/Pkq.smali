.class public final Lc8/Pkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->using(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$completableFunc1:Lc8/Inq;

.field final synthetic val$disposer:Lc8/inq;

.field final synthetic val$eager:Z

.field final synthetic val$resourceFunc0:Lc8/Hnq;


# direct methods
.method constructor <init>(Lc8/Hnq;Lc8/Inq;Lc8/inq;Z)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lc8/Pkq;->val$resourceFunc0:Lc8/Hnq;

    iput-object p2, p0, Lc8/Pkq;->val$completableFunc1:Lc8/Inq;

    iput-object p3, p0, Lc8/Pkq;->val$disposer:Lc8/inq;

    iput-boolean p4, p0, Lc8/Pkq;->val$eager:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 11
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 865
    :try_start_0
    iget-object v5, p0, Lc8/Pkq;->val$resourceFunc0:Lc8/Hnq;

    invoke-interface {v5}, Lc8/Hnq;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 875
    .local v4, "resource":Ljava/lang/Object;, "TR;"
    :try_start_1
    iget-object v5, p0, Lc8/Pkq;->val$completableFunc1:Lc8/Inq;

    invoke-interface {v5, v4}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Plq;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 894
    .local v0, "cs":Lc8/Plq;
    if-nez v0, :cond_0

    .line 896
    :try_start_2
    iget-object v5, p0, Lc8/Pkq;->val$disposer:Lc8/inq;

    invoke-interface {v5, v4}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 904
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v5

    invoke-interface {p1, v5}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 905
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "The completable supplied is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 974
    .end local v0    # "cs":Lc8/Plq;
    .end local v4    # "resource":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v1

    .line 867
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v5

    invoke-interface {p1, v5}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 868
    invoke-interface {p1, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 876
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v4    # "resource":Ljava/lang/Object;, "TR;"
    :catch_1
    move-exception v1

    .line 878
    .restart local v1    # "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v5, p0, Lc8/Pkq;->val$disposer:Lc8/inq;

    invoke-interface {v5, v4}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 887
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 889
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v5

    invoke-interface {p1, v5}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 890
    invoke-interface {p1, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 879
    :catch_2
    move-exception v2

    .line 880
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v1}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 881
    invoke-static {v2}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 883
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v5

    invoke-interface {p1, v5}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 884
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v1, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 897
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "cs":Lc8/Plq;
    :catch_3
    move-exception v2

    .line 898
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 900
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v5

    invoke-interface {p1, v5}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 901
    new-instance v5, Lrx/exceptions/CompositeException;

    new-array v6, v6, [Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "The completable supplied is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    aput-object v7, v6, v9

    aput-object v2, v6, v10

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1, v5}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 909
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 911
    .local v3, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Lc8/Okq;

    invoke-direct {v5, p0, v3, v4, p1}, Lc8/Okq;-><init>(Lc8/Pkq;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Lc8/Nlq;)V

    invoke-virtual {v0, v5}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 859
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Pkq;->call(Lc8/Nlq;)V

    return-void
.end method
