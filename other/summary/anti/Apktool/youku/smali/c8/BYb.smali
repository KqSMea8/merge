.class public Lc8/BYb;
.super Ljava/lang/Object;
.source "CopyOnWriteArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/AYb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mAccess:Lc8/AYb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/AYb",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mData:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mDataCopy:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mStart:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lc8/BYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lc8/BYb;->mData:Ljava/util/Collection;

    .line 26
    new-instance v0, Lc8/AYb;

    invoke-direct {v0}, Lc8/AYb;-><init>()V

    iput-object v0, p0, Lc8/BYb;->mAccess:Lc8/AYb;

    .line 40
    return-void
.end method

.method private getArray()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/BYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray<TT;>;"
    iget-boolean v0, p0, Lc8/BYb;->mStart:Z

    if-eqz v0, :cond_1

    .line 44
    iget-object v0, p0, Lc8/BYb;->mDataCopy:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lc8/BYb;->mData:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lc8/BYb;->mDataCopy:Ljava/util/Collection;

    .line 45
    :cond_0
    iget-object v0, p0, Lc8/BYb;->mDataCopy:Ljava/util/Collection;

    .line 47
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lc8/BYb;->mData:Ljava/util/Collection;

    goto :goto_0
.end method


# virtual methods
.method add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lc8/BYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lc8/BYb;->getArray()Ljava/util/Collection;

    move-result-object v0

    .line 76
    .local v0, "array":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_0
    return-void
.end method

.method end()V
    .locals 2

    .prologue
    .local p0, "this":Lc8/BYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray<TT;>;"
    const/4 v1, 0x0

    .line 60
    iget-boolean v0, p0, Lc8/BYb;->mStart:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Iteration not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    iput-boolean v1, p0, Lc8/BYb;->mStart:Z

    .line 62
    iget-object v0, p0, Lc8/BYb;->mDataCopy:Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lc8/BYb;->mDataCopy:Ljava/util/Collection;

    iput-object v0, p0, Lc8/BYb;->mData:Ljava/util/Collection;

    .line 64
    iget-object v0, p0, Lc8/BYb;->mAccess:Lc8/AYb;

    iget-object v0, v0, Lc8/AYb;->mData:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 65
    iget-object v0, p0, Lc8/BYb;->mAccess:Lc8/AYb;

    invoke-static {v0, v1}, Lc8/AYb;->access$002(Lc8/AYb;I)I

    .line 67
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/BYb;->mDataCopy:Ljava/util/Collection;

    .line 68
    return-void
.end method

.method remove(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lc8/BYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lc8/BYb;->getArray()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method size()I
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lc8/BYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray<TT;>;"
    invoke-direct {p0}, Lc8/BYb;->getArray()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method start()Lc8/AYb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/AYb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/BYb;, "Lcom/alibaba/poplayer/trigger/view/CopyOnWriteArray<TT;>;"
    iget-boolean v0, p0, Lc8/BYb;->mStart:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Iteration already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/BYb;->mStart:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/BYb;->mDataCopy:Ljava/util/Collection;

    .line 54
    iget-object v0, p0, Lc8/BYb;->mAccess:Lc8/AYb;

    iget-object v1, p0, Lc8/BYb;->mData:Ljava/util/Collection;

    iput-object v1, v0, Lc8/AYb;->mData:Ljava/util/Collection;

    .line 55
    iget-object v0, p0, Lc8/BYb;->mAccess:Lc8/AYb;

    iget-object v1, p0, Lc8/BYb;->mData:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Lc8/AYb;->access$002(Lc8/AYb;I)I

    .line 56
    iget-object v0, p0, Lc8/BYb;->mAccess:Lc8/AYb;

    return-object v0
.end method
