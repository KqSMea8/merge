.class public Lc8/Doq;
.super Lc8/Omq;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Eoq;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Eoq;


# direct methods
.method constructor <init>(Lc8/Eoq;)V
    .locals 0

    .prologue
    .line 171
    .local p0, "this":Lc8/Doq;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iput-object p1, p0, Lc8/Doq;->this$0:Lc8/Eoq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    .prologue
    .line 182
    .local p0, "this":Lc8/Doq;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iget-object v0, p0, Lc8/Doq;->this$0:Lc8/Eoq;

    invoke-virtual {v0}, Lc8/Eoq;->onCompleted()V

    .line 183
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 178
    .local p0, "this":Lc8/Doq;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    iget-object v0, p0, Lc8/Doq;->this$0:Lc8/Eoq;

    invoke-virtual {v0, p1}, Lc8/Eoq;->onError(Ljava/lang/Throwable;)V

    .line 179
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
    .line 174
    .local p0, "this":Lc8/Doq;, "Lrx/internal/operators/CachedObservable$CacheState.1;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Doq;->this$0:Lc8/Eoq;

    invoke-virtual {v0, p1}, Lc8/Eoq;->onNext(Ljava/lang/Object;)V

    .line 175
    return-void
.end method
