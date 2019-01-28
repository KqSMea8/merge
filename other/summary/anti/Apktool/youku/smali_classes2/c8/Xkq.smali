.class public Lc8/Xkq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ykq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Ykq;

.field final synthetic val$s:Lc8/Nlq;


# direct methods
.method constructor <init>(Lc8/Ykq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 1337
    iput-object p1, p0, Lc8/Xkq;->this$1:Lc8/Ykq;

    iput-object p2, p0, Lc8/Xkq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 1342
    :try_start_0
    iget-object v1, p0, Lc8/Xkq;->this$1:Lc8/Ykq;

    iget-object v1, v1, Lc8/Ykq;->val$onComplete:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    iget-object v1, p0, Lc8/Xkq;->val$s:Lc8/Nlq;

    invoke-interface {v1}, Lc8/Nlq;->onCompleted()V

    .line 1351
    :try_start_1
    iget-object v1, p0, Lc8/Xkq;->this$1:Lc8/Ykq;

    iget-object v1, v1, Lc8/Ykq;->val$onAfterComplete:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1355
    :goto_0
    return-void

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lc8/Xkq;->val$s:Lc8/Nlq;

    invoke-interface {v1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1352
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 1353
    .restart local v0    # "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1360
    :try_start_0
    iget-object v2, p0, Lc8/Xkq;->this$1:Lc8/Ykq;

    iget-object v2, v2, Lc8/Ykq;->val$onError:Lc8/inq;

    invoke-interface {v2, p1}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_0
    iget-object v2, p0, Lc8/Xkq;->val$s:Lc8/Nlq;

    invoke-interface {v2, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 1366
    return-void

    .line 1361
    :catch_0
    move-exception v1

    .line 1362
    .local v1, "ex":Ljava/lang/Throwable;
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

    .end local p1    # "e":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Throwable;
    move-object p1, v0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local p1    # "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 3
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 1372
    :try_start_0
    iget-object v1, p0, Lc8/Xkq;->this$1:Lc8/Ykq;

    iget-object v1, v1, Lc8/Ykq;->val$onSubscribe:Lc8/inq;

    invoke-interface {v1, p1}, Lc8/inq;->call(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1380
    iget-object v1, p0, Lc8/Xkq;->val$s:Lc8/Nlq;

    new-instance v2, Lc8/Wkq;

    invoke-direct {v2, p0, p1}, Lc8/Wkq;-><init>(Lc8/Xkq;Lc8/Pmq;)V

    invoke-static {v2}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 1391
    :goto_0
    return-void

    .line 1373
    :catch_0
    move-exception v0

    .line 1374
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {p1}, Lc8/Pmq;->unsubscribe()V

    .line 1375
    iget-object v1, p0, Lc8/Xkq;->val$s:Lc8/Nlq;

    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 1376
    iget-object v1, p0, Lc8/Xkq;->val$s:Lc8/Nlq;

    invoke-interface {v1, v0}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
