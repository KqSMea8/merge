.class public Lc8/ykd;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvlIterator"
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
.field private stackTop:Lc8/Ekd;
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
    .line 622
    .local p0, "this":Lc8/ykd;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public next()Lc8/Ekd;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/ykd;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    const/4 v3, 0x0

    .line 636
    iget-object v2, p0, Lc8/ykd;->stackTop:Lc8/Ekd;

    .line 637
    .local v2, "stackTop":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    if-nez v2, :cond_0

    move-object v1, v3

    .line 648
    :goto_0
    return-object v1

    .line 641
    :cond_0
    move-object v1, v2

    .local v1, "result":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v2, v2, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 642
    iput-object v3, v1, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 643
    iget-object v0, v1, Lc8/Ekd;->right:Lc8/Ekd;

    .local v0, "n":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_1
    if-eqz v0, :cond_1

    .line 644
    iput-object v2, v0, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 645
    move-object v2, v0

    .line 643
    iget-object v0, v0, Lc8/Ekd;->left:Lc8/Ekd;

    goto :goto_1

    .line 647
    :cond_1
    iput-object v2, p0, Lc8/ykd;->stackTop:Lc8/Ekd;

    goto :goto_0
.end method

.method public reset(Lc8/Ekd;)V
    .locals 2
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
    .line 627
    .local p0, "this":Lc8/ykd;, "Lcom/google/gson/internal/LinkedHashTreeMap$AvlIterator<TK;TV;>;"
    .local p1, "root":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 628
    .local v1, "stackTop":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v0, p1

    .local v0, "n":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 629
    iput-object v1, v0, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 630
    move-object v1, v0

    .line 628
    iget-object v0, v0, Lc8/Ekd;->left:Lc8/Ekd;

    goto :goto_0

    .line 632
    :cond_0
    iput-object v1, p0, Lc8/ykd;->stackTop:Lc8/Ekd;

    .line 633
    return-void
.end method
