.class public final Lc8/ywq;
.super Lc8/Nmq;
.source "SingleOnSubscribeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MapSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Nmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Nmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Nmq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field done:Z

.field final mapper:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Nmq;Lc8/Inq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TR;>;",
            "Lc8/Inq",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lc8/ywq;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Nmq;, "Lrx/SingleSubscriber<-TR;>;"
    .local p2, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TR;>;"
    invoke-direct {p0}, Lc8/Nmq;-><init>()V

    .line 57
    iput-object p1, p0, Lc8/ywq;->actual:Lc8/Nmq;

    .line 58
    iput-object p2, p0, Lc8/ywq;->mapper:Lc8/Inq;

    .line 59
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lc8/ywq;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/ywq;->done:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ywq;->done:Z

    .line 85
    iget-object v0, p0, Lc8/ywq;->actual:Lc8/Nmq;

    invoke-virtual {v0, p1}, Lc8/Nmq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lc8/ywq;, "Lrx/internal/operators/SingleOnSubscribeMap$MapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/ywq;->mapper:Lc8/Inq;

    invoke-interface {v2, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 74
    .local v1, "result":Ljava/lang/Object;, "TR;"
    iget-object v2, p0, Lc8/ywq;->actual:Lc8/Nmq;

    invoke-virtual {v2, v1}, Lc8/Nmq;->onSuccess(Ljava/lang/Object;)V

    .line 75
    .end local v1    # "result":Ljava/lang/Object;, "TR;"
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {p0}, Lc8/ywq;->unsubscribe()V

    .line 70
    invoke-static {v0, p1}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc8/ywq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
