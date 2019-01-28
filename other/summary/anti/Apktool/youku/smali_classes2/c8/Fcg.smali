.class public Lc8/Fcg;
.super Ljava/lang/Object;
.source "Statements.java"


# static fields
.field private static final dynamicLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 389
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lc8/Fcg;->dynamicLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyComponentTree(Lc8/tbg;)Lc8/tbg;
    .locals 8
    .param p0, "component"    # Lc8/tbg;

    .prologue
    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 67
    .local v2, "start":J
    invoke-virtual {p0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v1

    invoke-static {p0, v1}, Lc8/Fcg;->copyComponentTree(Lc8/tbg;Lc8/scg;)Lc8/tbg;

    move-result-object v0

    .line 68
    .local v0, "copy":Lc8/tbg;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string/jumbo v1, "WXRecyclerTemplateList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "copyComponentTree "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_0
    return-object v0
.end method

.method private static final copyComponentTree(Lc8/tbg;Lc8/scg;)Lc8/tbg;
    .locals 11
    .param p0, "source"    # Lc8/tbg;
    .param p1, "parent"    # Lc8/scg;

    .prologue
    .line 78
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v7

    check-cast v7, Lc8/HYf;

    .line 79
    .local v7, "node":Lc8/HYf;
    invoke-virtual {p0}, Lc8/tbg;->getInstance()Lc8/nVf;

    move-result-object v9

    invoke-static {v9, v7, p1}, Lc8/ubg;->newInstance(Lc8/nVf;Lc8/HYf;Lc8/scg;)Lc8/tbg;

    move-result-object v3

    .line 80
    .local v3, "component":Lc8/tbg;
    instance-of v9, p0, Lc8/scg;

    if-eqz v9, :cond_1

    move-object v4, p0

    .line 81
    check-cast v4, Lc8/scg;

    .local v4, "container":Lc8/scg;
    move-object v1, v3

    .line 82
    check-cast v1, Lc8/scg;

    .line 83
    .local v1, "childParent":Lc8/scg;
    invoke-virtual {v1}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v2

    check-cast v2, Lc8/HYf;

    .line 84
    .local v2, "childParentNode":Lc8/HYf;
    invoke-virtual {v4}, Lc8/scg;->getChildCount()I

    move-result v5

    .line 85
    .local v5, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 86
    invoke-virtual {v4, v6}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v0

    .line 87
    .local v0, "child":Lc8/tbg;
    if-eqz v0, :cond_0

    .line 88
    invoke-static {v0, v1}, Lc8/Fcg;->copyComponentTree(Lc8/tbg;Lc8/scg;)Lc8/tbg;

    move-result-object v8

    .line 89
    .local v8, "targetChild":Lc8/tbg;
    invoke-virtual {v1, v8}, Lc8/scg;->addChild(Lc8/tbg;)V

    .line 90
    invoke-virtual {v8}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v9

    check-cast v9, Lc8/HYf;

    const/4 v10, -0x1

    invoke-virtual {v2, v9, v10}, Lc8/HYf;->add(Lc8/HYf;I)V

    .line 85
    .end local v8    # "targetChild":Lc8/tbg;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "child":Lc8/tbg;
    .end local v1    # "childParent":Lc8/scg;
    .end local v2    # "childParentNode":Lc8/HYf;
    .end local v4    # "container":Lc8/scg;
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_1
    return-object v3
.end method

.method private static doBindingAttrsEventAndRenderChildNode(Lc8/tbg;Lc8/HYf;Lc8/RZf;Ljava/util/List;)V
    .locals 7
    .param p0, "component"    # Lc8/tbg;
    .param p1, "domObject"    # Lc8/HYf;
    .param p2, "context"    # Lc8/RZf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Lc8/HYf;",
            "Lc8/RZf;",
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p3, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual {p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    .line 290
    .local v0, "attr":Lc8/xYf;
    const-string/jumbo v5, "@isComponentRoot"

    invoke-virtual {v0, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "@isComponentRoot"

    invoke-virtual {v0, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 292
    const-string/jumbo v5, "@componentProps"

    invoke-virtual {v0, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "@componentProps"

    invoke-virtual {v0, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_0

    .line 294
    const-string/jumbo v5, "@componentProps"

    invoke-virtual {v0, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v5, p2}, Lc8/Fcg;->renderProps(Lcom/alibaba/fastjson/JSONObject;Lc8/RZf;)Ljava/util/Map;

    move-result-object v4

    .line 295
    .local v4, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance p2, Lc8/RZf;

    .end local p2    # "context":Lc8/RZf;
    invoke-direct {p2}, Lc8/RZf;-><init>()V

    .line 296
    .restart local p2    # "context":Lc8/RZf;
    invoke-virtual {p2, v4}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 299
    .end local v4    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-static {p0, p1, p2}, Lc8/Fcg;->doRenderBindingAttrsAndEvent(Lc8/tbg;Lc8/HYf;Lc8/RZf;)V

    .line 300
    instance-of v5, p0, Lc8/scg;

    if-eqz v5, :cond_1

    .line 301
    invoke-virtual {p1}, Lc8/HYf;->isShow()Z

    move-result v5

    if-nez v5, :cond_2

    .line 302
    instance-of v5, p0, Lc8/jdg;

    if-nez v5, :cond_2

    .line 303
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 314
    :cond_1
    return-void

    :cond_2
    move-object v1, p0

    .line 308
    check-cast v1, Lc8/scg;

    .line 309
    .local v1, "container":Lc8/scg;
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    invoke-virtual {v1}, Lc8/scg;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 310
    invoke-virtual {v1, v2}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v3

    .line 311
    .local v3, "next":Lc8/tbg;
    invoke-static {v3, p2, p3}, Lc8/Fcg;->doRenderComponent(Lc8/tbg;Lc8/RZf;Ljava/util/List;)I

    move-result v5

    add-int/2addr v2, v5

    .line 312
    goto :goto_0
.end method

.method public static final doInitCompontent(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 134
    :cond_0
    return-void

    .line 121
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/tbg;

    .line 122
    .local v3, "renderNode":Lc8/tbg;
    invoke-virtual {v3}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v4

    if-nez v4, :cond_2

    .line 123
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "render node parent cann\'t find"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 125
    :cond_2
    invoke-virtual {v3}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v1

    .line 126
    .local v1, "parent":Lc8/scg;
    invoke-virtual {v1, v3}, Lc8/scg;->indexOf(Lc8/tbg;)I

    move-result v2

    .line 127
    .local v2, "renderIndex":I
    if-gez v2, :cond_3

    .line 128
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "render node cann\'t find"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 130
    :cond_3
    invoke-virtual {v1, v2}, Lc8/scg;->createChildViewAt(I)V

    .line 131
    invoke-virtual {v3, v3}, Lc8/tbg;->applyLayoutAndEvent(Lc8/tbg;)V

    .line 132
    invoke-virtual {v3, v3}, Lc8/tbg;->bindData(Lc8/tbg;)V

    goto :goto_0
.end method

.method public static final doRender(Lc8/tbg;Lc8/RZf;)Ljava/util/List;
    .locals 3
    .param p0, "component"    # Lc8/tbg;
    .param p1, "stack"    # Lc8/RZf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Lc8/RZf;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v1, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    :try_start_0
    invoke-static {p0, p1, v1}, Lc8/Fcg;->doRenderComponent(Lc8/tbg;Lc8/RZf;Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WeexStatementRender"

    invoke-static {v2, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static doRenderBindingAttrsAndEvent(Lc8/tbg;Lc8/HYf;Lc8/RZf;)V
    .locals 16
    .param p0, "component"    # Lc8/tbg;
    .param p1, "domObject"    # Lc8/HYf;
    .param p2, "context"    # Lc8/RZf;

    .prologue
    .line 329
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lc8/tbg;->setWaste(Z)V

    .line 330
    invoke-virtual/range {p1 .. p1}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v1

    .line 331
    .local v1, "attr":Lc8/xYf;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lc8/xYf;->getBindingAttrs()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v1}, Lc8/xYf;->getBindingAttrs()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 334
    invoke-virtual/range {p1 .. p1}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v13

    invoke-virtual {v13}, Lc8/xYf;->getBindingAttrs()Landroid/support/v4/util/ArrayMap;

    move-result-object v2

    .line 335
    .local v2, "bindAttrs":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    invoke-static {v2, v0}, Lc8/Fcg;->renderBindingAttrs(Landroid/support/v4/util/ArrayMap;Lc8/RZf;)Ljava/util/Map;

    move-result-object v3

    .line 336
    .local v3, "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 340
    .local v4, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 341
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 342
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 343
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 344
    .local v11, "key":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    .line 345
    invoke-virtual {v1, v11}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_1

    .line 346
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v1, v11}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 351
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 355
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 356
    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    const-string/jumbo v13, "src"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    instance-of v13, v0, Lc8/Kbg;

    if-eqz v13, :cond_6

    .line 360
    invoke-virtual/range {p1 .. p1}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v13

    const-string/jumbo v14, "src"

    const-string/jumbo v15, "src"

    invoke-interface {v3, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lc8/xYf;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v13

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v14

    if-ne v13, v14, :cond_3

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/tbg;->updateProperties(Ljava/util/Map;)V

    .line 367
    :cond_3
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 370
    .end local v2    # "bindAttrs":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lc8/HYf;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v6

    .line 371
    .local v6, "event":Lcom/taobao/weex/dom/WXEvent;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    if-nez v13, :cond_7

    .line 381
    :cond_5
    return-void

    .line 362
    .end local v6    # "event":Lcom/taobao/weex/dom/WXEvent;
    .restart local v2    # "bindAttrs":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lc8/HYf;->updateAttr(Ljava/util/Map;)V

    goto :goto_1

    .line 374
    .end local v2    # "bindAttrs":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v6    # "event":Lcom/taobao/weex/dom/WXEvent;
    :cond_7
    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Landroid/support/v4/util/ArrayMap;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    .line 375
    .local v8, "eventBindArgsEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 376
    .local v7, "eventBindArgsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lc8/Fcg;->getBindingEventArgs(Lc8/RZf;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    .line 377
    .local v12, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v12, :cond_8

    .line 378
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v6, v13, v12}, Lcom/taobao/weex/dom/WXEvent;->putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_2
.end method

.method private static final doRenderComponent(Lc8/tbg;Lc8/RZf;Ljava/util/List;)I
    .locals 34
    .param p0, "component"    # Lc8/tbg;
    .param p1, "context"    # Lc8/RZf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/tbg;",
            "Lc8/RZf;",
            "Ljava/util/List",
            "<",
            "Lc8/tbg;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 148
    .local p2, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getParent()Lc8/scg;

    move-result-object v17

    .line 149
    .local v17, "parent":Lc8/scg;
    invoke-virtual/range {p0 .. p0}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v7

    check-cast v7, Lc8/HYf;

    .line 150
    .local v7, "domObject":Lc8/HYf;
    invoke-virtual {v7}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    .line 151
    .local v4, "attrs":Lc8/xYf;
    invoke-virtual {v4}, Lc8/xYf;->getStatement()Lc8/xZf;

    move-result-object v24

    .line 152
    .local v24, "statement":Lc8/xZf;
    if-eqz v24, :cond_14

    .line 153
    invoke-virtual/range {v17 .. v17}, Lc8/scg;->getDomObject()Lc8/qYf;

    move-result-object v18

    check-cast v18, Lc8/HYf;

    .line 154
    .local v18, "parentDomObject":Lc8/HYf;
    const/16 v27, 0x0

    .line 155
    .local v27, "vif":Lc8/XZf;
    const/16 v26, 0x0

    .line 156
    .local v26, "vfor":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v29, "[[match]]"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/xZf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lc8/XZf;

    move/from16 v29, v0

    if-eqz v29, :cond_0

    .line 157
    const-string/jumbo v29, "[[match]]"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/xZf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    .end local v27    # "vif":Lc8/XZf;
    check-cast v27, Lc8/XZf;

    .line 159
    .restart local v27    # "vif":Lc8/XZf;
    :cond_0
    const-string/jumbo v29, "[[repeat]]"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/xZf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v29, v0

    if-eqz v29, :cond_1

    .line 160
    const-string/jumbo v29, "[[repeat]]"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/xZf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    check-cast v26, Lcom/alibaba/fastjson/JSONObject;

    .line 163
    .restart local v26    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    if-eqz v26, :cond_12

    .line 164
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/scg;->indexOf(Lc8/tbg;)I

    move-result v19

    .line 165
    .local v19, "renderIndex":I
    const-string/jumbo v29, "@expression"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v0, v29

    instance-of v0, v0, Lc8/XZf;

    move/from16 v29, v0

    if-eqz v29, :cond_f

    .line 166
    const-string/jumbo v29, "@expression"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc8/XZf;

    .line 167
    .local v14, "listBlock":Lc8/XZf;
    const-string/jumbo v29, "@index"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 168
    .local v10, "indexKey":Ljava/lang/String;
    const-string/jumbo v29, "@alias"

    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 169
    .local v12, "itemKey":Ljava/lang/String;
    const/4 v6, 0x0

    .line 170
    .local v6, "data":Ljava/lang/Object;
    if-eqz v14, :cond_2

    .line 171
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 173
    .end local v6    # "data":Ljava/lang/Object;
    :cond_2
    instance-of v0, v6, Ljava/util/List;

    move/from16 v29, v0

    if-nez v29, :cond_3

    instance-of v0, v6, Ljava/util/Map;

    move/from16 v29, v0

    if-eqz v29, :cond_10

    .line 176
    :cond_3
    const/16 v16, 0x0

    .line 177
    .local v16, "map":Ljava/util/Map;
    instance-of v0, v6, Ljava/util/List;

    move/from16 v29, v0

    if-eqz v29, :cond_c

    move-object v5, v6

    .line 178
    check-cast v5, Ljava/util/List;

    .line 183
    .local v5, "collection":Ljava/util/Collection;
    :goto_0
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v15, "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 185
    .local v9, "index":I
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 188
    .local v11, "item":Ljava/lang/Object;
    if-nez v16, :cond_d

    .line 189
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 190
    .local v13, "key":Ljava/lang/Integer;
    move-object/from16 v25, v11

    .line 195
    .end local v13    # "key":Ljava/lang/Integer;
    .local v25, "value":Ljava/lang/Object;
    :goto_2
    if-eqz v10, :cond_5

    .line 196
    invoke-interface {v15, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_5
    if-eqz v12, :cond_e

    .line 200
    move-object/from16 v0, v25

    invoke-interface {v15, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_3
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v29

    if-lez v29, :cond_6

    .line 205
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 209
    :cond_6
    if-eqz v27, :cond_7

    .line 210
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lc8/UZf;->isTrue(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_4

    .line 215
    :cond_7
    const/16 v20, 0x0

    .line 216
    .local v20, "renderNode":Lc8/tbg;
    invoke-virtual/range {v17 .. v17}, Lc8/scg;->getChildCount()I

    move-result v29

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_9

    .line 217
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v20

    .line 219
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lc8/Fcg;->isCreateFromNodeStatement(Lc8/tbg;Lc8/tbg;)Z

    move-result v29

    if-nez v29, :cond_8

    .line 220
    const/16 v20, 0x0

    .line 222
    :cond_8
    if-eqz v20, :cond_9

    .line 223
    invoke-virtual/range {v20 .. v20}, Lc8/tbg;->isWaste()Z

    move-result v29

    if-eqz v29, :cond_9

    .line 224
    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/tbg;->setWaste(Z)V

    .line 229
    :cond_9
    if-nez v20, :cond_a

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 231
    .local v22, "start":J
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/Fcg;->copyComponentTree(Lc8/tbg;Lc8/scg;)Lc8/tbg;

    move-result-object v20

    .line 232
    invoke-virtual/range {v20 .. v20}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v21

    check-cast v21, Lc8/HYf;

    .line 233
    .local v21, "renderNodeDomObject":Lc8/HYf;
    invoke-virtual/range {v21 .. v21}, Lc8/HYf;->getAttrs()Lc8/xYf;

    move-result-object v29

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lc8/xYf;->setStatement(Lc8/xZf;)V

    .line 234
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/HYf;->add(Lc8/HYf;I)V

    .line 235
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lc8/scg;->addChild(Lc8/tbg;I)V

    .line 236
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v29

    if-eqz v29, :cond_a

    .line 238
    const-string/jumbo v29, "WXRecyclerTemplateList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v20 .. v20}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v20 .. v20}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Lc8/qYf;->getType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "statements copy component tree used "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    sub-long v32, v32, v22

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v21    # "renderNodeDomObject":Lc8/HYf;
    .end local v22    # "start":J
    :cond_a
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v7, v1, v2}, Lc8/Fcg;->doBindingAttrsEventAndRenderChildNode(Lc8/tbg;Lc8/HYf;Lc8/RZf;Ljava/util/List;)V

    .line 242
    add-int/lit8 v19, v19, 0x1

    .line 243
    invoke-interface {v15}, Ljava/util/Map;->size()I

    move-result v29

    if-lez v29, :cond_b

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lc8/RZf;->push(Ljava/lang/Object;)V

    .line 246
    :cond_b
    if-nez v12, :cond_4

    .line 247
    invoke-virtual/range {p1 .. p1}, Lc8/RZf;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .end local v5    # "collection":Ljava/util/Collection;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "index":I
    .end local v11    # "item":Ljava/lang/Object;
    .end local v15    # "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20    # "renderNode":Lc8/tbg;
    .end local v25    # "value":Ljava/lang/Object;
    :cond_c
    move-object/from16 v16, v6

    .line 180
    check-cast v16, Ljava/util/Map;

    .line 181
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .restart local v5    # "collection":Ljava/util/Collection;
    goto/16 :goto_0

    .line 192
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "index":I
    .restart local v11    # "item":Ljava/lang/Object;
    .restart local v15    # "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    move-object v13, v11

    .line 193
    .local v13, "key":Ljava/lang/Object;
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .restart local v25    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 202
    .end local v13    # "key":Ljava/lang/Object;
    :cond_e
    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lc8/RZf;->push(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 252
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "index":I
    .end local v10    # "indexKey":Ljava/lang/String;
    .end local v11    # "item":Ljava/lang/Object;
    .end local v12    # "itemKey":Ljava/lang/String;
    .end local v14    # "listBlock":Lc8/XZf;
    .end local v15    # "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v16    # "map":Ljava/util/Map;
    .end local v25    # "value":Ljava/lang/Object;
    :cond_f
    const-string/jumbo v29, "WXRecyclerTemplateList"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v26 .. v26}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " not call vfor block, for pre compile"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_10
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lc8/scg;->getChildCount()I

    move-result v29

    move/from16 v0, v19

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 256
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lc8/scg;->getChild(I)Lc8/tbg;

    move-result-object v28

    .line 257
    .local v28, "wasteNode":Lc8/tbg;
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lc8/Fcg;->isCreateFromNodeStatement(Lc8/tbg;Lc8/tbg;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 260
    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Lc8/tbg;->setWaste(Z)V

    .line 255
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 262
    .end local v28    # "wasteNode":Lc8/tbg;
    :cond_11
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lc8/scg;->indexOf(Lc8/tbg;)I

    move-result v29

    sub-int v29, v19, v29

    .line 278
    .end local v18    # "parentDomObject":Lc8/HYf;
    .end local v19    # "renderIndex":I
    .end local v26    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    .end local v27    # "vif":Lc8/XZf;
    :goto_5
    return v29

    .line 266
    .restart local v18    # "parentDomObject":Lc8/HYf;
    .restart local v26    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    .restart local v27    # "vif":Lc8/XZf;
    :cond_12
    if-eqz v27, :cond_14

    .line 267
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lc8/UZf;->isTrue(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_13

    .line 268
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/tbg;->setWaste(Z)V

    .line 269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v29

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_14

    .line 270
    const/16 v29, 0x1

    goto :goto_5

    .line 273
    :cond_13
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lc8/tbg;->setWaste(Z)V

    .line 277
    .end local v18    # "parentDomObject":Lc8/HYf;
    .end local v26    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    .end local v27    # "vif":Lc8/XZf;
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v7, v1, v2}, Lc8/Fcg;->doBindingAttrsEventAndRenderChildNode(Lc8/tbg;Lc8/HYf;Lc8/RZf;Ljava/util/List;)V

    .line 278
    const/16 v29, 0x1

    goto :goto_5
.end method

.method public static getBindingEventArgs(Lc8/RZf;Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Lc8/RZf;
    .param p1, "bindings"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/RZf;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 463
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v7, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v7, :cond_1

    move-object v0, p1

    .line 464
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 465
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 466
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 467
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v8, "@binding"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lc8/XZf;

    if-eqz v7, :cond_0

    .line 469
    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .end local v6    # "value":Ljava/lang/Object;
    const-string/jumbo v7, "@binding"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/XZf;

    .line 470
    .local v2, "block":Lc8/XZf;
    invoke-virtual {v2, p0}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 471
    .local v3, "blockValue":Ljava/lang/Object;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    .end local v2    # "block":Lc8/XZf;
    .end local v3    # "blockValue":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 476
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_4

    move-object v1, p1

    .line 477
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 478
    .local v1, "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "@binding"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lc8/XZf;

    if-eqz v7, :cond_3

    .line 479
    const-string/jumbo v7, "@binding"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/XZf;

    .line 480
    .restart local v2    # "block":Lc8/XZf;
    invoke-virtual {v2, p0}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 481
    .restart local v3    # "blockValue":Ljava/lang/Object;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    .end local v1    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "block":Lc8/XZf;
    .end local v3    # "blockValue":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-object v5

    .line 483
    .restart local v1    # "binding":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 486
    .end local v1    # "binding":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static isCreateFromNodeStatement(Lc8/tbg;Lc8/tbg;)Z
    .locals 2
    .param p0, "renderNode"    # Lc8/tbg;
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 321
    invoke-virtual {p0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lc8/tbg;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static renderBindingAttrs(Landroid/support/v4/util/ArrayMap;Lc8/RZf;)Ljava/util/Map;
    .locals 18
    .param p0, "bindAttrs"    # Landroid/support/v4/util/ArrayMap;
    .param p1, "context"    # Lc8/RZf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArrayMap;",
            "Lc8/RZf;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 392
    .local v10, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    sget-object v15, Lc8/Fcg;->dynamicLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v15}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 393
    .local v7, "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 394
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 395
    .restart local v7    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v15, Lc8/Fcg;->dynamicLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v15, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 397
    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 398
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 400
    :cond_1
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 401
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 402
    .local v14, "value":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 403
    .local v13, "key":Ljava/lang/String;
    instance-of v15, v14, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v15, :cond_3

    move-object v15, v14

    check-cast v15, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v16, "@binding"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lc8/XZf;

    if-eqz v15, :cond_3

    move-object v2, v14

    .line 405
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 406
    .local v2, "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v15, "@binding"

    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/XZf;

    .line 407
    .local v3, "block":Lc8/XZf;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 408
    .local v4, "blockValue":Ljava/lang/Object;
    invoke-interface {v7, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 409
    .end local v2    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "block":Lc8/XZf;
    .end local v4    # "blockValue":Ljava/lang/Object;
    :cond_3
    instance-of v15, v14, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v15, :cond_2

    move-object v1, v14

    .line 410
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 411
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 412
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v15

    if-ge v11, v15, :cond_7

    .line 413
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 414
    .local v8, "element":Ljava/lang/Object;
    instance-of v15, v8, Ljava/lang/CharSequence;

    if-eqz v15, :cond_5

    .line 415
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 412
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 418
    :cond_5
    instance-of v15, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v15, :cond_4

    move-object v15, v8

    check-cast v15, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v16, "@binding"

    invoke-virtual/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    instance-of v15, v15, Lc8/XZf;

    if-eqz v15, :cond_4

    move-object v2, v8

    .line 420
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 421
    .restart local v2    # "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v15, "@binding"

    invoke-virtual {v2, v15}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/XZf;

    .line 422
    .restart local v3    # "block":Lc8/XZf;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 423
    .restart local v4    # "blockValue":Ljava/lang/Object;
    if-nez v4, :cond_6

    .line 424
    const-string/jumbo v4, ""

    .line 426
    .end local v4    # "blockValue":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 429
    .end local v2    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "block":Lc8/XZf;
    .end local v8    # "element":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 430
    .local v6, "builderString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x100

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    .line 431
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 432
    const-string/jumbo v15, "WXRecyclerTemplateList"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, " warn too big string "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lc8/xgg;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_8
    invoke-interface {v7, v13, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 438
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "builderString":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "i":I
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_9
    return-object v7
.end method

.method public static renderProps(Lcom/alibaba/fastjson/JSONObject;Lc8/RZf;)Ljava/util/Map;
    .locals 11
    .param p0, "props"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "context"    # Lc8/RZf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lc8/RZf;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 444
    .local v4, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v7, Landroid/support/v4/util/ArrayMap;

    const/4 v9, 0x4

    invoke-direct {v7, v9}, Landroid/support/v4/util/ArrayMap;-><init>(I)V

    .line 445
    .local v7, "renderProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 446
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 447
    .local v8, "value":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 448
    .local v6, "key":Ljava/lang/String;
    instance-of v9, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v9, :cond_0

    move-object v9, v8

    check-cast v9, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v10, "@binding"

    invoke-virtual {v9, v10}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lc8/XZf;

    if-eqz v9, :cond_0

    move-object v0, v8

    .line 450
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 451
    .local v0, "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v9, "@binding"

    invoke-virtual {v0, v9}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/XZf;

    .line 452
    .local v1, "block":Lc8/XZf;
    invoke-virtual {v1, p1}, Lc8/XZf;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 453
    .local v2, "blockValue":Ljava/lang/Object;
    invoke-interface {v7, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 455
    .end local v0    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "block":Lc8/XZf;
    .end local v2    # "blockValue":Ljava/lang/Object;
    :cond_0
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 458
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/Object;
    :cond_1
    return-object v7
.end method
