.class public Lc8/plq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->subscribe(Lc8/hnq;Lc8/inq;)Lc8/Pmq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field done:Z

.field final synthetic this$0:Lc8/Plq;

.field final synthetic val$mad:Lc8/UBq;

.field final synthetic val$onComplete:Lc8/hnq;

.field final synthetic val$onError:Lc8/inq;


# direct methods
.method constructor <init>(Lc8/Plq;Lc8/hnq;Lc8/UBq;Lc8/inq;)V
    .locals 0

    .prologue
    .line 1965
    iput-object p1, p0, Lc8/plq;->this$0:Lc8/Plq;

    iput-object p2, p0, Lc8/plq;->val$onComplete:Lc8/hnq;

    iput-object p3, p0, Lc8/plq;->val$mad:Lc8/UBq;

    iput-object p4, p0, Lc8/plq;->val$onError:Lc8/inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method callOnError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1994
    :try_start_0
    iget-object v2, p0, Lc8/plq;->val$onError:Lc8/inq;

    invoke-interface {v2, p1}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2000
    iget-object v2, p0, Lc8/plq;->val$mad:Lc8/UBq;

    invoke-virtual {v2}, Lc8/UBq;->unsubscribe()V

    .line 2001
    :goto_0
    return-void

    .line 1995
    :catch_0
    move-exception v1

    .line 1996
    .local v1, "ex":Ljava/lang/Throwable;
    :try_start_1
    new-instance v0, Lrx/exceptions/CompositeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1997
    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 1998
    invoke-static {v0}, Lc8/Plq;->access$000(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2000
    iget-object v2, p0, Lc8/plq;->val$mad:Lc8/UBq;

    invoke-virtual {v2}, Lc8/UBq;->unsubscribe()V

    move-object p1, v0

    .line 2001
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0

    .line 2000
    .end local v1    # "ex":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    :goto_1
    iget-object v3, p0, Lc8/plq;->val$mad:Lc8/UBq;

    invoke-virtual {v3}, Lc8/UBq;->unsubscribe()V

    throw v2

    .end local p1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "ex":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_1
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .line 1969
    iget-boolean v1, p0, Lc8/plq;->done:Z

    if-nez v1, :cond_0

    .line 1970
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/plq;->done:Z

    .line 1972
    :try_start_0
    iget-object v1, p0, Lc8/plq;->val$onComplete:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1977
    iget-object v1, p0, Lc8/plq;->val$mad:Lc8/UBq;

    invoke-virtual {v1}, Lc8/UBq;->unsubscribe()V

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lc8/plq;->callOnError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1983
    iget-boolean v0, p0, Lc8/plq;->done:Z

    if-nez v0, :cond_0

    .line 1984
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/plq;->done:Z

    .line 1985
    invoke-virtual {p0, p1}, Lc8/plq;->callOnError(Ljava/lang/Throwable;)V

    .line 1990
    :goto_0
    return-void

    .line 1987
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 1988
    invoke-static {p1}, Lc8/Plq;->access$000(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 2006
    iget-object v0, p0, Lc8/plq;->val$mad:Lc8/UBq;

    invoke-virtual {v0, p1}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 2007
    return-void
.end method
