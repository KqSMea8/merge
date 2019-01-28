.class public Lc8/RIb;
.super Ljava/lang/Object;
.source "JavaBeanDeserializer.java"

# interfaces
.implements Lc8/hJb;


# instance fields
.field private final alterNameFieldDeserializers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/fJb;",
            ">;"
        }
    .end annotation
.end field

.field public final beanInfo:Lc8/SIb;

.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final fieldDeserializers:[Lc8/fJb;

.field private final sortedFieldDeserializers:[Lc8/fJb;


# direct methods
.method public constructor <init>(Lc8/XIb;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
    .locals 8
    .param p1, "config"    # Lc8/XIb;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XIb;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 34
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    const/4 v3, 0x0

    iget-object v7, p1, Lc8/XIb;->propertyNamingStrategy:Lcom/alibaba/fastjson/PropertyNamingStrategy;

    move-object v0, p2

    move-object v2, p3

    move v5, v4

    move v6, v4

    invoke-static/range {v0 .. v7}, Lc8/SIb;->build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lc8/SIb;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/RIb;-><init>(Lc8/XIb;Ljava/lang/Class;Ljava/lang/reflect/Type;Lc8/SIb;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lc8/XIb;Ljava/lang/Class;Ljava/lang/reflect/Type;Lc8/SIb;)V
    .locals 9
    .param p1, "config"    # Lc8/XIb;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .param p4, "beanInfo"    # Lc8/SIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XIb;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lc8/SIb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p2, p0, Lc8/RIb;->clazz:Ljava/lang/Class;

    .line 39
    iput-object p4, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    iget-object v6, p4, Lc8/SIb;->sortedFields:[Lc8/NJb;

    array-length v6, v6

    new-array v6, v6, [Lc8/fJb;

    iput-object v6, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    .line 43
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v6, p4, Lc8/SIb;->sortedFields:[Lc8/NJb;

    array-length v5, v6

    .local v5, "size":I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 44
    iget-object v6, p4, Lc8/SIb;->sortedFields:[Lc8/NJb;

    aget-object v2, v6, v3

    .line 45
    .local v2, "fieldInfo":Lc8/NJb;
    invoke-virtual {p1, p1, p2, v2}, Lc8/XIb;->createFieldDeserializer(Lc8/XIb;Ljava/lang/Class;Lc8/NJb;)Lc8/fJb;

    move-result-object v1

    .line 47
    .local v1, "fieldDeserializer":Lc8/fJb;
    iget-object v6, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    aput-object v1, v6, v3

    .line 49
    iget-object v7, v2, Lc8/NJb;->alternateNames:[Ljava/lang/String;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_1

    aget-object v4, v7, v6

    .line 50
    .local v4, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .restart local v0    # "alterNameFieldDeserializers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;>;"
    :cond_0
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 43
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "fieldDeserializer":Lc8/fJb;
    .end local v2    # "fieldInfo":Lc8/NJb;
    :cond_2
    iput-object v0, p0, Lc8/RIb;->alterNameFieldDeserializers:Ljava/util/Map;

    .line 58
    iget-object v6, p4, Lc8/SIb;->fields:[Lc8/NJb;

    array-length v6, v6

    new-array v6, v6, [Lc8/fJb;

    iput-object v6, p0, Lc8/RIb;->fieldDeserializers:[Lc8/fJb;

    .line 59
    const/4 v3, 0x0

    iget-object v6, p4, Lc8/SIb;->fields:[Lc8/NJb;

    array-length v5, v6

    :goto_2
    if-ge v3, v5, :cond_3

    .line 60
    iget-object v6, p4, Lc8/SIb;->fields:[Lc8/NJb;

    aget-object v2, v6, v3

    .line 61
    .restart local v2    # "fieldInfo":Lc8/NJb;
    iget-object v6, v2, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lc8/RIb;->getFieldDeserializer(Ljava/lang/String;)Lc8/fJb;

    move-result-object v1

    .line 62
    .restart local v1    # "fieldDeserializer":Lc8/fJb;
    iget-object v6, p0, Lc8/RIb;->fieldDeserializers:[Lc8/fJb;

    aput-object v1, v6, v3

    .line 59
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 64
    .end local v1    # "fieldDeserializer":Lc8/fJb;
    .end local v2    # "fieldInfo":Lc8/NJb;
    :cond_3
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method private deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 57
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 340
    const-class v4, Lc8/AIb;

    move-object/from16 v0, p2

    if-eq v0, v4, :cond_0

    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 341
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v54

    .line 838
    :goto_0
    return-object v54

    .line 344
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v38, v0

    .line 346
    .local v38, "lexer":Lc8/PIb;
    move-object/from16 v0, v38

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v50, v0

    .line 347
    .local v50, "token":I
    const/16 v4, 0x8

    move/from16 v0, v50

    if-ne v0, v4, :cond_2

    .line 348
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextToken(I)V

    .line 349
    const/16 v54, 0x0

    goto :goto_0

    .line 352
    :cond_2
    move-object/from16 v0, v38

    iget-boolean v14, v0, Lc8/PIb;->disableCircularReferenceDetect:Z

    .line 354
    .local v14, "disableCircularReferenceDetect":Z
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/NIb;->contex:Lc8/WIb;

    .line 355
    .local v12, "context":Lc8/WIb;
    if-eqz p4, :cond_3

    if-eqz v12, :cond_3

    .line 356
    iget-object v12, v12, Lc8/WIb;->parent:Lc8/WIb;

    .line 358
    :cond_3
    const/4 v11, 0x0

    .line 361
    .local v11, "childContext":Lc8/WIb;
    const/4 v9, 0x0

    .line 363
    .local v9, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/16 v4, 0xd

    move/from16 v0, v50

    if-ne v0, v4, :cond_6

    .line 364
    const/16 v4, 0x10

    :try_start_0
    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextToken(I)V

    .line 365
    if-nez p4, :cond_4

    .line 366
    invoke-virtual/range {p0 .. p2}, Lc8/RIb;->createInstance(Lc8/NIb;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p4

    .line 840
    :cond_4
    if-eqz v11, :cond_5

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    move-object/from16 v54, p4

    .line 368
    goto :goto_0

    .line 371
    :cond_6
    const/16 v4, 0xe

    move/from16 v0, v50

    if-ne v0, v4, :cond_a

    .line 372
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-boolean v4, v4, Lc8/SIb;->supportBeanToArray:Z

    if-nez v4, :cond_7

    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->features:I

    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    iget v5, v5, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_9

    :cond_7
    const/16 v36, 0x1

    .line 374
    .local v36, "isSupportArrayToBean":Z
    :goto_1
    if-eqz v36, :cond_a

    .line 375
    invoke-direct/range {p0 .. p4}, Lc8/RIb;->deserialzeArrayMapping(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v54

    .line 840
    if-eqz v11, :cond_8

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto :goto_0

    .line 372
    .end local v36    # "isSupportArrayToBean":Z
    :cond_9
    const/16 v36, 0x0

    goto :goto_1

    .line 379
    :cond_a
    const/16 v4, 0xc

    move/from16 v0, v50

    if-eq v0, v4, :cond_11

    const/16 v4, 0x10

    move/from16 v0, v50

    if-eq v0, v4, :cond_11

    .line 380
    :try_start_2
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->isBlankInput()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_c

    .line 381
    const/16 v54, 0x0

    .line 840
    if-eqz v11, :cond_b

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto/16 :goto_0

    .line 384
    :cond_c
    const/4 v4, 0x4

    move/from16 v0, v50

    if-ne v0, v4, :cond_e

    .line 385
    :try_start_3
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v49

    .line 386
    .local v49, "strVal":Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_e

    .line 387
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    const/16 v54, 0x0

    .line 840
    if-eqz v11, :cond_d

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto/16 :goto_0

    .line 392
    .end local v49    # "strVal":Ljava/lang/String;
    :cond_e
    :try_start_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "syntax error, expect {, actual "

    .line 393
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 394
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    .line 396
    .local v10, "buf":Ljava/lang/StringBuffer;
    move-object/from16 v0, p3

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 397
    const-string/jumbo v4, ", fieldName "

    .line 398
    invoke-virtual {v10, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 399
    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 402
    :cond_f
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 840
    .end local v10    # "buf":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v11, :cond_10

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_10
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    throw v4

    .line 405
    :cond_11
    :try_start_5
    move-object/from16 v0, p1

    iget v4, v0, Lc8/NIb;->resolveStatus:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_12

    .line 406
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Lc8/NIb;->resolveStatus:I

    .line 409
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v0, v4, Lc8/SIb;->typeKey:Ljava/lang/String;

    move-object/from16 v51, v0

    .line 410
    .local v51, "typeKey":Ljava/lang/String;
    const-wide/16 v42, 0x0

    .line 412
    .local v42, "matchFieldHash":J
    const/16 v24, 0x0

    .local v24, "fieldIndex":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    array-length v0, v4

    move/from16 v48, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .local v48, "size":I
    move-object/from16 v34, v9

    .line 413
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v34, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_13
    :goto_3
    const/4 v6, 0x0

    .line 414
    .local v6, "key":Ljava/lang/String;
    const/16 v21, 0x0

    .line 415
    .local v21, "fieldDeser":Lc8/fJb;
    const/16 v25, 0x0

    .line 416
    .local v25, "fieldInfo":Lc8/NJb;
    const/16 v20, 0x0

    .line 418
    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-wide/16 v4, 0x0

    cmp-long v4, v42, v4

    if-eqz v4, :cond_15

    .line 419
    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Lc8/RIb;->getFieldDeserializerByHash(J)Lc8/fJb;

    move-result-object v21

    .line 420
    if-eqz v21, :cond_14

    .line 421
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/fJb;->fieldInfo:Lc8/NJb;

    move-object/from16 v25, v0

    .line 422
    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 424
    :cond_14
    const-wide/16 v42, 0x0

    .line 427
    :cond_15
    if-nez v21, :cond_16

    .line 428
    move/from16 v0, v24

    move/from16 v1, v48

    if-ge v0, v1, :cond_1b

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    aget-object v21, v4, v24

    .line 430
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/fJb;->fieldInfo:Lc8/NJb;

    move-object/from16 v25, v0

    .line 431
    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 432
    add-int/lit8 v24, v24, 0x1

    .line 438
    :cond_16
    :goto_4
    const/16 v40, 0x0

    .line 439
    .local v40, "matchField":Z
    const/16 v56, 0x0

    .line 441
    .local v56, "valueParsed":Z
    const/16 v27, 0x0

    .line 442
    .local v27, "fieldValue":Ljava/lang/Object;
    const/16 v31, 0x0

    .line 443
    .local v31, "fieldValueInt":I
    const-wide/16 v32, 0x0

    .line 444
    .local v32, "fieldValueLong":J
    const/16 v30, 0x0

    .line 445
    .local v30, "fieldValueFloat":F
    const-wide/16 v28, 0x0

    .line 446
    .local v28, "fieldValueDouble":D
    if-eqz v21, :cond_18

    .line 447
    move-object/from16 v0, v25

    iget-wide v0, v0, Lc8/NJb;->nameHashCode:J

    move-wide/from16 v22, v0

    .line 448
    .local v22, "fieldHashCode":J
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_17

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_1d

    .line 450
    :cond_17
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldInt(J)I

    move-result v31

    .line 452
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_1c

    .line 453
    const/16 v40, 0x1

    .line 454
    const/16 v56, 0x1

    .line 582
    .end local v22    # "fieldHashCode":J
    .end local v27    # "fieldValue":Ljava/lang/Object;
    :cond_18
    :goto_5
    if-nez v40, :cond_4e

    .line 583
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NIb;->symbolTable:Lc8/aJb;

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->scanSymbol(Lc8/aJb;)Ljava/lang/String;

    move-result-object v6

    .line 585
    if-nez v6, :cond_39

    .line 586
    move-object/from16 v0, v38

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v50, v0

    .line 587
    const/16 v4, 0xd

    move/from16 v0, v50

    if-ne v0, v4, :cond_38

    .line 588
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextToken(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v9, v34

    .line 786
    .end local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_6
    if-nez p4, :cond_77

    .line 787
    if-nez v9, :cond_6d

    .line 788
    :try_start_7
    invoke-virtual/range {p0 .. p2}, Lc8/RIb;->createInstance(Lc8/NIb;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 789
    if-nez v11, :cond_19

    .line 790
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 840
    :cond_19
    if-eqz v11, :cond_1a

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_1a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    move-object/from16 v54, p4

    .line 792
    goto/16 :goto_0

    .line 434
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v28    # "fieldValueDouble":D
    .end local v30    # "fieldValueFloat":F
    .end local v31    # "fieldValueInt":I
    .end local v32    # "fieldValueLong":J
    .end local v40    # "matchField":Z
    .end local v56    # "valueParsed":Z
    .restart local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 455
    .restart local v22    # "fieldHashCode":J
    .restart local v27    # "fieldValue":Ljava/lang/Object;
    .restart local v28    # "fieldValueDouble":D
    .restart local v30    # "fieldValueFloat":F
    .restart local v31    # "fieldValueInt":I
    .restart local v32    # "fieldValueLong":J
    .restart local v40    # "matchField":Z
    .restart local v56    # "valueParsed":Z
    :cond_1c
    :try_start_8
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 456
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 457
    goto/16 :goto_3

    .line 459
    :cond_1d
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_1e

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_20

    .line 461
    :cond_1e
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldLong(J)J

    move-result-wide v32

    .line 463
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_1f

    .line 464
    const/16 v40, 0x1

    .line 465
    const/16 v56, 0x1

    goto :goto_5

    .line 466
    :cond_1f
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 467
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 468
    goto/16 :goto_3

    .line 470
    :cond_20
    const-class v4, Ljava/lang/String;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_22

    .line 471
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldString(J)Ljava/lang/String;

    move-result-object v27

    .line 473
    .local v27, "fieldValue":Ljava/lang/String;
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_21

    .line 474
    const/16 v40, 0x1

    .line 475
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 476
    :cond_21
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 477
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 478
    goto/16 :goto_3

    .line 480
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_22
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_23

    const-class v4, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_25

    .line 482
    :cond_23
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldBoolean(J)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v27

    .line 484
    .local v27, "fieldValue":Ljava/lang/Boolean;
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_24

    .line 485
    const/16 v40, 0x1

    .line 486
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 487
    :cond_24
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 488
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 489
    goto/16 :goto_3

    .line 491
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_25
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_26

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_28

    .line 492
    :cond_26
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldFloat(J)F

    move-result v30

    .line 494
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_27

    .line 495
    const/16 v40, 0x1

    .line 496
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 497
    :cond_27
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 498
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 499
    goto/16 :goto_3

    .line 501
    :cond_28
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_29

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_2b

    .line 502
    :cond_29
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldDouble(J)D

    move-result-wide v28

    .line 504
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_2a

    .line 505
    const/16 v40, 0x1

    .line 506
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 507
    :cond_2a
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 508
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 509
    goto/16 :goto_3

    .line 511
    :cond_2b
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lc8/NJb;->isEnum:Z

    if-eqz v4, :cond_2d

    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NIb;->config:Lc8/XIb;

    .line 512
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v4

    instance-of v4, v4, Lc8/OIb;

    if-eqz v4, :cond_2d

    .line 514
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldSymbol(J)J

    move-result-wide v16

    .line 516
    .local v16, "enumNameHashCode":J
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_2c

    .line 517
    const/16 v40, 0x1

    .line 518
    const/16 v56, 0x1

    .line 520
    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lc8/fJb;->getEnumByHashCode(J)Ljava/lang/Enum;

    move-result-object v27

    .local v27, "fieldValue":Ljava/lang/Enum;
    goto/16 :goto_5

    .line 521
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_2c
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 522
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 523
    goto/16 :goto_3

    .line 525
    .end local v16    # "enumNameHashCode":J
    :cond_2d
    const-class v4, [I

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_2f

    .line 526
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldIntArray(J)[I

    move-result-object v27

    .line 528
    .local v27, "fieldValue":[I
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_2e

    .line 529
    const/16 v40, 0x1

    .line 530
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 531
    :cond_2e
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 532
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 533
    goto/16 :goto_3

    .line 535
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_2f
    const-class v4, [F

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_31

    .line 536
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldFloatArray(J)[F

    move-result-object v27

    .line 538
    .local v27, "fieldValue":[F
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_30

    .line 539
    const/16 v40, 0x1

    .line 540
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 541
    :cond_30
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 542
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 543
    goto/16 :goto_3

    .line 545
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_31
    const-class v4, [D

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_33

    .line 546
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldDoubleArray(J)[D

    move-result-object v27

    .line 548
    .local v27, "fieldValue":[D
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_32

    .line 549
    const/16 v40, 0x1

    .line 550
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 551
    :cond_32
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 552
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 553
    goto/16 :goto_3

    .line 555
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_33
    const-class v4, [[F

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_35

    .line 556
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldFloatArray2(J)[[F

    move-result-object v27

    .line 558
    .local v27, "fieldValue":[[F
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_34

    .line 559
    const/16 v40, 0x1

    .line 560
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 561
    :cond_34
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 562
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 563
    goto/16 :goto_3

    .line 565
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_35
    const-class v4, [[D

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_37

    .line 566
    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/PIb;->scanFieldDoubleArray2(J)[[D

    move-result-object v27

    .line 568
    .local v27, "fieldValue":[[D
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    if-lez v4, :cond_36

    .line 569
    const/16 v40, 0x1

    .line 570
    const/16 v56, 0x1

    goto/16 :goto_5

    .line 571
    :cond_36
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_18

    .line 572
    move-object/from16 v0, v38

    iget-wide v0, v0, Lc8/PIb;->fieldHash:J

    move-wide/from16 v42, v0

    .line 573
    goto/16 :goto_3

    .line 575
    .local v27, "fieldValue":Ljava/lang/Object;
    :cond_37
    move-object/from16 v0, v25

    iget-wide v4, v0, Lc8/NJb;->nameHashCode:J

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Lc8/PIb;->matchField(J)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 576
    const/16 v40, 0x1

    goto/16 :goto_5

    .line 591
    .end local v22    # "fieldHashCode":J
    .end local v27    # "fieldValue":Ljava/lang/Object;
    :cond_38
    const/16 v4, 0x10

    move/from16 v0, v50

    if-eq v0, v4, :cond_13

    .line 596
    :cond_39
    const-string/jumbo v4, "$ref"

    if-ne v4, v6, :cond_43

    if-eqz v12, :cond_43

    .line 597
    const/16 v4, 0x3a

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 598
    move-object/from16 v0, v38

    iget v0, v0, Lc8/PIb;->token:I

    move/from16 v50, v0

    .line 599
    const/4 v4, 0x4

    move/from16 v0, v50

    if-ne v0, v4, :cond_40

    .line 600
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v46

    .line 601
    .local v46, "ref":Ljava/lang/String;
    const-string/jumbo v4, "@"

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 602
    iget-object v0, v12, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    .line 631
    :goto_7
    const/16 v4, 0xd

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextToken(I)V

    .line 632
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_41

    .line 633
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "illegal ref"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 840
    .end local v28    # "fieldValueDouble":D
    .end local v30    # "fieldValueFloat":F
    .end local v31    # "fieldValueInt":I
    .end local v32    # "fieldValueLong":J
    .end local v40    # "matchField":Z
    .end local v46    # "ref":Ljava/lang/String;
    .end local v56    # "valueParsed":Z
    :catchall_1
    move-exception v4

    move-object/from16 v9, v34

    .end local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 603
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v28    # "fieldValueDouble":D
    .restart local v30    # "fieldValueFloat":F
    .restart local v31    # "fieldValueInt":I
    .restart local v32    # "fieldValueLong":J
    .restart local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v40    # "matchField":Z
    .restart local v46    # "ref":Ljava/lang/String;
    .restart local v56    # "valueParsed":Z
    :cond_3a
    const-string/jumbo v4, ".."

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 604
    iget-object v0, v12, Lc8/WIb;->parent:Lc8/WIb;

    move-object/from16 v45, v0

    .line 605
    .local v45, "parentContext":Lc8/WIb;
    move-object/from16 v0, v45

    iget-object v4, v0, Lc8/WIb;->object:Ljava/lang/Object;

    if-eqz v4, :cond_3b

    .line 606
    move-object/from16 v0, v45

    iget-object v0, v0, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 608
    :cond_3b
    new-instance v4, Lc8/MIb;

    move-object/from16 v0, v45

    move-object/from16 v1, v46

    invoke-direct {v4, v0, v1}, Lc8/MIb;-><init>(Lc8/WIb;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lc8/NIb;->addResolveTask(Lc8/MIb;)V

    .line 609
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lc8/NIb;->resolveStatus:I

    goto :goto_7

    .line 611
    .end local v45    # "parentContext":Lc8/WIb;
    :cond_3c
    const-string/jumbo v4, "$"

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 612
    move-object/from16 v47, v12

    .line 613
    .local v47, "rootContext":Lc8/WIb;
    :goto_8
    move-object/from16 v0, v47

    iget-object v4, v0, Lc8/WIb;->parent:Lc8/WIb;

    if-eqz v4, :cond_3d

    .line 614
    move-object/from16 v0, v47

    iget-object v0, v0, Lc8/WIb;->parent:Lc8/WIb;

    move-object/from16 v47, v0

    goto :goto_8

    .line 617
    :cond_3d
    move-object/from16 v0, v47

    iget-object v4, v0, Lc8/WIb;->object:Ljava/lang/Object;

    if-eqz v4, :cond_3e

    .line 618
    move-object/from16 v0, v47

    iget-object v0, v0, Lc8/WIb;->object:Ljava/lang/Object;

    move-object/from16 p4, v0

    goto :goto_7

    .line 620
    :cond_3e
    new-instance v4, Lc8/MIb;

    move-object/from16 v0, v47

    move-object/from16 v1, v46

    invoke-direct {v4, v0, v1}, Lc8/MIb;-><init>(Lc8/WIb;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lc8/NIb;->addResolveTask(Lc8/MIb;)V

    .line 621
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lc8/NIb;->resolveStatus:I

    goto/16 :goto_7

    .line 624
    .end local v47    # "rootContext":Lc8/WIb;
    :cond_3f
    new-instance v4, Lc8/MIb;

    move-object/from16 v0, v46

    invoke-direct {v4, v12, v0}, Lc8/MIb;-><init>(Lc8/WIb;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lc8/NIb;->addResolveTask(Lc8/MIb;)V

    .line 625
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Lc8/NIb;->resolveStatus:I

    goto/16 :goto_7

    .line 628
    .end local v46    # "ref":Ljava/lang/String;
    :cond_40
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v50 .. v50}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 635
    .restart local v46    # "ref":Ljava/lang/String;
    :cond_41
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextToken(I)V

    .line 637
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 840
    if-eqz v11, :cond_42

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_42
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    move-object/from16 v54, p4

    .line 639
    goto/16 :goto_0

    .line 643
    .end local v46    # "ref":Ljava/lang/String;
    :cond_43
    if-eqz v51, :cond_44

    :try_start_9
    move-object/from16 v0, v51

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_45

    :cond_44
    const-string/jumbo v4, "@type"

    if-ne v4, v6, :cond_4e

    .line 645
    :cond_45
    const/16 v4, 0x3a

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 646
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4d

    .line 647
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v53

    .line 648
    .local v53, "typeName":Ljava/lang/String;
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextToken(I)V

    .line 650
    move-object/from16 v0, p2

    instance-of v4, v0, Ljava/lang/Class;

    if-eqz v4, :cond_46

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Class;

    move-object v4, v0

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v53

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 651
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_13

    .line 652
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->nextToken()V

    move-object/from16 v9, v34

    .line 653
    .end local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_6

    .line 658
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_46
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v4, v5, v1}, Lc8/RIb;->getSeeAlso(Lc8/XIb;Lc8/SIb;Ljava/lang/String;)Lc8/RIb;

    move-result-object v13

    .line 659
    .local v13, "deserizer":Lc8/hJb;
    const/16 v55, 0x0

    .line 660
    .local v55, "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v13, :cond_48

    .line 661
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NIb;->config:Lc8/XIb;

    iget-object v4, v4, Lc8/XIb;->defaultClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v0, v53

    invoke-static {v0, v4}, Lc8/RJb;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v55

    .line 663
    invoke-static/range {p2 .. p2}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v19

    .line 664
    .local v19, "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v19, :cond_47

    if-eqz v55, :cond_4b

    .line 665
    move-object/from16 v0, v19

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 666
    :cond_47
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v0, v55

    invoke-virtual {v4, v0}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v13

    .line 673
    .end local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_48
    instance-of v4, v13, Lc8/RIb;

    if-eqz v4, :cond_4c

    .line 674
    move-object v0, v13

    check-cast v0, Lc8/RIb;

    move-object/from16 v37, v0

    .line 675
    .local v37, "javaBeanDeserializer":Lc8/RIb;
    const/4 v4, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p1

    move-object/from16 v2, v55

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/RIb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    .line 676
    .local v54, "typedObject":Ljava/lang/Object;
    if-eqz v51, :cond_49

    .line 677
    move-object/from16 v0, v37

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lc8/RIb;->getFieldDeserializer(Ljava/lang/String;)Lc8/fJb;

    move-result-object v52

    .line 678
    .local v52, "typeKeyFieldDeser":Lc8/fJb;
    move-object/from16 v0, v52

    move-object/from16 v1, v54

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 840
    .end local v37    # "javaBeanDeserializer":Lc8/RIb;
    .end local v52    # "typeKeyFieldDeser":Lc8/fJb;
    :cond_49
    :goto_9
    if-eqz v11, :cond_4a

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_4a
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto/16 :goto_0

    .line 668
    .end local v54    # "typedObject":Ljava/lang/Object;
    .restart local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4b
    :try_start_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "type not match"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 681
    .end local v19    # "expectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4c
    move-object/from16 v0, p1

    move-object/from16 v1, v55

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    .restart local v54    # "typedObject":Ljava/lang/Object;
    goto :goto_9

    .line 685
    .end local v13    # "deserizer":Lc8/hJb;
    .end local v53    # "typeName":Ljava/lang/String;
    .end local v54    # "typedObject":Ljava/lang/Object;
    .end local v55    # "userType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 690
    :cond_4e
    if-nez p4, :cond_7c

    if-nez v34, :cond_7c

    .line 691
    invoke-virtual/range {p0 .. p2}, Lc8/RIb;->createInstance(Lc8/NIb;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 692
    if-nez p4, :cond_7b

    .line 693
    new-instance v9, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->fieldDeserializers:[Lc8/fJb;

    array-length v4, v4

    invoke-direct {v9, v4}, Ljava/util/HashMap;-><init>(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 695
    .end local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_a
    if-nez v14, :cond_4f

    .line 696
    :try_start_b
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    invoke-virtual {v0, v12, v1, v2}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    move-result-object v11

    .line 700
    :cond_4f
    :goto_b
    if-eqz v40, :cond_68

    .line 701
    if-nez v56, :cond_51

    .line 702
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3, v9}, Lc8/fJb;->parseField(Lc8/NIb;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 768
    :cond_50
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/16 v5, 0x10

    if-eq v4, v5, :cond_7a

    .line 772
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_6a

    .line 773
    const/16 v4, 0x10

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_6

    .line 704
    :cond_51
    if-nez p4, :cond_5a

    .line 705
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_52

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_54

    .line 706
    :cond_52
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    .line 714
    :cond_53
    :goto_c
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/NJb;->name:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :goto_d
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->matchStat:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_50

    goto/16 :goto_6

    .line 707
    :cond_54
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_55

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_56

    .line 708
    :cond_55
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .local v27, "fieldValue":Ljava/lang/Long;
    goto :goto_c

    .line 709
    .end local v27    # "fieldValue":Ljava/lang/Long;
    :cond_56
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_57

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_58

    .line 710
    :cond_57
    new-instance v27, Ljava/lang/Float;

    move-object/from16 v0, v27

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    .local v27, "fieldValue":Ljava/lang/Float;
    goto :goto_c

    .line 711
    .end local v27    # "fieldValue":Ljava/lang/Float;
    :cond_58
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_59

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_53

    .line 712
    :cond_59
    new-instance v27, Ljava/lang/Double;

    invoke-direct/range {v27 .. v29}, Ljava/lang/Double;-><init>(D)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .local v27, "fieldValue":Ljava/lang/Double;
    goto :goto_c

    .line 715
    .end local v27    # "fieldValue":Ljava/lang/Double;
    :cond_5a
    if-nez v27, :cond_67

    .line 717
    :try_start_c
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_5b

    const-class v4, Ljava/lang/Integer;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5d

    .line 718
    :cond_5b
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lc8/NJb;->fieldAccess:Z

    if-eqz v4, :cond_5c

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5c

    .line 719
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lc8/fJb;->setValue(Ljava/lang/Object;I)V
    :try_end_c
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_d

    .line 744
    :catch_0
    move-exception v18

    .line 745
    .local v18, "ex":Ljava/lang/IllegalAccessException;
    :try_start_d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set property error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v7, v0, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-direct {v4, v5, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 721
    .end local v18    # "ex":Ljava/lang/IllegalAccessException;
    :cond_5c
    :try_start_e
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 723
    :cond_5d
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_5e

    const-class v4, Ljava/lang/Long;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_60

    .line 724
    :cond_5e
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lc8/NJb;->fieldAccess:Z

    if-eqz v4, :cond_5f

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_5f

    .line 725
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-wide/from16 v2, v32

    invoke-virtual {v0, v1, v2, v3}, Lc8/fJb;->setValue(Ljava/lang/Object;J)V

    goto/16 :goto_d

    .line 727
    :cond_5f
    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 729
    :cond_60
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_61

    const-class v4, Ljava/lang/Float;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_63

    .line 730
    :cond_61
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lc8/NJb;->fieldAccess:Z

    if-eqz v4, :cond_62

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_62

    .line 731
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lc8/fJb;->setValue(Ljava/lang/Object;F)V

    goto/16 :goto_d

    .line 733
    :cond_62
    new-instance v4, Ljava/lang/Float;

    move/from16 v0, v30

    invoke-direct {v4, v0}, Ljava/lang/Float;-><init>(F)V

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 735
    :cond_63
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-eq v0, v4, :cond_64

    const-class v4, Ljava/lang/Double;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_66

    .line 736
    :cond_64
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lc8/NJb;->fieldAccess:Z

    if-eqz v4, :cond_65

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    if-ne v0, v4, :cond_65

    .line 737
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-wide/from16 v2, v28

    invoke-virtual {v0, v1, v2, v3}, Lc8/fJb;->setValue(Ljava/lang/Object;D)V

    goto/16 :goto_d

    .line 739
    :cond_65
    new-instance v4, Ljava/lang/Double;

    move-wide/from16 v0, v28

    invoke-direct {v4, v0, v1}, Ljava/lang/Double;-><init>(D)V

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    .line 742
    :cond_66
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_d

    .line 748
    :cond_67
    :try_start_f
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_68
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p2

    .line 755
    invoke-direct/range {v4 .. v9}, Lc8/RIb;->parseField(Lc8/NIb;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v39

    .line 756
    .local v39, "match":Z
    if-nez v39, :cond_69

    .line 757
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_7a

    .line 758
    invoke-virtual/range {v38 .. v38}, Lc8/PIb;->nextToken()V

    goto/16 :goto_6

    .line 763
    :cond_69
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_50

    .line 764
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v5, "syntax error, unexpect token \':\'"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 777
    .end local v39    # "match":Z
    :cond_6a
    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6b

    move-object/from16 v0, v38

    iget v4, v0, Lc8/PIb;->token:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6c

    .line 778
    :cond_6b
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "syntax error, unexpect token "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v38

    iget v7, v0, Lc8/PIb;->token:I

    invoke-static {v7}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6c
    move-object/from16 v34, v9

    .line 784
    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 795
    .end local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6d
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->fieldDeserializers:[Lc8/fJb;

    array-length v0, v4

    move/from16 v48, v0

    .line 796
    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    .line 797
    .local v44, "params":[Ljava/lang/Object;
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_e
    move/from16 v0, v35

    move/from16 v1, v48

    if-ge v0, v1, :cond_76

    .line 798
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->fieldDeserializers:[Lc8/fJb;

    aget-object v4, v4, v35

    iget-object v0, v4, Lc8/fJb;->fieldInfo:Lc8/NJb;

    move-object/from16 v25, v0

    .line 799
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/NJb;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v44, v35

    .line 800
    move-object/from16 v0, v25

    iget-object v4, v0, Lc8/NJb;->name:Ljava/lang/String;

    invoke-interface {v9, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .line 801
    .local v41, "param":Ljava/lang/Object;
    if-nez v41, :cond_6f

    .line 802
    move-object/from16 v0, v25

    iget-object v0, v0, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v26, v0

    .line 803
    .local v26, "fieldType":Ljava/lang/reflect/Type;
    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_70

    .line 804
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v41

    .line 818
    .end local v41    # "param":Ljava/lang/Object;
    :cond_6e
    :goto_f
    aput-object v41, v44, v35

    .line 797
    .end local v26    # "fieldType":Ljava/lang/reflect/Type;
    :cond_6f
    add-int/lit8 v35, v35, 0x1

    goto :goto_e

    .line 805
    .restart local v26    # "fieldType":Ljava/lang/reflect/Type;
    .restart local v41    # "param":Ljava/lang/Object;
    :cond_70
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_71

    .line 806
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v41

    .local v41, "param":Ljava/lang/Short;
    goto :goto_f

    .line 807
    .local v41, "param":Ljava/lang/Object;
    :cond_71
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_72

    .line 808
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    .local v41, "param":Ljava/lang/Integer;
    goto :goto_f

    .line 809
    .local v41, "param":Ljava/lang/Object;
    :cond_72
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_73

    .line 810
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    .local v41, "param":Ljava/lang/Long;
    goto :goto_f

    .line 811
    .local v41, "param":Ljava/lang/Object;
    :cond_73
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_74

    .line 812
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v41

    .local v41, "param":Ljava/lang/Float;
    goto :goto_f

    .line 813
    .local v41, "param":Ljava/lang/Object;
    :cond_74
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_75

    .line 814
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v41

    .local v41, "param":Ljava/lang/Double;
    goto :goto_f

    .line 815
    .local v41, "param":Ljava/lang/Object;
    :cond_75
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_6e

    .line 816
    sget-object v41, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v41, "param":Ljava/lang/Boolean;
    goto :goto_f

    .line 822
    .end local v26    # "fieldType":Ljava/lang/reflect/Type;
    .end local v41    # "param":Ljava/lang/Boolean;
    :cond_76
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v4, v4, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v4, :cond_79

    .line 824
    :try_start_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v4, v4, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object p4

    .line 840
    .end local v35    # "i":I
    .end local v44    # "params":[Ljava/lang/Object;
    :cond_77
    :goto_10
    if-eqz v11, :cond_78

    .line 841
    move-object/from16 v0, p4

    iput-object v0, v11, Lc8/WIb;->object:Ljava/lang/Object;

    .line 843
    :cond_78
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->setContext(Lc8/WIb;)V

    move-object/from16 v54, p4

    .line 838
    goto/16 :goto_0

    .line 825
    .restart local v35    # "i":I
    .restart local v44    # "params":[Ljava/lang/Object;
    :catch_1
    move-exception v15

    .line 826
    .local v15, "e":Ljava/lang/Exception;
    :try_start_11
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create instance error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v7, v7, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 827
    invoke-virtual {v7}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 829
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_79
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v4, v4, Lc8/SIb;->factoryMethod:Ljava/lang/reflect/Method;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v4, :cond_77

    .line 831
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v4, v4, Lc8/SIb;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-static {v4, v5, v0}, Lc8/RIb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object p4

    goto :goto_10

    .line 832
    :catch_2
    move-exception v15

    .line 833
    .restart local v15    # "e":Ljava/lang/Exception;
    :try_start_13
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create factory method error, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v7, v7, Lc8/SIb;->factoryMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .end local v15    # "e":Ljava/lang/Exception;
    .end local v35    # "i":I
    .end local v44    # "params":[Ljava/lang/Object;
    :cond_7a
    move-object/from16 v34, v9

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_3

    :cond_7b
    move-object/from16 v9, v34

    .end local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_a

    .end local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7c
    move-object/from16 v9, v34

    .end local v34    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v9    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    goto/16 :goto_b
.end method

.method private deserialzeArrayMapping(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 120
    move-object/from16 v0, p1

    iget-object v15, v0, Lc8/NIb;->lexer:Lc8/PIb;

    .line 121
    .local v15, "lexer":Lc8/PIb;
    invoke-virtual/range {p0 .. p2}, Lc8/RIb;->createInstance(Lc8/NIb;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p4

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v20, v0

    .line 124
    .local v20, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v12, v0, :cond_2f

    .line 125
    add-int/lit8 v23, v20, -0x1

    move/from16 v0, v23

    if-ne v12, v0, :cond_1

    const/16 v19, 0x5d

    .line 126
    .local v19, "seperator":C
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    move-object/from16 v23, v0

    aget-object v10, v23, v12

    .line 127
    .local v10, "fieldDeser":Lc8/fJb;
    iget-object v11, v10, Lc8/fJb;->fieldInfo:Lc8/NJb;

    .line 128
    .local v11, "fieldInfo":Lc8/NJb;
    iget-object v9, v11, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 130
    .local v9, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v23, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_7

    .line 131
    invoke-virtual {v15}, Lc8/PIb;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v14, v0

    .line 132
    .local v14, "intValue":I
    iget-boolean v0, v11, Lc8/NJb;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    .line 133
    iget-object v0, v11, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v14}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 138
    :goto_2
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 139
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 140
    .local v13, "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_3

    const/16 v23, 0x1a

    .line 142
    :goto_3
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 143
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    .line 124
    .end local v13    # "index":I
    .end local v14    # "intValue":I
    :cond_0
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 125
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lc8/fJb;
    .end local v11    # "fieldInfo":Lc8/NJb;
    .end local v19    # "seperator":C
    :cond_1
    const/16 v19, 0x2c

    goto :goto_1

    .line 135
    .restart local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v10    # "fieldDeser":Lc8/fJb;
    .restart local v11    # "fieldInfo":Lc8/NJb;
    .restart local v14    # "intValue":I
    .restart local v19    # "seperator":C
    :cond_2
    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 320
    .end local v14    # "intValue":I
    :catch_0
    move-exception v6

    .line 321
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "set "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v11, Lc8/NJb;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "error"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v23

    .line 140
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    .restart local v13    # "index":I
    .restart local v14    # "intValue":I
    :cond_3
    :try_start_1
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 142
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_3

    .line 144
    .end local v13    # "index":I
    :cond_4
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 145
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 146
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_5

    const/16 v23, 0x1a

    .line 148
    :goto_5
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 149
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto :goto_4

    .line 146
    :cond_5
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 148
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_5

    .line 151
    .end local v13    # "index":I
    :cond_6
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto/16 :goto_4

    .line 153
    .end local v14    # "intValue":I
    :cond_7
    const-class v23, Ljava/lang/String;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_10

    .line 155
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x22

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 156
    const/16 v23, 0x22

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Lc8/PIb;->scanStringValue(C)Ljava/lang/String;

    move-result-object v21

    .line 171
    .local v21, "strVal":Ljava/lang/String;
    :goto_6
    iget-boolean v0, v11, Lc8/NJb;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_b

    .line 172
    iget-object v0, v11, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    :goto_7
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 178
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 179
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_c

    const/16 v23, 0x1a

    .line 181
    :goto_8
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 182
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 157
    .end local v13    # "index":I
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_8
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x6e

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v24, "null"

    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v25, v0

    .line 158
    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 159
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x4

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->bp:I

    .line 161
    iget v13, v15, Lc8/PIb;->bp:I

    .line 162
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    const/16 v23, 0x1a

    .line 164
    :goto_9
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 166
    const/16 v21, 0x0

    .restart local v21    # "strVal":Ljava/lang/String;
    goto :goto_6

    .line 162
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_9
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 164
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_9

    .line 168
    .end local v13    # "index":I
    :cond_a
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "not match string. feild : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 174
    .restart local v21    # "strVal":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 179
    .restart local v13    # "index":I
    :cond_c
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 181
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto/16 :goto_8

    .line 183
    .end local v13    # "index":I
    :cond_d
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 184
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 185
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_e

    const/16 v23, 0x1a

    .line 187
    :goto_a
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 188
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 185
    :cond_e
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 187
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_a

    .line 190
    .end local v13    # "index":I
    :cond_f
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto/16 :goto_4

    .line 192
    .end local v21    # "strVal":Ljava/lang/String;
    :cond_10
    sget-object v23, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_16

    .line 193
    invoke-virtual {v15}, Lc8/PIb;->scanLongValue()J

    move-result-wide v16

    .line 194
    .local v16, "longValue":J
    iget-boolean v0, v11, Lc8/NJb;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 195
    iget-object v0, v11, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V

    .line 200
    :goto_b
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 201
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 202
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_12

    const/16 v23, 0x1a

    .line 204
    :goto_c
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 205
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 197
    .end local v13    # "index":I
    :cond_11
    new-instance v23, Ljava/lang/Long;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    .line 202
    .restart local v13    # "index":I
    :cond_12
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 204
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_c

    .line 206
    .end local v13    # "index":I
    :cond_13
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 207
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 208
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_14

    const/16 v23, 0x1a

    .line 210
    :goto_d
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 211
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 208
    :cond_14
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 210
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_d

    .line 213
    .end local v13    # "index":I
    :cond_15
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto/16 :goto_4

    .line 215
    .end local v16    # "longValue":J
    :cond_16
    sget-object v23, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_1c

    .line 216
    invoke-virtual {v15}, Lc8/PIb;->scanBoolean()Z

    move-result v4

    .line 217
    .local v4, "booleanValue":Z
    iget-boolean v0, v11, Lc8/NJb;->fieldAccess:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    .line 218
    iget-object v0, v11, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 223
    :goto_e
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_19

    .line 224
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 225
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_18

    const/16 v23, 0x1a

    .line 227
    :goto_f
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 228
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 220
    .end local v13    # "index":I
    :cond_17
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_e

    .line 225
    .restart local v13    # "index":I
    :cond_18
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 227
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_f

    .line 229
    .end local v13    # "index":I
    :cond_19
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    .line 230
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 231
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_1a

    const/16 v23, 0x1a

    .line 233
    :goto_10
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 234
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 231
    :cond_1a
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 233
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_10

    .line 236
    .end local v13    # "index":I
    :cond_1b
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto/16 :goto_4

    .line 238
    .end local v4    # "booleanValue":Z
    :cond_1c
    invoke-virtual {v9}, Ljava/lang/Class;->isEnum()Z

    move-result v23

    if-eqz v23, :cond_24

    .line 239
    iget-char v5, v15, Lc8/PIb;->ch:C

    .line 241
    .local v5, "ch":C
    const/16 v23, 0x22

    move/from16 v0, v23

    if-ne v5, v0, :cond_1e

    .line 242
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/NIb;->symbolTable:Lc8/aJb;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lc8/PIb;->scanSymbol(Lc8/aJb;)Ljava/lang/String;

    move-result-object v8

    .line 243
    .local v8, "enumName":Ljava/lang/String;
    if-nez v8, :cond_1d

    const/16 v22, 0x0

    .line 255
    .end local v8    # "enumName":Ljava/lang/String;
    .local v22, "value":Ljava/lang/Enum;
    :goto_11
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 257
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_21

    .line 258
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 259
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_20

    const/16 v23, 0x1a

    .line 261
    :goto_12
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 262
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 245
    .end local v13    # "index":I
    .end local v22    # "value":Ljava/lang/Enum;
    .restart local v8    # "enumName":Ljava/lang/String;
    :cond_1d
    invoke-static {v9, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v22

    goto :goto_11

    .line 246
    .end local v8    # "enumName":Ljava/lang/String;
    :cond_1e
    const/16 v23, 0x30

    move/from16 v0, v23

    if-lt v5, v0, :cond_1f

    const/16 v23, 0x39

    move/from16 v0, v23

    if-gt v5, v0, :cond_1f

    .line 247
    invoke-virtual {v15}, Lc8/PIb;->scanLongValue()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v18, v0

    .line 249
    .local v18, "ordinal":I
    move-object v0, v10

    check-cast v0, Lc8/LIb;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lc8/LIb;->getFieldValueDeserilizer(Lc8/XIb;)Lc8/hJb;

    move-result-object v7

    check-cast v7, Lc8/OIb;

    .line 250
    .local v7, "enumDeser":Lc8/OIb;
    iget-object v0, v7, Lc8/OIb;->values:[Ljava/lang/Enum;

    move-object/from16 v23, v0

    aget-object v22, v23, v18

    .line 251
    .restart local v22    # "value":Ljava/lang/Enum;
    goto :goto_11

    .line 252
    .end local v7    # "enumDeser":Lc8/OIb;
    .end local v18    # "ordinal":I
    .end local v22    # "value":Ljava/lang/Enum;
    :cond_1f
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "illegal enum."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 259
    .restart local v13    # "index":I
    .restart local v22    # "value":Ljava/lang/Enum;
    :cond_20
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 261
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_12

    .line 263
    .end local v13    # "index":I
    :cond_21
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_23

    .line 264
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 265
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_22

    const/16 v23, 0x1a

    .line 267
    :goto_13
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 268
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 265
    :cond_22
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 267
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_13

    .line 270
    .end local v13    # "index":I
    :cond_23
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto/16 :goto_4

    .line 272
    .end local v5    # "ch":C
    .end local v22    # "value":Ljava/lang/Enum;
    :cond_24
    const-class v23, Ljava/util/Date;

    move-object/from16 v0, v23

    if-ne v9, v0, :cond_29

    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x31

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_29

    .line 273
    invoke-virtual {v15}, Lc8/PIb;->scanLongValue()J

    move-result-wide v16

    .line 274
    .restart local v16    # "longValue":J
    new-instance v23, Ljava/util/Date;

    move-object/from16 v0, v23

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1}, Lc8/fJb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 276
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_26

    .line 277
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 278
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_25

    const/16 v23, 0x1a

    .line 280
    :goto_14
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 281
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 278
    :cond_25
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 280
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_14

    .line 282
    .end local v13    # "index":I
    :cond_26
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5d

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_28

    .line 283
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 284
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_27

    const/16 v23, 0x1a

    .line 286
    :goto_15
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 287
    const/16 v23, 0xf

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto/16 :goto_4

    .line 284
    :cond_27
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 286
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_15

    .line 289
    .end local v13    # "index":I
    :cond_28
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto/16 :goto_4

    .line 292
    .end local v16    # "longValue":J
    :cond_29
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x5b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2b

    .line 293
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 294
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2a

    const/16 v23, 0x1a

    .line 296
    :goto_16
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 297
    const/16 v23, 0xe

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    .line 308
    .end local v13    # "index":I
    :goto_17
    iget-object v0, v11, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v10, v0, v1, v2, v3}, Lc8/fJb;->parseField(Lc8/NIb;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 310
    const/16 v23, 0x5d

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_2e

    .line 311
    iget v0, v15, Lc8/PIb;->token:I

    move/from16 v23, v0

    const/16 v24, 0xf

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 312
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 294
    .restart local v13    # "index":I
    :cond_2a
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 296
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_16

    .line 298
    .end local v13    # "index":I
    :cond_2b
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x7b

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    .line 299
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 300
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_2c

    const/16 v23, 0x1a

    .line 302
    :goto_18
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 303
    const/16 v23, 0xc

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    goto :goto_17

    .line 300
    :cond_2c
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 302
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_18

    .line 305
    .end local v13    # "index":I
    :cond_2d
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto :goto_17

    .line 314
    :cond_2e
    const/16 v23, 0x2c

    move/from16 v0, v19

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    .line 315
    iget v0, v15, Lc8/PIb;->token:I

    move/from16 v23, v0

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 316
    new-instance v23, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v24, "syntax error"

    invoke-direct/range {v23 .. v24}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v23
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    .end local v9    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "fieldDeser":Lc8/fJb;
    .end local v11    # "fieldInfo":Lc8/NJb;
    .end local v19    # "seperator":C
    :cond_2f
    iget-char v0, v15, Lc8/PIb;->ch:C

    move/from16 v23, v0

    const/16 v24, 0x2c

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_31

    .line 326
    iget v0, v15, Lc8/PIb;->bp:I

    move/from16 v23, v0

    add-int/lit8 v13, v23, 0x1

    iput v13, v15, Lc8/PIb;->bp:I

    .line 327
    .restart local v13    # "index":I
    iget v0, v15, Lc8/PIb;->len:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-lt v13, v0, :cond_30

    const/16 v23, 0x1a

    .line 329
    :goto_19
    move/from16 v0, v23

    iput-char v0, v15, Lc8/PIb;->ch:C

    .line 330
    const/16 v23, 0x10

    move/from16 v0, v23

    iput v0, v15, Lc8/PIb;->token:I

    .line 335
    .end local v13    # "index":I
    :goto_1a
    return-object p4

    .line 327
    .restart local v13    # "index":I
    :cond_30
    iget-object v0, v15, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 329
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v23

    goto :goto_19

    .line 332
    .end local v13    # "index":I
    :cond_31
    invoke-virtual {v15}, Lc8/PIb;->nextToken()V

    goto :goto_1a
.end method

.method private parseField(Lc8/NIb;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 24
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .param p4, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/NIb;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 902
    .local p5, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/NIb;->lexer:Lc8/PIb;

    move-object/from16 v21, v0

    .line 904
    .local v21, "lexer":Lc8/PIb;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lc8/RIb;->getFieldDeserializer(Ljava/lang/String;)Lc8/fJb;

    move-result-object v17

    .line 906
    .local v17, "fieldDeserializer":Lc8/fJb;
    if-nez v17, :cond_0

    .line 907
    const-string/jumbo v6, "is"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v23

    .line 909
    .local v23, "startsWithIs":Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v16, v7, v6

    .line 910
    .local v16, "fieldDeser":Lc8/fJb;
    move-object/from16 v0, v16

    iget-object v5, v0, Lc8/fJb;->fieldInfo:Lc8/NJb;

    .line 911
    .local v5, "fieldInfo":Lc8/NJb;
    iget-object v15, v5, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 912
    .local v15, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, v5, Lc8/NJb;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 913
    .local v19, "fieldName":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 914
    move-object/from16 v17, v16

    .line 927
    .end local v5    # "fieldInfo":Lc8/NJb;
    .end local v15    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "fieldDeser":Lc8/fJb;
    .end local v19    # "fieldName":Ljava/lang/String;
    .end local v23    # "startsWithIs":Z
    :cond_0
    :goto_1
    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->SupportNonPublicField:Lcom/alibaba/fastjson/parser/Feature;

    iget v0, v6, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    move/from16 v22, v0

    .line 928
    .local v22, "mask":I
    if-nez v17, :cond_8

    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget v6, v6, Lc8/PIb;->features:I

    and-int v6, v6, v22

    if-nez v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget v6, v6, Lc8/SIb;->parserFeatures:I

    and-int v6, v6, v22

    if-eqz v6, :cond_8

    .line 931
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/RIb;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    if-nez v6, :cond_7

    .line 932
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v6, 0x1

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v8, 0x1

    invoke-direct {v14, v6, v7, v8}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 933
    .local v14, "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/RIb;->clazz:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v20

    .line 934
    .local v20, "fields":[Ljava/lang/reflect/Field;
    move-object/from16 v0, v20

    array-length v7, v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_6

    aget-object v10, v20, v6

    .line 935
    .local v10, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v19

    .line 936
    .restart local v19    # "fieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lc8/RIb;->getFieldDeserializer(Ljava/lang/String;)Lc8/fJb;

    move-result-object v8

    if-nez v8, :cond_2

    .line 939
    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v18

    .line 940
    .local v18, "fieldModifiers":I
    and-int/lit8 v8, v18, 0x10

    if-nez v8, :cond_2

    and-int/lit8 v8, v18, 0x8

    if-nez v8, :cond_2

    .line 943
    move-object/from16 v0, v19

    invoke-virtual {v14, v0, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .end local v18    # "fieldModifiers":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 918
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v14    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v20    # "fields":[Ljava/lang/reflect/Field;
    .end local v22    # "mask":I
    .restart local v5    # "fieldInfo":Lc8/NJb;
    .restart local v15    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v16    # "fieldDeser":Lc8/fJb;
    .restart local v23    # "startsWithIs":Z
    :cond_3
    if-eqz v23, :cond_5

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v15, v9, :cond_4

    const-class v9, Ljava/lang/Boolean;

    if-ne v15, v9, :cond_5

    :cond_4
    const/4 v9, 0x2

    .line 920
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 921
    move-object/from16 v17, v16

    .line 922
    goto :goto_1

    .line 909
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 945
    .end local v5    # "fieldInfo":Lc8/NJb;
    .end local v15    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "fieldDeser":Lc8/fJb;
    .end local v19    # "fieldName":Ljava/lang/String;
    .end local v23    # "startsWithIs":Z
    .restart local v14    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .restart local v20    # "fields":[Ljava/lang/reflect/Field;
    .restart local v22    # "mask":I
    :cond_6
    move-object/from16 v0, p0

    iput-object v14, v0, Lc8/RIb;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    .line 948
    .end local v14    # "extraFieldDeserializers":Ljava/util/concurrent/ConcurrentHashMap;
    .end local v20    # "fields":[Ljava/lang/reflect/Field;
    :cond_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/RIb;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 949
    .local v13, "deserOrField":Ljava/lang/Object;
    if-eqz v13, :cond_8

    .line 950
    instance-of v6, v13, Lc8/fJb;

    if-eqz v6, :cond_9

    move-object/from16 v17, v13

    .line 951
    check-cast v17, Lc8/fJb;

    .line 962
    .end local v13    # "deserOrField":Ljava/lang/Object;
    :cond_8
    :goto_3
    if-nez v17, :cond_a

    .line 963
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lc8/RIb;->parseExtra(Lc8/NIb;Ljava/lang/Object;Ljava/lang/String;)V

    .line 965
    const/4 v6, 0x0

    .line 972
    :goto_4
    return v6

    .restart local v13    # "deserOrField":Ljava/lang/Object;
    :cond_9
    move-object v10, v13

    .line 953
    check-cast v10, Ljava/lang/reflect/Field;

    .line 954
    .restart local v10    # "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 955
    new-instance v5, Lc8/NJb;

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p2

    invoke-direct/range {v5 .. v12}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 956
    .restart local v5    # "fieldInfo":Lc8/NJb;
    new-instance v17, Lc8/LIb;

    .end local v17    # "fieldDeserializer":Lc8/fJb;
    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/RIb;->clazz:Ljava/lang/Class;

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7, v5}, Lc8/LIb;-><init>(Lc8/XIb;Ljava/lang/Class;Lc8/NJb;)V

    .line 957
    .restart local v17    # "fieldDeserializer":Lc8/fJb;
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/RIb;->extraFieldDeserializers:Ljava/util/concurrent/ConcurrentMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 968
    .end local v5    # "fieldInfo":Lc8/NJb;
    .end local v10    # "field":Ljava/lang/reflect/Field;
    .end local v13    # "deserOrField":Ljava/lang/Object;
    :cond_a
    const/16 v6, 0x3a

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 970
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lc8/fJb;->parseField(Lc8/NIb;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V

    .line 972
    const/4 v6, 0x1

    goto :goto_4
.end method


# virtual methods
.method protected createInstance(Lc8/NIb;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 13
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 67
    instance-of v10, p2, Ljava/lang/Class;

    if-eqz v10, :cond_2

    .line 68
    iget-object v10, p0, Lc8/RIb;->clazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->isInterface()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v0, p2

    .line 69
    check-cast v0, Ljava/lang/Class;

    .line 70
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 71
    .local v4, "loader":Ljava/lang/ClassLoader;
    iget-object v10, p1, Lc8/NIb;->lexer:Lc8/PIb;

    iget v10, v10, Lc8/PIb;->features:I

    sget-object v11, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v11, v11, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_1

    move v6, v8

    .line 72
    .local v6, "ordered":Z
    :goto_0
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 73
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    new-array v8, v8, [Ljava/lang/Class;

    aput-object v0, v8, v9

    invoke-static {v4, v8, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v7

    .line 111
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    .end local v5    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "ordered":Z
    :cond_0
    :goto_1
    return-object v7

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    move v6, v9

    .line 71
    goto :goto_0

    .line 78
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "loader":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v8, v8, Lc8/SIb;->defaultConstructor:Ljava/lang/reflect/Constructor;

    if-nez v8, :cond_3

    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v8, v8, Lc8/SIb;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_0

    .line 82
    :cond_3
    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v8, v8, Lc8/SIb;->factoryMethod:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget v8, v8, Lc8/SIb;->defaultConstructorParameterSize:I

    if-gtz v8, :cond_0

    .line 88
    :cond_4
    :try_start_0
    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v1, v8, Lc8/SIb;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 89
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget v8, v8, Lc8/SIb;->defaultConstructorParameterSize:I

    if-nez v8, :cond_7

    .line 90
    if-eqz v1, :cond_6

    .line 91
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 99
    .local v5, "object":Ljava/lang/Object;
    :goto_2
    if-eqz p1, :cond_8

    iget-object v8, p1, Lc8/NIb;->lexer:Lc8/PIb;

    iget v8, v8, Lc8/PIb;->features:I

    sget-object v10, Lcom/alibaba/fastjson/parser/Feature;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson/parser/Feature;

    iget v10, v10, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v10

    if-eqz v8, :cond_8

    .line 101
    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v8, v8, Lc8/SIb;->fields:[Lc8/NJb;

    array-length v10, v8

    :goto_3
    if-ge v9, v10, :cond_8

    aget-object v3, v8, v9

    .line 102
    .local v3, "fieldInfo":Lc8/NJb;
    iget-object v11, v3, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_5

    .line 103
    const-string/jumbo v11, ""

    invoke-virtual {v3, v5, v11}, Lc8/NJb;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 93
    .end local v3    # "fieldInfo":Lc8/NJb;
    .end local v5    # "object":Ljava/lang/Object;
    :cond_6
    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v8, v8, Lc8/SIb;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lc8/RIb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .restart local v5    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 96
    .end local v5    # "object":Ljava/lang/Object;
    :cond_7
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p1, Lc8/NIb;->contex:Lc8/WIb;

    iget-object v11, v11, Lc8/WIb;->object:Ljava/lang/Object;

    aput-object v11, v8, v10

    invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .restart local v5    # "object":Ljava/lang/Object;
    goto :goto_2

    .line 107
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 108
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "create instance error, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/RIb;->clazz:Ljava/lang/Class;

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v5    # "object":Ljava/lang/Object;
    :cond_8
    move-object v7, v5

    .line 111
    goto/16 :goto_1
.end method

.method public createInstance(Ljava/util/Map;Lc8/XIb;)Ljava/lang/Object;
    .locals 17
    .param p2, "config"    # Lc8/XIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/XIb;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 1014
    .local v9, "object":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v14, v14, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-nez v14, :cond_2

    .line 1015
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/RIb;->clazz:Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lc8/RIb;->createInstance(Lc8/NIb;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    .line 1017
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1018
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/RIb;->getFieldDeserializer(Ljava/lang/String;)Lc8/fJb;

    move-result-object v4

    .line 1019
    .local v4, "fieldDeser":Lc8/fJb;
    if-eqz v4, :cond_0

    .line 1023
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 1024
    .local v13, "value":Ljava/lang/Object;
    iget-object v14, v4, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-object v8, v14, Lc8/NJb;->method:Ljava/lang/reflect/Method;

    .line 1025
    .local v8, "method":Ljava/lang/reflect/Method;
    if-eqz v8, :cond_1

    .line 1026
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v14

    const/16 v16, 0x0

    aget-object v10, v14, v16

    .line 1027
    .local v10, "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p2

    invoke-static {v13, v10, v0}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v13

    .line 1028
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v13, v14, v16

    invoke-static {v8, v9, v14}, Lc8/RIb;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1030
    .end local v10    # "paramType":Ljava/lang/reflect/Type;
    :cond_1
    iget-object v14, v4, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-object v3, v14, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    .line 1031
    .local v3, "field":Ljava/lang/reflect/Field;
    iget-object v14, v4, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-object v10, v14, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    .line 1032
    .restart local v10    # "paramType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p2

    invoke-static {v13, v10, v0}, Lc8/RJb;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lc8/XIb;)Ljava/lang/Object;

    move-result-object v13

    .line 1033
    invoke-static {v3, v9, v13}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1040
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fieldDeser":Lc8/fJb;
    .end local v8    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "paramType":Ljava/lang/reflect/Type;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v6, v14, Lc8/SIb;->fields:[Lc8/NJb;

    .line 1041
    .local v6, "fieldInfoList":[Lc8/NJb;
    array-length v12, v6

    .line 1042
    .local v12, "size":I
    new-array v11, v12, [Ljava/lang/Object;

    .line 1043
    .local v11, "params":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v12, :cond_3

    .line 1044
    aget-object v5, v6, v7

    .line 1045
    .local v5, "fieldInfo":Lc8/NJb;
    iget-object v14, v5, Lc8/NJb;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v11, v7

    .line 1043
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1048
    .end local v5    # "fieldInfo":Lc8/NJb;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v14, v14, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v14, :cond_4

    .line 1050
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-object v14, v14, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v14, v11}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1057
    .end local v6    # "fieldInfoList":[Lc8/NJb;
    .end local v7    # "i":I
    .end local v9    # "object":Ljava/lang/Object;
    .end local v11    # "params":[Ljava/lang/Object;
    .end local v12    # "size":I
    :cond_4
    return-object v9

    .line 1051
    .restart local v6    # "fieldInfoList":[Lc8/NJb;
    .restart local v7    # "i":I
    .restart local v9    # "object":Ljava/lang/Object;
    .restart local v11    # "params":[Ljava/lang/Object;
    .restart local v12    # "size":I
    :catch_0
    move-exception v1

    .line 1052
    .local v1, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "create instance error, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/RIb;->beanInfo:Lc8/SIb;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;

    move-object/from16 v16, v0

    .line 1053
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->toGenericString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14
.end method

.method public deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lc8/RIb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldDeserializer(Ljava/lang/String;)Lc8/fJb;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 860
    if-nez p1, :cond_1

    move-object v1, v7

    .line 897
    :cond_0
    :goto_0
    return-object v1

    .line 864
    :cond_1
    iget-object v8, p0, Lc8/RIb;->beanInfo:Lc8/SIb;

    iget-boolean v8, v8, Lc8/SIb;->ordered:Z

    if-eqz v8, :cond_3

    .line 865
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    array-length v8, v8

    if-ge v4, v8, :cond_2

    .line 866
    iget-object v8, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    aget-object v1, v8, v4

    .line 867
    .local v1, "fieldDeserializer":Lc8/fJb;
    iget-object v8, v1, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-object v8, v8, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 865
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "fieldDeserializer":Lc8/fJb;
    :cond_2
    move-object v1, v7

    .line 871
    goto :goto_0

    .line 874
    .end local v4    # "i":I
    :cond_3
    const/4 v5, 0x0

    .line 875
    .local v5, "low":I
    iget-object v8, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    .line 877
    .local v3, "high":I
    :goto_2
    if-gt v5, v3, :cond_6

    .line 878
    add-int v8, v5, v3

    ushr-int/lit8 v6, v8, 0x1

    .line 880
    .local v6, "mid":I
    iget-object v8, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    aget-object v8, v8, v6

    iget-object v8, v8, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-object v2, v8, Lc8/NJb;->name:Ljava/lang/String;

    .line 882
    .local v2, "fieldName":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 884
    .local v0, "cmp":I
    if-gez v0, :cond_4

    .line 885
    add-int/lit8 v5, v6, 0x1

    goto :goto_2

    .line 886
    :cond_4
    if-lez v0, :cond_5

    .line 887
    add-int/lit8 v3, v6, -0x1

    goto :goto_2

    .line 889
    :cond_5
    iget-object v7, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    aget-object v1, v7, v6

    goto :goto_0

    .line 893
    .end local v0    # "cmp":I
    .end local v2    # "fieldName":Ljava/lang/String;
    .end local v6    # "mid":I
    :cond_6
    iget-object v8, p0, Lc8/RIb;->alterNameFieldDeserializers:Ljava/util/Map;

    if-eqz v8, :cond_7

    .line 894
    iget-object v7, p0, Lc8/RIb;->alterNameFieldDeserializers:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/fJb;

    move-object v1, v7

    goto :goto_0

    :cond_7
    move-object v1, v7

    .line 897
    goto :goto_0
.end method

.method protected getFieldDeserializerByHash(J)Lc8/fJb;
    .locals 5
    .param p1, "fieldHash"    # J

    .prologue
    .line 848
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 849
    iget-object v2, p0, Lc8/RIb;->sortedFieldDeserializers:[Lc8/fJb;

    aget-object v0, v2, v1

    .line 850
    .local v0, "fieldDeserializer":Lc8/fJb;
    iget-object v2, v0, Lc8/fJb;->fieldInfo:Lc8/NJb;

    iget-wide v2, v2, Lc8/NJb;->nameHashCode:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 855
    .end local v0    # "fieldDeserializer":Lc8/fJb;
    :goto_1
    return-object v0

    .line 848
    .restart local v0    # "fieldDeserializer":Lc8/fJb;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 855
    .end local v0    # "fieldDeserializer":Lc8/fJb;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected getSeeAlso(Lc8/XIb;Lc8/SIb;Ljava/lang/String;)Lc8/RIb;
    .locals 10
    .param p1, "config"    # Lc8/XIb;
    .param p2, "beanInfo"    # Lc8/SIb;
    .param p3, "typeName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 1061
    iget-object v6, p2, Lc8/SIb;->jsonType:Lc8/KIb;

    if-nez v6, :cond_1

    move-object v2, v5

    .line 1082
    :cond_0
    :goto_0
    return-object v2

    .line 1065
    :cond_1
    iget-object v6, p2, Lc8/SIb;->jsonType:Lc8/KIb;

    invoke-interface {v6}, Lc8/KIb;->seeAlso()[Ljava/lang/Class;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v8, :cond_3

    aget-object v0, v7, v6

    .line 1066
    .local v0, "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v1

    .line 1067
    .local v1, "seeAlsoDeser":Lc8/hJb;
    instance-of v9, v1, Lc8/RIb;

    if-eqz v9, :cond_2

    move-object v2, v1

    .line 1068
    check-cast v2, Lc8/RIb;

    .line 1070
    .local v2, "seeAlsoJavaBeanDeser":Lc8/RIb;
    iget-object v3, v2, Lc8/RIb;->beanInfo:Lc8/SIb;

    .line 1071
    .local v3, "subBeanInfo":Lc8/SIb;
    iget-object v9, v3, Lc8/SIb;->typeName:Ljava/lang/String;

    invoke-virtual {v9, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1075
    invoke-virtual {p0, p1, v3, p3}, Lc8/RIb;->getSeeAlso(Lc8/XIb;Lc8/SIb;Ljava/lang/String;)Lc8/RIb;

    move-result-object v4

    .line 1076
    .local v4, "subSeeAlso":Lc8/RIb;
    if-eqz v4, :cond_2

    move-object v2, v4

    .line 1077
    goto :goto_0

    .line 1065
    .end local v2    # "seeAlsoJavaBeanDeser":Lc8/RIb;
    .end local v3    # "subBeanInfo":Lc8/SIb;
    .end local v4    # "subSeeAlso":Lc8/RIb;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0    # "seeAlsoClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "seeAlsoDeser":Lc8/hJb;
    :cond_3
    move-object v2, v5

    .line 1082
    goto :goto_0
.end method

.method parseExtra(Lc8/NIb;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 11
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 976
    iget-object v4, p1, Lc8/NIb;->lexer:Lc8/PIb;

    .line 977
    .local v4, "lexer":Lc8/PIb;
    iget-object v8, p1, Lc8/NIb;->lexer:Lc8/PIb;

    iget v8, v8, Lc8/PIb;->features:I

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    iget v9, v9, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 978
    new-instance v8, Lcom/alibaba/fastjson/JSONException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setter not found, class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/RIb;->clazz:Ljava/lang/Class;

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", property "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 981
    :cond_0
    const/16 v8, 0x3a

    invoke-virtual {v4, v8}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 982
    const/4 v6, 0x0

    .line 983
    .local v6, "type":Ljava/lang/reflect/Type;
    iget-object v3, p1, Lc8/NIb;->extraTypeProviders:Ljava/util/List;

    .line 984
    .local v3, "extraTypeProviders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;>;"
    if-eqz v3, :cond_1

    .line 985
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/eJb;

    .line 986
    .local v2, "extraProvider":Lc8/eJb;
    invoke-interface {v2, p2, p3}, Lc8/eJb;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 987
    goto :goto_0

    .line 990
    .end local v2    # "extraProvider":Lc8/eJb;
    :cond_1
    if-nez v6, :cond_3

    .line 991
    invoke-virtual {p1}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 994
    .local v7, "value":Ljava/lang/Object;
    :goto_1
    instance-of v8, p2, Lc8/cJb;

    if-eqz v8, :cond_4

    move-object v0, p2

    .line 995
    check-cast v0, Lc8/cJb;

    .line 996
    .local v0, "extraProcessable":Lc8/cJb;
    invoke-interface {v0, p3, v7}, Lc8/cJb;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1006
    .end local v0    # "extraProcessable":Lc8/cJb;
    :cond_2
    return-void

    .line 992
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1, v6}, Lc8/NIb;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1000
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_4
    iget-object v1, p1, Lc8/NIb;->extraProcessors:Ljava/util/List;

    .line 1001
    .local v1, "extraProcessors":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;>;"
    if-eqz v1, :cond_2

    .line 1002
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/dJb;

    .line 1003
    .local v5, "process":Lc8/dJb;
    invoke-interface {v5, p2, p3, v7}, Lc8/dJb;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2
.end method
