.class public Lc8/wlq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xlq;->call(Lc8/Nmq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/xlq;

.field final synthetic val$s:Lc8/Nmq;


# direct methods
.method constructor <init>(Lc8/xlq;Lc8/Nmq;)V
    .locals 0

    .prologue
    .line 2263
    iput-object p1, p0, Lc8/wlq;->this$1:Lc8/xlq;

    iput-object p2, p0, Lc8/wlq;->val$s:Lc8/Nmq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .prologue
    .line 2270
    :try_start_0
    iget-object v2, p0, Lc8/wlq;->this$1:Lc8/xlq;

    iget-object v2, v2, Lc8/xlq;->val$completionValueFunc0:Lc8/Hnq;

    invoke-interface {v2}, Lc8/Hnq;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2276
    .local v1, "v":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_0

    .line 2277
    iget-object v2, p0, Lc8/wlq;->val$s:Lc8/Nmq;

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "The value supplied is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 2281
    .end local v1    # "v":Ljava/lang/Object;, "TT;"
    :goto_0
    return-void

    .line 2271
    :catch_0
    move-exception v0

    .line 2272
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lc8/wlq;->val$s:Lc8/Nmq;

    invoke-virtual {v2, v0}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2279
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "v":Ljava/lang/Object;, "TT;"
    :cond_0
    iget-object v2, p0, Lc8/wlq;->val$s:Lc8/Nmq;

    invoke-virtual {v2, v1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2285
    iget-object v0, p0, Lc8/wlq;->val$s:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    .line 2286
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 1
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 2290
    iget-object v0, p0, Lc8/wlq;->val$s:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 2291
    return-void
.end method
