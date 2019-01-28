.class public Lc8/Aao;
.super Ljava/lang/Object;
.source "BeanMappingHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static assignArray(Ljava/util/List;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p0, "sourceList"    # Ljava/util/List;
    .param p1, "targetObject"    # Ljava/lang/Object;
    .param p2, "targetField"    # Ljava/lang/reflect/Field;

    .prologue
    .line 108
    invoke-static {p2}, Lc8/Aao;->getFieldActualType(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object v1

    .line 109
    .local v1, "targetClazz":Ljava/lang/Class;
    invoke-static {p0, v1}, Lc8/Aao;->mappingToArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 110
    .local v0, "filedValue":Ljava/util/List;
    if-eqz v0, :cond_0

    .line 111
    invoke-static {p1, p2, v0}, Lc8/Aao;->assignField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 113
    :cond_0
    return-void
.end method

.method private static assignBasicField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 2
    .param p0, "sourceObject"    # Ljava/lang/Object;
    .param p1, "sourceField"    # Ljava/lang/reflect/Field;
    .param p2, "targetObject"    # Ljava/lang/Object;
    .param p3, "targetField"    # Ljava/lang/reflect/Field;

    .prologue
    .line 308
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 309
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p3, p2, v1}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static assignField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 2
    .param p0, "targetObject"    # Ljava/lang/Object;
    .param p1, "targetField"    # Ljava/lang/reflect/Field;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 290
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 291
    invoke-static {p1, p0, p2}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static assignToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 3
    .param p0, "source"    # Ljava/lang/Object;
    .param p1, "targetObject"    # Ljava/lang/Object;
    .param p2, "targetField"    # Ljava/lang/reflect/Field;

    .prologue
    .line 140
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2}, Lc8/Aao;->mappingTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 141
    .local v1, "filedValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 142
    invoke-static {p1, p2, v1}, Lc8/Aao;->assignField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1    # "filedValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static checkIsArray(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "sourceField"    # Ljava/lang/reflect/Field;

    .prologue
    .line 184
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkIsBasicType(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v2, :cond_1

    .line 212
    :cond_0
    :goto_0
    return v1

    .line 197
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 199
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 201
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 203
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 205
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 207
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 209
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_0

    .line 212
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkIsCanAssignment(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p0, "sourceField"    # Ljava/lang/reflect/Field;
    .param p1, "targetField"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-static {p0}, Lc8/Aao;->checkIsBasicType(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lc8/Aao;->checkIsBasicType(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 171
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkIsObjectType(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Z
    .locals 1
    .param p0, "sourceField"    # Ljava/lang/reflect/Field;
    .param p1, "targetField"    # Ljava/lang/reflect/Field;

    .prologue
    .line 157
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkIsWrapperType(Ljava/lang/Class;)Z
    .locals 2
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v0, 0x1

    .line 244
    const-class v1, Ljava/lang/Byte;

    if-ne p0, v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    const-class v1, Ljava/lang/Boolean;

    if-eq p0, v1, :cond_0

    .line 248
    const-class v1, Ljava/lang/Short;

    if-eq p0, v1, :cond_0

    .line 250
    const-class v1, Ljava/lang/Character;

    if-eq p0, v1, :cond_0

    .line 252
    const-class v1, Ljava/lang/Integer;

    if-eq p0, v1, :cond_0

    .line 254
    const-class v1, Ljava/lang/Long;

    if-eq p0, v1, :cond_0

    .line 256
    const-class v1, Ljava/lang/Float;

    if-eq p0, v1, :cond_0

    .line 258
    const-class v1, Ljava/lang/Double;

    if-eq p0, v1, :cond_0

    .line 261
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkIsWrapperType(Ljava/lang/reflect/Field;)Z
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    const/4 v1, 0x1

    .line 222
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 223
    .local v0, "clazz":Ljava/lang/Class;
    const-class v2, Ljava/lang/Byte;

    if-ne v0, v2, :cond_1

    .line 240
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    const-class v2, Ljava/lang/Boolean;

    if-eq v0, v2, :cond_0

    .line 227
    const-class v2, Ljava/lang/Short;

    if-eq v0, v2, :cond_0

    .line 229
    const-class v2, Ljava/lang/Character;

    if-eq v0, v2, :cond_0

    .line 231
    const-class v2, Ljava/lang/Integer;

    if-eq v0, v2, :cond_0

    .line 233
    const-class v2, Ljava/lang/Long;

    if-eq v0, v2, :cond_0

    .line 235
    const-class v2, Ljava/lang/Float;

    if-eq v0, v2, :cond_0

    .line 237
    const-class v2, Ljava/lang/Double;

    if-eq v0, v2, :cond_0

    .line 240
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 365
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_1

    .line 366
    const/4 v0, 0x0

    .line 372
    :cond_0
    return-object v0

    .line 368
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v0, "classes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "superclass":Ljava/lang/Class;
    :goto_0
    if-eqz v1, :cond_0

    .line 370
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static getDeclaredField(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 2
    .param p0, "target"    # Ljava/lang/Class;
    .param p1, "sourceField"    # Ljava/lang/reflect/Field;

    .prologue
    .line 385
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 389
    :goto_0
    return-object v1

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getDeclaredFieldsMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 5
    .param p0, "target"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v1, "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {v1, p0}, Lc8/Aao;->getDeclaredFieldsMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Map;

    .line 324
    invoke-static {p0}, Lc8/Aao;->getAllSuperclasses(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 325
    .local v2, "superClazzs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 326
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 327
    .local v0, "clazz":Ljava/lang/Class;
    invoke-static {v1, v0}, Lc8/Aao;->getDeclaredFieldsMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Map;

    goto :goto_0

    .line 330
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_0
    return-object v1
.end method

.method private static getDeclaredFieldsMap(Ljava/util/Map;Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .param p1, "target"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    .local p0, "fieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 342
    .local v4, "methods":[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 343
    aget-object v1, v4, v2

    .line 344
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "methodName":Ljava/lang/String;
    const-class v5, Lc8/JIb;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 346
    .local v0, "annos":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 347
    check-cast v0, Lc8/JIb;

    .end local v0    # "annos":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v3

    .line 349
    :cond_0
    const-class v5, Lc8/Zjd;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 350
    .restart local v0    # "annos":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_1

    .line 351
    check-cast v0, Lc8/Zjd;

    .end local v0    # "annos":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lc8/Zjd;->value()Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_1
    invoke-interface {p0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_2
    return-object p0
.end method

.method private static getFieldActualType(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 4
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 123
    .local v2, "sType":Ljava/lang/reflect/Type;
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .end local v2    # "sType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 124
    .local v1, "generics":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    check-cast v3, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1    # "generics":[Ljava/lang/reflect/Type;
    :goto_0
    return-object v3

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static mappingField(Ljava/util/Map;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "sourceField"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "targetFieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 273
    .local v1, "targetField":Ljava/lang/reflect/Field;
    if-nez v1, :cond_0

    .line 274
    const-class v2, Lc8/JIb;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 275
    .local v0, "annos":Ljava/lang/annotation/Annotation;
    if-eqz v0, :cond_0

    .line 276
    check-cast v0, Lc8/JIb;

    .end local v0    # "annos":Ljava/lang/annotation/Annotation;
    invoke-interface {v0}, Lc8/JIb;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "targetField":Ljava/lang/reflect/Field;
    check-cast v1, Ljava/lang/reflect/Field;

    .line 279
    .restart local v1    # "targetField":Ljava/lang/reflect/Field;
    :cond_0
    return-object v1
.end method

.method public static mappingTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .param p0, "source"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    .line 70
    .local v6, "targetObject":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 71
    .local v1, "sourceClazz":Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 72
    .local v3, "sourceFields":[Ljava/lang/reflect/Field;
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 73
    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    array-length v7, v3

    if-lez v7, :cond_2

    .line 74
    invoke-static {p1}, Lc8/Aao;->getDeclaredFieldsMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v5

    .line 75
    .local v5, "targetFieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    array-length v9, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v2, v3, v8

    .line 76
    .local v2, "sourceField":Ljava/lang/reflect/Field;
    invoke-static {v5, v2}, Lc8/Aao;->mappingField(Ljava/util/Map;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 77
    .local v4, "targetField":Ljava/lang/reflect/Field;
    if-eqz v4, :cond_0

    .line 80
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    invoke-static {v4, v2}, Lc8/Aao;->checkIsCanAssignment(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    invoke-static {v2}, Lc8/Aao;->checkIsArray(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v4}, Lc8/Aao;->checkIsArray(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-static {v7, v6, v4}, Lc8/Aao;->assignArray(Ljava/util/List;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {p0, v2, v6, v4}, Lc8/Aao;->assignBasicField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 94
    .end local v1    # "sourceClazz":Ljava/lang/Class;
    .end local v2    # "sourceField":Ljava/lang/reflect/Field;
    .end local v3    # "sourceFields":[Ljava/lang/reflect/Field;
    .end local v4    # "targetField":Ljava/lang/reflect/Field;
    .end local v5    # "targetFieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .end local v6    # "targetObject":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-object v6

    .line 88
    .restart local v1    # "sourceClazz":Ljava/lang/Class;
    .restart local v2    # "sourceField":Ljava/lang/reflect/Field;
    .restart local v3    # "sourceFields":[Ljava/lang/reflect/Field;
    .restart local v4    # "targetField":Ljava/lang/reflect/Field;
    .restart local v5    # "targetFieldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    .restart local v6    # "targetObject":Ljava/lang/Object;, "TT;"
    :cond_3
    :try_start_1
    invoke-static {v4}, Lc8/Aao;->checkIsWrapperType(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2, v4}, Lc8/Aao;->checkIsObjectType(Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6, v4}, Lc8/Aao;->assignToField(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static mappingToArray(Ljava/util/List;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p0, "sourceList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 46
    const/4 v1, 0x0

    .line 56
    :cond_0
    return-object v1

    .line 48
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "object":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lc8/Aao;->checkIsWrapperType(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 51
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_2
    invoke-static {v0, p1}, Lc8/Aao;->mappingTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
