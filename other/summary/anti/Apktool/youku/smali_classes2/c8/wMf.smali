.class public Lc8/wMf;
.super Ljava/lang/Object;
.source "InjectEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InjectEngine"

.field private static final classMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lc8/vMf;",
            ">;"
        }
    .end annotation
.end field

.field private static final fieldsCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<[",
            "Ljava/lang/reflect/Field;",
            "[",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final nameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/vMf;",
            ">;"
        }
    .end annotation
.end field

.field private static final tokenSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/wMf;->nameMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/wMf;->classMap:Ljava/util/Map;

    .line 19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/wMf;->tokenSet:Ljava/util/HashSet;

    .line 21
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Lc8/wMf;->fieldsCache:Landroid/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs bind([Ljava/lang/Class;)V
    .locals 15
    .param p0, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 31
    if-eqz p0, :cond_0

    array-length v13, p0

    if-nez v13, :cond_1

    .line 63
    :cond_0
    return-void

    .line 35
    :cond_1
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Class;
    array-length v9, p0

    .local v9, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    move v5, v4

    .end local v1    # "arr$":[Ljava/lang/Class;
    .end local v4    # "i$":I
    .end local v9    # "len$":I
    .local v5, "i$":I
    :goto_0
    if-ge v5, v9, :cond_0

    aget-object v3, v1, v5

    .line 36
    .local v3, "clazz":Ljava/lang/Class;
    const-class v13, Lc8/uMf;

    invoke-virtual {v3, v13}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lc8/uMf;

    .line 37
    .local v6, "impl":Lc8/uMf;
    if-eqz v6, :cond_5

    .line 41
    new-instance v7, Lc8/vMf;

    invoke-direct {v7}, Lc8/vMf;-><init>()V

    .line 42
    .local v7, "injectBinding":Lc8/vMf;
    iput-object v3, v7, Lc8/vMf;->implementation:Ljava/lang/Class;

    .line 43
    invoke-interface {v6}, Lc8/uMf;->singleton()Z

    move-result v13

    iput-boolean v13, v7, Lc8/vMf;->singleton:Z

    .line 45
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v8

    .line 46
    .local v8, "interfaces":[Ljava/lang/Class;
    move-object v2, v8

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v10, v8

    .local v10, "len$":I
    const/4 v4, 0x0

    .end local v5    # "i$":I
    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v10, :cond_3

    aget-object v0, v2, v4

    .line 47
    .local v0, "aInterface":Ljava/lang/Class;
    const-class v13, Lc8/rMf;

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 48
    sget-object v13, Lc8/wMf;->classMap:Ljava/util/Map;

    invoke-interface {v13, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 52
    .end local v0    # "aInterface":Ljava/lang/Class;
    :cond_3
    invoke-interface {v6}, Lc8/uMf;->value()[Ljava/lang/String;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/String;
    array-length v10, v2

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v10, :cond_4

    aget-object v11, v2, v4

    .line 53
    .local v11, "name":Ljava/lang/String;
    iput-object v11, v7, Lc8/vMf;->name:Ljava/lang/String;

    .line 54
    sget-object v13, Lc8/wMf;->nameMap:Ljava/util/Map;

    iget-object v14, v7, Lc8/vMf;->name:Ljava/lang/String;

    invoke-interface {v13, v14, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 57
    .end local v11    # "name":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Lc8/uMf;->injectType()Lcom/taobao/tao/purchase/inject/InjectType;

    move-result-object v13

    sget-object v14, Lcom/taobao/tao/purchase/inject/InjectType;->STATIC:Lcom/taobao/tao/purchase/inject/InjectType;

    if-ne v13, v14, :cond_5

    .line 58
    invoke-interface {v6}, Lc8/uMf;->target()[Ljava/lang/Class;

    move-result-object v2

    .local v2, "arr$":[Ljava/lang/Class;
    array-length v10, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v10, :cond_5

    aget-object v12, v2, v4

    .line 59
    .local v12, "target":Ljava/lang/Class;
    invoke-static {v12}, Lc8/wMf;->injectStatics(Ljava/lang/Class;)V

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 35
    .end local v2    # "arr$":[Ljava/lang/Class;
    .end local v4    # "i$":I
    .end local v7    # "injectBinding":Lc8/vMf;
    .end local v8    # "interfaces":[Ljava/lang/Class;
    .end local v10    # "len$":I
    .end local v12    # "target":Ljava/lang/Class;
    :cond_5
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i$":I
    move v5, v4

    .end local v4    # "i$":I
    .restart local v5    # "i$":I
    goto :goto_0
.end method

.method private static getActualType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 227
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static getInjectObjectByClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 189
    sget-object v3, Lc8/wMf;->classMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vMf;

    .line 190
    .local v0, "binding":Lc8/vMf;
    if-nez v0, :cond_0

    .line 191
    const/4 v2, 0x0

    .line 201
    :goto_0
    return-object v2

    .line 194
    :cond_0
    const/4 v2, 0x0

    .line 196
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0}, Lc8/vMf;->getInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 198
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "InjectEngine"

    const-string/jumbo v4, "get instance from binding exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getInjectObjectByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    sget-object v3, Lc8/wMf;->nameMap:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/vMf;

    .line 173
    .local v0, "binding":Lc8/vMf;
    if-nez v0, :cond_0

    .line 174
    const/4 v2, 0x0

    .line 184
    :goto_0
    return-object v2

    .line 177
    :cond_0
    const/4 v2, 0x0

    .line 179
    .local v2, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v0}, Lc8/vMf;->getInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "InjectEngine"

    const-string/jumbo v4, "get instance from binding exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static inject(Ljava/lang/Object;)V
    .locals 27
    .param p0, "injectTarget"    # Ljava/lang/Object;

    .prologue
    .line 74
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "keyName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v12

    .line 77
    .local v12, "injectTargetClassName":Ljava/lang/String;
    sget-object v24, Lc8/wMf;->fieldsCache:Landroid/util/LruCache;

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/Pair;

    .line 79
    .local v21, "pair":Landroid/util/Pair;, "Landroid/util/Pair<[Ljava/lang/reflect/Field;[Ljava/lang/reflect/Field;>;"
    if-nez v21, :cond_7

    .line 80
    sget-object v22, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DEFAULT:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    .line 82
    .local v22, "policy":Lcom/taobao/tao/purchase/inject/TraversalPolicy;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-class v25, Lc8/tMf;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lc8/tMf;

    .line 83
    .local v9, "fieldTraversal":Lc8/tMf;
    if-eqz v9, :cond_0

    .line 84
    invoke-interface {v9}, Lc8/tMf;->value()Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    move-result-object v24

    sget-object v25, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DECLARED:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 85
    sget-object v22, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DECLARED:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    .line 90
    :cond_0
    sget-object v24, Lcom/taobao/tao/purchase/inject/TraversalPolicy;->DECLARED:Lcom/taobao/tao/purchase/inject/TraversalPolicy;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 91
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v23, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 93
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v24, Lc8/tMf;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 94
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 95
    invoke-virtual {v4}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/reflect/Field;

    .line 102
    .end local v4    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v23    # "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .local v10, "fields":[Ljava/lang/reflect/Field;
    :goto_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v15, "lazyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v19, "normalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    move-object v3, v10

    .local v3, "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v10

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v11, v0, :cond_5

    aget-object v7, v3, v11

    .line 106
    .local v7, "field":Ljava/lang/reflect/Field;
    const-class v24, Lc8/sMf;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lc8/sMf;

    .line 107
    .local v6, "externalInject":Lc8/sMf;
    if-eqz v6, :cond_2

    .line 111
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 112
    .local v8, "fieldClass":Ljava/lang/Class;
    const-class v24, Lc8/xMf;

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 113
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    .end local v8    # "fieldClass":Ljava/lang/Class;
    :cond_2
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 99
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v6    # "externalInject":Lc8/sMf;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "fields":[Ljava/lang/reflect/Field;
    .end local v11    # "i$":I
    .end local v15    # "lazyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v16    # "len$":I
    .end local v19    # "normalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    .restart local v10    # "fields":[Ljava/lang/reflect/Field;
    goto :goto_1

    .line 115
    .restart local v3    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "externalInject":Lc8/sMf;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v8    # "fieldClass":Ljava/lang/Class;
    .restart local v11    # "i$":I
    .restart local v15    # "lazyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .restart local v16    # "len$":I
    .restart local v19    # "normalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    :cond_4
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 119
    .end local v6    # "externalInject":Lc8/sMf;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldClass":Ljava/lang/Class;
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/reflect/Field;

    .line 120
    .local v14, "lazyFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/reflect/Field;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/reflect/Field;

    .line 122
    .local v18, "normalFields":[Ljava/lang/reflect/Field;
    sget-object v25, Lc8/wMf;->fieldsCache:Landroid/util/LruCache;

    monitor-enter v25

    .line 123
    :try_start_0
    sget-object v24, Lc8/wMf;->fieldsCache:Landroid/util/LruCache;

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    if-nez v24, :cond_6

    .line 124
    sget-object v24, Lc8/wMf;->fieldsCache:Landroid/util/LruCache;

    new-instance v26, Landroid/util/Pair;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v13, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_6
    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v9    # "fieldTraversal":Lc8/tMf;
    .end local v10    # "fields":[Ljava/lang/reflect/Field;
    .end local v11    # "i$":I
    .end local v15    # "lazyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v16    # "len$":I
    .end local v19    # "normalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v22    # "policy":Lcom/taobao/tao/purchase/inject/TraversalPolicy;
    :goto_4
    move-object v3, v14

    .restart local v3    # "arr$":[Ljava/lang/reflect/Field;
    array-length v0, v14

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v11, 0x0

    .restart local v11    # "i$":I
    :goto_5
    move/from16 v0, v16

    if-ge v11, v0, :cond_9

    aget-object v7, v3, v11

    .line 134
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    :try_start_1
    const-class v24, Lc8/sMf;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lc8/sMf;

    .line 135
    .restart local v6    # "externalInject":Lc8/sMf;
    invoke-interface {v6}, Lc8/sMf;->value()Ljava/lang/String;

    move-result-object v17

    .line 136
    .local v17, "name":Ljava/lang/String;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 138
    invoke-static {v7}, Lc8/wMf;->getActualType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v2

    .line 139
    .local v2, "actualType":Ljava/lang/Class;
    new-instance v24, Lc8/xMf;

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lc8/xMf;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v7, v0, v1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .end local v2    # "actualType":Ljava/lang/Class;
    .end local v6    # "externalInject":Lc8/sMf;
    .end local v17    # "name":Ljava/lang/String;
    :goto_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 126
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "fieldTraversal":Lc8/tMf;
    .restart local v10    # "fields":[Ljava/lang/reflect/Field;
    .restart local v15    # "lazyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .restart local v19    # "normalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .restart local v22    # "policy":Lcom/taobao/tao/purchase/inject/TraversalPolicy;
    :catchall_0
    move-exception v24

    :try_start_2
    monitor-exit v25
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v24

    .line 128
    .end local v3    # "arr$":[Ljava/lang/reflect/Field;
    .end local v9    # "fieldTraversal":Lc8/tMf;
    .end local v10    # "fields":[Ljava/lang/reflect/Field;
    .end local v11    # "i$":I
    .end local v14    # "lazyFields":[Ljava/lang/reflect/Field;
    .end local v15    # "lazyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v16    # "len$":I
    .end local v18    # "normalFields":[Ljava/lang/reflect/Field;
    .end local v19    # "normalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/reflect/Field;>;"
    .end local v22    # "policy":Lcom/taobao/tao/purchase/inject/TraversalPolicy;
    :cond_7
    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, [Ljava/lang/reflect/Field;

    .line 129
    .restart local v14    # "lazyFields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [Ljava/lang/reflect/Field;

    .restart local v18    # "normalFields":[Ljava/lang/reflect/Field;
    goto :goto_4

    .line 141
    .restart local v3    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v6    # "externalInject":Lc8/sMf;
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    .restart local v11    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "name":Ljava/lang/String;
    :cond_8
    :try_start_3
    new-instance v24, Lc8/xMf;

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lc8/xMf;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v7, v0, v1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 143
    .end local v6    # "externalInject":Lc8/sMf;
    .end local v17    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 144
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v24, "InjectEngine"

    const-string/jumbo v25, "new Lazy instance exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 148
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    :cond_9
    move-object/from16 v3, v18

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v16, v0

    const/4 v11, 0x0

    :goto_7
    move/from16 v0, v16

    if-ge v11, v0, :cond_c

    aget-object v7, v3, v11

    .line 150
    .restart local v7    # "field":Ljava/lang/reflect/Field;
    const-class v24, Lc8/sMf;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Lc8/sMf;

    .line 151
    .restart local v6    # "externalInject":Lc8/sMf;
    invoke-virtual {v7}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    .line 153
    .restart local v8    # "fieldClass":Ljava/lang/Class;
    invoke-interface {v6}, Lc8/sMf;->value()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 154
    invoke-static {v8}, Lc8/wMf;->getInjectObjectByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    .line 159
    .local v20, "obj":Ljava/lang/Object;
    :goto_8
    if-eqz v20, :cond_a

    .line 161
    const/16 v24, 0x1

    :try_start_4
    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v7, v0, v1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1

    .line 148
    :cond_a
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 156
    .end local v20    # "obj":Ljava/lang/Object;
    :cond_b
    invoke-interface {v6}, Lc8/sMf;->value()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lc8/wMf;->getInjectObjectByName(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    .restart local v20    # "obj":Ljava/lang/Object;
    goto :goto_8

    .line 163
    :catch_1
    move-exception v5

    .line 164
    .local v5, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v24, "InjectEngine"

    const-string/jumbo v25, "set fields exception"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 168
    .end local v5    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "externalInject":Lc8/sMf;
    .end local v7    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "fieldClass":Ljava/lang/Class;
    .end local v20    # "obj":Ljava/lang/Object;
    :cond_c
    return-void
.end method

.method private static injectStatics(Ljava/lang/Class;)V
    .locals 9
    .param p0, "target"    # Ljava/lang/Class;

    .prologue
    .line 205
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v3, v0, v4

    .line 206
    .local v3, "field":Ljava/lang/reflect/Field;
    const-class v7, Lc8/sMf;

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/sMf;

    .line 207
    .local v2, "externalInject":Lc8/sMf;
    if-eqz v2, :cond_0

    .line 213
    :try_start_0
    invoke-interface {v2}, Lc8/sMf;->value()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 214
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lc8/wMf;->getInjectObjectByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 219
    .local v6, "obj":Ljava/lang/Object;
    :goto_1
    const/4 v7, 0x0

    invoke-static {v3, v7, v6}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    .end local v6    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 216
    :cond_1
    invoke-interface {v2}, Lc8/sMf;->value()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lc8/wMf;->getInjectObjectByName(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .restart local v6    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 220
    .end local v6    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "InjectEngine"

    const-string/jumbo v8, "set static field exception"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 224
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "externalInject":Lc8/sMf;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method public static varargs declared-synchronized join(Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 2
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "classes"    # [Ljava/lang/Class;

    .prologue
    .line 24
    const-class v1, Lc8/wMf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/wMf;->tokenSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lc8/wMf;->tokenSet:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {p1}, Lc8/wMf;->bind([Ljava/lang/Class;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit v1

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
