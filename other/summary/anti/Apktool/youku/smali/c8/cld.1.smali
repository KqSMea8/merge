.class public final Lc8/cld;
.super Ljava/lang/Object;
.source "JsonAdapterAnnotationTypeAdapterFactory.java"

# interfaces
.implements Lc8/Wjd;


# instance fields
.field private final constructorConstructor:Lc8/skd;


# direct methods
.method public constructor <init>(Lc8/skd;)V
    .locals 0
    .param p1, "constructorConstructor"    # Lc8/skd;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lc8/cld;->constructorConstructor:Lc8/skd;

    .line 39
    return-void
.end method


# virtual methods
.method public create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;
    .locals 3
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
    .line 44
    .local p2, "targetType":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p2}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 45
    .local v1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v2, Lc8/Yjd;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lc8/Yjd;

    .line 46
    .local v0, "annotation":Lc8/Yjd;
    if-nez v0, :cond_0

    .line 47
    const/4 v2, 0x0

    .line 49
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lc8/cld;->constructorConstructor:Lc8/skd;

    invoke-virtual {p0, v2, p1, p2, v0}, Lc8/cld;->getTypeAdapter(Lc8/skd;Lc8/Gjd;Lc8/omd;Lc8/Yjd;)Lc8/Vjd;

    move-result-object v2

    goto :goto_0
.end method

.method getTypeAdapter(Lc8/skd;Lc8/Gjd;Lc8/omd;Lc8/Yjd;)Lc8/Vjd;
    .locals 7
    .param p1, "constructorConstructor"    # Lc8/skd;
    .param p2, "gson"    # Lc8/Gjd;
    .param p4, "annotation"    # Lc8/Yjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/skd;",
            "Lc8/Gjd;",
            "Lc8/omd",
            "<*>;",
            "Lc8/Yjd;",
            ")",
            "Lc8/Vjd",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p3, "type":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<*>;"
    const/4 v5, 0x0

    .line 55
    invoke-interface {p4}, Lc8/Yjd;->value()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lc8/omd;->get(Ljava/lang/Class;)Lc8/omd;

    move-result-object v3

    invoke-virtual {p1, v3}, Lc8/skd;->get(Lc8/omd;)Lc8/Mkd;

    move-result-object v3

    invoke-interface {v3}, Lc8/Mkd;->construct()Ljava/lang/Object;

    move-result-object v6

    .line 58
    .local v6, "instance":Ljava/lang/Object;
    instance-of v3, v6, Lc8/Vjd;

    if-eqz v3, :cond_1

    move-object v0, v6

    .line 59
    check-cast v0, Lc8/Vjd;

    .line 77
    .end local v6    # "instance":Ljava/lang/Object;
    .local v0, "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {p4}, Lc8/Yjd;->nullSafe()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {v0}, Lc8/Vjd;->nullSafe()Lc8/Vjd;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0

    .line 60
    .end local v0    # "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    .restart local v6    # "instance":Ljava/lang/Object;
    :cond_1
    instance-of v3, v6, Lc8/Wjd;

    if-eqz v3, :cond_2

    .line 61
    check-cast v6, Lc8/Wjd;

    .end local v6    # "instance":Ljava/lang/Object;
    invoke-interface {v6, p2, p3}, Lc8/Wjd;->create(Lc8/Gjd;Lc8/omd;)Lc8/Vjd;

    move-result-object v0

    .restart local v0    # "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_0

    .line 62
    .end local v0    # "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    .restart local v6    # "instance":Ljava/lang/Object;
    :cond_2
    instance-of v3, v6, Lc8/Sjd;

    if-nez v3, :cond_3

    instance-of v3, v6, Lc8/Ljd;

    if-eqz v3, :cond_6

    .line 63
    :cond_3
    instance-of v3, v6, Lc8/Sjd;

    if-eqz v3, :cond_4

    move-object v3, v6

    check-cast v3, Lc8/Sjd;

    move-object v1, v3

    .line 66
    .local v1, "serializer":Lc8/Sjd;, "Lcom/google/gson/JsonSerializer<*>;"
    :goto_1
    instance-of v3, v6, Lc8/Ljd;

    if-eqz v3, :cond_5

    check-cast v6, Lc8/Ljd;

    .end local v6    # "instance":Ljava/lang/Object;
    move-object v2, v6

    .line 69
    .local v2, "deserializer":Lc8/Ljd;, "Lcom/google/gson/JsonDeserializer<*>;"
    :goto_2
    new-instance v0, Lc8/xld;

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lc8/xld;-><init>(Lc8/Sjd;Lc8/Ljd;Lc8/Gjd;Lc8/omd;Lc8/Wjd;)V

    .line 70
    .restart local v0    # "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    goto :goto_0

    .end local v0    # "typeAdapter":Lc8/Vjd;, "Lcom/google/gson/TypeAdapter<*>;"
    .end local v1    # "serializer":Lc8/Sjd;, "Lcom/google/gson/JsonSerializer<*>;"
    .end local v2    # "deserializer":Lc8/Ljd;, "Lcom/google/gson/JsonDeserializer<*>;"
    .restart local v6    # "instance":Ljava/lang/Object;
    :cond_4
    move-object v1, v5

    .line 63
    goto :goto_1

    .restart local v1    # "serializer":Lc8/Sjd;, "Lcom/google/gson/JsonSerializer<*>;"
    :cond_5
    move-object v2, v5

    .line 66
    goto :goto_2

    .line 71
    .end local v1    # "serializer":Lc8/Sjd;, "Lcom/google/gson/JsonSerializer<*>;"
    :cond_6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid attempt to bind an instance of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " as a @JsonAdapter for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Lc8/omd;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
