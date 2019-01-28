.class public final Lc8/Jlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->fromAction(Lc8/hnq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$action:Lc8/hnq;


# direct methods
.method constructor <init>(Lc8/hnq;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lc8/Jlq;->val$action:Lc8/hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 3
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 486
    new-instance v0, Lc8/RBq;

    invoke-direct {v0}, Lc8/RBq;-><init>()V

    .line 487
    .local v0, "bs":Lc8/RBq;
    invoke-interface {p1, v0}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 489
    :try_start_0
    iget-object v2, p0, Lc8/Jlq;->val$action:Lc8/hnq;

    invoke-interface {v2}, Lc8/hnq;->call()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    invoke-virtual {v0}, Lc8/RBq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    invoke-interface {p1}, Lc8/Nlq;->onCompleted()V

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lc8/RBq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 492
    invoke-interface {p1, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 483
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Jlq;->call(Lc8/Nlq;)V

    return-void
.end method
