.class public Lc8/AXb;
.super Ljava/lang/Object;
.source "WaittingList.java"


# instance fields
.field private mRequestArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/yXb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    .line 19
    return-void
.end method


# virtual methods
.method public add(Lc8/yXb;)Z
    .locals 1
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 22
    iget-object v0, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    return-void
.end method

.method public poll()Lc8/yXb;
    .locals 2

    .prologue
    .line 34
    iget-object v1, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    .line 36
    :cond_0
    iget-object v1, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    invoke-static {v1}, Lc8/qXb;->getHighestPriorityConfigInArray(Ljava/util/ArrayList;)Lc8/yXb;

    move-result-object v0

    .line 37
    .local v0, "req":Lc8/yXb;
    invoke-virtual {p0, v0}, Lc8/AXb;->remove(Lc8/yXb;)Z

    goto :goto_0
.end method

.method public remove(Lc8/yXb;)Z
    .locals 1
    .param p1, "request"    # Lc8/yXb;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public remove(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lc8/yXb;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/poplayer/layermanager/PopRequest;>;"
    iget-object v0, p0, Lc8/AXb;->mRequestArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method
