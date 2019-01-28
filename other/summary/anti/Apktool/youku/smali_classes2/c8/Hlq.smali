.class public final Lc8/Hlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->error(Lc8/Hnq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$errorFunc0:Lc8/Hnq;


# direct methods
.method constructor <init>(Lc8/Hnq;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lc8/Hlq;->val$errorFunc0:Lc8/Hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 3
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 440
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    invoke-interface {p1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 444
    :try_start_0
    iget-object v2, p0, Lc8/Hlq;->val$errorFunc0:Lc8/Hnq;

    invoke-interface {v2}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    .local v1, "error":Ljava/lang/Throwable;
    :goto_0
    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/lang/NullPointerException;

    .end local v1    # "error":Ljava/lang/Throwable;
    const-string/jumbo v2, "The error supplied is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 452
    .restart local v1    # "error":Ljava/lang/Throwable;
    :cond_0
    invoke-interface {p1, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 453
    return-void

    .line 445
    .end local v1    # "error":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Throwable;
    move-object v1, v0

    .restart local v1    # "error":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 437
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Hlq;->call(Lc8/Nlq;)V

    return-void
.end method
