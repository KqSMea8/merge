.class public Lc8/SIb;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field final defaultConstructorParameterSize:I

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final fields:[Lc8/NJb;

.field final jsonType:Lc8/KIb;

.field ordered:Z

.field public final parserFeatures:I

.field final sortedFields:[Lc8/NJb;

.field final supportBeanToArray:Z

.field public final typeKey:Ljava/lang/String;

.field public final typeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lc8/NJb;[Lc8/NJb;Lc8/KIb;)V
    .locals 10
    .param p4, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p5, "fields"    # [Lc8/NJb;
    .param p6, "sortedFields"    # [Lc8/NJb;
    .param p7, "jsonType"    # Lc8/KIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Lc8/NJb;",
            "[",
            "Lc8/NJb;",
            "Lc8/KIb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p3, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v6, 0x0

    iput-boolean v6, p0, Lc8/SIb;->ordered:Z

    .line 46
    iput-object p2, p0, Lc8/SIb;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 47
    iput-object p3, p0, Lc8/SIb;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 48
    iput-object p4, p0, Lc8/SIb;->factoryMethod:Ljava/lang/reflect/Method;

    .line 49
    iput-object p5, p0, Lc8/SIb;->fields:[Lc8/NJb;

    .line 50
    move-object/from16 v0, p7

    iput-object v0, p0, Lc8/SIb;->jsonType:Lc8/KIb;

    .line 52
    const/4 v2, 0x0

    .line 53
    .local v2, "parserFeatures":I
    if-eqz p7, :cond_2

    .line 54
    invoke-interface/range {p7 .. p7}, Lc8/KIb;->typeName()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, "typeName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .end local v5    # "typeName":Ljava/lang/String;
    :goto_0
    iput-object v5, p0, Lc8/SIb;->typeName:Ljava/lang/String;

    .line 57
    invoke-interface/range {p7 .. p7}, Lc8/KIb;->typeKey()Ljava/lang/String;

    move-result-object v4

    .line 58
    .local v4, "typeKey":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .end local v4    # "typeKey":Ljava/lang/String;
    :goto_1
    iput-object v4, p0, Lc8/SIb;->typeKey:Ljava/lang/String;

    .line 60
    invoke-interface/range {p7 .. p7}, Lc8/KIb;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_3

    aget-object v1, v7, v6

    .line 61
    .local v1, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v9, v1, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr v2, v9

    .line 60
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 55
    .end local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    .restart local v5    # "typeName":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 58
    .end local v5    # "typeName":Ljava/lang/String;
    .restart local v4    # "typeKey":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 64
    .end local v4    # "typeKey":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lc8/SIb;->typeName:Ljava/lang/String;

    .line 65
    const/4 v6, 0x0

    iput-object v6, p0, Lc8/SIb;->typeKey:Ljava/lang/String;

    .line 67
    :cond_3
    iput v2, p0, Lc8/SIb;->parserFeatures:I

    .line 69
    const/4 v3, 0x0

    .line 70
    .local v3, "supportBeanToArray":Z
    if-eqz p7, :cond_5

    .line 71
    invoke-interface/range {p7 .. p7}, Lc8/KIb;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v7

    array-length v8, v7

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v8, :cond_5

    aget-object v1, v7, v6

    .line 72
    .restart local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->SupportArrayToBean:Lcom/alibaba/fastjson/parser/Feature;

    if-ne v1, v9, :cond_4

    .line 73
    const/4 v3, 0x1

    .line 71
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 77
    .end local v1    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    :cond_5
    iput-boolean v3, p0, Lc8/SIb;->supportBeanToArray:Z

    .line 79
    move-object/from16 v0, p6

    invoke-direct {p0, p5, v0}, Lc8/SIb;->computeSortedFields([Lc8/NJb;[Lc8/NJb;)[Lc8/NJb;

    move-result-object p6

    .line 80
    invoke-static/range {p5 .. p6}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .end local p5    # "fields":[Lc8/NJb;
    :goto_4
    iput-object p5, p0, Lc8/SIb;->sortedFields:[Lc8/NJb;

    .line 82
    if-eqz p2, :cond_7

    .line 83
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    .line 85
    :goto_5
    iput v6, p0, Lc8/SIb;->defaultConstructorParameterSize:I

    .line 87
    return-void

    .restart local p5    # "fields":[Lc8/NJb;
    :cond_6
    move-object/from16 p5, p6

    .line 80
    goto :goto_4

    .line 83
    .end local p5    # "fields":[Lc8/NJb;
    :cond_7
    if-eqz p4, :cond_8

    .line 85
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v6

    array-length v6, v6

    goto :goto_5

    :cond_8
    const/4 v6, 0x0

    goto :goto_5
.end method

.method static addField(Ljava/util/List;Lc8/NJb;Z)Z
    .locals 5
    .param p1, "field"    # Lc8/NJb;
    .param p2, "fieldOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/NJb;",
            ">;",
            "Lc8/NJb;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-nez p2, :cond_2

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 175
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/NJb;

    .line 176
    .local v1, "item":Lc8/NJb;
    iget-object v3, v1, Lc8/NJb;->name:Ljava/lang/String;

    iget-object v4, p1, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    iget-boolean v3, v1, Lc8/NJb;->getOnly:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p1, Lc8/NJb;->getOnly:Z

    if-eqz v3, :cond_1

    .line 181
    :cond_0
    const/4 v3, 0x0

    .line 188
    .end local v0    # "i":I
    .end local v1    # "item":Lc8/NJb;
    .end local v2    # "size":I
    :goto_1
    return v3

    .line 174
    .restart local v0    # "i":I
    .restart local v1    # "item":Lc8/NJb;
    .restart local v2    # "size":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    .end local v1    # "item":Lc8/NJb;
    .end local v2    # "size":I
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static build(Ljava/lang/Class;ILjava/lang/reflect/Type;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Lc8/SIb;
    .locals 79
    .param p1, "classModifiers"    # I
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldOnly"    # Z
    .param p4, "jsonTypeSupport"    # Z
    .param p5, "jsonFieldSupport"    # Z
    .param p6, "fieldGenericSupport"    # Z
    .param p7, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/lang/reflect/Type;",
            "ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lc8/SIb;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v58, Ljava/util/ArrayList;

    invoke-direct/range {v58 .. v58}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v58, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v49, Ljava/util/HashMap;

    invoke-direct/range {v49 .. v49}, Ljava/util/HashMap;-><init>()V

    .line 204
    .local v49, "classFieldCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;[Ljava/lang/reflect/Field;>;"
    const/16 v56, 0x0

    .line 205
    .local v56, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    move/from16 v0, p1

    and-int/lit16 v5, v0, 0x400

    if-nez v5, :cond_0

    .line 207
    const/4 v5, 0x0

    :try_start_0
    new-array v5, v5, [Ljava/lang/Class;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v56

    .line 212
    :goto_0
    if-nez v56, :cond_0

    .line 213
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_0

    and-int/lit8 v5, p1, 0x8

    if-nez v5, :cond_0

    .line 214
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    array-length v12, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v12, :cond_0

    aget-object v52, v6, v5

    .line 215
    .local v52, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {v52 .. v52}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v75

    .line 216
    .local v75, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v75

    array-length v13, v0

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v13, 0x0

    aget-object v13, v75, v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 217
    move-object/from16 v56, v52

    .line 226
    .end local v52    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    const/16 v24, 0x0

    .line 229
    .local v24, "factoryMethod":Ljava/lang/reflect/Method;
    if-eqz p3, :cond_4

    .line 230
    const/16 v70, 0x0

    .line 262
    .local v70, "methods":[Ljava/lang/reflect/Method;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v54

    .line 264
    .local v54, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_1

    move/from16 v0, p1

    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_a

    :cond_1
    const/16 v65, 0x1

    .line 266
    .local v65, "isInterfaceOrAbstract":Z
    :goto_3
    if-eqz v56, :cond_2

    if-eqz v65, :cond_1e

    .line 267
    :cond_2
    const/4 v15, 0x0

    .line 268
    .local v15, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v6

    array-length v12, v6

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v12, :cond_c

    aget-object v52, v6, v5

    .line 269
    .restart local v52    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v13, Lc8/IIb;

    move-object/from16 v0, v52

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v33

    check-cast v33, Lc8/IIb;

    .line 270
    .local v33, "annotation":Lc8/IIb;
    if-eqz v33, :cond_e

    .line 271
    if-eqz v15, :cond_b

    .line 272
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "multi-json creator"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 214
    .end local v15    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v24    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v33    # "annotation":Lc8/IIb;
    .end local v54    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v65    # "isInterfaceOrAbstract":Z
    .end local v70    # "methods":[Ljava/lang/reflect/Method;
    .restart local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 232
    .end local v52    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v24    # "factoryMethod":Ljava/lang/reflect/Method;
    :cond_4
    new-instance v67, Ljava/util/ArrayList;

    invoke-direct/range {v67 .. v67}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v67, "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    move-object/from16 v51, p0

    .local v51, "cls":Ljava/lang/Class;
    :goto_5
    if-eqz v51, :cond_9

    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, v51

    if-eq v0, v5, :cond_9

    .line 235
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v55

    .line 236
    .local v55, "declaredMethods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v55

    array-length v6, v0

    const/4 v5, 0x0

    :goto_6
    if-ge v5, v6, :cond_8

    aget-object v27, v55, v5

    .line 237
    .local v27, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v71

    .line 239
    .local v71, "modifier":I
    and-int/lit8 v12, v71, 0x8

    if-eqz v12, :cond_7

    .line 240
    const-class v12, Lc8/IIb;

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 241
    if-eqz v24, :cond_5

    .line 242
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "multi-json creator"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 245
    :cond_5
    move-object/from16 v24, v27

    .line 236
    :cond_6
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 250
    :cond_7
    and-int/lit8 v12, v71, 0x2

    if-nez v12, :cond_6

    move/from16 v0, v71

    and-int/lit16 v12, v0, 0x100

    if-nez v12, :cond_6

    and-int/lit8 v12, v71, 0x4

    if-nez v12, :cond_6

    .line 254
    move-object/from16 v0, v67

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 234
    .end local v27    # "method":Ljava/lang/reflect/Method;
    .end local v71    # "modifier":I
    :cond_8
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v51

    goto :goto_5

    .line 258
    .end local v55    # "declaredMethods":[Ljava/lang/reflect/Method;
    :cond_9
    invoke-interface/range {v67 .. v67}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/reflect/Method;

    move-object/from16 v70, v0

    .line 259
    .restart local v70    # "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v0, v67

    move-object/from16 v1, v70

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto/16 :goto_2

    .line 264
    .end local v51    # "cls":Ljava/lang/Class;
    .end local v67    # "methodList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    .restart local v54    # "declaredFields":[Ljava/lang/reflect/Field;
    :cond_a
    const/16 v65, 0x0

    goto/16 :goto_3

    .line 275
    .restart local v15    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v33    # "annotation":Lc8/IIb;
    .restart local v52    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v65    # "isInterfaceOrAbstract":Z
    :cond_b
    move-object/from16 v15, v52

    .line 280
    .end local v33    # "annotation":Lc8/IIb;
    .end local v52    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_c
    if-eqz v15, :cond_15

    .line 281
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v15, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 283
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v75

    .line 284
    .restart local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz p6, :cond_f

    .line 285
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v62

    .line 288
    .local v62, "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_8
    const/16 v63, 0x0

    .local v63, "i":I
    :goto_9
    move-object/from16 v0, v75

    array-length v5, v0

    move/from16 v0, v63

    if-ge v0, v5, :cond_13

    .line 289
    invoke-virtual {v15}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    aget-object v74, v5, v63

    .line 290
    .local v74, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v34, 0x0

    .line 291
    .local v34, "fieldAnnotation":Lc8/JIb;
    move-object/from16 v0, v74

    array-length v6, v0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v6, :cond_d

    aget-object v73, v74, v5

    .line 292
    .local v73, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v12, v0, Lc8/JIb;

    if-eqz v12, :cond_10

    move-object/from16 v34, v73

    .line 293
    check-cast v34, Lc8/JIb;

    .line 297
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_d
    if-nez v34, :cond_11

    .line 298
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal json creator"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 268
    .end local v34    # "fieldAnnotation":Lc8/JIb;
    .end local v62    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v63    # "i":I
    .end local v74    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v33    # "annotation":Lc8/IIb;
    .restart local v52    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .end local v33    # "annotation":Lc8/IIb;
    .end local v52    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_f
    move-object/from16 v62, v75

    .line 285
    goto :goto_8

    .line 291
    .restart local v34    # "fieldAnnotation":Lc8/JIb;
    .restart local v62    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v63    # "i":I
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v74    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 301
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_11
    aget-object v7, v75, v63

    .line 302
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v62, v63

    .line 303
    .local v8, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v49

    invoke-static {v0, v5, v1, v2}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 305
    .local v9, "field":Ljava/lang/reflect/Field;
    if-eqz v9, :cond_12

    .line 306
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 309
    :cond_12
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 310
    .local v10, "ordinal":I
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 311
    .local v11, "serialzeFeatures":I
    new-instance v4, Lc8/NJb;

    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 318
    .local v4, "fieldInfo":Lc8/NJb;
    move-object/from16 v0, v58

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lc8/SIb;->addField(Ljava/util/List;Lc8/NJb;Z)Z

    .line 288
    add-int/lit8 v63, v63, 0x1

    goto :goto_9

    .line 321
    .end local v4    # "fieldInfo":Lc8/NJb;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v34    # "fieldAnnotation":Lc8/JIb;
    .end local v74    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_13
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Lc8/NJb;

    move-object/from16 v17, v0

    .line 322
    .local v17, "fields":[Lc8/NJb;
    move-object/from16 v0, v58

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 324
    move-object/from16 v0, v17

    array-length v5, v0

    new-array v0, v5, [Lc8/NJb;

    move-object/from16 v18, v0

    .line 325
    .local v18, "sortedFields":[Lc8/NJb;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    array-length v12, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 326
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 328
    if-eqz p4, :cond_14

    const-class v5, Lc8/KIb;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/KIb;

    move-object/from16 v19, v5

    .line 329
    .local v19, "jsonType":Lc8/KIb;
    :goto_b
    new-instance v12, Lc8/SIb;

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v19}, Lc8/SIb;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lc8/NJb;[Lc8/NJb;Lc8/KIb;)V

    .line 644
    .end local v15    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v62    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v63    # "i":I
    .end local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_c
    return-object v12

    .line 328
    .end local v19    # "jsonType":Lc8/KIb;
    .restart local v15    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v62    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v63    # "i":I
    .restart local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_14
    const/16 v19, 0x0

    goto :goto_b

    .line 332
    .end local v17    # "fields":[Lc8/NJb;
    .end local v18    # "sortedFields":[Lc8/NJb;
    .end local v62    # "getGenericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v63    # "i":I
    .end local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_15
    if-eqz v24, :cond_1d

    .line 333
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 335
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v75

    .line 337
    .restart local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v75

    array-length v5, v0

    if-lez v5, :cond_1e

    .line 338
    if-eqz p6, :cond_17

    .line 339
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v61

    .line 342
    .local v61, "genericParameterTypes":[Ljava/lang/reflect/Type;
    :goto_d
    const/16 v63, 0x0

    .restart local v63    # "i":I
    :goto_e
    move-object/from16 v0, v75

    array-length v5, v0

    move/from16 v0, v63

    if-ge v0, v5, :cond_1a

    .line 343
    invoke-virtual/range {v24 .. v24}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v5

    aget-object v74, v5, v63

    .line 344
    .restart local v74    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v34, 0x0

    .line 345
    .restart local v34    # "fieldAnnotation":Lc8/JIb;
    move-object/from16 v0, v74

    array-length v6, v0

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v6, :cond_16

    aget-object v73, v74, v5

    .line 346
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v73

    instance-of v12, v0, Lc8/JIb;

    if-eqz v12, :cond_18

    move-object/from16 v34, v73

    .line 347
    check-cast v34, Lc8/JIb;

    .line 351
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_16
    if-nez v34, :cond_19

    .line 352
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "illegal json creator"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v34    # "fieldAnnotation":Lc8/JIb;
    .end local v61    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v63    # "i":I
    .end local v74    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_17
    move-object/from16 v61, v75

    .line 339
    goto :goto_d

    .line 345
    .restart local v34    # "fieldAnnotation":Lc8/JIb;
    .restart local v61    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .restart local v63    # "i":I
    .restart local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v74    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_18
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 355
    .end local v73    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_19
    aget-object v7, v75, v63

    .line 356
    .restart local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v8, v61, v63

    .line 357
    .restart local v8    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v49

    invoke-static {v0, v5, v1, v2}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 358
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 359
    .restart local v10    # "ordinal":I
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 360
    .restart local v11    # "serialzeFeatures":I
    new-instance v4, Lc8/NJb;

    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p0

    invoke-direct/range {v4 .. v11}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;II)V

    .line 367
    .restart local v4    # "fieldInfo":Lc8/NJb;
    move-object/from16 v0, v58

    move/from16 v1, p3

    invoke-static {v0, v4, v1}, Lc8/SIb;->addField(Ljava/util/List;Lc8/NJb;Z)Z

    .line 342
    add-int/lit8 v63, v63, 0x1

    goto :goto_e

    .line 370
    .end local v4    # "fieldInfo":Lc8/NJb;
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v34    # "fieldAnnotation":Lc8/JIb;
    .end local v74    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_1a
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Lc8/NJb;

    move-object/from16 v17, v0

    .line 371
    .restart local v17    # "fields":[Lc8/NJb;
    move-object/from16 v0, v58

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 373
    move-object/from16 v0, v17

    array-length v5, v0

    new-array v0, v5, [Lc8/NJb;

    move-object/from16 v18, v0

    .line 374
    .restart local v18    # "sortedFields":[Lc8/NJb;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    array-length v12, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 375
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 377
    invoke-static/range {v17 .. v18}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 378
    move-object/from16 v18, v17

    .line 381
    :cond_1b
    if-eqz p4, :cond_1c

    const-class v5, Lc8/KIb;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/KIb;

    move-object/from16 v19, v5

    .line 382
    .restart local v19    # "jsonType":Lc8/KIb;
    :goto_10
    new-instance v20, Lc8/SIb;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v21, p0

    move-object/from16 v25, v17

    move-object/from16 v26, v18

    move-object/from16 v27, v19

    invoke-direct/range {v20 .. v27}, Lc8/SIb;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lc8/NJb;[Lc8/NJb;Lc8/KIb;)V

    .local v20, "beanInfo":Lc8/SIb;
    move-object/from16 v12, v20

    .line 383
    goto/16 :goto_c

    .line 381
    .end local v19    # "jsonType":Lc8/KIb;
    .end local v20    # "beanInfo":Lc8/SIb;
    :cond_1c
    const/16 v19, 0x0

    goto :goto_10

    .line 385
    .end local v17    # "fields":[Lc8/NJb;
    .end local v18    # "sortedFields":[Lc8/NJb;
    .end local v61    # "genericParameterTypes":[Ljava/lang/reflect/Type;
    .end local v63    # "i":I
    .end local v75    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1d
    if-nez v65, :cond_1e

    .line 386
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "default constructor not found. "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 390
    .end local v15    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_1e
    if-eqz v56, :cond_1f

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 394
    :cond_1f
    if-nez p3, :cond_2e

    .line 395
    move-object/from16 v0, v70

    array-length v12, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_11
    if-ge v6, v12, :cond_2e

    aget-object v27, v70, v6

    .line 396
    .restart local v27    # "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 397
    .restart local v11    # "serialzeFeatures":I
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v68

    .line 398
    .local v68, "methodName":Ljava/lang/String;
    invoke-virtual/range {v68 .. v68}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v13, 0x4

    if-lt v5, v13, :cond_22

    .line 402
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v76

    .line 403
    .local v76, "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v76

    if-eq v0, v5, :cond_20

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    move-object/from16 v0, v76

    if-ne v0, v5, :cond_22

    .line 404
    :cond_20
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    const/4 v13, 0x1

    if-ne v5, v13, :cond_22

    .line 410
    if-eqz p5, :cond_23

    const-class v5, Lc8/JIb;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/JIb;

    move-object/from16 v33, v5

    .line 412
    .local v33, "annotation":Lc8/JIb;
    :goto_12
    if-nez v33, :cond_21

    if-eqz p5, :cond_21

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lc8/RJb;->getSupperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lc8/JIb;

    move-result-object v33

    .line 416
    :cond_21
    if-eqz v33, :cond_24

    .line 417
    invoke-interface/range {v33 .. v33}, Lc8/JIb;->deserialize()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 421
    invoke-interface/range {v33 .. v33}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 422
    invoke-interface/range {v33 .. v33}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 424
    invoke-interface/range {v33 .. v33}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_24

    .line 425
    invoke-interface/range {v33 .. v33}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v26

    .line 426
    .local v26, "propertyName":Ljava/lang/String;
    new-instance v25, Lc8/NJb;

    const/16 v28, 0x0

    const/16 v34, 0x0

    move-object/from16 v29, p0

    move-object/from16 v30, p2

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v35, p6

    invoke-direct/range {v25 .. v35}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v58

    move-object/from16 v1, v25

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lc8/SIb;->addField(Ljava/util/List;Lc8/NJb;Z)Z

    .line 438
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 395
    .end local v26    # "propertyName":Ljava/lang/String;
    .end local v33    # "annotation":Lc8/JIb;
    .end local v76    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_22
    :goto_13
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_11

    .line 410
    .restart local v76    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_23
    const/16 v33, 0x0

    goto :goto_12

    .line 443
    .restart local v33    # "annotation":Lc8/JIb;
    :cond_24
    const-string/jumbo v5, "set"

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 447
    const/4 v5, 0x3

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v48

    .line 450
    .local v48, "c3":C
    invoke-static/range {v48 .. v48}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 451
    sget-boolean v5, Lc8/RJb;->compatibleWithJavaBean:Z

    if-eqz v5, :cond_26

    .line 452
    const/4 v5, 0x3

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/RJb;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 466
    .restart local v26    # "propertyName":Ljava/lang/String;
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v54

    move-object/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 467
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    if-nez v9, :cond_25

    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    const/4 v13, 0x0

    aget-object v5, v5, v13

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v13, :cond_25

    .line 468
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "is"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x1

    .line 469
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v64

    .line 470
    .local v64, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    move-object/from16 v2, v54

    move-object/from16 v3, v49

    invoke-static {v0, v1, v2, v3}, Lc8/RJb;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v9

    .line 473
    .end local v64    # "isFieldName":Ljava/lang/String;
    :cond_25
    if-eqz v9, :cond_2c

    .line 474
    if-eqz p5, :cond_2a

    const-class v5, Lc8/JIb;

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/JIb;

    move-object/from16 v34, v5

    .line 476
    .restart local v34    # "fieldAnnotation":Lc8/JIb;
    :goto_15
    if-eqz v34, :cond_2c

    .line 477
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 478
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 480
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2b

    .line 481
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v26

    .line 482
    new-instance v25, Lc8/NJb;

    move-object/from16 v28, v9

    move-object/from16 v29, p0

    move-object/from16 v30, p2

    move/from16 v31, v10

    move/from16 v32, v11

    move/from16 v35, p6

    invoke-direct/range {v25 .. v35}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v58

    move-object/from16 v1, v25

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lc8/SIb;->addField(Ljava/util/List;Lc8/NJb;Z)Z

    goto/16 :goto_13

    .line 454
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v26    # "propertyName":Ljava/lang/String;
    .end local v34    # "fieldAnnotation":Lc8/JIb;
    :cond_26
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x3

    move-object/from16 v0, v68

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x4

    move-object/from16 v0, v68

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "propertyName":Ljava/lang/String;
    goto/16 :goto_14

    .line 456
    .end local v26    # "propertyName":Ljava/lang/String;
    :cond_27
    const/16 v5, 0x5f

    move/from16 v0, v48

    if-ne v0, v5, :cond_28

    .line 457
    const/4 v5, 0x4

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "propertyName":Ljava/lang/String;
    goto/16 :goto_14

    .line 458
    .end local v26    # "propertyName":Ljava/lang/String;
    :cond_28
    const/16 v5, 0x66

    move/from16 v0, v48

    if-ne v0, v5, :cond_29

    .line 459
    const/4 v5, 0x3

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "propertyName":Ljava/lang/String;
    goto/16 :goto_14

    .line 460
    .end local v26    # "propertyName":Ljava/lang/String;
    :cond_29
    invoke-virtual/range {v68 .. v68}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v13, 0x5

    if-lt v5, v13, :cond_22

    const/4 v5, 0x4

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 461
    const/4 v5, 0x3

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/RJb;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "propertyName":Ljava/lang/String;
    goto/16 :goto_14

    .line 474
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    :cond_2a
    const/16 v34, 0x0

    goto/16 :goto_15

    .line 490
    .restart local v34    # "fieldAnnotation":Lc8/JIb;
    :cond_2b
    if-nez v33, :cond_2c

    .line 491
    move-object/from16 v33, v34

    .line 496
    .end local v34    # "fieldAnnotation":Lc8/JIb;
    :cond_2c
    if-eqz p7, :cond_2d

    .line 497
    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 500
    :cond_2d
    new-instance v35, Lc8/NJb;

    const/16 v38, 0x0

    const/16 v44, 0x0

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    move-object/from16 v39, p0

    move-object/from16 v40, p2

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v43, v33

    move/from16 v45, p6

    invoke-direct/range {v35 .. v45}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v58

    move-object/from16 v1, v35

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lc8/SIb;->addField(Ljava/util/List;Lc8/NJb;Z)Z

    .line 504
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    goto/16 :goto_13

    .line 510
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v26    # "propertyName":Ljava/lang/String;
    .end local v27    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "annotation":Lc8/JIb;
    .end local v48    # "c3":C
    .end local v68    # "methodName":Ljava/lang/String;
    .end local v76    # "returnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2e
    new-instance v50, Ljava/util/ArrayList;

    move-object/from16 v0, v54

    array-length v5, v0

    move-object/from16 v0, v50

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    .local v50, "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    move-object/from16 v0, v54

    array-length v6, v0

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v6, :cond_33

    aget-object v57, v54, v5

    .line 512
    .local v57, "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v57 .. v57}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v72

    .line 513
    .local v72, "modifiers":I
    and-int/lit8 v12, v72, 0x8

    if-nez v12, :cond_31

    .line 517
    and-int/lit8 v12, v72, 0x10

    if-eqz v12, :cond_30

    .line 518
    invoke-virtual/range {v57 .. v57}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v60

    .line 519
    .local v60, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v12, Ljava/util/Map;

    move-object/from16 v0, v60

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_2f

    const-class v12, Ljava/util/Collection;

    move-object/from16 v0, v60

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_32

    :cond_2f
    const/16 v78, 0x1

    .line 520
    .local v78, "supportReadOnly":Z
    :goto_17
    if-eqz v78, :cond_31

    .line 525
    .end local v60    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v78    # "supportReadOnly":Z
    :cond_30
    invoke-virtual/range {v57 .. v57}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_31

    .line 526
    move-object/from16 v0, v50

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_31
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 519
    .restart local v60    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_32
    const/16 v78, 0x0

    goto :goto_17

    .line 530
    .end local v57    # "f":Ljava/lang/reflect/Field;
    .end local v60    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v72    # "modifiers":I
    :cond_33
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v47

    .local v47, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_18
    if-eqz v47, :cond_39

    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, v47

    if-eq v0, v5, :cond_39

    .line 531
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v12, v6

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v12, :cond_38

    aget-object v57, v6, v5

    .line 532
    .restart local v57    # "f":Ljava/lang/reflect/Field;
    invoke-virtual/range {v57 .. v57}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v72

    .line 533
    .restart local v72    # "modifiers":I
    and-int/lit8 v13, v72, 0x8

    if-nez v13, :cond_36

    .line 537
    and-int/lit8 v13, v72, 0x10

    if-eqz v13, :cond_35

    .line 538
    invoke-virtual/range {v57 .. v57}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v60

    .line 539
    .restart local v60    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Ljava/util/Map;

    move-object/from16 v0, v60

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_34

    const-class v13, Ljava/util/Collection;

    move-object/from16 v0, v60

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_37

    :cond_34
    const/16 v78, 0x1

    .line 540
    .restart local v78    # "supportReadOnly":Z
    :goto_1a
    if-eqz v78, :cond_36

    .line 545
    .end local v60    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v78    # "supportReadOnly":Z
    :cond_35
    and-int/lit8 v13, v72, 0x1

    if-eqz v13, :cond_36

    .line 546
    move-object/from16 v0, v50

    move-object/from16 v1, v57

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    :cond_36
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 539
    .restart local v60    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_37
    const/16 v78, 0x0

    goto :goto_1a

    .line 530
    .end local v57    # "f":Ljava/lang/reflect/Field;
    .end local v60    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v72    # "modifiers":I
    :cond_38
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v47

    goto :goto_18

    .line 552
    :cond_39
    invoke-interface/range {v50 .. v50}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3a
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/reflect/Field;

    .line 553
    .restart local v9    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v59

    .line 554
    .local v59, "fieldName":Ljava/lang/String;
    const/16 v53, 0x0

    .line 555
    .local v53, "contains":Z
    const/16 v63, 0x0

    .restart local v63    # "i":I
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v77

    .local v77, "size":I
    :goto_1c
    move/from16 v0, v63

    move/from16 v1, v77

    if-ge v0, v1, :cond_3c

    .line 556
    move-object/from16 v0, v58

    move/from16 v1, v63

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Lc8/NJb;

    .line 557
    .local v66, "item":Lc8/NJb;
    move-object/from16 v0, v66

    iget-object v5, v0, Lc8/NJb;->name:Ljava/lang/String;

    move-object/from16 v0, v59

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 558
    const/16 v53, 0x1

    .line 555
    :cond_3b
    add-int/lit8 v63, v63, 0x1

    goto :goto_1c

    .line 563
    .end local v66    # "item":Lc8/NJb;
    :cond_3c
    if-nez v53, :cond_3a

    .line 567
    const/4 v10, 0x0

    .restart local v10    # "ordinal":I
    const/4 v11, 0x0

    .line 568
    .restart local v11    # "serialzeFeatures":I
    move-object/from16 v26, v59

    .line 570
    .restart local v26    # "propertyName":Ljava/lang/String;
    if-eqz p5, :cond_3f

    const-class v5, Lc8/JIb;

    invoke-virtual {v9, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/JIb;

    move-object/from16 v34, v5

    .line 572
    .restart local v34    # "fieldAnnotation":Lc8/JIb;
    :goto_1d
    if-eqz v34, :cond_3d

    .line 573
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->ordinal()I

    move-result v10

    .line 574
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v11

    .line 576
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3d

    .line 577
    invoke-interface/range {v34 .. v34}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v26

    .line 581
    :cond_3d
    if-eqz p7, :cond_3e

    .line 582
    move-object/from16 v0, p7

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 585
    :cond_3e
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v9, v1}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 586
    new-instance v35, Lc8/NJb;

    const/16 v37, 0x0

    const/16 v43, 0x0

    move-object/from16 v36, v26

    move-object/from16 v38, v9

    move-object/from16 v39, p0

    move-object/from16 v40, p2

    move/from16 v41, v10

    move/from16 v42, v11

    move-object/from16 v44, v34

    move/from16 v45, p6

    invoke-direct/range {v35 .. v45}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v58

    move-object/from16 v1, v35

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lc8/SIb;->addField(Ljava/util/List;Lc8/NJb;Z)Z

    goto/16 :goto_1b

    .line 570
    .end local v34    # "fieldAnnotation":Lc8/JIb;
    :cond_3f
    const/16 v34, 0x0

    goto :goto_1d

    .line 600
    .end local v9    # "field":Ljava/lang/reflect/Field;
    .end local v10    # "ordinal":I
    .end local v11    # "serialzeFeatures":I
    .end local v26    # "propertyName":Ljava/lang/String;
    .end local v53    # "contains":Z
    .end local v59    # "fieldName":Ljava/lang/String;
    .end local v63    # "i":I
    .end local v77    # "size":I
    :cond_40
    if-nez p3, :cond_45

    .line 601
    move-object/from16 v0, v70

    array-length v12, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1e
    if-ge v6, v12, :cond_45

    aget-object v27, v70, v6

    .line 602
    .restart local v27    # "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v68

    .line 603
    .restart local v68    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v68 .. v68}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v13, 0x4

    if-lt v5, v13, :cond_42

    .line 607
    const-string/jumbo v5, "get"

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    const/4 v5, 0x3

    move-object/from16 v0, v68

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 608
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_42

    .line 612
    invoke-virtual/range {v27 .. v27}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v69

    .line 613
    .local v69, "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/Collection;

    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_41

    const-class v5, Ljava/util/Map;

    .line 614
    move-object/from16 v0, v69

    invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 618
    :cond_41
    if-eqz p5, :cond_43

    const-class v5, Lc8/JIb;

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/JIb;

    move-object/from16 v33, v5

    .line 621
    .restart local v33    # "annotation":Lc8/JIb;
    :goto_1f
    if-eqz v33, :cond_44

    .line 622
    invoke-interface/range {v33 .. v33}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v46

    .local v46, "annotationName":Ljava/lang/String;
    invoke-virtual/range {v46 .. v46}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_44

    move-object/from16 v26, v46

    .line 626
    .end local v46    # "annotationName":Ljava/lang/String;
    .restart local v26    # "propertyName":Ljava/lang/String;
    :goto_20
    new-instance v35, Lc8/NJb;

    const/16 v38, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v44, 0x0

    move-object/from16 v36, v26

    move-object/from16 v37, v27

    move-object/from16 v39, p0

    move-object/from16 v40, p2

    move-object/from16 v43, v33

    move/from16 v45, p6

    invoke-direct/range {v35 .. v45}, Lc8/NJb;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IILc8/JIb;Lc8/JIb;Z)V

    move-object/from16 v0, v58

    move-object/from16 v1, v35

    move/from16 v2, p3

    invoke-static {v0, v1, v2}, Lc8/SIb;->addField(Ljava/util/List;Lc8/NJb;Z)Z

    .line 630
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lc8/RJb;->setAccessible(Ljava/lang/Class;Ljava/lang/reflect/Member;I)Z

    .line 601
    .end local v26    # "propertyName":Ljava/lang/String;
    .end local v33    # "annotation":Lc8/JIb;
    .end local v69    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_42
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_1e

    .line 618
    .restart local v69    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_43
    const/16 v33, 0x0

    goto :goto_1f

    .line 622
    .restart local v33    # "annotation":Lc8/JIb;
    :cond_44
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x3

    .line 624
    move-object/from16 v0, v68

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v13, 0x4

    move-object/from16 v0, v68

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    goto :goto_20

    .line 636
    .end local v27    # "method":Ljava/lang/reflect/Method;
    .end local v33    # "annotation":Lc8/JIb;
    .end local v68    # "methodName":Ljava/lang/String;
    .end local v69    # "methodReturnType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_45
    invoke-interface/range {v58 .. v58}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Lc8/NJb;

    move-object/from16 v17, v0

    .line 637
    .restart local v17    # "fields":[Lc8/NJb;
    move-object/from16 v0, v58

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 639
    move-object/from16 v0, v17

    array-length v5, v0

    new-array v0, v5, [Lc8/NJb;

    move-object/from16 v18, v0

    .line 640
    .restart local v18    # "sortedFields":[Lc8/NJb;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    array-length v12, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v5, v1, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 643
    if-eqz p4, :cond_46

    const-class v5, Lc8/KIb;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lc8/KIb;

    move-object/from16 v19, v5

    .line 644
    .restart local v19    # "jsonType":Lc8/KIb;
    :goto_21
    new-instance v35, Lc8/SIb;

    const/16 v38, 0x0

    move-object/from16 v36, p0

    move-object/from16 v37, v56

    move-object/from16 v39, v24

    move-object/from16 v40, v17

    move-object/from16 v41, v18

    move-object/from16 v42, v19

    invoke-direct/range {v35 .. v42}, Lc8/SIb;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;[Lc8/NJb;[Lc8/NJb;Lc8/KIb;)V

    move-object/from16 v12, v35

    goto/16 :goto_c

    .line 643
    .end local v19    # "jsonType":Lc8/KIb;
    :cond_46
    const/16 v19, 0x0

    goto :goto_21

    .end local v17    # "fields":[Lc8/NJb;
    .end local v18    # "sortedFields":[Lc8/NJb;
    .end local v24    # "factoryMethod":Ljava/lang/reflect/Method;
    .end local v47    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v50    # "classfields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v54    # "declaredFields":[Ljava/lang/reflect/Field;
    .end local v65    # "isInterfaceOrAbstract":Z
    .end local v70    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method private computeSortedFields([Lc8/NJb;[Lc8/NJb;)[Lc8/NJb;
    .locals 12
    .param p1, "fields"    # [Lc8/NJb;
    .param p2, "sortedFields"    # [Lc8/NJb;

    .prologue
    const/4 v11, 0x1

    .line 90
    iget-object v9, p0, Lc8/SIb;->jsonType:Lc8/KIb;

    if-nez v9, :cond_1

    .line 169
    .end local p2    # "sortedFields":[Lc8/NJb;
    :cond_0
    :goto_0
    return-object p2

    .line 94
    .restart local p2    # "sortedFields":[Lc8/NJb;
    :cond_1
    iget-object v9, p0, Lc8/SIb;->jsonType:Lc8/KIb;

    invoke-interface {v9}, Lc8/KIb;->orders()[Ljava/lang/String;

    move-result-object v8

    .line 95
    .local v8, "orders":[Ljava/lang/String;
    if-eqz v8, :cond_0

    array-length v9, v8

    if-eqz v9, :cond_0

    .line 96
    const/4 v1, 0x1

    .line 97
    .local v1, "containsAll":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_3

    .line 98
    const/4 v3, 0x0

    .line 99
    .local v3, "got":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    array-length v9, p2

    if-ge v5, v9, :cond_2

    .line 100
    aget-object v9, p2, v5

    iget-object v9, v9, Lc8/NJb;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 101
    const/4 v3, 0x1

    .line 105
    :cond_2
    if-nez v3, :cond_7

    .line 106
    const/4 v1, 0x0

    .line 111
    .end local v3    # "got":Z
    .end local v5    # "j":I
    :cond_3
    if-eqz v1, :cond_0

    .line 115
    array-length v9, v8

    array-length v10, p1

    if-ne v9, v10, :cond_b

    .line 116
    const/4 v7, 0x1

    .line 117
    .local v7, "orderMatch":Z
    const/4 v4, 0x0

    :goto_3
    array-length v9, v8

    if-ge v4, v9, :cond_4

    .line 118
    aget-object v9, p2, v4

    iget-object v9, v9, Lc8/NJb;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 119
    const/4 v7, 0x0

    .line 124
    :cond_4
    if-nez v7, :cond_0

    .line 128
    array-length v9, p2

    new-array v6, v9, [Lc8/NJb;

    .line 129
    .local v6, "newSortedFields":[Lc8/NJb;
    const/4 v4, 0x0

    :goto_4
    array-length v9, v8

    if-ge v4, v9, :cond_a

    .line 130
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_5
    array-length v9, p2

    if-ge v5, v9, :cond_5

    .line 131
    aget-object v9, p2, v5

    iget-object v9, v9, Lc8/NJb;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 132
    aget-object v9, p2, v5

    aput-object v9, v6, v4

    .line 129
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 99
    .end local v6    # "newSortedFields":[Lc8/NJb;
    .end local v7    # "orderMatch":Z
    .restart local v3    # "got":Z
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 97
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v3    # "got":Z
    .end local v5    # "j":I
    .restart local v7    # "orderMatch":Z
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 130
    .restart local v5    # "j":I
    .restart local v6    # "newSortedFields":[Lc8/NJb;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 138
    .end local v5    # "j":I
    :cond_a
    iput-boolean v11, p0, Lc8/SIb;->ordered:Z

    move-object p2, v6

    .line 139
    goto :goto_0

    .line 142
    .end local v6    # "newSortedFields":[Lc8/NJb;
    .end local v7    # "orderMatch":Z
    :cond_b
    array-length v9, p2

    new-array v6, v9, [Lc8/NJb;

    .line 143
    .restart local v6    # "newSortedFields":[Lc8/NJb;
    const/4 v4, 0x0

    :goto_6
    array-length v9, v8

    if-ge v4, v9, :cond_e

    .line 144
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_7
    array-length v9, p2

    if-ge v5, v9, :cond_c

    .line 145
    aget-object v9, p2, v5

    iget-object v9, v9, Lc8/NJb;->name:Ljava/lang/String;

    aget-object v10, v8, v4

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 146
    aget-object v9, p2, v5

    aput-object v9, v6, v4

    .line 143
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 144
    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 152
    .end local v5    # "j":I
    :cond_e
    array-length v2, v8

    .line 153
    .local v2, "fieldIndex":I
    const/4 v4, 0x0

    :goto_8
    array-length v9, p2

    if-ge v4, v9, :cond_12

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "contains":Z
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_9
    array-length v9, v6

    if-ge v5, v9, :cond_f

    if-ge v5, v2, :cond_f

    .line 156
    aget-object v9, v6, v4

    aget-object v10, p2, v5

    invoke-virtual {v9, v10}, Lc8/NJb;->equals(Lc8/NJb;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 157
    const/4 v0, 0x1

    .line 161
    :cond_f
    if-nez v0, :cond_10

    .line 162
    aget-object v9, p2, v4

    aput-object v9, v6, v2

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_10
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 155
    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 166
    .end local v0    # "contains":Z
    .end local v5    # "j":I
    :cond_12
    iput-boolean v11, p0, Lc8/SIb;->ordered:Z

    goto/16 :goto_0
.end method
