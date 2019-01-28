.class public abstract Lc8/gaf;
.super Ljava/lang/Object;
.source "DinamicViewAdvancedConstructor.java"

# interfaces
.implements Lc8/haf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/faf;
    }
.end annotation


# instance fields
.field private methodInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/faf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private findMethodForAttr(Ljava/lang/String;)Lc8/faf;
    .locals 11
    .param p1, "attr"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 68
    iget-object v6, p0, Lc8/gaf;->methodInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/faf;

    .line 69
    .local v3, "info":Lc8/faf;
    iget-object v0, v3, Lc8/faf;->attrSet:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 70
    .local v5, "str":Ljava/lang/String;
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 77
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "info":Lc8/faf;
    .end local v4    # "len$":I
    .end local v5    # "str":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 69
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "info":Lc8/faf;
    .restart local v4    # "len$":I
    .restart local v5    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "info":Lc8/faf;
    .end local v4    # "len$":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    const-string/jumbo v6, "Dinamic"

    new-array v7, v9, [Ljava/lang/String;

    const-string/jumbo v8, "Senioronstructor cannot find a method for attr:%s"

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lc8/taf;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private scanAllDinamicAttrMethods()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 39
    iget-object v9, p0, Lc8/gaf;->methodInfos:Ljava/util/List;

    if-eqz v9, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lc8/gaf;->methodInfos:Ljava/util/List;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lc8/gaf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 46
    .local v7, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v5, v7

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 47
    .local v6, "method":Ljava/lang/reflect/Method;
    const-class v9, Lc8/caf;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 48
    const-class v9, Lc8/caf;

    invoke-virtual {v6, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/caf;

    .line 50
    .local v2, "dinamicAttr":Lc8/caf;
    invoke-interface {v2}, Lc8/caf;->attrSet()[Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "attrs":[Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 52
    .local v8, "params":[Ljava/lang/Class;
    array-length v9, v1

    if-lez v9, :cond_3

    array-length v9, v8

    if-lez v9, :cond_3

    array-length v9, v8

    array-length v10, v1

    sub-int/2addr v9, v10

    if-ne v9, v13, :cond_3

    .line 54
    iget-object v9, p0, Lc8/gaf;->methodInfos:Ljava/util/List;

    new-instance v10, Lc8/faf;

    invoke-direct {v10, v6, v1, v8}, Lc8/faf;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v1    # "attrs":[Ljava/lang/String;
    .end local v2    # "dinamicAttr":Lc8/caf;
    .end local v8    # "params":[Ljava/lang/Class;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 56
    .restart local v1    # "attrs":[Ljava/lang/String;
    .restart local v2    # "dinamicAttr":Lc8/caf;
    .restart local v8    # "params":[Ljava/lang/Class;
    :cond_3
    const-string/jumbo v9, "Dinamic"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string/jumbo v12, "Senioronstructor scanAllDinamicAttrMethods function info error"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Lc8/taf;->d(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 61
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v1    # "attrs":[Ljava/lang/String;
    .end local v2    # "dinamicAttr":Lc8/caf;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "params":[Ljava/lang/Class;
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "Dinamic"

    new-array v10, v13, [Ljava/lang/String;

    const-string/jumbo v11, "Senioronstructor scanAllDinamicAttrMethods exception"

    aput-object v11, v10, v14

    invoke-static {v9, v3, v10}, Lc8/taf;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final setSpecificAttributes(Landroid/view/View;Ljava/util/Map;)V
    .locals 22
    .param p1, "view"    # Landroid/view/View;
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
    .line 82
    .local p2, "valueMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v15, "Dinamic"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "start to use SeniorConstructor to set view properties"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lc8/taf;->d(Ljava/lang/String;[Ljava/lang/String;)V

    .line 84
    invoke-direct/range {p0 .. p0}, Lc8/gaf;->scanAllDinamicAttrMethods()V

    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/gaf;->methodInfos:Ljava/util/List;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/gaf;->methodInfos:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_2

    .line 86
    :cond_0
    const-string/jumbo v15, "Dinamic"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "Senioronstructor no attr set function found"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 140
    :cond_1
    return-void

    .line 91
    :cond_2
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v13, "relatedAttr":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 95
    .local v12, "passThisAttr":Z
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 96
    .local v14, "str":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 97
    const/4 v12, 0x1

    .line 101
    .end local v14    # "str":Ljava/lang/String;
    :cond_5
    if-nez v12, :cond_3

    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lc8/gaf;->findMethodForAttr(Ljava/lang/String;)Lc8/faf;

    move-result-object v8

    .line 104
    .local v8, "methodInfo":Lc8/faf;
    if-eqz v8, :cond_3

    .line 108
    iget-object v6, v8, Lc8/faf;->method:Ljava/lang/reflect/Method;

    .line 109
    .local v6, "method":Ljava/lang/reflect/Method;
    iget-object v7, v8, Lc8/faf;->attrSet:[Ljava/lang/String;

    .line 110
    .local v7, "methodAttrs":[Ljava/lang/String;
    iget-object v11, v8, Lc8/faf;->params:[Ljava/lang/Class;

    .line 113
    .local v11, "params":[Ljava/lang/Class;
    array-length v15, v7

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_6

    .line 114
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v13, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_6
    array-length v15, v11

    new-array v10, v15, [Ljava/lang/Object;

    .line 118
    .local v10, "objects":[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object v15, v11, v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 119
    const-string/jumbo v15, "Dinamic"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "Senioronstructor first param class not match"

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_7
    const/4 v15, 0x0

    aput-object p1, v10, v15

    .line 124
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v15, v7

    if-ge v3, v15, :cond_9

    .line 125
    aget-object v15, v7, v3

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 126
    .local v9, "obj":Ljava/lang/Object;
    add-int/lit8 v15, v3, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v15, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 127
    add-int/lit8 v15, v3, 0x1

    aput-object v9, v10, v15

    .line 124
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_8
    const-string/jumbo v15, "Dinamic"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "Senioronstructor %s value is null or not exist"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v21, v7, v3

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    .line 130
    add-int/lit8 v15, v3, 0x1

    const/16 v16, 0x0

    aput-object v16, v10, v15

    goto :goto_2

    .line 134
    .end local v9    # "obj":Ljava/lang/Object;
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v6, v0, v10}, Lc8/gaf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v15, "Dinamic"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "scanAllDinamicAttrMethods exception"

    aput-object v18, v16, v17

    move-object/from16 v0, v16

    invoke-static {v15, v1, v0}, Lc8/taf;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method
