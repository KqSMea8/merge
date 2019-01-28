.class public Lc8/IWb;
.super Ljava/lang/Object;
.source "Define.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/HWb;
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
.field DEFINE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/HWb",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    .local p0, "this":Lc8/IWb;, "Lcom/alibaba/mtl/godeye/control/Define<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/IWb;->DEFINE:Ljava/util/List;

    .line 10
    return-void
.end method


# virtual methods
.method public getDefine(Ljava/lang/Object;)Lc8/HWb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lc8/HWb",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lc8/IWb;, "Lcom/alibaba/mtl/godeye/control/Define<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v2, p0, Lc8/IWb;->DEFINE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HWb;

    .line 86
    .local v0, "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    invoke-virtual {v0}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    .end local v0    # "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue(II)Ljava/lang/Object;
    .locals 3
    .param p1, "command"    # I
    .param p2, "commandSet"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lc8/IWb;, "Lcom/alibaba/mtl/godeye/control/Define<TT;>;"
    iget-object v2, p0, Lc8/IWb;->DEFINE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HWb;

    .line 77
    .local v0, "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    invoke-virtual {v0}, Lc8/HWb;->getCommandSet()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v0}, Lc8/HWb;->getCommand()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 78
    invoke-virtual {v0}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 81
    .end local v0    # "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public register(Lc8/HWb;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/HWb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/IWb;, "Lcom/alibaba/mtl/godeye/control/Define<TT;>;"
    .local p1, "entry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "entry"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_0
    invoke-virtual {p1}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 44
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "value"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :cond_1
    iget-object v2, p0, Lc8/IWb;->DEFINE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HWb;

    .line 47
    .local v0, "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    invoke-virtual {v0}, Lc8/HWb;->getCommandSet()I

    move-result v2

    invoke-virtual {p1}, Lc8/HWb;->getCommandSet()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lc8/HWb;->getCommand()I

    move-result v2

    invoke-virtual {p1}, Lc8/HWb;->getCommand()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 49
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "same command exist. commandSet:%s command:%s vlaue class:%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lc8/HWb;->getCommandSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lc8/HWb;->getCommand()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_3
    invoke-virtual {v0}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "same value exist. commandSet:%s command:%s vlaue class:%s"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lc8/HWb;->getCommandSet()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lc8/HWb;->getCommand()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p1}, Lc8/HWb;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    .end local v0    # "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    :cond_4
    iget-object v2, p0, Lc8/IWb;->DEFINE:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public unRegister(Lc8/HWb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/HWb",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lc8/IWb;, "Lcom/alibaba/mtl/godeye/control/Define<TT;>;"
    .local p1, "entry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    if-nez p1, :cond_0

    .line 65
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "entry"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    iget-object v2, p0, Lc8/IWb;->DEFINE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/HWb;

    .line 68
    .local v0, "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    if-eq p1, v0, :cond_2

    invoke-virtual {v0}, Lc8/HWb;->getCommandSet()I

    move-result v2

    invoke-virtual {p1}, Lc8/HWb;->getCommandSet()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lc8/HWb;->getCommand()I

    move-result v2

    invoke-virtual {p1}, Lc8/HWb;->getCommand()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 70
    :cond_2
    iget-object v2, p0, Lc8/IWb;->DEFINE:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v0    # "defineEntry":Lc8/HWb;, "Lcom/alibaba/mtl/godeye/control/Define$Entry<TT;>;"
    :cond_3
    return-void
.end method
