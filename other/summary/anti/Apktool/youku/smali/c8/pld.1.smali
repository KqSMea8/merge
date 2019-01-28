.class public final Lc8/pld;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lc8/Wjd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nld;,
        Lc8/old;
    }
.end annotation


# instance fields
.field private final constructorConstructor:Lc8/skd;

.field private final excluder:Lc8/ukd;

.field private final fieldNamingPolicy:Lc8/zjd;

.field private final jsonAdapterFactory:Lc8/cld;


# direct methods
.method public constructor <init>(Lc8/skd;Lc8/zjd;Lc8/ukd;Lc8/cld;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lc8/skd;
    .param p2, "fieldNamingPolicy"    # Lc8/zjd;
    .param p3, "excluder"    # Lc8/ukd;
    .param p4, "jsonAdapterFactory"    # Lc8/cld;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lc8/pld;->constructorConstructor:Lc8/skd;

    .line 57
    iput-object p2, p0, Lc8/pld;->fieldNamingPolicy:Lc8/zjd;

    .line 58
    iput-object p3, p0, Lc8/pld;->excluder:Lc8/ukd;

    .line 59
    iput-object p4, p0, Lc8/pld;->jsonAdapterFactory:Lc8/cld;

    .line 60
    return-void
.end method

.method private createBoundField(Lc8/Gjd;Ljava/lang/reflect/Field;Ljava/lang/String;Lc8/omd;ZZ)Lc8/old;
    .locals 14
    .param p1, "context"    # Lc8/Gjd;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "name"    # Ljava/lang/String;
    .param p5, "serialize"    # Z
    .param p6, "deserialize"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gjd;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lc8/omd",
            "<*>;ZZ)",
            "Lc8/old;"
        }
    .end annotation

    .prologue
    .line 106
    .local p4, "fieldType":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    invoke-virtual/range {p4 .. p4}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc8/Nkd;->isPrimitive(Ljava/lang/reflect/Type;)Z

    move-result v11

    .line 108
    .local v11, "isPrimitive":Z
    const-class v1, Lc8/Yjd;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v12

    check-cast v12, Lc8/Yjd;

    .line 109
    .local v12, "annotation":Lc8/Yjd;
    const/4 v13, 0x0

    .line 110
    .local v13, "mapped":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    if-eqz v12, :cond_0

    .line 111
    iget-object v1, p0, Lc8/pld;->jsonAdapterFactory:Lc8/cld;

    iget-object v2, p0, Lc8/pld;->constructorConstructor:Lc8/skd;

    move-object/from16 v0, p4

    invoke-virtual {v1, v2, p1, v0, v12}, Lc8/cld;->getTypeAdapter(Lc8/skd;Lc8/Gjd;Lc8/omd;Lc8/Yjd;)Lc8/Vjd;

    move-result-object v13

    .line 114
    :cond_0
    if-eqz v13, :cond_2

    const/4 v7, 0x1

    .line 115
    .local v7, "jsonAdapterPresent":Z
    :goto_0
    if-nez v13, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {p1, v0}, Lc8/Gjd;->getAdapter(Lc8/omd;)Lc8/Vjd;

    move-result-object v13

    .line 117
    :cond_1
    move-object v8, v13

    .line 118
    .local v8, "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v1, Lc8/mld;

    move-object v2, p0

    move-object/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p2

    move-object v9, p1

    move-object/from16 v10, p4

    invoke-direct/range {v1 .. v11}, Lc8/mld;-><init>(Lc8/pld;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLc8/Vjd;Lc8/Gjd;Lc8/omd;Z)V

    return-object v1

    .line 114
    .end local v7    # "jsonAdapterPresent":Z
    .end local v8    # "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    :cond_2
    const/4 v7, 0x0

    goto :goto_0
.end method

