.class public Lc8/pJb;
.super Ljava/lang/Object;
.source "CollectionCodec.java"

# interfaces
.implements Lc8/DJb;
.implements Lc8/hJb;


# static fields
.field public static final instance:Lc8/pJb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lc8/pJb;

    invoke-direct {v0}, Lc8/pJb;-><init>()V

    sput-object v0, Lc8/pJb;->instance:Lc8/pJb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
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
    .line 119
    iget-object v5, p1, Lc8/NIb;->lexer:Lc8/PIb;

    invoke-virtual {v5}, Lc8/PIb;->token()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 120
    iget-object v5, p1, Lc8/NIb;->lexer:Lc8/PIb;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lc8/PIb;->nextToken(I)V

    .line 121
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    .line 124
    :cond_0
    const-class v5, Lcom/alibaba/fastjson/JSONArray;

    if-ne p2, v5, :cond_1

    .line 125
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 126
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p1, v0}, Lc8/NIb;->parseArray(Ljava/util/Collection;)V

    goto :goto_0

    .line 131
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    move-object v4, p2

    .line 132
    .local v4, "t":Ljava/lang/reflect/Type;
    :goto_1
    instance-of v5, v4, Ljava/lang/Class;

    if-eqz v5, :cond_3

    move-object v3, v4

    .line 133
    check-cast v3, Ljava/lang/Class;

    .line 143
    .local v3, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/AbstractCollection;

    if-eq v3, v5, :cond_2

    const-class v5, Ljava/util/Collection;

    if-ne v3, v5, :cond_5

    .line 145
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v2, "list":Ljava/util/Collection;
    :goto_2
    invoke-static {p2}, Lc8/RJb;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 171
    .local v1, "itemType":Ljava/lang/reflect/Type;
    invoke-virtual {p1, v1, v2, p3}, Lc8/NIb;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    move-object v0, v2

    .line 173
    goto :goto_0

    .line 135
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    .end local v2    # "list":Ljava/util/Collection;
    .end local v3    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_4

    .line 136
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .end local v4    # "t":Ljava/lang/reflect/Type;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .restart local v4    # "t":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 138
    :cond_4
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v6, "TODO"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 146
    .restart local v3    # "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    const-class v5, Ljava/util/HashSet;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 147
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 148
    .end local v2    # "list":Ljava/util/Collection;
    :cond_6
    const-class v5, Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 149
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 150
    .end local v2    # "list":Ljava/util/Collection;
    :cond_7
    const-class v5, Ljava/util/TreeSet;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 151
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 152
    .end local v2    # "list":Ljava/util/Collection;
    :cond_8
    const-class v5, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 154
    .end local v2    # "list":Ljava/util/Collection;
    :cond_9
    const-class v5, Ljava/util/EnumSet;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 156
    instance-of v5, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_a

    move-object v5, p2

    .line 157
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v1, v5, v6

    .line 161
    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    :goto_3
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 162
    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_2

    .line 159
    .end local v2    # "list":Ljava/util/Collection;
    :cond_a
    const-class v1, Ljava/lang/Object;

    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    goto :goto_3

    .line 164
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    :cond_b
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "list":Ljava/util/Collection;
    goto/16 :goto_2

    .line 166
    .end local v2    # "list":Ljava/util/Collection;
    :catch_0
    move-exception v5

    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "create instane error, class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 12
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
    .line 48
    iget-object v8, p1, Lc8/wJb;->out:Lc8/JJb;

    .line 50
    .local v8, "out":Lc8/JJb;
    if-nez p2, :cond_1

    .line 51
    iget v9, v8, Lc8/JJb;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_0

    .line 52
    const-string/jumbo v9, "[]"

    invoke-virtual {v8, v9}, Lc8/JJb;->write(Ljava/lang/String;)V

    .line 113
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {v8}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 59
    :cond_1
    const/4 v3, 0x0

    .line 60
    .local v3, "elementType":Ljava/lang/reflect/Type;
    iget v9, v8, Lc8/JJb;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_2

    .line 61
    invoke-static/range {p4 .. p4}, Lc8/RJb;->getCollectionItemType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    :cond_2
    move-object v1, p2

    .line 64
    check-cast v1, Ljava/util/Collection;

    .line 66
    .local v1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v2, p1, Lc8/wJb;->context:Lc8/GJb;

    .line 67
    .local v2, "context":Lc8/GJb;
    const/4 v9, 0x0

    invoke-virtual {p1, v2, p2, p3, v9}, Lc8/wJb;->setContext(Lc8/GJb;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 69
    iget v9, v8, Lc8/JJb;->features:I

    sget-object v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v10, v10, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_3

    .line 70
    const-class v9, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v9, v10, :cond_5

    .line 71
    const-string/jumbo v9, "Set"

    invoke-virtual {v8, v9}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    .line 78
    :cond_3
    :goto_1
    const/4 v4, 0x0

    .line 79
    .local v4, "i":I
    const/16 v9, 0x5b

    :try_start_0
    invoke-virtual {v8, v9}, Lc8/JJb;->write(I)V

    .line 80
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    move v5, v4

    .end local v4    # "i":I
    .local v5, "i":I
    :goto_2
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 82
    .local v6, "item":Ljava/lang/Object;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "i":I
    .restart local v4    # "i":I
    if-eqz v5, :cond_4

    .line 83
    const/16 v10, 0x2c

    :try_start_2
    invoke-virtual {v8, v10}, Lc8/JJb;->write(I)V

    .line 86
    :cond_4
    if-nez v6, :cond_6

    .line 87
    invoke-virtual {v8}, Lc8/JJb;->writeNull()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v4

    .line 88
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 72
    .end local v5    # "i":I
    .end local v6    # "item":Ljava/lang/Object;
    :cond_5
    const-class v9, Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-ne v9, v10, :cond_3

    .line 73
    const-string/jumbo v9, "TreeSet"

    invoke-virtual {v8, v9}, Lc8/JJb;->append(Ljava/lang/CharSequence;)Lc8/JJb;

    goto :goto_1

    .line 91
    .restart local v4    # "i":I
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_6
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v10, Ljava/lang/Integer;

    if-ne v0, v10, :cond_7

    .line 94
    check-cast v6, Ljava/lang/Integer;

    .end local v6    # "item":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v8, v10}, Lc8/JJb;->writeInt(I)V

    move v5, v4

    .line 95
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 98
    .end local v5    # "i":I
    .restart local v4    # "i":I
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_7
    const-class v10, Ljava/lang/Long;

    if-ne v0, v10, :cond_8

    .line 99
    check-cast v6, Ljava/lang/Long;

    .end local v6    # "item":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lc8/JJb;->writeLong(J)V

    .line 101
    iget v10, v8, Lc8/JJb;->features:I

    sget-object v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    iget v11, v11, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_a

    .line 102
    const/16 v10, 0x4c

    invoke-virtual {v8, v10}, Lc8/JJb;->write(I)V

    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 107
    .end local v5    # "i":I
    .restart local v4    # "i":I
    .restart local v6    # "item":Ljava/lang/Object;
    :cond_8
    iget-object v10, p1, Lc8/wJb;->config:Lc8/HJb;

    invoke-virtual {v10, v0}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v7

    .line 108
    .local v7, "itemSerializer":Lc8/DJb;
    add-int/lit8 v10, v4, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, p1, v6, v10, v3}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v5, v4

    .line 109
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_2

    .line 110
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "item":Ljava/lang/Object;
    .end local v7    # "itemSerializer":Lc8/DJb;
    :cond_9
    const/16 v9, 0x5d

    :try_start_4
    invoke-virtual {v8, v9}, Lc8/JJb;->write(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 112
    iput-object v2, p1, Lc8/wJb;->context:Lc8/GJb;

    goto/16 :goto_0

    .end local v5    # "i":I
    .restart local v4    # "i":I
    :catchall_0
    move-exception v9

    :goto_3
    iput-object v2, p1, Lc8/wJb;->context:Lc8/GJb;

    throw v9

    .end local v4    # "i":I
    .restart local v5    # "i":I
    :catchall_1
    move-exception v9

    move v4, v5

    .end local v5    # "i":I
    .restart local v4    # "i":I
    goto :goto_3

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_a
    move v5, v4

    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto/16 :goto_2
.end method
