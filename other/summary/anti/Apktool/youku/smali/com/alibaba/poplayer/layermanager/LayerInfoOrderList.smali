.class public Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;
.super Ljava/util/ArrayList;
.source "LayerInfoOrderList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lc8/qXb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method private sort()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lc8/rXb;

    invoke-direct {v0, p0}, Lc8/rXb;-><init>(Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;)V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 31
    return-void
.end method


# virtual methods
.method public add(Lc8/qXb;)Z
    .locals 1
    .param p1, "object"    # Lc8/qXb;

    .prologue
    .line 19
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 20
    .local v0, "res":Z
    invoke-direct {p0}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->sort()V

    .line 21
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Lc8/qXb;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->add(Lc8/qXb;)Z

    move-result v0

    return v0
.end method

.method public findLayerInfoByLevel(I)Lc8/qXb;
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/qXb;

    .line 34
    .local v1, "l":Lc8/qXb;
    invoke-virtual {v1}, Lc8/qXb;->getLevel()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 39
    .end local v1    # "l":Lc8/qXb;
    :goto_0
    return-object v1

    .line 37
    :cond_1
    new-instance v2, Lc8/qXb;

    invoke-direct {v2, p1}, Lc8/qXb;-><init>(I)V

    .line 38
    .local v2, "li":Lc8/qXb;
    invoke-virtual {p0, v2}, Lcom/alibaba/poplayer/layermanager/LayerInfoOrderList;->add(Lc8/qXb;)Z

    move-object v1, v2

    .line 39
    goto :goto_0
.end method
