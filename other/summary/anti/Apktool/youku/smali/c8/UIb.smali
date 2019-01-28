.class public Lc8/UIb;
.super Lc8/fJb;
.source "ListTypeFieldDeserializer.java"


# instance fields
.field private final array:Z

.field private deserializer:Lc8/hJb;

.field private final itemType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lc8/XIb;Ljava/lang/Class;Lc8/NJb;)V
    .locals 3
    .param p1, "mapping"    # Lc8/XIb;
    .param p3, "fieldInfo"    # Lc8/NJb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XIb;",
            "Ljava/lang/Class",
            "<*>;",
            "Lc8/NJb;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v2, 0xe

    invoke-direct {p0, p2, p3, v2}, Lc8/fJb;-><init>(Ljava/lang/Class;Lc8/NJb;I)V

    .line 26
    iget-object v1, p3, Lc8/NJb;->fieldType:Ljava/lang/reflect/Type;

    .line 27
    .local v1, "fieldType":Ljava/lang/reflect/Type;
    iget-object v0, p3, Lc8/NJb;->fieldClass:Ljava/lang/Class;

    .line 28
    .local v0, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lc8/UIb;->itemType:Ljava/lang/reflect/Type;

    .line 30
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/UIb;->array:Z

    .line 35
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-static {v1}, Lc8/RJb;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    iput-object v2, p0, Lc8/UIb;->itemType:Ljava/lang/reflect/Type;

    .line 33
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/UIb;->array:Z

    goto :goto_0
.end method


