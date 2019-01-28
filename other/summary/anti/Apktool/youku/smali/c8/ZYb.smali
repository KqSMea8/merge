.class public final Lc8/ZYb;
.super Ljava/lang/Object;
.source "InternalDebugger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/WYb;,
        Lc8/YYb;
    }
.end annotation


# static fields
.field private static final sMonitorWVPlugins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lc8/ZYb;->sMonitorWVPlugins:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lc8/ZYb;->sMonitorWVPlugins:Ljava/util/Set;

    return-object v0
.end method

.method private static findFieldInClass(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "fieldClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 104
    .local v2, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 105
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, p0, :cond_0

    .line 106
    return-object v1

    .line 104
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 108
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :cond_1
    new-instance v5, Ljava/lang/NoSuchFieldException;

    const-string/jumbo v6, "Can\'t find %s in class %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 95
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v2, v0

    if-eqz v2, :cond_1

    .line 96
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/reflect/Field;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    return-object v2
.end method

.method public static getCurrentStatus()Ljava/util/Map;
    .locals 4
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/poplayer/utils/Monitor$Info;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    .local v0, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/poplayer/utils/Monitor$Info;>;"
    invoke-static {}, Lcom/alibaba/poplayer/PopLayer;->getReference()Lcom/alibaba/poplayer/PopLayer;

    move-result-object v1

    .line 55
    .local v1, "popLayer":Lcom/alibaba/poplayer/PopLayer;
    if-nez v1, :cond_0

    .line 59
    :goto_0
    return-object v0

    .line 57
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v2, "vistedNodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lc8/ZYb;->getMonitorInfos(Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getMonitorInfos(Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .param p0, "node"    # Ljava/lang/Object;
    .param p3, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/poplayer/utils/Monitor$Info;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "infos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/poplayer/utils/Monitor$Info;>;"
    .local p2, "visitedNodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 88
    :cond_0
    return-void

    .line 66
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-static {v14}, Lc8/ZYb;->getAllFields(Ljava/lang/Class;)[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 69
    .local v7, "fields":[Ljava/lang/reflect/Field;
    move-object v2, v7

    .local v2, "arr$":[Ljava/lang/reflect/Field;
    array-length v10, v7

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v4, v2, v8

    .line 70
    .local v4, "field":Ljava/lang/reflect/Field;
    const-class v14, Lcom/alibaba/poplayer/utils/Monitor$TargetField;

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lcom/alibaba/poplayer/utils/Monitor$TargetField;

    .line 71
    .local v12, "targetField":Lcom/alibaba/poplayer/utils/Monitor$TargetField;
    if-nez v12, :cond_2

    .line 69
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-interface {v12}, Lcom/alibaba/poplayer/utils/Monitor$TargetField;->name()Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "fieldName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v14

    invoke-static {v14}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 77
    .local v6, "fieldValue":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 78
    .local v3, "clazzField":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v14, Lcom/alibaba/poplayer/utils/Monitor$TargetClass;

    invoke-virtual {v3, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/poplayer/utils/Monitor$TargetClass;

    .line 79
    .local v11, "targetClass":Lcom/alibaba/poplayer/utils/Monitor$TargetClass;
    if-nez v11, :cond_5

    .line 80
    new-instance v9, Lcom/alibaba/poplayer/utils/Monitor$Info;

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v5, v6}, Lcom/alibaba/poplayer/utils/Monitor$Info;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .local v9, "info":Lcom/alibaba/poplayer/utils/Monitor$Info;
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .end local v5    # "fieldName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 76
    .end local v3    # "clazzField":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "fieldValue":Ljava/lang/Object;
    .end local v9    # "info":Lcom/alibaba/poplayer/utils/Monitor$Info;
    .end local v11    # "targetClass":Lcom/alibaba/poplayer/utils/Monitor$TargetClass;
    .restart local v5    # "fieldName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 81
    .restart local v3    # "clazzField":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v6    # "fieldValue":Ljava/lang/Object;
    .restart local v9    # "info":Lcom/alibaba/poplayer/utils/Monitor$Info;
    .restart local v11    # "targetClass":Lcom/alibaba/poplayer/utils/Monitor$TargetClass;
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 84
    .end local v9    # "info":Lcom/alibaba/poplayer/utils/Monitor$Info;
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v12}, Lcom/alibaba/poplayer/utils/Monitor$TargetField;->prefix()Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, "updatePrefix":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v6, v0, v1, v13}, Lc8/ZYb;->getMonitorInfos(Ljava/lang/Object;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 84
    .end local v13    # "updatePrefix":Ljava/lang/String;
    :cond_6
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v12}, Lcom/alibaba/poplayer/utils/Monitor$TargetField;->prefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4
.end method

.method public static varargs monitorWVPlugin([Ljava/lang/String;)V
    .locals 11
    .param p0, "wvPlugins"    # [Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 37
    sget-object v8, Lc8/ZYb;->sMonitorWVPlugins:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->clear()V

    .line 38
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, p0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 39
    .local v7, "wvPlugin":Ljava/lang/String;
    sget-object v8, Lc8/ZYb;->sMonitorWVPlugins:Ljava/util/Set;

    invoke-interface {v8, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    .end local v7    # "wvPlugin":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v1

    .line 42
    .local v1, "core":Landroid/os/Handler$Callback;
    const-class v8, Landroid/os/Handler;

    const-class v9, Lc8/fE;

    invoke-static {v8, v9}, Lc8/ZYb;->findFieldInClass(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 43
    .local v3, "fHandler":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 44
    invoke-static {}, Lc8/fE;->getInstance()Lc8/fE;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    .line 45
    .local v6, "mHandler":Landroid/os/Handler;
    const-class v8, Landroid/os/Handler;

    const-string/jumbo v9, "mCallback"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 46
    .local v2, "fCallback":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 47
    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lc8/YYb;

    if-eqz v8, :cond_1

    .line 50
    :goto_1
    return-void

    .line 49
    :cond_1
    new-instance v8, Lc8/YYb;

    const/4 v9, 0x0

    invoke-direct {v8, v1, v9}, Lc8/YYb;-><init>(Landroid/os/Handler$Callback;Lc8/WYb;)V

    invoke-static {v2, v6, v8}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method
