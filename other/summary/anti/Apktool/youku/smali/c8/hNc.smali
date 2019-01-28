.class public Lc8/hNc;
.super Ljava/lang/Object;
.source "AndFix.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndFix"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2loadLibrary(Ljava/lang/Runtime;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/ali/mobisecenhance/Library;->isKeepSoloadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p1, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Ljava/lang/Runtime;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static addReplaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 4
    .param p0, "src"    # Ljava/lang/reflect/Method;
    .param p1, "dest"    # Ljava/lang/reflect/Method;

    .prologue
    .line 61
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_0
    const-string/jumbo v1, "AndFix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addReplaceMethod  src : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " dest : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p0, p1}, Lc8/hNc;->replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 67
    invoke-static {p0}, Lc8/hNc;->makeMethodPublic(Ljava/lang/reflect/Method;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc8/hNc;->initFields(Ljava/lang/Class;)V

    .line 69
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc8/hNc;->initFields(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "AndFix"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addReplaceMethod failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v1, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addReplaceMethod failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getAOCAPILevel(ILjava/lang/String;)I
    .locals 3
    .param p0, "apilevel"    # I
    .param p1, "vmVersion"    # Ljava/lang/String;

    .prologue
    .line 215
    const/16 v0, 0x16

    if-le p0, v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return p0

    .line 219
    :cond_1
    const/16 v0, 0x15

    if-le p0, v0, :cond_0

    .line 221
    const-string/jumbo v0, "AndFix"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vmVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/pNc;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz p1, :cond_2

    const-string/jumbo v0, "2.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    :cond_2
    if-eqz p1, :cond_3

    const-string/jumbo v0, "v1.2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :cond_3
    const/16 p0, 0x15

    .line 231
    goto :goto_0
.end method

.method public static initFields(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 206
    .local v1, "srcFields":[Ljava/lang/reflect/Field;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 207
    .local v0, "srcField":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lc8/hNc;->setFieldFlag(Ljava/lang/reflect/Field;)V

    .line 206
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    .end local v0    # "srcField":Ljava/lang/reflect/Field;
    :cond_0
    return-void
.end method

.method public static initTargetClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 5
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
    .line 184
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 192
    :goto_0
    return-object v1

    .line 188
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 189
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 188
    invoke-static {v2, v3, v4}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 191
    .local v1, "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1}, Lc8/hNc;->initFields(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    .end local v1    # "targetClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v2, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initTargetClass failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static makeClassPublic(Ljava/lang/Class;)V
    .locals 5
    .param p0, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 77
    if-nez p0, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lc8/mNc;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v1

    .line 81
    .local v1, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    sget-object v2, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-eq v1, v2, :cond_0

    .line 85
    :try_start_0
    invoke-static {p0}, Lc8/hNc;->setClassPublic(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "AndFix"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeClassPublic failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v2, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeClassPublic failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static makeConstructorPublic(Ljava/lang/reflect/Constructor;)V
    .locals 11
    .param p0, "constructor"    # Ljava/lang/reflect/Constructor;

    .prologue
    .line 94
    if-nez p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Lc8/mNc;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v7

    .line 98
    .local v7, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v7, v8, :cond_4

    .line 99
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-gt v8, v9, :cond_3

    .line 101
    :try_start_0
    const-string/jumbo v8, "java.lang.reflect.AbstractMethod"

    invoke-static {v8}, Lc8/hNc;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 102
    .local v0, "abstractMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "artMethod"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 103
    .local v4, "artMethodField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 104
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 105
    .local v5, "artMethodObject":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 106
    .local v3, "artMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "accessFlags"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 107
    .local v2, "accessFlagsField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 108
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 109
    .local v1, "accessFlags":I
    and-int/lit8 v8, v1, 0x1

    if-nez v8, :cond_0

    .line 110
    or-int/lit8 v1, v1, 0x1

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v5, v8}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    .end local v0    # "abstractMethodClass":Ljava/lang/Class;
    .end local v1    # "accessFlags":I
    .end local v2    # "accessFlagsField":Ljava/lang/reflect/Field;
    .end local v3    # "artMethodClass":Ljava/lang/Class;
    .end local v4    # "artMethodField":Ljava/lang/reflect/Field;
    .end local v5    # "artMethodObject":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 114
    .local v6, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AndFix"

    const-string/jumbo v9, "makeConstructorPublic failed"

    invoke-static {v8, v9}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "makeConstructorPublic failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 119
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lc8/hNc;->setConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 120
    :catch_1
    move-exception v6

    .line 121
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AndFix"

    const-string/jumbo v9, "makeConstructorPublic failed"

    invoke-static {v8, v9}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "makeConstructorPublic failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 127
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_2
    invoke-static {p0}, Lc8/hNc;->setConstructorPublic(Ljava/lang/reflect/Constructor;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 128
    :catch_2
    move-exception v6

    .line 129
    .restart local v6    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "AndFix"

    const-string/jumbo v9, "makeConstructorPublic failed"

    invoke-static {v8, v9}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "makeConstructorPublic failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static makeMethodPublic(Ljava/lang/reflect/Method;)V
    .locals 11
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 136
    if-nez p0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    const-string/jumbo v8, "AndFix"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "makeMethodPublic method : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lc8/mNc;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v7

    .line 141
    .local v7, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-eq v7, v8, :cond_2

    sget-object v8, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v7, v8, :cond_4

    .line 142
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x16

    if-gt v8, v9, :cond_3

    .line 144
    :try_start_0
    const-string/jumbo v8, "java.lang.reflect.AbstractMethod"

    invoke-static {v8}, Lc8/hNc;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "abstractMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "artMethod"

    invoke-virtual {v0, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 146
    .local v4, "artMethodField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 148
    .local v5, "artMethodObject":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 149
    .local v3, "artMethodClass":Ljava/lang/Class;
    const-string/jumbo v8, "accessFlags"

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 150
    .local v2, "accessFlagsField":Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 151
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 152
    .local v1, "accessFlags":I
    and-int/lit8 v8, v1, 0x1

    if-nez v8, :cond_0

    .line 153
    or-int/lit8 v1, v1, 0x1

    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v5, v8}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v0    # "abstractMethodClass":Ljava/lang/Class;
    .end local v1    # "accessFlags":I
    .end local v2    # "accessFlagsField":Ljava/lang/reflect/Field;
    .end local v3    # "artMethodClass":Ljava/lang/Class;
    .end local v4    # "artMethodField":Ljava/lang/reflect/Field;
    .end local v5    # "artMethodObject":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 157
    .local v6, "e":Ljava/lang/Throwable;
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "makeMethodPublic failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 161
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_3
    :try_start_1
    invoke-static {p0}, Lc8/hNc;->setMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 162
    :catch_1
    move-exception v6

    .line 163
    .restart local v6    # "e":Ljava/lang/Throwable;
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "makeMethodPublic failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 168
    .end local v6    # "e":Ljava/lang/Throwable;
    :cond_4
    :try_start_2
    invoke-static {p0}, Lc8/hNc;->setMethodPublic(Ljava/lang/reflect/Method;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 169
    :catch_2
    move-exception v6

    .line 170
    .restart local v6    # "e":Ljava/lang/Throwable;
    new-instance v8, Lcom/alipay/euler/andfix/exception/AndFixException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "makeMethodPublic failed : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Lcom/alipay/euler/andfix/exception/AndFixException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method private static native replaceMethod(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
.end method

.method public static rollback()V
    .locals 0

    .prologue
    .line 276
    invoke-static {}, Lc8/hNc;->rollbackMethods()V

    .line 277
    return-void
.end method

.method private static native rollbackMethods()V
.end method

.method private static native setClassPublic(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation
.end method

.method private static native setConstructorPublic(Ljava/lang/reflect/Constructor;)V
.end method

.method private static native setFieldFlag(Ljava/lang/reflect/Field;)V
.end method

.method private static native setMethodPublic(Ljava/lang/reflect/Method;)V
.end method

.method public static setup()Z
    .locals 8

    .prologue
    .line 244
    invoke-static {}, Lc8/mNc;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v2

    .line 245
    .local v2, "vm":Lcom/alipay/euler/andfix/AndFixVM;
    const-string/jumbo v5, "mytest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAndFixVM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lc8/mNc;->getAndFixVM()Lcom/alipay/euler/andfix/AndFixVM;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/pNc;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string/jumbo v6, "andfix"

    invoke-static {v5, v6}, Lc8/hNc;->_2loadLibrary(Ljava/lang/Runtime;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v5, "java.vm.version"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, "vmVersion":Ljava/lang/String;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 253
    .local v0, "apilevel":I
    sget-object v5, Lcom/alipay/euler/andfix/AndFixVM;->Lemur:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v2, v5, :cond_0

    .line 255
    const/4 v4, 0x0

    .line 268
    .local v4, "vm_type":I
    :goto_0
    invoke-static {v4, v0}, Lc8/hNc;->setup(II)Z

    move-result v5

    .line 272
    .end local v0    # "apilevel":I
    .end local v3    # "vmVersion":Ljava/lang/String;
    .end local v4    # "vm_type":I
    :goto_1
    return v5

    .line 256
    .restart local v0    # "apilevel":I
    .restart local v3    # "vmVersion":Ljava/lang/String;
    :cond_0
    sget-object v5, Lcom/alipay/euler/andfix/AndFixVM;->AOC:Lcom/alipay/euler/andfix/AndFixVM;

    if-ne v2, v5, :cond_1

    .line 258
    const/4 v4, 0x3

    .line 259
    .restart local v4    # "vm_type":I
    invoke-static {v0, v3}, Lc8/hNc;->getAOCAPILevel(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 261
    .end local v4    # "vm_type":I
    :cond_1
    sget-object v5, Lcom/alipay/euler/andfix/AndFixVM;->ART:Lcom/alipay/euler/andfix/AndFixVM;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v5, :cond_2

    .line 263
    const/4 v4, 0x2

    .restart local v4    # "vm_type":I
    goto :goto_0

    .line 266
    .end local v4    # "vm_type":I
    :cond_2
    const/4 v4, 0x1

    .restart local v4    # "vm_type":I
    goto :goto_0

    .line 269
    .end local v0    # "apilevel":I
    .end local v3    # "vmVersion":Ljava/lang/String;
    .end local v4    # "vm_type":I
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "AndFix"

    const-string/jumbo v6, "loadLibrary & setup failed."

    invoke-static {v5, v6, v1}, Lc8/pNc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static native setup(II)Z
.end method
