.class public final Lc8/Flq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->amb(Ljava/lang/Iterable;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$sources:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Ljava/lang/Iterable;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lc8/Flq;->val$sources:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 12
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 194
    new-instance v8, Lc8/SBq;

    invoke-direct {v8}, Lc8/SBq;-><init>()V

    .line 195
    .local v8, "set":Lc8/SBq;
    invoke-interface {p1, v8}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 200
    :try_start_0
    iget-object v9, p0, Lc8/Flq;->val$sources:Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 206
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    if-nez v5, :cond_1

    .line 207
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "The iterator returned is null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v9}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 305
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_0
    :goto_0
    return-void

    .line 201
    :catch_0
    move-exception v2

    .line 202
    .local v2, "e":Ljava/lang/Throwable;
    invoke-interface {p1, v2}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 211
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lrx/Completable;>;"
    :cond_1
    const/4 v3, 0x1

    .line 213
    .local v3, "empty":Z
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 215
    .local v7, "once":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v4, Lc8/Elq;

    invoke-direct {v4, p0, v7, v8, p1}, Lc8/Elq;-><init>(Lc8/Flq;Ljava/util/concurrent/atomic/AtomicBoolean;Lc8/SBq;Lc8/Nlq;)V

    .line 242
    .local v4, "inner":Lc8/Nlq;
    :goto_1
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lc8/SBq;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 249
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 260
    .local v0, "b":Z
    if-nez v0, :cond_3

    .line 261
    if-eqz v3, :cond_0

    .line 262
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    goto :goto_0

    .line 250
    .end local v0    # "b":Z
    :catch_1
    move-exception v2

    .line 251
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 252
    invoke-virtual {v8}, Lc8/SBq;->unsubscribe()V

    .line 253
    invoke-interface {p1, v2}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 255
    :cond_2
    invoke-static {v2}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 267
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v0    # "b":Z
    :cond_3
    const/4 v3, 0x0

    .line 269
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lc8/SBq;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 276
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Plq;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 287
    .local v1, "c":Lc8/Plq;
    if-nez v1, :cond_6

    .line 288
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "One of the sources is null"

    invoke-direct {v6, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 289
    .local v6, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 290
    invoke-virtual {v8}, Lc8/SBq;->unsubscribe()V

    .line 291
    invoke-interface {p1, v6}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 277
    .end local v1    # "c":Lc8/Plq;
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 278
    .restart local v2    # "e":Ljava/lang/Throwable;
    invoke-virtual {v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 279
    invoke-virtual {v8}, Lc8/SBq;->unsubscribe()V

    .line 280
    invoke-interface {p1, v2}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 282
    :cond_4
    invoke-static {v2}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 293
    .end local v2    # "e":Ljava/lang/Throwable;
    .restart local v1    # "c":Lc8/Plq;
    .restart local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_5
    invoke-static {v6}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 298
    .end local v6    # "npe":Ljava/lang/NullPointerException;
    :cond_6
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v8}, Lc8/SBq;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 303
    invoke-virtual {v1, v4}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Flq;->call(Lc8/Nlq;)V

    return-void
.end method
