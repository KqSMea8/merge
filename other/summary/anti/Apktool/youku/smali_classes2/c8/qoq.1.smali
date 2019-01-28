.class public final Lc8/qoq;
.super Ljava/lang/Object;
.source "BlockingOperatorNext.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/toq;->next(Lc8/Vlq;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
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
.field final synthetic val$items:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lc8/qoq;->val$items:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lc8/soq;

    invoke-direct {v0}, Lc8/soq;-><init>()V

    .line 50
    .local v0, "nextObserver":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    new-instance v1, Lc8/roq;

    iget-object v2, p0, Lc8/qoq;->val$items:Lc8/Vlq;

    invoke-direct {v1, v2, v0}, Lc8/roq;-><init>(Lc8/Vlq;Lc8/soq;)V

    return-object v1
.end method
