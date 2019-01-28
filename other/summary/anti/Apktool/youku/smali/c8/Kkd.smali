.class public abstract Lc8/Kkd;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastReturned:Lc8/Lkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Lkd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field next:Lc8/Lkd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Lkd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/google/gson/internal/LinkedTreeMap;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap;)V
    .locals 1

    .prologue
    .line 531
    .local p0, "this":Lc8/Kkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iput-object p1, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iget-object v0, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lc8/Lkd;

    iget-object v0, v0, Lc8/Lkd;->next:Lc8/Lkd;

    iput-object v0, p0, Lc8/Kkd;->next:Lc8/Lkd;

    .line 528
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Kkd;->lastReturned:Lc8/Lkd;

    .line 529
    iget-object v0, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lc8/Kkd;->expectedModCount:I

    .line 532
    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 535
    .local p0, "this":Lc8/Kkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lc8/Kkd;->next:Lc8/Lkd;

    iget-object v1, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lc8/Lkd;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final nextNode()Lc8/Lkd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Lkd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Lc8/Kkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lc8/Kkd;->next:Lc8/Lkd;

    .line 540
    .local v0, "e":Lc8/Lkd;, "Lcom/google/gson/internal/LinkedTreeMap$Node<TK;TV;>;"
    iget-object v1, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->header:Lc8/Lkd;

    if-ne v0, v1, :cond_0

    .line 541
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 543
    :cond_0
    iget-object v1, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget v1, v1, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iget v2, p0, Lc8/Kkd;->expectedModCount:I

    if-eq v1, v2, :cond_1

    .line 544
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1

    .line 546
    :cond_1
    iget-object v1, v0, Lc8/Lkd;->next:Lc8/Lkd;

    iput-object v1, p0, Lc8/Kkd;->next:Lc8/Lkd;

    .line 547
    iput-object v0, p0, Lc8/Kkd;->lastReturned:Lc8/Lkd;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    .prologue
    .line 551
    .local p0, "this":Lc8/Kkd;, "Lcom/google/gson/internal/LinkedTreeMap<TK;TV;>.LinkedTreeMapIterator<TT;>;"
    iget-object v0, p0, Lc8/Kkd;->lastReturned:Lc8/Lkd;

    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lc8/Kkd;->lastReturned:Lc8/Lkd;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lc8/Lkd;Z)V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Kkd;->lastReturned:Lc8/Lkd;

    .line 556
    iget-object v0, p0, Lc8/Kkd;->this$0:Lcom/google/gson/internal/LinkedTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    iput v0, p0, Lc8/Kkd;->expectedModCount:I

    .line 557
    return-void
.end method
