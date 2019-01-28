.class public Lc8/Lzq;
.super Ljava/lang/Object;
.source "BlockingObservable.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Tzq;->toIterable()Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Tzq;


# direct methods
.method constructor <init>(Lc8/Tzq;)V
    .locals 0

    .prologue
    .line 424
    .local p0, "this":Lc8/Lzq;, "Lrx/observables/BlockingObservable.2;"
    iput-object p1, p0, Lc8/Lzq;->this$0:Lc8/Tzq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "this":Lc8/Lzq;, "Lrx/observables/BlockingObservable.2;"
    iget-object v0, p0, Lc8/Lzq;->this$0:Lc8/Tzq;

    invoke-virtual {v0}, Lc8/Tzq;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
