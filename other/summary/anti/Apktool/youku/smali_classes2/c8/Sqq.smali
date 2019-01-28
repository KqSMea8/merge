.class public Lc8/Sqq;
.super Ljava/lang/Object;
.source "OnSubscribeToObservableFuture.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tqq;->call(Lc8/Omq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tqq;


# direct methods
.method constructor <init>(Lc8/Tqq;)V
    .locals 0

    .prologue
    .line 62
    .local p0, "this":Lc8/Sqq;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture.1;"
    iput-object p1, p0, Lc8/Sqq;->this$0:Lc8/Tqq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 66
    .local p0, "this":Lc8/Sqq;, "Lrx/internal/operators/OnSubscribeToObservableFuture$ToObservableFuture.1;"
    iget-object v0, p0, Lc8/Sqq;->this$0:Lc8/Tqq;

    iget-object v0, v0, Lc8/Tqq;->that:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 67
    return-void
.end method
