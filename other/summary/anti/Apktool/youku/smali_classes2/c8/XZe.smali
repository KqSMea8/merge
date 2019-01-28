.class public final Lc8/XZe;
.super Ljava/lang/Object;
.source "DinamicDataBinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bindCustomData(Landroid/view/View;Ljava/util/Map;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lc8/baf;->getViewProperty(Landroid/view/View;)Lc8/Naf;

    move-result-object v1

    .line 62
    .local v1, "dinamicProperty":Lc8/Naf;
    iget-object v2, v1, Lc8/Naf;->viewIdentify:Ljava/lang/String;

    invoke-static {v2}, Lc8/VZe;->getViewConstructor(Ljava/lang/String;)Lc8/haf;

    move-result-object v0

    .line 64
    .local v0, "constructor":Lc8/haf;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0, p1}, Lc8/haf;->setSpecificAttributes(Landroid/view/View;Ljava/util/Map;)V

    .line 67
    :cond_0
    return-void
.end method

.method static bindData(Landroid/view/View;Ljava/lang/Object;)V
    .locals 12
    .param p0, "view"    # Landroid/view/View;
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 24
    invoke-static {p0}, Lc8/baf;->getViewDinamicProperty(Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    .line 25
    .local v0, "dinamicProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 26
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v4, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 28
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p1, v5}, Lc8/iaf;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 29
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 30
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 32
    :cond_0
    const-string/jumbo v5, "Dinamic"

    new-array v6, v11, [Ljava/lang/String;

    const-string/jumbo v7, "\u8868\u8fbe\u5f0f %s=%s \u89e3\u6790\u51fa\u6765\u7684\u7ed3\u679c\u4e3anull,\u88abDinamic\u4e22\u5f03"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v10

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 38
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    invoke-static {p0, v4}, Lc8/XZe;->bindDataImpl(Landroid/view/View;Ljava/util/Map;)V

    .line 42
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    invoke-static {p0, p1}, Lc8/Kaf;->bindEventHandler(Landroid/view/View;Ljava/lang/Object;)V

    .line 43
    return-void
.end method

.method static bindDataImpl(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lc8/XZe;->bindDefaultData(Landroid/view/View;Ljava/util/Map;)V

    .line 48
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Lc8/XZe;->bindCustomData(Landroid/view/View;Ljava/util/Map;)V

    .line 51
    :cond_0
    return-void
.end method

.method private static bindDefaultData(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p0}, Lc8/Laf;->getDViewPropertySetter(Landroid/view/View;)Lc8/Maf;

    move-result-object v0

    .line 56
    .local v0, "setter":Lc8/Maf;
    invoke-virtual {v0, p0, p1}, Lc8/Maf;->applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V

    .line 57
    return-void
.end method
