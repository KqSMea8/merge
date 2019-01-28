.class public final Lc8/xkd;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AvlBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private leavesSkipped:I

.field private leavesToSkip:I

.field private size:I

.field private stack:Lc8/Ekd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 670
    .local p0, "this":Lc8/xkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lc8/Ekd;)V
    .locals 8
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ekd",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/xkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    .local p1, "node":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 687
    const/4 v4, 0x0

    iput-object v4, p1, Lc8/Ekd;->right:Lc8/Ekd;

    iput-object v4, p1, Lc8/Ekd;->parent:Lc8/Ekd;

    iput-object v4, p1, Lc8/Ekd;->left:Lc8/Ekd;

    .line 688
    iput v7, p1, Lc8/Ekd;->height:I

    .line 691
    iget v4, p0, Lc8/xkd;->leavesToSkip:I

    if-lez v4, :cond_0

    iget v4, p0, Lc8/xkd;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    .line 692
    iget v4, p0, Lc8/xkd;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/xkd;->size:I

    .line 693
    iget v4, p0, Lc8/xkd;->leavesToSkip:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lc8/xkd;->leavesToSkip:I

    .line 694
    iget v4, p0, Lc8/xkd;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/xkd;->leavesSkipped:I

    .line 697
    :cond_0
    iget-object v4, p0, Lc8/xkd;->stack:Lc8/Ekd;

    iput-object v4, p1, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 698
    iput-object p1, p0, Lc8/xkd;->stack:Lc8/Ekd;

    .line 699
    iget v4, p0, Lc8/xkd;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/xkd;->size:I

    .line 702
    iget v4, p0, Lc8/xkd;->leavesToSkip:I

    if-lez v4, :cond_1

    iget v4, p0, Lc8/xkd;->size:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 703
    iget v4, p0, Lc8/xkd;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/xkd;->size:I

    .line 704
    iget v4, p0, Lc8/xkd;->leavesToSkip:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lc8/xkd;->leavesToSkip:I

    .line 705
    iget v4, p0, Lc8/xkd;->leavesSkipped:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lc8/xkd;->leavesSkipped:I

    .line 721
    :cond_1
    const/4 v3, 0x4

    .local v3, "scale":I
    :goto_0
    iget v4, p0, Lc8/xkd;->size:I

    add-int/lit8 v5, v3, -0x1

    and-int/2addr v4, v5

    add-int/lit8 v5, v3, -0x1

    if-ne v4, v5, :cond_5

    .line 722
    iget v4, p0, Lc8/xkd;->leavesSkipped:I

    if-nez v4, :cond_3

    .line 724
    iget-object v2, p0, Lc8/xkd;->stack:Lc8/Ekd;

    .line 725
    .local v2, "right":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 726
    .local v0, "center":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 727
    .local v1, "left":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v4, v1, Lc8/Ekd;->parent:Lc8/Ekd;

    iput-object v4, v0, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 728
    iput-object v0, p0, Lc8/xkd;->stack:Lc8/Ekd;

    .line 730
    iput-object v1, v0, Lc8/Ekd;->left:Lc8/Ekd;

    .line 731
    iput-object v2, v0, Lc8/Ekd;->right:Lc8/Ekd;

    .line 732
    iget v4, v2, Lc8/Ekd;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lc8/Ekd;->height:I

    .line 733
    iput-object v0, v1, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 734
    iput-object v0, v2, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 721
    .end local v0    # "center":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v1    # "left":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_2
    :goto_1
    shl-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 735
    :cond_3
    iget v4, p0, Lc8/xkd;->leavesSkipped:I

    if-ne v4, v7, :cond_4

    .line 737
    iget-object v2, p0, Lc8/xkd;->stack:Lc8/Ekd;

    .line 738
    .restart local v2    # "right":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, v2, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 739
    .restart local v0    # "center":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iput-object v0, p0, Lc8/xkd;->stack:Lc8/Ekd;

    .line 741
    iput-object v2, v0, Lc8/Ekd;->right:Lc8/Ekd;

    .line 742
    iget v4, v2, Lc8/Ekd;->height:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lc8/Ekd;->height:I

    .line 743
    iput-object v0, v2, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 744
    iput v6, p0, Lc8/xkd;->leavesSkipped:I

    goto :goto_1

    .line 745
    .end local v0    # "center":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .end local v2    # "right":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :cond_4
    iget v4, p0, Lc8/xkd;->leavesSkipped:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 746
    iput v6, p0, Lc8/xkd;->leavesSkipped:I

    goto :goto_1

    .line 749
    :cond_5
    return-void
.end method

.method public reset(I)V
    .locals 3
    .param p1, "targetSize"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .local p0, "this":Lc8/xkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    const/4 v2, 0x0

    .line 679
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v1, -0x1

    .line 680
    .local v0, "treeCapacity":I
    sub-int v1, v0, p1

    iput v1, p0, Lc8/xkd;->leavesToSkip:I

    .line 681
    iput v2, p0, Lc8/xkd;->size:I

    .line 682
    iput v2, p0, Lc8/xkd;->leavesSkipped:I

    .line 683
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/xkd;->stack:Lc8/Ekd;

    .line 684
    return-void
.end method

.method public root()Lc8/Ekd;
    .locals 2
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 752
    .local p0, "this":Lc8/xkd;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlBuilder<TK;TV;>;"
    iget-object v0, p0, Lc8/xkd;->stack:Lc8/Ekd;

    .line 753
    .local v0, "stackTop":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v1, v0, Lc8/Ekd;->parent:Lc8/Ekd;

    if-eqz v1, :cond_0

    .line 754
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 756
    :cond_0
    return-object v0
.end method
