.class public final Lc8/Ekd;
.super Ljava/lang/Object;
.source "LinkedHashTreeMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field public final hash:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public height:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final key:Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public left:Lc8/Ekd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public next:Lc8/Ekd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public parent:Lc8/Ekd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public prev:Lc8/Ekd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public right:Lc8/Ekd;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public value:Ljava/lang/Object;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 480
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    .line 481
    const/4 v0, -0x1

    iput v0, p0, Lc8/Ekd;->hash:I

    .line 482
    iput-object p0, p0, Lc8/Ekd;->prev:Lc8/Ekd;

    iput-object p0, p0, Lc8/Ekd;->next:Lc8/Ekd;

    .line 483
    return-void
.end method

.method public constructor <init>(Lc8/Ekd;Ljava/lang/Object;ILc8/Ekd;Lc8/Ekd;)V
    .locals 1
    .param p3, "hash"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Ekd",
            "<TK;TV;>;TK;I",
            "Lc8/Ekd",
            "<TK;TV;>;",
            "Lc8/Ekd",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 486
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p1, "parent":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p5, "prev":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lc8/Ekd;->parent:Lc8/Ekd;

    .line 488
    iput-object p2, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    .line 489
    iput p3, p0, Lc8/Ekd;->hash:I

    .line 490
    const/4 v0, 0x1

    iput v0, p0, Lc8/Ekd;->height:I

    .line 491
    iput-object p4, p0, Lc8/Ekd;->next:Lc8/Ekd;

    .line 492
    iput-object p5, p0, Lc8/Ekd;->prev:Lc8/Ekd;

    .line 493
    iput-object p0, p5, Lc8/Ekd;->next:Lc8/Ekd;

    .line 494
    iput-object p0, p4, Lc8/Ekd;->prev:Lc8/Ekd;

    .line 495
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 513
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 514
    check-cast v0, Ljava/util/Map$Entry;

    .line 515
    .local v0, "other":Ljava/util/Map$Entry;
    iget-object v2, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 516
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    :goto_1
    const/4 v1, 0x1

    .line 518
    .end local v0    # "other":Ljava/util/Map$Entry;
    :cond_0
    return v1

    .line 515
    .restart local v0    # "other":Ljava/util/Map$Entry;
    :cond_1
    iget-object v2, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 516
    :cond_2
    iget-object v2, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public first()Lc8/Ekd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 534
    .line 535
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .local v1, "node":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lc8/Ekd;->left:Lc8/Ekd;

    .line 536
    .local v0, "child":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 538
    move-object v1, v0

    iget-object v0, v0, Lc8/Ekd;->left:Lc8/Ekd;

    goto :goto_0

    .line 540
    :cond_0
    return-object v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 502
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 523
    :goto_1
    xor-int/2addr v0, v1

    .line 522
    return v0

    :cond_0
    iget-object v0, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    .line 523
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public last()Lc8/Ekd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Ekd",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 547
    .line 548
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    move-object v1, p0

    .local v1, "node":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    iget-object v0, p0, Lc8/Ekd;->right:Lc8/Ekd;

    .line 549
    .local v0, "child":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 551
    move-object v1, v0

    iget-object v0, v0, Lc8/Ekd;->right:Lc8/Ekd;

    goto :goto_0

    .line 553
    :cond_0
    return-object v1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 506
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    .line 507
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    .line 508
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 527
    .local p0, "this":Lc8/Ekd;, "Lcom/google/gson/internal/LinkedHashTreeMap$Node<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Ekd;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Ekd;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