# virtual methods
.method final parseArray(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 20
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "objectType"    # Ljava/lang/reflect/Type;
    .param p3, "array"    # Ljava/util/Collection;

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/UIb;->itemType:Ljava/lang/reflect/Type;

    .line 83
    .local v8, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/UIb;->deserializer:Lc8/hJb;

    .line 85
    .local v9, "itemTypeDeser":Lc8/hJb;
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 86
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v16, v8

    .line 87
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v13, p2

    .line 88
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 90
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 91
    .local v11, "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 92
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v11, Ljava/lang/Class;

    .line 95
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v12, -0x1

    .line 96
    .local v12, "paramIndex":I
    if-eqz v11, :cond_1

    .line 97
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v15, v0

    .local v15, "size":I
    :goto_0
    if-ge v4, v15, :cond_1

    .line 98
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v6, v18, v4

    .line 99
    .local v6, "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 100
    move v12, v4

    .line 106
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v15    # "size":I
    :cond_1
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 107
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object v8, v18, v12

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/UIb;->itemType:Ljava/lang/reflect/Type;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 109
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v9

    .line 144
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-object v10, v0, Lc8/NIb;->lexer:Lc8/PIb;

    .line 146
    .local v10, "lexer":Lc8/PIb;
    if-nez v9, :cond_3

    .line 147
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v9

    .end local v9    # "itemTypeDeser":Lc8/hJb;
    move-object/from16 v0, p0

    iput-object v9, v0, Lc8/UIb;->deserializer:Lc8/hJb;

    .line 150
    .restart local v9    # "itemTypeDeser":Lc8/hJb;
    :cond_3
    iget v0, v10, Lc8/PIb;->token:I

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    .line 151
    iget v0, v10, Lc8/PIb;->token:I

    move/from16 v18, v0

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 152
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v8, v1}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 153
    .local v17, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v17    # "val":Ljava/lang/Object;
    :goto_2
    return-void

    .line 97
    .end local v10    # "lexer":Lc8/PIb;
    .restart local v4    # "i":I
    .restart local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v12    # "paramIndex":I
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .restart local v15    # "size":I
    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 112
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "size":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    :cond_5
    instance-of v0, v8, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object v14, v8

    .line 113
    check-cast v14, Ljava/lang/reflect/ParameterizedType;

    .line 114
    .local v14, "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    .line 115
    .local v7, "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    array-length v0, v7

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/16 v18, 0x0

    aget-object v18, v7, v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 116
    const/16 v18, 0x0

    aget-object v16, v7, v18

    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    move-object/from16 v13, p2

    .line 117
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 119
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    const/4 v11, 0x0

    .line 120
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 121
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast v11, Ljava/lang/Class;

    .line 124
    .restart local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const/4 v12, -0x1

    .line 125
    .restart local v12    # "paramIndex":I
    if-eqz v11, :cond_7

    .line 126
    const/4 v4, 0x0

    .restart local v4    # "i":I
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    move-object/from16 v0, v18

    array-length v15, v0

    .restart local v15    # "size":I
    :goto_3
    if-ge v4, v15, :cond_7

    .line 127
    invoke-virtual {v11}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v18

    aget-object v6, v18, v4

    .line 128
    .restart local v6    # "item":Ljava/lang/reflect/TypeVariable;
    invoke-interface {v6}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 129
    move v12, v4

    .line 136
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v15    # "size":I
    :cond_7
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v12, v0, :cond_2

    .line 137
    const/16 v18, 0x0

    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v19

    aget-object v19, v19, v12

    aput-object v19, v7, v18

    .line 138
    new-instance v8, Lc8/QJb;

    .end local v8    # "itemType":Ljava/lang/reflect/Type;
    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    invoke-interface {v14}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v7, v0, v1}, Lc8/QJb;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local v8    # "itemType":Ljava/lang/reflect/Type;
    goto/16 :goto_1

    .line 126
    .restart local v4    # "i":I
    .restart local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .restart local v15    # "size":I
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 156
    .end local v4    # "i":I
    .end local v6    # "item":Ljava/lang/reflect/TypeVariable;
    .end local v7    # "itemActualTypeArgs":[Ljava/lang/reflect/Type;
    .end local v11    # "objectClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "paramIndex":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "parameterizedItemType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "size":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;
    .restart local v10    # "lexer":Lc8/PIb;
    :cond_9
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "exepct \'[\', but "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v10, Lc8/PIb;->token:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "errorMessage":Ljava/lang/String;
    if-eqz p2, :cond_a

    .line 158
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", type : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    :cond_a
    new-instance v18, Lcom/alibaba/fastjson/JSONException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 164
    .end local v3    # "errorMessage":Ljava/lang/String;
    :cond_b
    iget-char v2, v10, Lc8/PIb;->ch:C

    .line 165
    .local v2, "ch":I
    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v2, v0, :cond_d

    .line 166
    iget v0, v10, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lc8/PIb;->bp:I

    .line 167
    .local v5, "index":I
    iget v0, v10, Lc8/PIb;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_c

    const/16 v18, 0x1a

    .line 169
    :goto_4
    move/from16 v0, v18

    iput-char v0, v10, Lc8/PIb;->ch:C

    .line 170
    const/16 v18, 0xe

    move/from16 v0, v18

    iput v0, v10, Lc8/PIb;->token:I

    .line 189
    .end local v5    # "index":I
    :goto_5
    const/4 v4, 0x0

    .line 190
    .restart local v4    # "i":I
    :goto_6
    iget v0, v10, Lc8/PIb;->token:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 191
    invoke-virtual {v10}, Lc8/PIb;->nextToken()V

    goto :goto_6

    .line 167
    .end local v4    # "i":I
    .restart local v5    # "index":I
    :cond_c
    iget-object v0, v10, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 169
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_4

    .line 171
    .end local v5    # "index":I
    :cond_d
    const/16 v18, 0x7b

    move/from16 v0, v18

    if-ne v2, v0, :cond_f

    .line 172
    iget v0, v10, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lc8/PIb;->bp:I

    .line 173
    .restart local v5    # "index":I
    iget v0, v10, Lc8/PIb;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_e

    const/16 v18, 0x1a

    .line 175
    :goto_7
    move/from16 v0, v18

    iput-char v0, v10, Lc8/PIb;->ch:C

    .line 176
    const/16 v18, 0xc

    move/from16 v0, v18

    iput v0, v10, Lc8/PIb;->token:I

    goto :goto_5

    .line 173
    :cond_e
    iget-object v0, v10, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 175
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_7

    .line 177
    .end local v5    # "index":I
    :cond_f
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_10

    .line 178
    invoke-virtual {v10}, Lc8/PIb;->scanString()V

    goto :goto_5

    .line 179
    :cond_10
    const/16 v18, 0x5d

    move/from16 v0, v18

    if-ne v2, v0, :cond_12

    .line 180
    iget v0, v10, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lc8/PIb;->bp:I

    .line 181
    .restart local v5    # "index":I
    iget v0, v10, Lc8/PIb;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_11

    const/16 v18, 0x1a

    .line 183
    :goto_8
    move/from16 v0, v18

    iput-char v0, v10, Lc8/PIb;->ch:C

    .line 184
    const/16 v18, 0xf

    move/from16 v0, v18

    iput v0, v10, Lc8/PIb;->token:I

    goto :goto_5

    .line 181
    :cond_11
    iget-object v0, v10, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 183
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_8

    .line 186
    .end local v5    # "index":I
    :cond_12
    invoke-virtual {v10}, Lc8/PIb;->nextToken()V

    goto/16 :goto_5

    .line 195
    .restart local v4    # "i":I
    :cond_13
    iget v0, v10, Lc8/PIb;->token:I

    move/from16 v18, v0

    const/16 v19, 0xf

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1b

    .line 199
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v9, v0, v8, v1}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .line 200
    .restart local v17    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v0, p1

    iget v0, v0, Lc8/NIb;->resolveStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    .line 203
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lc8/NIb;->checkListResolve(Ljava/util/Collection;)V

    .line 206
    :cond_14
    iget v0, v10, Lc8/PIb;->token:I

    move/from16 v18, v0

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 207
    iget-char v2, v10, Lc8/PIb;->ch:C

    .line 208
    const/16 v18, 0x5b

    move/from16 v0, v18

    if-ne v2, v0, :cond_17

    .line 209
    iget v0, v10, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lc8/PIb;->bp:I

    .line 210
    .restart local v5    # "index":I
    iget v0, v10, Lc8/PIb;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_16

    const/16 v18, 0x1a

    .line 212
    :goto_9
    move/from16 v0, v18

    iput-char v0, v10, Lc8/PIb;->ch:C

    .line 213
    const/16 v18, 0xe

    move/from16 v0, v18

    iput v0, v10, Lc8/PIb;->token:I

    .line 189
    .end local v5    # "index":I
    :cond_15
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 210
    .restart local v5    # "index":I
    :cond_16
    iget-object v0, v10, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 212
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_9

    .line 214
    .end local v5    # "index":I
    :cond_17
    const/16 v18, 0x7b

    move/from16 v0, v18

    if-ne v2, v0, :cond_19

    .line 215
    iget v0, v10, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lc8/PIb;->bp:I

    .line 216
    .restart local v5    # "index":I
    iget v0, v10, Lc8/PIb;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_18

    const/16 v18, 0x1a

    .line 218
    :goto_b
    move/from16 v0, v18

    iput-char v0, v10, Lc8/PIb;->ch:C

    .line 219
    const/16 v18, 0xc

    move/from16 v0, v18

    iput v0, v10, Lc8/PIb;->token:I

    goto :goto_a

    .line 216
    :cond_18
    iget-object v0, v10, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 218
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_b

    .line 220
    .end local v5    # "index":I
    :cond_19
    const/16 v18, 0x22

    move/from16 v0, v18

    if-ne v2, v0, :cond_1a

    .line 221
    invoke-virtual {v10}, Lc8/PIb;->scanString()V

    goto :goto_a

    .line 223
    :cond_1a
    invoke-virtual {v10}, Lc8/PIb;->nextToken()V

    goto :goto_a

    .line 229
    .end local v17    # "val":Ljava/lang/Object;
    :cond_1b
    iget-char v0, v10, Lc8/PIb;->ch:C

    move/from16 v18, v0

    const/16 v19, 0x2c

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 230
    iget v0, v10, Lc8/PIb;->bp:I

    move/from16 v18, v0

    add-int/lit8 v5, v18, 0x1

    iput v5, v10, Lc8/PIb;->bp:I

    .line 231
    .restart local v5    # "index":I
    iget v0, v10, Lc8/PIb;->len:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-lt v5, v0, :cond_1c

    const/16 v18, 0x1a

    .line 233
    :goto_c
    move/from16 v0, v18

    iput-char v0, v10, Lc8/PIb;->ch:C

    .line 234
    const/16 v18, 0x10

    move/from16 v0, v18

    iput v0, v10, Lc8/PIb;->token:I

    goto/16 :goto_2

    .line 231
    :cond_1c
    iget-object v0, v10, Lc8/PIb;->text:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 233
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v18

    goto :goto_c

    .line 236
    .end local v5    # "index":I
    :cond_1d
    invoke-virtual {v10}, Lc8/PIb;->nextToken()V

    goto/16 :goto_2
