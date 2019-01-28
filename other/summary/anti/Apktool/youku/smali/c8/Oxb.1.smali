.class public abstract Lc8/Oxb;
.super Lc8/Lxb;
.source "WorkFlow.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oyb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BranchParallel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Lxb",
        "<TN;>;",
        "Lc8/Hxb",
        "<TT;",
        "Lc8/jyb",
        "<TR;>;>;"
    }
.end annotation


# instance fields
.field data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TN;>;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "this":Lc8/Oxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallel<TN;TT;TR;>;"
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<TN;>;"
    invoke-direct {p0}, Lc8/Lxb;-><init>()V

    .line 366
    iput-object p1, p0, Lc8/Oxb;->data:Ljava/util/List;

    .line 367
    return-void
.end method


# virtual methods
.method public abstract branch(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITN;)TR;"
        }
    .end annotation
.end method

.method public call(Ljava/lang/Object;)Lc8/jyb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/jyb",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, "this":Lc8/Oxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallel<TN;TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v4, "works":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TN;TR;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lc8/Oxb;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 372
    iget-object v5, p0, Lc8/Oxb;->data:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 373
    .local v2, "n":Ljava/lang/Object;, "TN;"
    move v1, v0

    .line 374
    .local v1, "index":I
    invoke-virtual {p0, v2}, Lc8/Oxb;->createWork(Ljava/lang/Object;)Lc8/nyb;

    move-result-object v5

    new-instance v6, Lc8/Nxb;

    invoke-direct {v6, p0, v1}, Lc8/Nxb;-><init>(Lc8/Oxb;I)V

    invoke-virtual {v5, v6}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v3

    .line 380
    .local v3, "work":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TN;TR;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "index":I
    .end local v2    # "n":Ljava/lang/Object;, "TN;"
    .end local v3    # "work":Lc8/nyb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$Work<TN;TR;>;"
    :cond_0
    new-instance v5, Lc8/Qxb;

    invoke-direct {v5, v4}, Lc8/Qxb;-><init>(Ljava/util/List;)V

    invoke-virtual {v5}, Lc8/Qxb;->call()Lc8/jyb;

    move-result-object v5

    return-object v5
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 363
    .local p0, "this":Lc8/Oxb;, "Lcom/alibaba/aliweex/plugin/WorkFlow$BranchParallel<TN;TT;TR;>;"
    invoke-virtual {p0, p1}, Lc8/Oxb;->call(Ljava/lang/Object;)Lc8/jyb;

    move-result-object v0

    return-object v0
.end method
