.class public Lc8/Bvq;
.super Ljava/lang/Object;
.source "OperatorToObservableSortedList.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Evq;-><init>(Lc8/Jnq;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Evq;

.field final synthetic val$sortFunction:Lc8/Jnq;


# direct methods
.method constructor <init>(Lc8/Evq;Lc8/Jnq;)V
    .locals 0

    .prologue
    .line 51
    .local p0, "this":Lc8/Bvq;, "Lrx/internal/operators/OperatorToObservableSortedList.1;"
    iput-object p1, p0, Lc8/Bvq;->this$0:Lc8/Evq;

    iput-object p2, p0, Lc8/Bvq;->val$sortFunction:Lc8/Jnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lc8/Bvq;, "Lrx/internal/operators/OperatorToObservableSortedList.1;"
    .local p1, "o1":Ljava/lang/Object;, "TT;"
    .local p2, "o2":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/Bvq;->val$sortFunction:Lc8/Jnq;

    invoke-interface {v0, p1, p2}, Lc8/Jnq;->call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