.end method

.method public parseField(Lc8/NIb;Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/util/Map;)V
    .locals 9
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "objectType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/NIb;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p4, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p1, Lc8/NIb;->lexer:Lc8/PIb;

    .line 41
    .local v4, "lexer":Lc8/PIb;
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v6

    .line 42
    .local v6, "token":I
    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 43
    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 44
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {p0, p2, v7}, Lc8/UIb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    iget-object v7, p1, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v7}, Lc8/PIb;->nextToken()V

    .line 78
    :goto_0
    return-void

    .line 49
    :cond_1
    const/4 v3, 0x0

    .line 51
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    iget-boolean v7, p0, Lc8/UIb;->array:Z

    if-eqz v7, :cond_2

    .line 52
    new-instance v3, Lcom/alibaba/fastjson/JSONArray;

    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .restart local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    move-object v5, v3

    .line 53
    .local v5, "list":Ljava/util/List;
    iget-object v7, p0, Lc8/UIb;->itemType:Ljava/lang/reflect/Type;

    invoke-virtual {v3, v7}, Lcom/alibaba/fastjson/JSONArray;->setComponentType(Ljava/lang/reflect/Type;)V

    .line 58
    :goto_1
    iget-object v1, p1, Lc8/NIb;->contex:Lc8/WIb;

    .line 60
    .local v1, "context":Lc8/WIb;
    iget-object v7, p0, Lc8/UIb;->fieldInfo:Lc8/NJb;

    iget-object v7, v7, Lc8/NJb;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, p2, v7}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    .line 61
    invoke-virtual {p0, p1, p3, v5}, Lc8/UIb;->parseArray(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 62
    invoke-virtual {p1, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    .line 65
    iget-boolean v7, p0, Lc8/UIb;->array:Z

    if-eqz v7, :cond_3

    .line 66
    iget-object v7, p0, Lc8/UIb;->itemType:Ljava/lang/reflect/Type;

    check-cast v7, Ljava/lang/Class;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 67
    .local v0, "arrayValue":[Ljava/lang/Object;
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 68
    .local v2, "fieldValue":[Ljava/lang/Object;
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->setRelatedArray(Ljava/lang/Object;)V

    .line 73
    .end local v0    # "arrayValue":[Ljava/lang/Object;
    .end local v2    # "fieldValue":[Ljava/lang/Object;
    :goto_2
    if-nez p2, :cond_4

    .line 74
    iget-object v7, p0, Lc8/UIb;->fieldInfo:Lc8/NJb;

    iget-object v7, v7, Lc8/NJb;->name:Ljava/lang/String;

    invoke-interface {p4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v1    # "context":Lc8/WIb;
    .end local v5    # "list":Ljava/util/List;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "list":Ljava/util/List;
    goto :goto_1

    .line 70
    .restart local v1    # "context":Lc8/WIb;
    :cond_3
    move-object v2, v5

    .local v2, "fieldValue":Ljava/util/List;
    goto :goto_2

    .line 76
    .end local v2    # "fieldValue":Ljava/util/List;
    :cond_4
    invoke-virtual {p0, p2, v2}, Lc8/UIb;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
