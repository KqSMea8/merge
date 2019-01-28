.class public Lc8/Gvf;
.super Ljava/lang/Object;
.source "LruNode.java"


# annotations
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
.field public isColdNode:Z

.field public isPreEvicted:Z

.field public key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public next:Lc8/Gvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Gvf",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public prev:Lc8/Gvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Gvf",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field public size:I

.field public unlinked:Z

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public visitCount:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lc8/Gvf;->reset(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 16
    return-void
.end method


# virtual methods
.method public insertBefore(Lc8/Gvf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gvf",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    .local p1, "node":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    iget-object v0, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    if-eq v0, p0, :cond_0

    .line 21
    iget-object v0, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    iget-object v1, p0, Lc8/Gvf;->next:Lc8/Gvf;

    iput-object v1, v0, Lc8/Gvf;->next:Lc8/Gvf;

    .line 23
    :cond_0
    iget-object v0, p0, Lc8/Gvf;->next:Lc8/Gvf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/Gvf;->next:Lc8/Gvf;

    if-eq v0, p0, :cond_1

    .line 24
    iget-object v0, p0, Lc8/Gvf;->next:Lc8/Gvf;

    iget-object v1, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    iput-object v1, v0, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 26
    :cond_1
    iput-object p1, p0, Lc8/Gvf;->next:Lc8/Gvf;

    .line 27
    iget-object v0, p1, Lc8/Gvf;->prev:Lc8/Gvf;

    if-eqz v0, :cond_2

    .line 28
    iget-object v0, p1, Lc8/Gvf;->prev:Lc8/Gvf;

    iput-object p0, v0, Lc8/Gvf;->next:Lc8/Gvf;

    .line 30
    :cond_2
    iget-object v0, p1, Lc8/Gvf;->prev:Lc8/Gvf;

    iput-object v0, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 31
    iput-object p0, p1, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 32
    return-void
.end method

.method public reset(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 1
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Lc8/Gvf;->key:Ljava/lang/Object;

    .line 36
    iput-object p2, p0, Lc8/Gvf;->value:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    iput v0, p0, Lc8/Gvf;->visitCount:I

    .line 38
    iput p3, p0, Lc8/Gvf;->size:I

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    .local p0, "this":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "LruNode@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gvf;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gvf;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", visitCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Gvf;->visitCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Gvf;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isColdNode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Gvf;->isColdNode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", unlinked:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lc8/Gvf;->unlinked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlink()V
    .locals 3

    .prologue
    .local p0, "this":Lc8/Gvf;, "Lcom/taobao/phenix/cache/LruNode<TK;TV;>;"
    const/4 v2, 0x0

    .line 42
    iget-object v0, p0, Lc8/Gvf;->next:Lc8/Gvf;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/Gvf;->next:Lc8/Gvf;

    iget-object v1, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    iput-object v1, v0, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 45
    :cond_0
    iget-object v0, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    iget-object v1, p0, Lc8/Gvf;->next:Lc8/Gvf;

    iput-object v1, v0, Lc8/Gvf;->next:Lc8/Gvf;

    .line 48
    :cond_1
    iput-object v2, p0, Lc8/Gvf;->prev:Lc8/Gvf;

    .line 49
    iput-object v2, p0, Lc8/Gvf;->next:Lc8/Gvf;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Gvf;->unlinked:Z

    .line 51
    return-void
.end method
