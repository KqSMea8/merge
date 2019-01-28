.class public final Lc8/Evq;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Dvq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SORT_FUNCTION:Ljava/util/Comparator;


# instance fields
.field final initialCapacity:I

.field final sortFunction:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lc8/Dvq;

    invoke-direct {v0}, Lc8/Dvq;-><init>()V

    sput-object v0, Lc8/Evq;->DEFAULT_SORT_FUNCTION:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 44
    .local p0, "this":Lc8/Evq;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lc8/Evq;->DEFAULT_SORT_FUNCTION:Ljava/util/Comparator;

    iput-object v0, p0, Lc8/Evq;->sortFunction:Ljava/util/Comparator;

    .line 46
    iput p1, p0, Lc8/Evq;->initialCapacity:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lc8/Jnq;I)V
    .locals 1
    .param p2, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jnq",
            "<-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lc8/Evq;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    .local p1, "sortFunction":Lc8/Jnq;, "Lrx/functions/Func2<-TT;-TT;Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p2, p0, Lc8/Evq;->initialCapacity:I

    .line 51
    new-instance v0, Lc8/Bvq;

    invoke-direct {v0, p0, p1}, Lc8/Bvq;-><init>(Lc8/Evq;Lc8/Jnq;)V

    iput-object v0, p0, Lc8/Evq;->sortFunction:Ljava/util/Comparator;

    .line 57
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lc8/Evq;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    new-instance v0, Lrx/internal/producers/SingleDelayedProducer;

    invoke-direct {v0, p1}, Lrx/internal/producers/SingleDelayedProducer;-><init>(Lc8/Omq;)V

    .line 62
    .local v0, "producer":Lrx/internal/producers/SingleDelayedProducer;, "Lrx/internal/producers/SingleDelayedProducer<Ljava/util/List<TT;>;>;"
    new-instance v1, Lc8/Cvq;

    invoke-direct {v1, p0, v0, p1}, Lc8/Cvq;-><init>(Lc8/Evq;Lrx/internal/producers/SingleDelayedProducer;Lc8/Omq;)V

    .line 102
    .local v1, "result":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 103
    invoke-virtual {p1, v0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 104
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lc8/Evq;, "Lrx/internal/operators/OperatorToObservableSortedList<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Evq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
