.class public Lc8/xJb;
.super Ljava/lang/Object;
.source "JavaBeanSerializer.java"

# interfaces
.implements Lc8/DJb;


# static fields
.field private static final false_chars:[C

.field private static final true_chars:[C


# instance fields
.field protected features:I

.field private final getters:[Lc8/tJb;

.field private final sortedGetters:[Lc8/tJb;

.field protected final typeKey:Ljava/lang/String;

.field protected final typeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/xJb;->true_chars:[C

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lc8/xJb;->false_chars:[C

    return-void

    .line 39
    .line 40
    nop

    :array_0
    .array-data 2
        0x74s
        0x72s
        0x75s
        0x65s
    .end array-data

    :array_1
    .array-data 2
        0x66s
        0x61s
        0x6cs
        0x73s
        0x65s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    check-cast v0, Lcom/alibaba/fastjson/PropertyNamingStrategy;

    invoke-direct {p0, p1, v0}, Lc8/xJb;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 22
    .param p2, "classModifiers"    # I
    .param p4, "fieldOnly"    # Z
    .param p5, "jsonTypeSupport"    # Z
    .param p6, "jsonFieldSupport"    # Z
    .param p7, "fieldGenericSupport"    # Z
    .param p8, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZZZZ",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lc8/xJb;->features:I

    .line 91
    if-eqz p5, :cond_1

    const-class v2, Lc8/KIb;

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/KIb;

    move-object v5, v2

    .line 95
    .local v5, "jsonType":Lc8/KIb;
    :goto_0
    const/16 v21, 0x0

    .local v21, "typeName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 96
    .local v20, "typeKey":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 97
    invoke-interface {v5}, Lc8/KIb;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lc8/xJb;->features:I

    .line 99
    invoke-interface {v5}, Lc8/KIb;->typeName()Ljava/lang/String;

    move-result-object v21

    .line 100
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 101
    const/16 v21, 0x0

    .line 131
    :cond_0
    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/xJb;->typeName:Ljava/lang/String;

    .line 132
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/xJb;->typeKey:Ljava/lang/String;

    .line 135
    const/4 v7, 0x0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lc8/RJb;->computeGetters(Ljava/lang/Class;IZLc8/KIb;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    .line 144
    .local v13, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v14, "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/NJb;

    .line 147
    .local v12, "fieldInfo":Lc8/NJb;
    new-instance v11, Lc8/tJb;

    invoke-direct {v11, v12}, Lc8/tJb;-><init>(Lc8/NJb;)V

    .line 149
    .local v11, "fieldDeser":Lc8/tJb;
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 92
    .end local v5    # "jsonType":Lc8/KIb;
    .end local v11    # "fieldDeser":Lc8/tJb;
    .end local v12    # "fieldInfo":Lc8/NJb;
    .end local v13    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    .end local v20    # "typeKey":Ljava/lang/String;
    .end local v21    # "typeName":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 103
    .restart local v5    # "jsonType":Lc8/KIb;
    .restart local v20    # "typeKey":Ljava/lang/String;
    .restart local v21    # "typeName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    .line 104
    .local v19, "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    if-eqz v19, :cond_3

    const-class v2, Ljava/lang/Object;

    move-object/from16 v0, v19

    if-eq v0, v2, :cond_3

    .line 106
    const-class v2, Lc8/KIb;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lc8/KIb;

    .line 107
    .local v18, "superJsonType":Lc8/KIb;
    if-eqz v18, :cond_3

    .line 111
    invoke-interface/range {v18 .. v18}, Lc8/KIb;->typeKey()Ljava/lang/String;

    move-result-object v20

    .line 112
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 105
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v19

    goto :goto_3

    .line 117
    .end local v18    # "superJsonType":Lc8/KIb;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_5

    aget-object v15, v3, v2

    .line 118
    .local v15, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Lc8/KIb;

    invoke-virtual {v15, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v18

    check-cast v18, Lc8/KIb;

    .line 119
    .restart local v18    # "superJsonType":Lc8/KIb;
    if-eqz v18, :cond_4

    .line 120
    invoke-interface/range {v18 .. v18}, Lc8/KIb;->typeKey()Ljava/lang/String;

    move-result-object v20

    .line 121
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    .line 117
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 126
    .end local v15    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "superJsonType":Lc8/KIb;
    :cond_5
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 127
    const/16 v20, 0x0

    goto/16 :goto_1

    .line 152
    .end local v19    # "supperClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v13    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    :cond_6
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lc8/tJb;

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc8/tJb;

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/xJb;->getters:[Lc8/tJb;

    .line 155
    const/16 v16, 0x0

    .line 157
    .local v16, "orders":[Ljava/lang/String;
    if-eqz v5, :cond_7

    .line 158
    invoke-interface {v5}, Lc8/KIb;->orders()[Ljava/lang/String;

    move-result-object v16

    .line 161
    :cond_7
    if-eqz v16, :cond_9

    move-object/from16 v0, v16

    array-length v2, v0

    if-eqz v2, :cond_9

    .line 162
    const/4 v7, 0x1

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-object/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lc8/RJb;->computeGetters(Ljava/lang/Class;IZLc8/KIb;Ljava/util/Map;ZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    .line 171
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .restart local v14    # "getterList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/FieldSerializer;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/NJb;

    .line 174
    .restart local v12    # "fieldInfo":Lc8/NJb;
    new-instance v11, Lc8/tJb;

    invoke-direct {v11, v12}, Lc8/tJb;-><init>(Lc8/NJb;)V

    .line 175
    .restart local v11    # "fieldDeser":Lc8/tJb;
    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 178
    .end local v11    # "fieldDeser":Lc8/tJb;
    .end local v12    # "fieldInfo":Lc8/NJb;
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lc8/tJb;

    invoke-interface {v14, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lc8/tJb;

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/xJb;->sortedGetters:[Lc8/tJb;

    .line 190
    :goto_6
    return-void

    .line 180
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/xJb;->getters:[Lc8/tJb;

    array-length v2, v2

    new-array v0, v2, [Lc8/tJb;

    move-object/from16 v17, v0

    .line 181
    .local v17, "sortedGetters":[Lc8/tJb;
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/xJb;->getters:[Lc8/tJb;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/xJb;->getters:[Lc8/tJb;

    array-length v6, v6

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/xJb;->getters:[Lc8/tJb;

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 185
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/xJb;->getters:[Lc8/tJb;

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/xJb;->sortedGetters:[Lc8/tJb;

    goto :goto_6

    .line 187
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/xJb;->sortedGetters:[Lc8/tJb;

    goto :goto_6
.end method

.method public constructor <init>(Ljava/lang/Class;Lcom/alibaba/fastjson/PropertyNamingStrategy;)V
    .locals 9
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    const/4 v3, 0x0

    check-cast v3, Ljava/util/Map;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lc8/xJb;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 57
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 9
    .param p2, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x1

    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {p2}, Lc8/xJb;->map([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v6, v5

    move v7, v5

    invoke-direct/range {v0 .. v8}, Lc8/xJb;-><init>(Ljava/lang/Class;ILjava/util/Map;ZZZZLcom/alibaba/fastjson/PropertyNamingStrategy;)V

    .line 61
    return-void
.end method

.method private static varargs map([Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .param p0, "aliasList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 66
    .local v0, "alias":Ljava/lang/String;
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v0    # "alias":Ljava/lang/String;
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 662
    new-instance v1, Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lc8/xJb;->sortedGetters:[Lc8/tJb;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 664
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lc8/xJb;->sortedGetters:[Lc8/tJb;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 665
    .local v0, "getter":Lc8/tJb;
    iget-object v5, v0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    iget-object v5, v5, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lc8/tJb;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    .end local v0    # "getter":Lc8/tJb;
    :cond_0
    return-object v1
.end method

.method public write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 69
    .param p1, "serializer"    # Lc8/wJb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->out:Lc8/JJb;

    move-object/from16 v42, v0

    .line 195
    .local v42, "out":Lc8/JJb;
    if-nez p2, :cond_0

    .line 196
    invoke-virtual/range {v42 .. v42}, Lc8/JJb;->writeNull()V

    .line 658
    :goto_0
    return-void

    .line 200
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->context:Lc8/GJb;

    move-object/from16 v65, v0

    if-eqz v65, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->context:Lc8/GJb;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget v0, v0, Lc8/GJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_2

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    if-eqz v65, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    .line 203
    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v65

    if-eqz v65, :cond_2

    .line 204
    invoke-virtual/range {p1 .. p2}, Lc8/wJb;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_2
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_b

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xJb;->sortedGetters:[Lc8/tJb;

    move-object/from16 v27, v0

    .line 216
    .local v27, "getters":[Lc8/tJb;
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->context:Lc8/GJb;

    move-object/from16 v43, v0

    .line 218
    .local v43, "parent":Lc8/GJb;
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_4

    .line 219
    new-instance v65, Lc8/GJb;

    move-object/from16 v0, p0

    iget v0, v0, Lc8/xJb;->features:I

    move/from16 v66, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v43

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, v66

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/GJb;-><init>(Lc8/GJb;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v0, v65

    move-object/from16 v1, p1

    iput-object v0, v1, Lc8/wJb;->context:Lc8/GJb;

    .line 220
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    if-nez v65, :cond_3

    .line 221
    new-instance v65, Ljava/util/IdentityHashMap;

    invoke-direct/range {v65 .. v65}, Ljava/util/IdentityHashMap;-><init>()V

    move-object/from16 v0, v65

    move-object/from16 v1, p1

    iput-object v0, v1, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    .line 223
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->references:Ljava/util/IdentityHashMap;

    move-object/from16 v65, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->context:Lc8/GJb;

    move-object/from16 v66, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lc8/xJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_5

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BeanToArray:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_c

    :cond_5
    const/16 v63, 0x1

    .line 232
    .local v63, "writeAsArray":Z
    :goto_2
    if-eqz v63, :cond_d

    const/16 v56, 0x5b

    .line 233
    .local v56, "startSeperator":C
    :goto_3
    if-eqz v63, :cond_e

    const/16 v17, 0x5d

    .line 236
    .local v17, "endSeperator":C
    :goto_4
    :try_start_0
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v65, v0

    add-int/lit8 v37, v65, 0x1

    .line 237
    .local v37, "newcount":I
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_6

    .line 238
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_f

    .line 239
    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lc8/JJb;->expandCapacity(I)V

    .line 245
    :cond_6
    :goto_5
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v66, v0

    aput-char v56, v65, v66

    .line 246
    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lc8/JJb;->count:I

    .line 249
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v65, v0

    if-lez v65, :cond_7

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_7

    .line 251
    invoke-virtual/range {p1 .. p1}, Lc8/wJb;->incrementIndent()V

    .line 252
    invoke-virtual/range {p1 .. p1}, Lc8/wJb;->println()V

    .line 255
    :cond_7
    const/4 v13, 0x0

    .line 258
    .local v13, "commaFlag":Z
    move-object/from16 v0, p0

    iget v0, v0, Lc8/xJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_8

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_10

    if-nez p4, :cond_8

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteRootClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_8

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->context:Lc8/GJb;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lc8/GJb;->parent:Lc8/GJb;

    move-object/from16 v65, v0

    if-eqz v65, :cond_10

    :cond_8
    const/16 v29, 0x1

    .line 264
    .local v29, "isWriteClassName":Z
    :goto_6
    if-eqz v29, :cond_a

    .line 265
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v39

    .line 266
    .local v39, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v39

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_a

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xJb;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    if-eqz v65, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xJb;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    :goto_7
    const/16 v66, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lc8/JJb;->writeFieldName(Ljava/lang/String;Z)V

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xJb;->typeName:Ljava/lang/String;

    move-object/from16 v57, v0

    .line 269
    .local v57, "typeName":Ljava/lang/String;
    if-nez v57, :cond_9

    .line 270
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v65

    invoke-static/range {v65 .. v65}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v57

    .line 272
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    .line 273
    const/4 v13, 0x1

    .line 277
    .end local v39    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v57    # "typeName":Ljava/lang/String;
    :cond_a
    if-eqz v13, :cond_12

    const/16 v54, 0x2c

    .line 279
    .local v54, "seperator":C
    :goto_8
    move/from16 v36, v54

    .line 280
    .local v36, "newSeperator":C
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->beforeFilters:Ljava/util/List;

    move-object/from16 v65, v0

    if-eqz v65, :cond_13

    .line 281
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->beforeFilters:Ljava/util/List;

    move-object/from16 v65, v0

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_9
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_13

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/mJb;

    .line 282
    .local v10, "beforeFilter":Lc8/mJb;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v36

    invoke-virtual {v10, v0, v1, v2}, Lc8/mJb;->writeBefore(Lc8/wJb;Ljava/lang/Object;C)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v36

    .line 283
    goto :goto_9

    .line 213
    .end local v10    # "beforeFilter":Lc8/mJb;
    .end local v13    # "commaFlag":Z
    .end local v17    # "endSeperator":C
    .end local v27    # "getters":[Lc8/tJb;
    .end local v29    # "isWriteClassName":Z
    .end local v36    # "newSeperator":C
    .end local v37    # "newcount":I
    .end local v43    # "parent":Lc8/GJb;
    .end local v54    # "seperator":C
    .end local v56    # "startSeperator":C
    .end local v63    # "writeAsArray":Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xJb;->getters:[Lc8/tJb;

    move-object/from16 v27, v0

    .restart local v27    # "getters":[Lc8/tJb;
    goto/16 :goto_1

    .line 228
    .restart local v43    # "parent":Lc8/GJb;
    :cond_c
    const/16 v63, 0x0

    goto/16 :goto_2

    .line 232
    .restart local v63    # "writeAsArray":Z
    :cond_d
    const/16 v56, 0x7b

    goto/16 :goto_3

    .line 233
    .restart local v56    # "startSeperator":C
    :cond_e
    const/16 v17, 0x7d

    goto/16 :goto_4

    .line 241
    .restart local v17    # "endSeperator":C
    .restart local v37    # "newcount":I
    :cond_f
    :try_start_1
    invoke-virtual/range {v42 .. v42}, Lc8/JJb;->flush()V

    .line 242
    const/16 v37, 0x1

    goto/16 :goto_5

    .line 258
    .restart local v13    # "commaFlag":Z
    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_6

    .line 267
    .restart local v29    # "isWriteClassName":Z
    .restart local v39    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->config:Lc8/HJb;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    iget-object v0, v0, Lc8/HJb;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    goto/16 :goto_7

    .line 277
    .end local v39    # "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_12
    const/16 v54, 0x0

    goto :goto_8

    .line 285
    .restart local v36    # "newSeperator":C
    .restart local v54    # "seperator":C
    :cond_13
    const/16 v65, 0x2c

    move/from16 v0, v36

    move/from16 v1, v65

    if-ne v0, v1, :cond_1b

    const/4 v13, 0x1

    .line 287
    :goto_a
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_1c

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_1c

    const/4 v14, 0x1

    .line 289
    .local v14, "directWritePrefix":Z
    :goto_b
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_1d

    const/16 v58, 0x1

    .line 290
    .local v58, "useSingleQuote":Z
    :goto_c
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->NotWriteDefaultValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_1e

    const/16 v38, 0x1

    .line 292
    .local v38, "notWriteDefaultValue":Z
    :goto_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->propertyFilters:Ljava/util/List;

    move-object/from16 v45, v0

    .line 293
    .local v45, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->nameFilters:Ljava/util/List;

    move-object/from16 v35, v0

    .line 294
    .local v35, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->valueFilters:Ljava/util/List;

    move-object/from16 v61, v0

    .line 295
    .local v61, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v25, v0

    .line 297
    .local v25, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_e
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v28

    move/from16 v1, v65

    if-ge v0, v1, :cond_53

    .line 298
    aget-object v23, v27, v28

    .line 299
    .local v23, "fieldSerializer":Lc8/tJb;
    move-object/from16 v0, v23

    iget-object v0, v0, Lc8/tJb;->fieldInfo:Lc8/NJb;

    move-object/from16 v21, v0

    .line 300
    .local v21, "fieldInfo":Lc8/NJb;
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    move-object/from16 v20, v0

    .line 301
    .local v20, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/NJb;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    .line 302
    .local v22, "fieldInfoName":Ljava/lang/String;
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_14

    .line 303
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v19, v0

    .line 304
    .local v19, "field":Ljava/lang/reflect/Field;
    if-eqz v19, :cond_14

    .line 305
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lc8/NJb;->fieldTransient:Z

    move/from16 v65, v0

    if-nez v65, :cond_34

    .line 311
    .end local v19    # "field":Ljava/lang/reflect/Field;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xJb;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    if-eqz v65, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xJb;->typeKey:Ljava/lang/String;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v65

    if-nez v65, :cond_34

    .line 315
    :cond_15
    const/4 v9, 0x1

    .line 317
    .local v9, "applyName":Z
    if-eqz v25, :cond_17

    .line 318
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :cond_16
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_17

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lc8/FJb;

    .line 319
    .local v24, "filter":Lc8/FJb;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lc8/FJb;->apply(Lc8/wJb;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v66

    if-nez v66, :cond_16

    .line 320
    const/4 v9, 0x0

    .line 326
    .end local v24    # "filter":Lc8/FJb;
    :cond_17
    if-eqz v9, :cond_34

    .line 330
    const/16 v46, 0x0

    .line 331
    .local v46, "propertyValue":Ljava/lang/Object;
    const/16 v49, 0x0

    .line 332
    .local v49, "propertyValueInt":I
    const-wide/16 v50, 0x0

    .line 333
    .local v50, "propertyValueLong":J
    const/16 v47, 0x0

    .line 335
    .local v47, "propertyValueBoolean":Z
    const/16 v48, 0x0

    .line 336
    .local v48, "propertyValueGot":Z
    const/16 v62, 0x0

    .line 337
    .local v62, "valueGot":Z
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lc8/NJb;->fieldAccess:Z

    move/from16 v65, v0

    if-eqz v65, :cond_22

    .line 338
    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_1f

    .line 339
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v49

    .line 340
    const/16 v62, 0x1

    .line 356
    .end local v46    # "propertyValue":Ljava/lang/Object;
    :goto_f
    const/4 v8, 0x1

    .line 358
    .local v8, "apply":Z
    if-eqz v45, :cond_5b

    .line 359
    if-eqz v62, :cond_5a

    .line 360
    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_23

    .line 361
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 362
    .local v46, "propertyValue":Ljava/lang/Integer;
    const/16 v48, 0x1

    move-object/from16 v41, v46

    .line 372
    .end local v46    # "propertyValue":Ljava/lang/Integer;
    :goto_10
    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :cond_18
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_19

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lc8/EJb;

    .line 373
    .local v44, "propertyFilter":Lc8/EJb;
    move-object/from16 v0, v44

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lc8/EJb;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v66

    if-nez v66, :cond_18

    .line 374
    const/4 v8, 0x0

    .line 381
    .end local v44    # "propertyFilter":Lc8/EJb;
    :cond_19
    :goto_11
    if-eqz v8, :cond_34

    .line 385
    move-object/from16 v31, v22

    .line 387
    .local v31, "key":Ljava/lang/String;
    if-eqz v35, :cond_27

    .line 388
    if-eqz v62, :cond_1a

    if-nez v48, :cond_1a

    .line 389
    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_25

    .line 390
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 391
    .restart local v46    # "propertyValue":Ljava/lang/Integer;
    const/16 v48, 0x1

    move-object/from16 v41, v46

    .line 401
    .end local v46    # "propertyValue":Ljava/lang/Integer;
    :cond_1a
    :goto_12
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_13
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_27

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lc8/BJb;

    .line 402
    .local v34, "nameFilter":Lc8/BJb;
    move-object/from16 v0, v34

    move-object/from16 v1, p2

    move-object/from16 v2, v31

    move-object/from16 v3, v41

    invoke-interface {v0, v1, v2, v3}, Lc8/BJb;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 403
    goto :goto_13

    .line 285
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v14    # "directWritePrefix":Z
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldInfo":Lc8/NJb;
    .end local v22    # "fieldInfoName":Ljava/lang/String;
    .end local v23    # "fieldSerializer":Lc8/tJb;
    .end local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v28    # "i":I
    .end local v31    # "key":Ljava/lang/String;
    .end local v34    # "nameFilter":Lc8/BJb;
    .end local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v38    # "notWriteDefaultValue":Z
    .end local v45    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v47    # "propertyValueBoolean":Z
    .end local v48    # "propertyValueGot":Z
    .end local v49    # "propertyValueInt":I
    .end local v50    # "propertyValueLong":J
    .end local v58    # "useSingleQuote":Z
    .end local v61    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .end local v62    # "valueGot":Z
    :cond_1b
    const/4 v13, 0x0

    goto/16 :goto_a

    .line 287
    :cond_1c
    const/4 v14, 0x0

    goto/16 :goto_b

    .line 289
    .restart local v14    # "directWritePrefix":Z
    :cond_1d
    const/16 v58, 0x0

    goto/16 :goto_c

    .line 290
    .restart local v58    # "useSingleQuote":Z
    :cond_1e
    const/16 v38, 0x0

    goto/16 :goto_d

    .line 341
    .restart local v9    # "applyName":Z
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "fieldInfo":Lc8/NJb;
    .restart local v22    # "fieldInfoName":Ljava/lang/String;
    .restart local v23    # "fieldSerializer":Lc8/tJb;
    .restart local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v28    # "i":I
    .restart local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v38    # "notWriteDefaultValue":Z
    .restart local v45    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .local v46, "propertyValue":Ljava/lang/Object;
    .restart local v47    # "propertyValueBoolean":Z
    .restart local v48    # "propertyValueGot":Z
    .restart local v49    # "propertyValueInt":I
    .restart local v50    # "propertyValueLong":J
    .restart local v61    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v62    # "valueGot":Z
    :cond_1f
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_20

    .line 342
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v50

    .line 343
    const/16 v62, 0x1

    goto/16 :goto_f

    .line 344
    :cond_20
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_21

    .line 345
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v47

    .line 346
    const/16 v62, 0x1

    goto/16 :goto_f

    .line 348
    :cond_21
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/NJb;->field:Ljava/lang/reflect/Field;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .line 349
    const/16 v48, 0x1

    goto/16 :goto_f

    .line 352
    :cond_22
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lc8/tJb;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .line 353
    const/16 v48, 0x1

    goto/16 :goto_f

    .line 363
    .end local v46    # "propertyValue":Ljava/lang/Object;
    .restart local v8    # "apply":Z
    :cond_23
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_24

    .line 364
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    .line 365
    .local v46, "propertyValue":Ljava/lang/Long;
    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_10

    .line 366
    .end local v46    # "propertyValue":Ljava/lang/Long;
    :cond_24
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_5a

    .line 367
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    .line 368
    .local v46, "propertyValue":Ljava/lang/Boolean;
    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_10

    .line 392
    .end local v46    # "propertyValue":Ljava/lang/Boolean;
    .restart local v31    # "key":Ljava/lang/String;
    :cond_25
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_26

    .line 393
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    .line 394
    .local v46, "propertyValue":Ljava/lang/Long;
    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_12

    .line 395
    .end local v46    # "propertyValue":Ljava/lang/Long;
    :cond_26
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_1a

    .line 396
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    .line 397
    .local v46, "propertyValue":Ljava/lang/Boolean;
    const/16 v48, 0x1

    move-object/from16 v41, v46

    goto/16 :goto_12

    .line 409
    .end local v46    # "propertyValue":Ljava/lang/Boolean;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_27
    if-eqz v61, :cond_2a

    .line 410
    if-eqz v62, :cond_59

    if-nez v48, :cond_59

    .line 411
    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_28

    .line 412
    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    .line 413
    .local v46, "propertyValue":Ljava/lang/Integer;
    move-object/from16 v41, v46

    .line 414
    .local v41, "originalValue":Ljava/lang/Integer;
    const/16 v48, 0x1

    move-object/from16 v66, v46

    .line 426
    .end local v41    # "originalValue":Ljava/lang/Integer;
    .end local v46    # "propertyValue":Ljava/lang/Integer;
    :goto_14
    invoke-interface/range {v61 .. v61}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_15
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v67

    if-eqz v67, :cond_2b

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Lc8/MJb;

    .line 427
    .local v60, "valueFilter":Lc8/MJb;
    move-object/from16 v0, v60

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v66

    invoke-interface {v0, v1, v2, v3}, Lc8/MJb;->process(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    .local v46, "propertyValue":Ljava/lang/Object;
    move-object/from16 v66, v46

    .line 428
    goto :goto_15

    .line 415
    .end local v46    # "propertyValue":Ljava/lang/Object;
    .end local v60    # "valueFilter":Lc8/MJb;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_28
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_29

    .line 416
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v46

    .line 417
    .local v46, "propertyValue":Ljava/lang/Long;
    move-object/from16 v41, v46

    .line 418
    .local v41, "originalValue":Ljava/lang/Long;
    const/16 v48, 0x1

    move-object/from16 v66, v46

    goto :goto_14

    .line 419
    .end local v46    # "propertyValue":Ljava/lang/Long;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_29
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_59

    .line 420
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    .line 421
    .local v46, "propertyValue":Ljava/lang/Boolean;
    move-object/from16 v41, v46

    .line 422
    .local v41, "originalValue":Ljava/lang/Boolean;
    const/16 v48, 0x1

    move-object/from16 v66, v46

    goto :goto_14

    .end local v46    # "propertyValue":Ljava/lang/Boolean;
    .local v41, "originalValue":Ljava/lang/Object;
    :cond_2a
    move-object/from16 v66, v41

    .line 432
    .end local v41    # "originalValue":Ljava/lang/Object;
    :cond_2b
    if-eqz v48, :cond_2c

    if-nez v66, :cond_2c

    if-nez v63, :cond_2c

    .line 433
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lc8/tJb;->writeNull:Z

    move/from16 v65, v0

    if-nez v65, :cond_2c

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v65, v65, v67

    if-eqz v65, :cond_34

    .line 439
    :cond_2c
    if-eqz v48, :cond_2f

    if-eqz v66, :cond_2f

    if-eqz v38, :cond_2f

    .line 440
    sget-object v65, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2d

    sget-object v65, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2d

    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2d

    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2d

    sget-object v65, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-eq v0, v1, :cond_2d

    sget-object v65, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_2e

    :cond_2d
    move-object/from16 v0, v66

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v65, v0

    if-eqz v65, :cond_2e

    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Number;

    move-object/from16 v65, v0

    .line 448
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Number;->byteValue()B

    move-result v65

    if-eqz v65, :cond_34

    .line 450
    :cond_2e
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_2f

    move-object/from16 v0, v66

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v65, v0

    if-eqz v65, :cond_2f

    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v65, v0

    .line 452
    invoke-virtual/range {v65 .. v65}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v65

    if-eqz v65, :cond_34

    .line 457
    :cond_2f
    if-eqz v13, :cond_31

    .line 460
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v65, v0

    add-int/lit8 v37, v65, 0x1

    .line 461
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_30

    .line 462
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_35

    .line 463
    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lc8/JJb;->expandCapacity(I)V

    .line 469
    :cond_30
    :goto_16
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v67, v0

    const/16 v68, 0x2c

    aput-char v68, v65, v67

    .line 470
    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lc8/JJb;->count:I

    .line 472
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v65, v65, v67

    if-eqz v65, :cond_31

    .line 473
    invoke-virtual/range {p1 .. p1}, Lc8/wJb;->println()V

    .line 477
    :cond_31
    move-object/from16 v0, v31

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_36

    .line 478
    if-nez v63, :cond_32

    .line 479
    const/16 v65, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    move/from16 v2, v65

    invoke-virtual {v0, v1, v2}, Lc8/JJb;->writeFieldName(Ljava/lang/String;Z)V

    .line 482
    :cond_32
    move-object/from16 v0, p1

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/Object;)V

    .line 620
    :cond_33
    :goto_17
    const/4 v13, 0x1

    .line 297
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v31    # "key":Ljava/lang/String;
    .end local v47    # "propertyValueBoolean":Z
    .end local v48    # "propertyValueGot":Z
    .end local v49    # "propertyValueInt":I
    .end local v50    # "propertyValueLong":J
    .end local v62    # "valueGot":Z
    :cond_34
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_e

    .line 465
    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v31    # "key":Ljava/lang/String;
    .restart local v47    # "propertyValueBoolean":Z
    .restart local v48    # "propertyValueGot":Z
    .restart local v49    # "propertyValueInt":I
    .restart local v50    # "propertyValueLong":J
    .restart local v62    # "valueGot":Z
    :cond_35
    invoke-virtual/range {v42 .. v42}, Lc8/JJb;->flush()V

    .line 466
    const/16 v37, 0x1

    goto :goto_16

    .line 483
    :cond_36
    move-object/from16 v0, v41

    move-object/from16 v1, v66

    if-eq v0, v1, :cond_39

    .line 484
    if-nez v63, :cond_37

    .line 485
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/tJb;->writePrefix(Lc8/wJb;)V

    .line 487
    :cond_37
    move-object/from16 v0, p1

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_17

    .line 650
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v13    # "commaFlag":Z
    .end local v14    # "directWritePrefix":Z
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldInfo":Lc8/NJb;
    .end local v22    # "fieldInfoName":Ljava/lang/String;
    .end local v23    # "fieldSerializer":Lc8/tJb;
    .end local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v28    # "i":I
    .end local v29    # "isWriteClassName":Z
    .end local v31    # "key":Ljava/lang/String;
    .end local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v36    # "newSeperator":C
    .end local v37    # "newcount":I
    .end local v38    # "notWriteDefaultValue":Z
    .end local v45    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v47    # "propertyValueBoolean":Z
    .end local v48    # "propertyValueGot":Z
    .end local v49    # "propertyValueInt":I
    .end local v50    # "propertyValueLong":J
    .end local v54    # "seperator":C
    .end local v58    # "useSingleQuote":Z
    .end local v61    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .end local v62    # "valueGot":Z
    :catch_0
    move-exception v15

    .line 651
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v18, "write javaBean error"

    .line 652
    .local v18, "errorMessage":Ljava/lang/String;
    if-eqz p3, :cond_38

    .line 653
    new-instance v65, Ljava/lang/StringBuilder;

    invoke-direct/range {v65 .. v65}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    const-string/jumbo v66, ", fieldName : "

    invoke-virtual/range {v65 .. v66}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v65

    move-object/from16 v0, v65

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v65

    invoke-virtual/range {v65 .. v65}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 655
    :cond_38
    new-instance v65, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v65

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v65
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 657
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v18    # "errorMessage":Ljava/lang/String;
    :catchall_0
    move-exception v65

    move-object/from16 v0, v43

    move-object/from16 v1, p1

    iput-object v0, v1, Lc8/wJb;->context:Lc8/GJb;

    throw v65

    .line 489
    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v13    # "commaFlag":Z
    .restart local v14    # "directWritePrefix":Z
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "fieldInfo":Lc8/NJb;
    .restart local v22    # "fieldInfoName":Ljava/lang/String;
    .restart local v23    # "fieldSerializer":Lc8/tJb;
    .restart local v25    # "filters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .restart local v28    # "i":I
    .restart local v29    # "isWriteClassName":Z
    .restart local v31    # "key":Ljava/lang/String;
    .restart local v35    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .restart local v36    # "newSeperator":C
    .restart local v37    # "newcount":I
    .restart local v38    # "notWriteDefaultValue":Z
    .restart local v45    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .restart local v47    # "propertyValueBoolean":Z
    .restart local v48    # "propertyValueGot":Z
    .restart local v49    # "propertyValueInt":I
    .restart local v50    # "propertyValueLong":J
    .restart local v54    # "seperator":C
    .restart local v58    # "useSingleQuote":Z
    .restart local v61    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    .restart local v62    # "valueGot":Z
    :cond_39
    if-nez v63, :cond_3b

    .line 490
    if-eqz v14, :cond_3d

    .line 493
    :try_start_3
    move-object/from16 v0, v23

    iget-object v11, v0, Lc8/tJb;->name_chars:[C

    .line 494
    .local v11, "c":[C
    const/16 v40, 0x0

    .line 495
    .local v40, "off":I
    array-length v0, v11

    move/from16 v32, v0

    .line 497
    .local v32, "len":I
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v65, v0

    add-int v37, v65, v32

    .line 498
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_3a

    .line 499
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_3c

    .line 500
    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lc8/JJb;->expandCapacity(I)V

    .line 513
    :cond_3a
    :goto_18
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v67, v0

    move/from16 v0, v40

    move-object/from16 v1, v65

    move/from16 v2, v67

    move/from16 v3, v32

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lc8/JJb;->count:I

    .line 521
    .end local v11    # "c":[C
    .end local v32    # "len":I
    .end local v40    # "off":I
    :cond_3b
    :goto_19
    if-eqz v62, :cond_47

    if-nez v48, :cond_47

    .line 522
    sget-object v65, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_44

    .line 525
    const/high16 v65, -0x80000000

    move/from16 v0, v49

    move/from16 v1, v65

    if-ne v0, v1, :cond_3e

    .line 526
    const-string/jumbo v65, "-2147483648"

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 503
    .restart local v11    # "c":[C
    .restart local v32    # "len":I
    .restart local v40    # "off":I
    :cond_3c
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v67, v0

    sub-int v53, v65, v67

    .line 504
    .local v53, "rest":I
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v67, v0

    move/from16 v0, v40

    move-object/from16 v1, v65

    move/from16 v2, v67

    move/from16 v3, v53

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 505
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v65

    move-object/from16 v1, v42

    iput v0, v1, Lc8/JJb;->count:I

    .line 506
    invoke-virtual/range {v42 .. v42}, Lc8/JJb;->flush()V

    .line 507
    sub-int v32, v32, v53

    .line 508
    add-int v40, v40, v53

    .line 509
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v32

    move/from16 v1, v65

    if-gt v0, v1, :cond_3c

    .line 510
    move/from16 v37, v32

    goto/16 :goto_18

    .line 517
    .end local v11    # "c":[C
    .end local v32    # "len":I
    .end local v40    # "off":I
    .end local v53    # "rest":I
    :cond_3d
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/tJb;->writePrefix(Lc8/wJb;)V

    goto :goto_19

    .line 529
    :cond_3e
    if-gez v49, :cond_41

    move/from16 v0, v49

    neg-int v0, v0

    move/from16 v64, v0

    .line 530
    .local v64, "x":I
    :goto_1a
    const/16 v30, 0x0

    .line 531
    .local v30, "j":I
    :goto_1b
    sget-object v65, Lc8/JJb;->sizeTable:[I

    aget v65, v65, v30

    move/from16 v0, v64

    move/from16 v1, v65

    if-gt v0, v1, :cond_42

    .line 532
    add-int/lit8 v55, v30, 0x1

    .line 537
    .local v55, "size":I
    if-gez v49, :cond_3f

    .line 538
    add-int/lit8 v55, v55, 0x1

    .line 541
    :cond_3f
    const/16 v26, 0x0

    .line 542
    .local v26, "flushed":Z
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v65, v0

    add-int v37, v65, v55

    .line 543
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_40

    .line 544
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_43

    .line 545
    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lc8/JJb;->expandCapacity(I)V

    .line 554
    :cond_40
    :goto_1c
    if-nez v26, :cond_33

    .line 555
    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-wide/from16 v0, v66

    move/from16 v2, v37

    move-object/from16 v3, v65

    invoke-static {v0, v1, v2, v3}, Lc8/JJb;->getChars(JI[C)V

    .line 556
    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lc8/JJb;->count:I

    goto/16 :goto_17

    .end local v26    # "flushed":Z
    .end local v30    # "j":I
    .end local v55    # "size":I
    .end local v64    # "x":I
    :cond_41
    move/from16 v64, v49

    .line 529
    goto :goto_1a

    .line 530
    .restart local v30    # "j":I
    .restart local v64    # "x":I
    :cond_42
    add-int/lit8 v30, v30, 0x1

    goto :goto_1b

    .line 547
    .restart local v26    # "flushed":Z
    .restart local v55    # "size":I
    :cond_43
    move/from16 v0, v55

    new-array v12, v0, [C

    .line 548
    .local v12, "chars":[C
    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move-wide/from16 v0, v66

    move/from16 v2, v55

    invoke-static {v0, v1, v2, v12}, Lc8/JJb;->getChars(JI[C)V

    .line 549
    const/16 v65, 0x0

    array-length v0, v12

    move/from16 v66, v0

    move-object/from16 v0, v42

    move/from16 v1, v65

    move/from16 v2, v66

    invoke-virtual {v0, v12, v1, v2}, Lc8/JJb;->write([CII)V

    .line 550
    const/16 v26, 0x1

    goto :goto_1c

    .line 560
    .end local v12    # "chars":[C
    .end local v26    # "flushed":Z
    .end local v30    # "j":I
    .end local v55    # "size":I
    .end local v64    # "x":I
    :cond_44
    sget-object v65, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_45

    .line 561
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->out:Lc8/JJb;

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    move-wide/from16 v1, v50

    invoke-virtual {v0, v1, v2}, Lc8/JJb;->writeLong(J)V

    goto/16 :goto_17

    .line 562
    :cond_45
    sget-object v65, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_33

    .line 563
    if-eqz v47, :cond_46

    .line 564
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->out:Lc8/JJb;

    move-object/from16 v65, v0

    sget-object v66, Lc8/xJb;->true_chars:[C

    const/16 v67, 0x0

    sget-object v68, Lc8/xJb;->true_chars:[C

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    invoke-virtual/range {v65 .. v68}, Lc8/JJb;->write([CII)V

    goto/16 :goto_17

    .line 566
    :cond_46
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->out:Lc8/JJb;

    move-object/from16 v65, v0

    sget-object v66, Lc8/xJb;->false_chars:[C

    const/16 v67, 0x0

    sget-object v68, Lc8/xJb;->false_chars:[C

    move-object/from16 v0, v68

    array-length v0, v0

    move/from16 v68, v0

    invoke-virtual/range {v65 .. v68}, Lc8/JJb;->write([CII)V

    goto/16 :goto_17

    .line 570
    :cond_47
    if-nez v63, :cond_52

    .line 571
    const-class v65, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v65

    if-ne v0, v1, :cond_4c

    .line 572
    if-nez v66, :cond_4a

    .line 573
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-nez v65, :cond_48

    move-object/from16 v0, v23

    iget v0, v0, Lc8/tJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_49

    .line 576
    :cond_48
    const-string/jumbo v65, ""

    move-object/from16 v0, v42

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 578
    :cond_49
    invoke-virtual/range {v42 .. v42}, Lc8/JJb;->writeNull()V

    goto/16 :goto_17

    .line 581
    :cond_4a
    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/String;

    move-object/from16 v52, v0

    .line 583
    .local v52, "propertyValueString":Ljava/lang/String;
    if-eqz v58, :cond_4b

    .line 584
    move-object/from16 v0, v42

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lc8/JJb;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 586
    :cond_4b
    const/16 v65, 0x0

    const/16 v66, 0x1

    move-object/from16 v0, v42

    move-object/from16 v1, v52

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3}, Lc8/JJb;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_17

    .line 590
    .end local v52    # "propertyValueString":Ljava/lang/String;
    :cond_4c
    move-object/from16 v0, v21

    iget-boolean v0, v0, Lc8/NJb;->isEnum:Z

    move/from16 v65, v0

    if-eqz v65, :cond_51

    .line 591
    if-eqz v66, :cond_50

    .line 592
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v67, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingToString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v67

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v67, v0

    and-int v65, v65, v67

    if-eqz v65, :cond_4f

    .line 593
    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v16, v0

    .line 595
    .local v16, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v33

    .line 596
    .local v33, "name":Ljava/lang/String;
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_4d

    const/16 v59, 0x1

    .line 598
    .local v59, "userSingleQuote":Z
    :goto_1d
    if-eqz v59, :cond_4e

    .line 599
    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lc8/JJb;->writeStringWithSingleQuote(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 596
    .end local v59    # "userSingleQuote":Z
    :cond_4d
    const/16 v59, 0x0

    goto :goto_1d

    .line 601
    .restart local v59    # "userSingleQuote":Z
    :cond_4e
    const/16 v65, 0x0

    const/16 v66, 0x0

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    move/from16 v2, v65

    move/from16 v3, v66

    invoke-virtual {v0, v1, v2, v3}, Lc8/JJb;->writeStringWithDoubleQuote(Ljava/lang/String;CZ)V

    goto/16 :goto_17

    .line 604
    .end local v16    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .end local v33    # "name":Ljava/lang/String;
    .end local v59    # "userSingleQuote":Z
    :cond_4f
    move-object/from16 v0, v66

    check-cast v0, Ljava/lang/Enum;

    move-object/from16 v16, v0

    .line 605
    .restart local v16    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v65

    move-object/from16 v0, v42

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Lc8/JJb;->writeInt(I)V

    goto/16 :goto_17

    .line 608
    .end local v16    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    :cond_50
    invoke-virtual/range {v42 .. v42}, Lc8/JJb;->writeNull()V

    goto/16 :goto_17

    .line 611
    :cond_51
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lc8/tJb;->writeValue(Lc8/wJb;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 615
    :cond_52
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object/from16 v2, v66

    invoke-virtual {v0, v1, v2}, Lc8/tJb;->writeValue(Lc8/wJb;Ljava/lang/Object;)V

    goto/16 :goto_17

    .line 624
    .end local v8    # "apply":Z
    .end local v9    # "applyName":Z
    .end local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v21    # "fieldInfo":Lc8/NJb;
    .end local v22    # "fieldInfoName":Ljava/lang/String;
    .end local v23    # "fieldSerializer":Lc8/tJb;
    .end local v31    # "key":Ljava/lang/String;
    .end local v47    # "propertyValueBoolean":Z
    .end local v48    # "propertyValueGot":Z
    .end local v49    # "propertyValueInt":I
    .end local v50    # "propertyValueLong":J
    .end local v62    # "valueGot":Z
    :cond_53
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->afterFilters:Ljava/util/List;

    move-object/from16 v65, v0

    if-eqz v65, :cond_55

    .line 625
    if-eqz v13, :cond_54

    const/16 v7, 0x2c

    .line 626
    .local v7, "afterOperator":C
    :goto_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->afterFilters:Ljava/util/List;

    move-object/from16 v65, v0

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v65

    :goto_1f
    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->hasNext()Z

    move-result v66

    if-eqz v66, :cond_55

    invoke-interface/range {v65 .. v65}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/jJb;

    .line 627
    .local v6, "afterFilter":Lc8/jJb;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v6, v0, v1, v7}, Lc8/jJb;->writeAfter(Lc8/wJb;Ljava/lang/Object;C)C

    move-result v7

    .line 628
    goto :goto_1f

    .line 625
    .end local v6    # "afterFilter":Lc8/jJb;
    .end local v7    # "afterOperator":C
    :cond_54
    const/4 v7, 0x0

    goto :goto_1e

    .line 631
    :cond_55
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v65, v0

    if-lez v65, :cond_56

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v65, v0

    sget-object v66, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v66

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v66, v0

    and-int v65, v65, v66

    if-eqz v65, :cond_56

    .line 632
    invoke-virtual/range {p1 .. p1}, Lc8/wJb;->decrementIdent()V

    .line 633
    invoke-virtual/range {p1 .. p1}, Lc8/wJb;->println()V

    .line 638
    :cond_56
    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v65, v0

    add-int/lit8 v37, v65, 0x1

    .line 639
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v65

    array-length v0, v0

    move/from16 v65, v0

    move/from16 v0, v37

    move/from16 v1, v65

    if-le v0, v1, :cond_57

    .line 640
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->writer:Ljava/io/Writer;

    move-object/from16 v65, v0

    if-nez v65, :cond_58

    .line 641
    move-object/from16 v0, v42

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lc8/JJb;->expandCapacity(I)V

    .line 647
    :cond_57
    :goto_20
    move-object/from16 v0, v42

    iget-object v0, v0, Lc8/JJb;->buf:[C

    move-object/from16 v65, v0

    move-object/from16 v0, v42

    iget v0, v0, Lc8/JJb;->count:I

    move/from16 v66, v0

    aput-char v17, v65, v66

    .line 648
    move/from16 v0, v37

    move-object/from16 v1, v42

    iput v0, v1, Lc8/JJb;->count:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    move-object/from16 v0, v43

    move-object/from16 v1, p1

    iput-object v0, v1, Lc8/wJb;->context:Lc8/GJb;

    goto/16 :goto_0

    .line 643
    :cond_58
    :try_start_4
    invoke-virtual/range {v42 .. v42}, Lc8/JJb;->flush()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 644
    const/16 v37, 0x1

    goto :goto_20

    .restart local v8    # "apply":Z
    .restart local v9    # "applyName":Z
    .restart local v20    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v21    # "fieldInfo":Lc8/NJb;
    .restart local v22    # "fieldInfoName":Ljava/lang/String;
    .restart local v23    # "fieldSerializer":Lc8/tJb;
    .restart local v31    # "key":Ljava/lang/String;
    .restart local v41    # "originalValue":Ljava/lang/Object;
    .restart local v47    # "propertyValueBoolean":Z
    .restart local v48    # "propertyValueGot":Z
    .restart local v49    # "propertyValueInt":I
    .restart local v50    # "propertyValueLong":J
    .restart local v62    # "valueGot":Z
    :cond_59
    move-object/from16 v66, v41

    goto/16 :goto_14

    .end local v31    # "key":Ljava/lang/String;
    .end local v41    # "originalValue":Ljava/lang/Object;
    :cond_5a
    move-object/from16 v41, v46

    goto/16 :goto_10

    :cond_5b
    move-object/from16 v41, v46

    goto/16 :goto_11
.end method
