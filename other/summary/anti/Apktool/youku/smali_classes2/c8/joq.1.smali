.class public final Lc8/joq;
.super Ljava/lang/Object;
.source "BlockingOperatorLatest.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/loq;->latest(Lc8/Vlq;)Ljava/lang/Iterable;
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
.field final synthetic val$source:Lc8/Vlq;


# direct methods
.method constructor <init>(Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lc8/joq;->val$source:Lc8/Vlq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    new-instance v0, Lc8/koq;

    invoke-direct {v0}, Lc8/koq;-><init>()V

    .line 52
    .local v0, "lio":Lc8/koq;, "Lrx/internal/operators/BlockingOperatorLatest$LatestObserverIterator<TT;>;"
    iget-object v1, p0, Lc8/joq;->val$source:Lc8/Vlq;

    invoke-virtual {v1}, Lc8/Vlq;->materialize()Lc8/Vlq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 53
    return-object v0
.end method
