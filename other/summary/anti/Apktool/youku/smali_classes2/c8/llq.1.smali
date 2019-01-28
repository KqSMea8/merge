.class public Lc8/llq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mlq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/mlq;

.field final synthetic val$s:Lc8/Nlq;

.field final synthetic val$sd:Lc8/YBq;


# direct methods
.method constructor <init>(Lc8/mlq;Lc8/Nlq;Lc8/YBq;)V
    .locals 0

    .prologue
    .line 1723
    iput-object p1, p0, Lc8/llq;->this$1:Lc8/mlq;

    iput-object p2, p0, Lc8/llq;->val$s:Lc8/Nlq;

    iput-object p3, p0, Lc8/llq;->val$sd:Lc8/YBq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1727
    iget-object v0, p0, Lc8/llq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 1728
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1735
    :try_start_0
    iget-object v4, p0, Lc8/llq;->this$1:Lc8/mlq;

    iget-object v4, v4, Lc8/mlq;->val$errorMapper:Lc8/Inq;

    invoke-interface {v4, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Plq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    .local v0, "c":Lc8/Plq;
    if-nez v0, :cond_0

    .line 1743
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The completable returned is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1744
    .local v3, "npe":Ljava/lang/NullPointerException;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v3, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1745
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/llq;->val$s:Lc8/Nlq;

    invoke-interface {v4, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1767
    .end local v0    # "c":Lc8/Plq;
    .end local v1    # "e":Ljava/lang/Throwable;
    .end local v3    # "npe":Ljava/lang/NullPointerException;
    .restart local p1    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 1736
    :catch_0
    move-exception v2

    .line 1737
    .local v2, "ex":Ljava/lang/Throwable;
    new-instance v1, Lrx/exceptions/CompositeException;

    new-array v4, v7, [Ljava/lang/Throwable;

    aput-object p1, v4, v5

    aput-object v2, v4, v6

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1738
    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v1    # "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lc8/llq;->val$s:Lc8/Nlq;

    invoke-interface {v4, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 1739
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1749
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "c":Lc8/Plq;
    :cond_0
    new-instance v4, Lc8/klq;

    invoke-direct {v4, p0}, Lc8/klq;-><init>(Lc8/llq;)V

    invoke-virtual {v0, v4}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1771
    iget-object v0, p0, Lc8/llq;->val$sd:Lc8/YBq;

    invoke-virtual {v0, p1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 1772
    return-void
.end method
