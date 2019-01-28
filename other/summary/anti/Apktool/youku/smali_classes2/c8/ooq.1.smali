.class public final Lc8/ooq;
.super Lc8/Omq;
.source "BlockingOperatorMostRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/poq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MostRecentObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lc8/ooq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 65
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/ooq;->nl:Lc8/cpq;

    .line 69
    iget-object v0, p0, Lc8/ooq;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/ooq;->value:Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public getIterable()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lc8/ooq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    new-instance v0, Lc8/noq;

    invoke-direct {v0, p0}, Lc8/noq;-><init>(Lc8/ooq;)V

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 74
    .local p0, "this":Lc8/ooq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lc8/ooq;->nl:Lc8/cpq;

    invoke-virtual {v0}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/ooq;->value:Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lc8/ooq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v0, p0, Lc8/ooq;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/ooq;->value:Ljava/lang/Object;

    .line 80
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lc8/ooq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    .local p1, "args":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/ooq;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/ooq;->value:Ljava/lang/Object;

    .line 85
    return-void
.end method
