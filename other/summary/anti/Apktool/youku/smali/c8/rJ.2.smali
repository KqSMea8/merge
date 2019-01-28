.class public Lc8/rJ;
.super Ljava/lang/Object;
.source "DefaultAppMonitor.java"

# interfaces
.implements Lc8/sJ;


# static fields
.field private static dimensionFieldsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static field2Name:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mAppMonitorValid:Z

.field private static measureFieldsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static random:Ljava/util/Random;

.field private static registeredStatClassSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lc8/rJ;->mAppMonitorValid:Z

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/rJ;->dimensionFieldsCache:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/rJ;->measureFieldsCache:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lc8/rJ;->field2Name:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lc8/rJ;->random:Ljava/util/Random;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lc8/rJ;->registeredStatClassSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    const-string/jumbo v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    invoke-static {v0}, Lc8/rJ;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lc8/rJ;->mAppMonitorValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lc8/rJ;->mAppMonitorValid:Z

    goto :goto_0
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public commitAlarm(Lc8/yK;)V
    .locals 5
    .param p1, "obj"    # Lc8/yK;

    .prologue
    .line 128
    sget-boolean v0, Lc8/rJ;->mAppMonitorValid:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p1, Lc8/yK;->module:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lc8/yK;->modulePoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x1

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    const-string/jumbo v0, "awcn.DefaultAppMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commit alarm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_2
    iget-boolean v0, p1, Lc8/yK;->isSuccess:Z

    if-nez v0, :cond_3

    .line 139
    iget-object v0, p1, Lc8/yK;->module:Ljava/lang/String;

    iget-object v1, p1, Lc8/yK;->modulePoint:Ljava/lang/String;

    iget-object v2, p1, Lc8/yK;->arg:Ljava/lang/String;

    invoke-static {v2}, Lc8/cM;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lc8/yK;->errorCode:Ljava/lang/String;

    invoke-static {v3}, Lc8/cM;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lc8/yK;->errorMsg:Ljava/lang/String;

    invoke-static {v4}, Lc8/cM;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_3
    iget-object v0, p1, Lc8/yK;->module:Ljava/lang/String;

    iget-object v1, p1, Lc8/yK;->modulePoint:Ljava/lang/String;

    iget-object v2, p1, Lc8/yK;->arg:Ljava/lang/String;

    invoke-static {v2}, Lc8/cM;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public commitCount(Lc8/zK;)V
    .locals 6
    .param p1, "obj"    # Lc8/zK;

    .prologue
    .line 151
    sget-boolean v0, Lc8/rJ;->mAppMonitorValid:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p1, Lc8/zK;->module:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lc8/zK;->modulePoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x2

    invoke-static {v0}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    const-string/jumbo v0, "awcn.DefaultAppMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "commit count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :cond_2
    iget-object v0, p1, Lc8/zK;->module:Ljava/lang/String;

    iget-object v1, p1, Lc8/zK;->modulePoint:Ljava/lang/String;

    iget-object v2, p1, Lc8/zK;->arg:Ljava/lang/String;

    invoke-static {v2}, Lc8/cM;->stringNull2Empty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lc8/zK;->value:D

    invoke-static {v0, v1, v2, v4, v5}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method public commitStat(Lanet/channel/statist/StatObject;)V
    .locals 19
    .param p1, "obj"    # Lanet/channel/statist/StatObject;

    .prologue
    .line 64
    sget-boolean v13, Lc8/rJ;->mAppMonitorValid:Z

    if-eqz v13, :cond_0

    if-nez p1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 69
    .local v2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Lc8/CK;

    invoke-virtual {v2, v13}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lc8/CK;

    .line 70
    .local v9, "monitor":Lc8/CK;
    if-eqz v9, :cond_0

    .line 75
    sget-object v13, Lc8/rJ;->registeredStatClassSet:Ljava/util/Set;

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lc8/rJ;->registerStatClass(Ljava/lang/Class;)V

    .line 79
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lanet/channel/statist/StatObject;->beforeCommit()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 83
    invoke-interface {v9}, Lc8/CK;->sampleRate()I

    move-result v10

    .line 84
    .local v10, "sampleRate":I
    const/16 v13, 0x2710

    if-gt v10, v13, :cond_3

    if-gez v10, :cond_4

    .line 85
    :cond_3
    const/16 v10, 0x2710

    .line 87
    :cond_4
    const/16 v13, 0x2710

    if-eq v10, v13, :cond_5

    sget-object v13, Lc8/rJ;->random:Ljava/util/Random;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    if-ge v13, v10, :cond_0

    .line 92
    :cond_5
    :try_start_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v4

    .line 93
    .local v4, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v8

    .line 94
    .local v8, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    sget-object v13, Lc8/rJ;->dimensionFieldsCache:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 97
    .local v3, "dimensionFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v11, 0x0

    .line 98
    .local v11, "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v13, 0x1

    invoke-static {v13}, Lc8/KL;->isPrintLog(I)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 99
    new-instance v11, Ljava/util/HashMap;

    .end local v11    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 102
    .restart local v11    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_6
    if-eqz v3, :cond_a

    .line 103
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 104
    .local v6, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 105
    .local v12, "value":Ljava/lang/Object;
    sget-object v13, Lc8/rJ;->field2Name:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-nez v12, :cond_7

    const-string/jumbo v14, ""

    :goto_2
    invoke-virtual {v4, v13, v14}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 121
    .end local v3    # "dimensionFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v4    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v11    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v12    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 122
    .local v5, "e":Ljava/lang/Throwable;
    const-string/jumbo v13, "awcn.DefaultAppMonitor"

    const-string/jumbo v14, "commit monitor point failed"

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v13, v14, v15, v5, v0}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 105
    .end local v5    # "e":Ljava/lang/Throwable;
    .restart local v3    # "dimensionFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v4    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v8    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v11    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .restart local v12    # "value":Ljava/lang/Object;
    :cond_7
    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 107
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v12    # "value":Ljava/lang/Object;
    :cond_8
    sget-object v13, Lc8/rJ;->measureFieldsCache:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Field;

    .line 108
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    .line 109
    .local v12, "value":Ljava/lang/Double;
    sget-object v13, Lc8/rJ;->field2Name:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual {v8, v13, v14, v15}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 110
    if-eqz v11, :cond_9

    .line 111
    sget-object v13, Lc8/rJ;->field2Name:Ljava/util/Map;

    invoke-interface {v13, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 115
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "value":Ljava/lang/Double;
    :cond_a
    invoke-interface {v9}, Lc8/CK;->module()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lc8/CK;->monitorPoint()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4, v8}, Lc8/KVb;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 117
    const/4 v13, 0x1

    invoke-static {v13}, Lc8/KL;->isPrintLog(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 118
    const-string/jumbo v13, "awcn.DefaultAppMonitor"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "commit stat: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v9}, Lc8/CK;->monitorPoint()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string/jumbo v18, "\nDimensions"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-virtual {v4}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string/jumbo v18, "\nMeasures"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v13 .. v16}, Lc8/KL;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public register()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public register(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 60
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method declared-synchronized registerStatClass(Ljava/lang/Class;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    sget-boolean v14, Lc8/rJ;->mAppMonitorValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v14, :cond_1

    .line 221
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 172
    :cond_1
    :try_start_1
    sget-object v14, Lc8/rJ;->registeredStatClassSet:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 176
    const-class v14, Lc8/CK;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lc8/CK;

    .line 177
    .local v12, "monitor":Lc8/CK;
    if-eqz v12, :cond_0

    .line 181
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 182
    .local v7, "fields":[Ljava/lang/reflect/Field;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v3, "dimensionFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .local v10, "measureFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    .line 186
    .local v4, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v11

    .line 188
    .local v11, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v14, v7

    if-ge v8, v14, :cond_7

    .line 189
    aget-object v6, v7, v8

    .line 190
    .local v6, "field":Ljava/lang/reflect/Field;
    const-class v14, Lc8/AK;

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/AK;

    .line 191
    .local v2, "dimension":Lc8/AK;
    if-eqz v2, :cond_4

    .line 192
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 193
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-interface {v2}, Lc8/AK;->name()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 195
    .local v13, "name":Ljava/lang/String;
    :goto_2
    sget-object v14, Lc8/rJ;->field2Name:Ljava/util/Map;

    invoke-interface {v14, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-virtual {v4, v13}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 188
    .end local v13    # "name":Ljava/lang/String;
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 194
    :cond_3
    invoke-interface {v2}, Lc8/AK;->name()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 199
    :cond_4
    const-class v14, Lc8/BK;

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lc8/BK;

    .line 200
    .local v9, "measure":Lc8/BK;
    if-eqz v9, :cond_2

    .line 201
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 202
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-interface {v9}, Lc8/BK;->name()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    .line 204
    .restart local v13    # "name":Ljava/lang/String;
    :goto_4
    sget-object v14, Lc8/rJ;->field2Name:Ljava/util/Map;

    invoke-interface {v14, v6, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-interface {v9}, Lc8/BK;->max()D

    move-result-wide v14

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v14, v14, v16

    if-eqz v14, :cond_6

    .line 206
    new-instance v14, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-interface {v9}, Lc8/BK;->constantValue()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v9}, Lc8/BK;->min()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-interface {v9}, Lc8/BK;->max()D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v14, v13, v15, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v11, v14}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 218
    .end local v2    # "dimension":Lc8/AK;
    .end local v3    # "dimensionFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v4    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "fields":[Ljava/lang/reflect/Field;
    .end local v8    # "i":I
    .end local v9    # "measure":Lc8/BK;
    .end local v10    # "measureFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v11    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .end local v12    # "monitor":Lc8/CK;
    .end local v13    # "name":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 219
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v14, "awcn.DefaultAppMonitor"

    const-string/jumbo v15, "register fail"

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v0, v5, v1}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 167
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 203
    .restart local v2    # "dimension":Lc8/AK;
    .restart local v3    # "dimensionFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v4    # "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .restart local v6    # "field":Ljava/lang/reflect/Field;
    .restart local v7    # "fields":[Ljava/lang/reflect/Field;
    .restart local v8    # "i":I
    .restart local v9    # "measure":Lc8/BK;
    .restart local v10    # "measureFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v11    # "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .restart local v12    # "monitor":Lc8/CK;
    :cond_5
    :try_start_3
    invoke-interface {v9}, Lc8/BK;->name()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    .line 209
    .restart local v13    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {v11, v13}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto/16 :goto_3

    .line 213
    .end local v2    # "dimension":Lc8/AK;
    .end local v6    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "measure":Lc8/BK;
    .end local v13    # "name":Ljava/lang/String;
    :cond_7
    sget-object v14, Lc8/rJ;->dimensionFieldsCache:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v14, Lc8/rJ;->measureFieldsCache:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v14, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-interface {v12}, Lc8/CK;->module()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12}, Lc8/CK;->monitorPoint()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v11, v4}, Lc8/LVb;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 217
    sget-object v14, Lc8/rJ;->registeredStatClassSet:Ljava/util/Set;

    move-object/from16 v0, p1

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method
