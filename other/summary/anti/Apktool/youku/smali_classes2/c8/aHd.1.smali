.class public Lc8/aHd;
.super Ljava/lang/Object;
.source "ReflectMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ZGd;
    }
.end annotation


# static fields
.field private static mCachedMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mMethodName:Ljava/lang/String;

.field private mReflectClass:Lc8/XGd;

.field private mTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/aHd;->mCachedMethods:Ljava/util/HashMap;

    return-void
.end method

.method varargs constructor <init>(Lc8/XGd;Ljava/lang/String;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "reflectClass"    # Lc8/XGd;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/XGd;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "ReflectMethod"

    iput-object v0, p0, Lc8/aHd;->TAG:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lc8/aHd;->mReflectClass:Lc8/XGd;

    .line 23
    iput-object p2, p0, Lc8/aHd;->mMethodName:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    .line 25
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

.method private getKey()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lc8/aHd;->mReflectClass:Lc8/XGd;

    invoke-virtual {v2}, Lc8/XGd;->getRealClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lc8/aHd;->mMethodName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    iget-object v3, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 69
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 71
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 1
    .param p1, "possiblyMatchingMethod"    # Ljava/lang/reflect/Method;
    .param p2, "desiredMethodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 44
    .local p3, "desiredParamTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lc8/aHd;->match([Ljava/lang/Class;[Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 44
    goto :goto_0
.end method

.method private match([Ljava/lang/Class;[Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "declaredTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .local p2, "actualTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 28
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_0

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_2

    .line 30
    aget-object v2, p2, v0

    const-class v3, Lc8/ZGd;

    if-eq v2, v3, :cond_1

    .line 32
    aget-object v2, p1, v0

    invoke-direct {p0, v2}, Lc8/aHd;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-direct {p0, v3}, Lc8/aHd;->wrapper(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 38
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 29
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private similarMethod()Ljava/lang/reflect/Method;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v4, p0, Lc8/aHd;->mReflectClass:Lc8/XGd;

    invoke-virtual {v4}, Lc8/XGd;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    .line 51
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v5, v4

    .line 52
    .local v1, "method":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lc8/aHd;->mMethodName:Ljava/lang/String;

    iget-object v8, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    invoke-direct {p0, v1, v7, v8}, Lc8/aHd;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v2, v1

    .line 58
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .local v2, "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v2

    .line 51
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    array-length v5, v4

    :goto_2
    if-ge v3, v5, :cond_3

    aget-object v1, v4, v3

    .line 57
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    iget-object v6, p0, Lc8/aHd;->mMethodName:Ljava/lang/String;

    iget-object v7, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    invoke-direct {p0, v1, v6, v7}, Lc8/aHd;->isSimilarSignature(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v2, v1

    .line 58
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    goto :goto_1

    .line 56
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 61
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_3
    new-instance v3, Ljava/lang/NoSuchMethodException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No similar method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/aHd;->mMethodName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " with params "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    .line 62
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " could be found on type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private wrapper(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 125
    const/4 p1, 0x0

    .line 147
    .end local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-object p1

    .line 126
    .restart local p1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_2

    .line 128
    const-class p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 129
    :cond_2
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_3

    .line 130
    const-class p1, Ljava/lang/Integer;

    goto :goto_0

    .line 131
    :cond_3
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_4

    .line 132
    const-class p1, Ljava/lang/Long;

    goto :goto_0

    .line 133
    :cond_4
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_5

    .line 134
    const-class p1, Ljava/lang/Short;

    goto :goto_0

    .line 135
    :cond_5
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_6

    .line 136
    const-class p1, Ljava/lang/Byte;

    goto :goto_0

    .line 137
    :cond_6
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_7

    .line 138
    const-class p1, Ljava/lang/Double;

    goto :goto_0

    .line 139
    :cond_7
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_8

    .line 140
    const-class p1, Ljava/lang/Float;

    goto :goto_0

    .line 141
    :cond_8
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_9

    .line 142
    const-class p1, Ljava/lang/Character;

    goto :goto_0

    .line 143
    :cond_9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    .line 144
    const-class p1, Ljava/lang/Void;

    goto :goto_0
.end method


# virtual methods
.method public varargs invoke(Ljava/lang/Object;[Ljava/lang/Object;)Lc8/bHd;
    .locals 8
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Lc8/bHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 82
    new-instance v4, Lc8/bHd;

    invoke-direct {v4}, Lc8/bHd;-><init>()V

    .line 84
    .local v4, "result":Lc8/bHd;, "Lcom/meizu/cloud/pushsdk/base/reflect/ReflectResult<TT;>;"
    :try_start_0
    invoke-direct {p0}, Lc8/aHd;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "key":Ljava/lang/String;
    sget-object v5, Lc8/aHd;->mCachedMethods:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    .line 86
    .local v3, "method":Ljava/lang/reflect/Method;
    if-nez v3, :cond_0

    .line 87
    iget-object v5, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    array-length v5, v5

    array-length v6, p2

    if-ne v5, v6, :cond_1

    .line 88
    iget-object v5, p0, Lc8/aHd;->mReflectClass:Lc8/XGd;

    invoke-virtual {v5}, Lc8/XGd;->getRealClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lc8/aHd;->mMethodName:Ljava/lang/String;

    iget-object v7, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 98
    :goto_0
    sget-object v5, Lc8/aHd;->mCachedMethods:Ljava/util/HashMap;

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    invoke-static {v3, p1, p2}, Lc8/aHd;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lc8/bHd;->value:Ljava/lang/Object;

    .line 102
    const/4 v5, 0x1

    iput-boolean v5, v4, Lc8/bHd;->ok:Z

    .line 106
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return-object v4

    .line 90
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_1
    array-length v5, p2

    if-lez v5, :cond_2

    .line 91
    array-length v5, p2

    new-array v5, v5, [Ljava/lang/Class;

    iput-object v5, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    .line 92
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v5, p2

    if-ge v1, v5, :cond_2

    .line 93
    iget-object v5, p0, Lc8/aHd;->mTypes:[Ljava/lang/Class;

    aget-object v6, p2, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 96
    .end local v1    # "i":I
    :cond_2
    invoke-direct {p0}, Lc8/aHd;->similarMethod()Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 103
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/TGd;->get()Lc8/TGd;

    move-result-object v5

    iget-object v6, p0, Lc8/aHd;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "invoke"

    invoke-virtual {v5, v6, v7, v0}, Lc8/TGd;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public varargs invokeStatic([Ljava/lang/Object;)Lc8/bHd;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lc8/bHd",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lc8/aHd;->mReflectClass:Lc8/XGd;

    invoke-virtual {v0}, Lc8/XGd;->getRealClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lc8/aHd;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Lc8/bHd;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lc8/bHd;

    invoke-direct {v0}, Lc8/bHd;-><init>()V

    goto :goto_0
.end method