.method static excludeField(Ljava/lang/reflect/Field;ZLc8/ukd;)Z
    .locals 1
    .param p0, "f"    # Ljava/lang/reflect/Field;
    .param p1, "serialize"    # Z
    .param p2, "excluder"    # Lc8/ukd;

    .prologue
    .line 67
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lc8/ukd;->excludeClass(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lc8/ukd;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getBoundFields(Lc8/Gjd;Lc8/omd;Ljava/lang/Class;)Ljava/util/Map;
    .locals 21
    .param p1, "context"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lc8/old;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "type":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    .local p3, "raw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v17, Ljava/util/LinkedHashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/LinkedHashMap;-><init>()V

    .line 144
    .local v17, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_0
    return-object v17

    .line 148
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 149
    .local v10, "declaredType":Ljava/lang/reflect/Type;
    :goto_0
    const-class v2, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-eq v0, v2, :cond_0

    .line 150
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    .line 151
    .local v13, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v13

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    aget-object v4, v13, v19

    .line 152
    .local v4, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lc8/pld;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v7

    .line 153
    .local v7, "serialize":Z
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v2}, Lc8/pld;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v8

    .line 154
    .local v8, "deserialize":Z
    if-nez v7, :cond_2

    if-eqz v8, :cond_6

    .line 157
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 158
    invoke-virtual/range {p2 .. p2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3}, Lc8/dkd;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v12

    .line 159
    .local v12, "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lc8/pld;->getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v11

    .line 160
    .local v11, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 161
    .local v15, "previous":Lc8/old;
    const/4 v14, 0x0

    .local v14, "i":I
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    .local v18, "size":I
    :goto_2
    move/from16 v0, v18

    if-ge v14, v0, :cond_5

    .line 162
    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 163
    .local v5, "name":Ljava/lang/String;
    if-eqz v14, :cond_3

    const/4 v7, 0x0

    .line 165
    :cond_3
    invoke-static {v12}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 164
    invoke-direct/range {v2 .. v8}, Lc8/pld;->createBoundField(Lc8/Gjd;Ljava/lang/reflect/Field;Ljava/lang/String;Lc8/omd;ZZ)Lc8/old;

    move-result-object v9

    .line 166
    .local v9, "boundField":Lc8/old;
    move-object/from16 v0, v17

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/old;

    .line 167
    .local v16, "replaced":Lc8/old;
    if-nez v15, :cond_4

    move-object/from16 v15, v16

    .line 161
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 169
    .end local v5    # "name":Ljava/lang/String;
    .end local v9    # "boundField":Lc8/old;
    .end local v16    # "replaced":Lc8/old;
    :cond_5
    if-eqz v15, :cond_6

    .line 170
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " declares multiple JSON fields named "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v15, Lc8/old;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    .end local v11    # "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "fieldType":Ljava/lang/reflect/Type;
    .end local v14    # "i":I
    .end local v15    # "previous":Lc8/old;
    .end local v18    # "size":I
    :cond_6
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto/16 :goto_1

    .line 174
    .end local v4    # "field":Ljava/lang/reflect/Field;
    .end local v7    # "serialize":Z
    .end local v8    # "deserialize":Z
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-static {v2, v0, v3}, Lc8/dkd;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v2}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object p2

    .line 175
    invoke-virtual/range {p2 .. p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object p3

    .line 176
    goto/16 :goto_0
.end method

.method private getFieldNames(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    const-class v6, Lc8/Zjd;

    invoke-virtual {p1, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lc8/Zjd;

    .line 73
    .local v2, "annotation":Lc8/Zjd;
    if-nez v2, :cond_1

    .line 74
    iget-object v6, p0, Lc8/pld;->fieldNamingPolicy:Lc8/zjd;

    invoke-interface {v6, p1}, Lc8/zjd;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "name":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 89
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 78
    :cond_1
    invoke-interface {v2}, Lc8/Zjd;->value()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "serializedName":Ljava/lang/String;
    invoke-interface {v2}, Lc8/Zjd;->alternate()[Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "alternates":[Ljava/lang/String;
    array-length v6, v1

    if-nez v6, :cond_2

    .line 81
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_0

    .line 84
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    array-length v6, v1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v3, "fieldNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    array-length v7, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v0, v1, v6

    .line 87
    .local v0, "alternate":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 4
    .param p1, "gson"    # Lc8/Gjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Vjd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "type":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 95
    .local v1, "raw":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 96
    const/4 v2, 0x0

    .line 100
    :goto_0
    return-object v2

    .line 99
    :cond_0
    iget-object v2, p0, Lc8/pld;->constructorConstructor:Lc8/skd;

    invoke-virtual {v2, p2}, Lc8/skd;->get(Lc8/omd;)Lc8/Mkd;

    move-result-object v0

    .line 100
    .local v0, "constructor":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    new-instance v2, Lc8/nld;

    invoke-direct {p0, p1, p2, v1}, Lc8/pld;->getBoundFields(Lc8/Gjd;Lc8/omd;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lc8/nld;-><init>(Lc8/Mkd;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 1
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .param p2, "serialize"    # Z

    .prologue
    .line 63
    iget-object v0, p0, Lc8/pld;->excluder:Lc8/ukd;

    invoke-static {p1, p2, v0}, Lc8/pld;->excludeField(Ljava/lang/reflect/Field;ZLc8/ukd;)Z

    move-result v0

    return v0
.end method
