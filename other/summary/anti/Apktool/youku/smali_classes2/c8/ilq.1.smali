.class public Lc8/ilq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jlq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/jlq;

.field final synthetic val$s:Lc8/Nlq;


# direct methods
.method constructor <init>(Lc8/jlq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 1673
    iput-object p1, p0, Lc8/ilq;->this$1:Lc8/jlq;

    iput-object p2, p0, Lc8/ilq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 1677
    iget-object v0, p0, Lc8/ilq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 1678
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1685
    :try_start_0
    iget-object v3, p0, Lc8/ilq;->this$1:Lc8/jlq;

    iget-object v3, v3, Lc8/jlq;->val$predicate:Lc8/Inq;

    invoke-interface {v3, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1692
    .local v0, "b":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 1693
    iget-object v3, p0, Lc8/ilq;->val$s:Lc8/Nlq;

    invoke-interface {v3}, Lc8/Nlq;->onCompleted()V

    .line 1697
    :goto_1
    return-void

    .line 1686
    .end local v0    # "b":Z
    :catch_0
    move-exception v2

    .line 1687
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 1688
    new-instance v1, Lrx/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    .line 1689
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "b":Z
    move-object p1, v1

    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 1695
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-object v3, p0, Lc8/ilq;->val$s:Lc8/Nlq;

    invoke-interface {v3, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1701
    iget-object v0, p0, Lc8/ilq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 1702
    return-void
.end method
