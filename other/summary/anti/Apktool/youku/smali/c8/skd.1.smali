.class public final Lc8/skd;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"


# instance fields
.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lc8/Ijd",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lc8/Ijd",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/google/gson/InstanceCreator<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lc8/skd;->instanceCreators:Ljava/util/Map;

    .line 53
    return-void
.end method

.method private newDefaultConstructor(Ljava/lang/Class;)Lc8/Mkd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lc8/Mkd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 100
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 103
    :cond_0
    new-instance v1, Lc8/lkd;

    invoke-direct {v1, p0, v0}, Lc8/lkd;-><init>(Lc8/skd;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<-TT;>;"
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc8/Mkd;
    .locals 3
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lc8/Mkd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lc8/mkd;

    invoke-direct {v0, p0}, Lc8/mkd;-><init>(Lc8/skd;)V

    .line 213
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object v0

    .line 141
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    new-instance v0, Lc8/nkd;

    invoke-direct {v0, p0, p1}, Lc8/nkd;-><init>(Lc8/skd;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 157
    :cond_1
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    new-instance v0, Lc8/okd;

    invoke-direct {v0, p0}, Lc8/okd;-><init>(Lc8/skd;)V

    goto :goto_0

    .line 163
    :cond_2
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 164
    new-instance v0, Lc8/pkd;

    invoke-direct {v0, p0}, Lc8/pkd;-><init>(Lc8/skd;)V

    goto :goto_0

    .line 170
    :cond_3
    new-instance v0, Lc8/qkd;

    invoke-direct {v0, p0}, Lc8/qkd;-><init>(Lc8/skd;)V

    goto :goto_0

    .line 178
    :cond_4
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 179
    const-class v0, Ljava/util/concurrent/ConcurrentNavigableMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    new-instance v0, Lc8/rkd;

    invoke-direct {v0, p0}, Lc8/rkd;-><init>(Lc8/skd;)V

    goto :goto_0

    .line 185
    :cond_5
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    new-instance v0, Lc8/ekd;

    invoke-direct {v0, p0}, Lc8/ekd;-><init>(Lc8/skd;)V

    goto :goto_0

    .line 191
    :cond_6
    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    new-instance v0, Lc8/fkd;

    invoke-direct {v0, p0}, Lc8/fkd;-><init>(Lc8/skd;)V

    goto :goto_0

    .line 197
    :cond_7
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_8

    const-class v0, Ljava/lang/String;

    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 198
    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lc8/omd;->get(Ljava/lang/reflect/Type;)Lc8/omd;

    move-result-object v1

    invoke-virtual {v1}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 199
    new-instance v0, Lc8/gkd;

    invoke-direct {v0, p0}, Lc8/gkd;-><init>(Lc8/skd;)V

    goto/16 :goto_0

    .line 205
    :cond_8
    new-instance v0, Lc8/hkd;

    invoke-direct {v0, p0}, Lc8/hkd;-><init>(Lc8/skd;)V

    goto/16 :goto_0

    .line 213
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc8/Mkd;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lc8/Mkd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    new-instance v0, Lc8/ikd;

    invoke-direct {v0, p0, p2, p1}, Lc8/ikd;-><init>(Lc8/skd;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public get(Lc8/omd;)Lc8/Mkd;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/omd",
            "<TT;>;)",
            "Lc8/Mkd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "typeToken":Lc8/omd;, "Lcom/google/gson/reflect/TypeToken<TT;>;"
    invoke-virtual {p1}, Lc8/omd;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 57
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Lc8/omd;->getRawType()Ljava/lang/Class;

    move-result-object v2

    .line 62
    .local v2, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    iget-object v6, p0, Lc8/skd;->instanceCreators:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Ijd;

    .line 63
    .local v5, "typeCreator":Lc8/Ijd;, "Lcom/google/gson/InstanceCreator<TT;>;"
    if-eqz v5, :cond_1

    .line 64
    new-instance v0, Lc8/jkd;

    invoke-direct {v0, p0, v5, v4}, Lc8/jkd;-><init>(Lc8/skd;Lc8/Ijd;Ljava/lang/reflect/Type;)V

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 73
    :cond_1
    iget-object v6, p0, Lc8/skd;->instanceCreators:Ljava/util/Map;

    .line 74
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Ijd;

    .line 75
    .local v3, "rawTypeCreator":Lc8/Ijd;, "Lcom/google/gson/InstanceCreator<TT;>;"
    if-eqz v3, :cond_2

    .line 76
    new-instance v0, Lc8/kkd;

    invoke-direct {v0, p0, v3, v4}, Lc8/kkd;-><init>(Lc8/skd;Lc8/Ijd;Ljava/lang/reflect/Type;)V

    goto :goto_0

    .line 83
    :cond_2
    invoke-direct {p0, v2}, Lc8/skd;->newDefaultConstructor(Ljava/lang/Class;)Lc8/Mkd;

    move-result-object v0

    .line 84
    .local v0, "defaultConstructor":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    if-nez v0, :cond_0

    .line 88
    invoke-direct {p0, v4, v2}, Lc8/skd;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc8/Mkd;

    move-result-object v1

    .line 89
    .local v1, "defaultImplementation":Lc8/Mkd;, "Lcom/google/gson/internal/ObjectConstructor<TT;>;"
    if-eqz v1, :cond_3

    move-object v0, v1

    .line 90
    goto :goto_0

    .line 94
    :cond_3
    invoke-direct {p0, v4, v2}, Lc8/skd;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc8/Mkd;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lc8/skd;->instanceCreators:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
