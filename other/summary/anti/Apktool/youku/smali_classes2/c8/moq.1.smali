.class public final Lc8/moq;
.super Ljava/lang/Object;
.source "BlockingOperatorMostRecent.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/poq;->mostRecent(Lc8/Vlq;Ljava/lang/Object;)Ljava/lang/Iterable;
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
.field final synthetic val$initialValue:Ljava/lang/Object;

.field final synthetic val$source:Lc8/Vlq;


# direct methods
.method constructor <init>(Ljava/lang/Object;Lc8/Vlq;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lc8/moq;->val$initialValue:Ljava/lang/Object;

    iput-object p2, p0, Lc8/moq;->val$source:Lc8/Vlq;

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
    new-instance v0, Lc8/ooq;

    iget-object v1, p0, Lc8/moq;->val$initialValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lc8/ooq;-><init>(Ljava/lang/Object;)V

    .line 57
    .local v0, "mostRecentObserver":Lc8/ooq;, "Lrx/internal/operators/BlockingOperatorMostRecent$MostRecentObserver<TT;>;"
    iget-object v1, p0, Lc8/moq;->val$source:Lc8/Vlq;

    invoke-virtual {v1, v0}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 59
    invoke-virtual {v0}, Lc8/ooq;->getIterable()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method
