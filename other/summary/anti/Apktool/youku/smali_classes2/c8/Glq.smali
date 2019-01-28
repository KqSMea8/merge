.class public final Lc8/Glq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Llq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Plq;->defer(Lc8/Hnq;)Lc8/Plq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$completableFunc0:Lc8/Hnq;


# direct methods
.method constructor <init>(Lc8/Hnq;)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lc8/Glq;->val$completableFunc0:Lc8/Hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/Nlq;)V
    .locals 4
    .param p1, "s"    # Lc8/Nlq;

    .prologue
    .line 407
    :try_start_0
    iget-object v2, p0, Lc8/Glq;->val$completableFunc0:Lc8/Hnq;

    invoke-interface {v2}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Plq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 414
    .local v0, "c":Lc8/Plq;
    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    invoke-interface {p1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 416
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "The completable returned is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 421
    .end local v0    # "c":Lc8/Plq;
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    invoke-interface {p1, v2}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 410
    invoke-interface {p1, v1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 420
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "c":Lc8/Plq;
    :cond_0
    invoke-virtual {v0, p1}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 401
    check-cast p1, Lc8/Nlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Glq;->call(Lc8/Nlq;)V

    return-void
.end method
