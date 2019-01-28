.class public Lc8/Blq;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lc8/Nlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Clq;->call(Lc8/Nlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Clq;

.field final synthetic val$s:Lc8/Nlq;


# direct methods
.method constructor <init>(Lc8/Clq;Lc8/Nlq;)V
    .locals 0

    .prologue
    .line 2328
    iput-object p1, p0, Lc8/Blq;->this$1:Lc8/Clq;

    iput-object p2, p0, Lc8/Blq;->val$s:Lc8/Nlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 2332
    iget-object v0, p0, Lc8/Blq;->val$s:Lc8/Nlq;

    invoke-interface {v0}, Lc8/Nlq;->onCompleted()V

    .line 2333
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2337
    iget-object v0, p0, Lc8/Blq;->val$s:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 2338
    return-void
.end method

.method public onSubscribe(Lc8/Pmq;)V
    .locals 2
    .param p1, "d"    # Lc8/Pmq;

    .prologue
    .line 2342
    iget-object v0, p0, Lc8/Blq;->val$s:Lc8/Nlq;

    new-instance v1, Lc8/Alq;

    invoke-direct {v1, p0, p1}, Lc8/Alq;-><init>(Lc8/Blq;Lc8/Pmq;)V

    invoke-static {v1}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Nlq;->onSubscribe(Lc8/Pmq;)V

    .line 2358
    return-void
.end method
