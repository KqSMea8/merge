.class public Lc8/HIb;
.super Ljava/lang/Object;
.source "TypeReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static classTypeCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final type:Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lc8/HIb;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 32
    .local p0, "this":Lc8/HIb;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 35
    .local v0, "superClass":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iput-object v1, p0, Lc8/HIb;->type:Ljava/lang/reflect/Type;

    .line 36
    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/reflect/Type;)V
    .locals 12
    .param p1, "actualTypeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 42
    .local p0, "this":Lc8/HIb;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 44
    .local v9, "thisClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 46
    .local v8, "superClass":Ljava/lang/reflect/Type;
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    .end local v8    # "superClass":Ljava/lang/reflect/Type;
    invoke-interface {v8}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v2, v10, v11

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 47
    .local v2, "argType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 48
    .local v7, "rawType":Ljava/lang/reflect/Type;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 50
    .local v3, "argTypes":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .line 51
    .local v0, "actualIndex":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v10, v3

    if-ge v5, v10, :cond_2

    .line 52
    aget-object v10, v3, v5

    instance-of v10, v10, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_0

    .line 53
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "actualIndex":I
    .local v1, "actualIndex":I
    aget-object v10, p1, v0

    aput-object v10, v3, v5

    .line 54
    array-length v10, p1

    if-ge v1, v10, :cond_1

    move v0, v1

    .line 51
    .end local v1    # "actualIndex":I
    .restart local v0    # "actualIndex":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .end local v0    # "actualIndex":I
    .restart local v1    # "actualIndex":I
    :cond_1
    move v0, v1

    .line 60
    .end local v1    # "actualIndex":I
    .restart local v0    # "actualIndex":I
    :cond_2
    new-instance v6, Lc8/QJb;

    invoke-direct {v6, v3, v9, v7}, Lc8/QJb;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .line 61
    .local v6, "key":Ljava/lang/reflect/Type;
    sget-object v10, Lc8/HIb;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Type;

    .line 62
    .local v4, "cachedType":Ljava/lang/reflect/Type;
    if-nez v4, :cond_3

    .line 63
    sget-object v10, Lc8/HIb;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v6, v6}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v10, Lc8/HIb;->classTypeCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v10, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "cachedType":Ljava/lang/reflect/Type;
    check-cast v4, Ljava/lang/reflect/Type;

    .line 67
    .restart local v4    # "cachedType":Ljava/lang/reflect/Type;
    :cond_3
    iput-object v4, p0, Lc8/HIb;->type:Ljava/lang/reflect/Type;

    .line 69
    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lc8/HIb;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    iget-object v0, p0, Lc8/HIb;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method
