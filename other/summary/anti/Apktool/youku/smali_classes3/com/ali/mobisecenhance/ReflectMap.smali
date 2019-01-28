.class public Lcom/ali/mobisecenhance/ReflectMap;
.super Ljava/lang/Object;
.source "ReflectMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/mobisecenhance/ReflectMap$GenRealNameMap;
    }
.end annotation


# static fields
.field private static ClassLoader_definePackage:Ljava/lang/reflect/Method; = null

.field private static ClassLoader_findLoadedClass:Ljava/lang/reflect/Method; = null

.field private static ClassLoader_getPackage:Ljava/lang/reflect/Method; = null

.field public static final SHARED_LIB_NAME:Ljava/lang/String; = "libreflectmap.so"

.field private static final TAG:Ljava/lang/String;

.field private static classNamePrefix:Ljava/lang/String;

.field private static fieldNamePrefix:Ljava/lang/String;

.field static filteredSystemClassLoader:Ljava/lang/ClassLoader;

.field private static isRelease:Z

.field private static final log:Lcom/ali/mobisecenhance/RecordLog;

.field private static m_baseDir:Ljava/lang/String;

.field private static m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

.field protected static m_context:Landroid/content/Context;

.field private static m_crashlog:Ljava/lang/String;

.field private static m_isMainProcess:Z

.field private static methodNamePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    :cond_0
    const/4 v1, 0x1

    .line 29
    sput-boolean v1, Lcom/ali/mobisecenhance/ReflectMap;->isRelease:Z

    .line 30
    sput-boolean v1, Lcom/ali/mobisecenhance/ReflectMap;->m_isMainProcess:Z

    .line 31
    const-string v1, "c8."

    sput-object v1, Lcom/ali/mobisecenhance/ReflectMap;->classNamePrefix:Ljava/lang/String;

    .line 39
    const-class v1, Lcom/ali/mobisecenhance/ReflectMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    .line 40
    new-instance v1, Lcom/ali/mobisecenhance/RecordLog;

    invoke-direct {v1}, Lcom/ali/mobisecenhance/RecordLog;-><init>()V

    sput-object v1, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    .line 462
    :try_start_0
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "findLoadedClass"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_findLoadedClass:Ljava/lang/reflect/Method;

    .line 463
    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_findLoadedClass:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "definePackage"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-class v5, Ljava/net/URL;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_definePackage:Ljava/lang/reflect/Method;

    .line 470
    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_definePackage:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 475
    :goto_1
    :try_start_2
    const-class v1, Ljava/lang/ClassLoader;

    const-string v2, "getPackage"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_getPackage:Ljava/lang/reflect/Method;

    .line 476
    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_getPackage:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 481
    :goto_2
    return-void

    .line 464
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_0
    move-exception v0

    .line 465
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 471
    :catch_1
    move-exception v0

    .line 472
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_1

    .line 477
    :catch_2
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AtomicIntegerFieldUpdater_newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 2
    .param p0, "tclass"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 951
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ali/mobisecenhance/ReflectMap;->getRealFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 952
    .local v0, "realFiledName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 953
    move-object v0, p1

    .line 956
    :cond_0
    invoke-static {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    return-object v1
.end method

.method public static AtomicLongFieldUpdater_newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 2
    .param p0, "tclass"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 960
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/ali/mobisecenhance/ReflectMap;->getRealFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 961
    .local v0, "realFiledName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 962
    move-object v0, p1

    .line 964
    :cond_0
    invoke-static {p0, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    return-object v1
.end method

.method public static AtomicReferenceFieldUpdater_newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .locals 2
    .param p0, "tclass"    # Ljava/lang/Class;
    .param p1, "vclass"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 968
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/ali/mobisecenhance/ReflectMap;->getRealFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    .local v0, "realFiledName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 970
    move-object v0, p2

    .line 972
    :cond_0
    invoke-static {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v1

    return-object v1
.end method

.method public static ClassLoader_getSystemClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 978
    sget-object v0, Lcom/ali/mobisecenhance/ReflectMap;->filteredSystemClassLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 979
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 981
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/ali/mobisecenhance/ReflectMap;->filteredSystemClassLoader:Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method public static Class_getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 654
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 660
    :goto_0
    return-object v2

    .line 655
    :catch_0
    move-exception v0

    .line 656
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->searchFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "newFieldName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 658
    throw v0

    .line 660
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs Class_getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 742
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 748
    :goto_0
    return-object v2

    .line 743
    :catch_0
    move-exception v0

    .line 744
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->searchMethodName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "newName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 746
    throw v0

    .line 748
    :cond_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_0
.end method

.method public static Class_getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .prologue
    .line 667
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 673
    :goto_0
    return-object v2

    .line 668
    :catch_0
    move-exception v0

    .line 669
    .local v0, "ex":Ljava/lang/NoSuchFieldException;
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->searchFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, "newFieldName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 671
    throw v0

    .line 673
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    goto :goto_0
.end method

.method public static varargs Class_getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 728
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "ps":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 734
    :goto_0
    return-object v2

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->searchMethodName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 731
    .local v1, "newName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 732
    throw v0

    .line 734
    :cond_0
    invoke-virtual {p0, v1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    goto :goto_0
.end method

.method public static Class_getResource(Ljava/lang/Class;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p0, "owner"    # Ljava/lang/Class;
    .param p1, "r"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 930
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->newResourcePath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public static Class_getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p0, "owner"    # Ljava/lang/Class;
    .param p1, "r"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 926
    invoke-static {p0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->newResourcePath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static Field_getName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 803
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 804
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 812
    :goto_0
    return-object v1

    .line 807
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/mobisecenhance/ReflectMap;->searchOriginalFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 809
    .local v0, "originalFieldName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 812
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 453
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 454
    return-void
.end method

.method public static Member_getName(Ljava/lang/reflect/Member;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/reflect/Member;

    .prologue
    .line 816
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 817
    check-cast p0, Ljava/lang/reflect/Method;

    .end local p0    # "method":Ljava/lang/reflect/Member;
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->Method_getName(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 819
    :goto_0
    return-object v0

    .restart local p0    # "method":Ljava/lang/reflect/Member;
    :cond_0
    check-cast p0, Ljava/lang/reflect/Field;

    .end local p0    # "method":Ljava/lang/reflect/Member;
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->Field_getName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static Method_getName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .param p0, "method"    # Ljava/lang/reflect/Method;

    .prologue
    .line 825
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 826
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 834
    :goto_0
    return-object v1

    .line 829
    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/mobisecenhance/ReflectMap;->searchOriginalMethodName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 831
    .local v0, "originalFieldName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 832
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 834
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static StackTraceElement_getClassName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 1
    .param p0, "e"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 838
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->genOriginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static StackTraceElement_getMethodName(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 3
    .param p0, "e"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 842
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/mobisecenhance/ReflectMap;->getOriginMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 844
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 846
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static after_Class_getConstructors(Lcom/ali/mobisecenhance/Invocation;[Ljava/lang/reflect/Constructor;Ljava/lang/Throwable;)[Ljava/lang/reflect/Constructor;
    .locals 5
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;
    .param p1, "result"    # [Ljava/lang/reflect/Constructor;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 678
    if-eqz p2, :cond_0

    .line 679
    throw p2

    .line 681
    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    move-object v2, p1

    .line 690
    :goto_0
    return-object v2

    .line 684
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 685
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Constructor;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, p1, v2

    .line 686
    .local v1, "m":Ljava/lang/reflect/Constructor;
    const-class v4, Lcom/ali/mobisecenhance/Pkg;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 687
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 690
    .end local v1    # "m":Ljava/lang/reflect/Constructor;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Constructor;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Constructor;

    goto :goto_0
.end method

.method public static after_Class_getFields(Lcom/ali/mobisecenhance/Invocation;[Ljava/lang/reflect/Field;Ljava/lang/Throwable;)[Ljava/lang/reflect/Field;
    .locals 5
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;
    .param p1, "result"    # [Ljava/lang/reflect/Field;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 694
    if-eqz p2, :cond_0

    .line 695
    throw p2

    .line 697
    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    move-object v2, p1

    .line 706
    :goto_0
    return-object v2

    .line 700
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 701
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, p1, v2

    .line 702
    .local v1, "m":Ljava/lang/reflect/Field;
    const-class v4, Lcom/ali/mobisecenhance/Pkg;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 703
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 706
    .end local v1    # "m":Ljava/lang/reflect/Field;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Field;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public static after_Class_getMethods(Lcom/ali/mobisecenhance/Invocation;[Ljava/lang/reflect/Method;Ljava/lang/Throwable;)[Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;
    .param p1, "result"    # [Ljava/lang/reflect/Method;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 710
    if-eqz p2, :cond_0

    .line 711
    throw p2

    .line 713
    :cond_0
    if-eqz p1, :cond_1

    array-length v2, p1

    if-nez v2, :cond_2

    :cond_1
    move-object v2, p1

    .line 722
    :goto_0
    return-object v2

    .line 716
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 717
    .local v0, "arrayList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Method;>;"
    array-length v3, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v1, p1, v2

    .line 718
    .local v1, "m":Ljava/lang/reflect/Method;
    const-class v4, Lcom/ali/mobisecenhance/Pkg;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 719
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 722
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Method;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/reflect/Method;

    goto :goto_0
.end method

.method public static after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;
    .param p1, "result"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 439
    if-eqz p2, :cond_0

    .line 440
    throw p2

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/ali/mobisecenhance/Invocation;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 444
    iget-object p1, p0, Lcom/ali/mobisecenhance/Invocation;->tag:Ljava/lang/Object;

    .line 446
    .end local p1    # "result":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method public static before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z
    .locals 13
    .param p0, "invocation"    # Lcom/ali/mobisecenhance/Invocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 377
    iget-object v4, p0, Lcom/ali/mobisecenhance/Invocation;->thiz:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    .line 378
    .local v4, "method":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v7

    .line 379
    .local v7, "obj":Ljava/lang/Object;
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/Object;

    move-object v0, v10

    check-cast v0, [Ljava/lang/Object;

    .line 381
    .local v0, "args":[Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "loadClassBinaryName"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "dalvik.system.DexFile"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 382
    const/4 v10, 0x0

    aget-object v5, v0, v10

    check-cast v5, Ljava/lang/String;

    .line 383
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 384
    const/16 v10, 0x2f

    const/16 v11, 0x2e

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2e

    const/16 v12, 0x2f

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 385
    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 386
    .local v6, "newArgs":[Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object v5, v6, v10

    .line 387
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v6}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    .line 391
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "newArgs":[Ljava/lang/Object;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 392
    .restart local v5    # "name":Ljava/lang/String;
    const-class v10, Ljava/lang/ClassLoader;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 394
    const-string v10, "findLoadedClass"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 395
    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 396
    .restart local v6    # "newArgs":[Ljava/lang/Object;
    const/4 v11, 0x0

    const/4 v10, 0x0

    aget-object v10, v0, v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v11

    .line 397
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v6}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    .line 401
    .end local v6    # "newArgs":[Ljava/lang/Object;
    :cond_1
    const-string v10, "loadLibrary"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "load"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_2
    const-class v10, Ljava/lang/System;

    .line 402
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_3

    const-class v10, Ljava/lang/Runtime;

    .line 403
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 404
    :cond_3
    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->copyOf([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    .line 405
    .restart local v6    # "newArgs":[Ljava/lang/Object;
    new-instance v3, Lcom/ali/mobisecenhance/Invocation;

    invoke-direct {v3, v7, v6}, Lcom/ali/mobisecenhance/Invocation;-><init>(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 406
    .local v3, "invocation2":Lcom/ali/mobisecenhance/Invocation;
    const/4 v1, 0x0

    .line 407
    .local v1, "ex":Ljava/lang/Throwable;
    const-string v10, "loadLibrary"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 408
    invoke-static {v3}, Lcom/ali/mobisecenhance/Library;->before_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 409
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v10, v6

    if-ge v2, v10, :cond_4

    .line 410
    invoke-virtual {v3, v2}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v2

    .line 409
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 413
    :cond_4
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "load"

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 414
    .local v9, "v3":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 415
    invoke-virtual {v9, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 432
    .end local v2    # "i":I
    .end local v9    # "v3":Ljava/lang/reflect/Method;
    :cond_5
    :goto_1
    invoke-static {v3, v1}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    .line 433
    const/4 v10, 0x0

    .line 435
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v3    # "invocation2":Lcom/ali/mobisecenhance/Invocation;
    .end local v6    # "newArgs":[Ljava/lang/Object;
    :goto_2
    return v10

    .line 416
    .restart local v1    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "i":I
    .restart local v3    # "invocation2":Lcom/ali/mobisecenhance/Invocation;
    .restart local v6    # "newArgs":[Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 417
    .local v8, "t":Ljava/lang/Throwable;
    move-object v1, v8

    .line 418
    goto :goto_1

    .line 421
    .end local v2    # "i":I
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_6
    invoke-static {v3}, Lcom/ali/mobisecenhance/Library;->before_System_load(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 422
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v10, v6

    if-ge v2, v10, :cond_7

    .line 423
    invoke-virtual {v3, v2}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v6, v2

    .line 422
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 426
    :cond_7
    :try_start_1
    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 427
    :catch_1
    move-exception v8

    .line 428
    .restart local v8    # "t":Ljava/lang/Throwable;
    move-object v1, v8

    goto :goto_1

    .line 435
    .end local v1    # "ex":Ljava/lang/Throwable;
    .end local v2    # "i":I
    .end local v3    # "invocation2":Lcom/ali/mobisecenhance/Invocation;
    .end local v6    # "newArgs":[Ljava/lang/Object;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_8
    const/4 v10, 0x1

    goto :goto_2
.end method

.method private static buildCanonicalName0(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 589
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    :goto_0
    return-void

    .line 593
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetOriginClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "orig":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 595
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 597
    :cond_1
    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static buildGetName0(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 558
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetOriginClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "orig":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 564
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 566
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static buildHJNIDir()Ljava/io/File;
    .locals 5

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->m_baseDir:Ljava/lang/String;

    const-string v2, "hjni"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .local v0, "proxyDir":Ljava/io/File;
    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v2, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "proxyDir is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 237
    return-object v0
.end method

.method private static buildSimpleName0(Ljava/lang/Class;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 866
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 867
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v5

    if-nez v5, :cond_0

    .line 873
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetOriginClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    .local v2, "orig":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 875
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 879
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 880
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    .line 881
    .local v0, "enclosingClass":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetOriginClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 882
    .local v3, "origEnclosing":Ljava/lang/String;
    if-eqz v3, :cond_3

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 883
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 884
    .local v4, "simple":Ljava/lang/String;
    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 885
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 891
    .end local v0    # "enclosingClass":Ljava/lang/Class;
    .end local v3    # "origEnclosing":Ljava/lang/String;
    .end local v4    # "simple":Ljava/lang/String;
    :cond_3
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 892
    .local v1, "i":I
    if-lez v1, :cond_4

    .line 893
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 895
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static copyOf([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "obj"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 371
    array-length v1, p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 372
    .local v0, "n":[Ljava/lang/Object;
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    return-object v0
.end method

.method private static extract(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;Ljava/io/File;)V
    .locals 9
    .param p0, "apk"    # Ljava/util/zip/ZipFile;
    .param p1, "e"    # Ljava/util/zip/ZipEntry;
    .param p2, "library"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v4, 0x0

    .line 281
    .local v4, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 283
    .local v6, "os":Ljava/io/OutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 284
    .end local v6    # "os":Ljava/io/OutputStream;
    .local v7, "os":Ljava/io/OutputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 285
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 286
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 287
    .end local v4    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    const/16 v8, 0x1000

    :try_start_3
    new-array v0, v8, [B

    .line 289
    .local v0, "buff":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 290
    .local v1, "c":I
    if-gez v1, :cond_2

    .line 297
    if-eqz v5, :cond_0

    .line 299
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 304
    :cond_0
    :goto_1
    if-eqz v6, :cond_1

    .line 306
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 312
    :cond_1
    :goto_2
    return-void

    .line 293
    :cond_2
    const/4 v8, 0x0

    :try_start_6
    invoke-virtual {v6, v0, v8, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 297
    .end local v0    # "buff":[B
    .end local v1    # "c":I
    :catchall_0
    move-exception v8

    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :goto_3
    if-eqz v4, :cond_3

    .line 299
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 304
    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    .line 306
    :try_start_8
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 309
    :cond_4
    :goto_5
    throw v8

    .line 300
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v0    # "buff":[B
    .restart local v1    # "c":I
    .restart local v5    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v3

    .line 301
    .local v3, "e2":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 307
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 308
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 300
    .end local v0    # "buff":[B
    .end local v1    # "c":I
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    .line 301
    .restart local v3    # "e2":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 307
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 308
    .restart local v2    # "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 297
    .end local v2    # "e1":Ljava/io/IOException;
    :catchall_1
    move-exception v8

    goto :goto_3

    .end local v6    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "os":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private static extractLibraryFromApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "firstArch"    # Ljava/lang/String;
    .param p1, "secondArch"    # Ljava/lang/String;
    .param p2, "entryLibName"    # Ljava/lang/String;
    .param p3, "outpath"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    .local v5, "library":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v2, "apkFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 100
    .local v0, "apk":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .local v1, "apk":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 103
    .local v3, "e":Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_1

    .line 104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 105
    if-nez v3, :cond_1

    .line 106
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for armeabi or x86"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 114
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 115
    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    .local v4, "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    const-string v7, "fail to extract arch for armeabi or x86"

    invoke-direct {v6, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 116
    .local v6, "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v6, v4}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 117
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v6    # "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v0, :cond_0

    .line 121
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 123
    :cond_0
    :goto_2
    throw v7

    .line 110
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .restart local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/ali/mobisecenhance/ld/util/Util;->tryUnzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 111
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .restart local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_2
    if-eqz v1, :cond_3

    .line 121
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 127
    :cond_3
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 122
    :catch_1
    move-exception v7

    goto :goto_3

    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 114
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "initialize"    # Z
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 527
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-lt v1, v2, :cond_0

    if-nez p0, :cond_1

    .line 528
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 536
    :goto_0
    return-object v1

    .line 531
    :cond_1
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetRealClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "orig":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 534
    invoke-static {p0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 536
    :cond_2
    invoke-static {v0, p1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0
.end method

.method private static genArrayRealName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 350
    const/4 v1, 0x1

    .line 351
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    :cond_0
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 355
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_1

    .line 356
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 358
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetRealClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 360
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 367
    .end local v0    # "element":Ljava/lang/String;
    .end local p0    # "className":Ljava/lang/String;
    :cond_2
    return-object p0

    .line 363
    .restart local p0    # "className":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 364
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static genOriginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "clz"    # Ljava/lang/String;

    .prologue
    .line 505
    if-nez p0, :cond_1

    .line 506
    const/4 p0, 0x0

    .line 521
    .end local p0    # "clz":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 508
    .restart local p0    # "clz":Ljava/lang/String;
    :cond_1
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getArrayOriginalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 512
    :cond_2
    sget-boolean v1, Lcom/ali/mobisecenhance/ReflectMap;->isRelease:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->classNamePrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    :cond_3
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetOriginClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "org":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static genRealName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 330
    if-nez p0, :cond_1

    .line 331
    const/4 p0, 0x0

    .line 346
    .end local p0    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 333
    .restart local p0    # "className":Ljava/lang/String;
    :cond_1
    const-string v1, "["

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 334
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->genArrayRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 336
    :cond_2
    sget-boolean v1, Lcom/ali/mobisecenhance/ReflectMap;->isRelease:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->classNamePrefix:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    :cond_3
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetRealClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "realClassName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static getArrayOriginalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 484
    const/4 v1, 0x1

    .line 485
    .local v1, "i":I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_0

    .line 486
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    :cond_0
    const-string v2, ";"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x4c

    if-eq v2, v3, :cond_1

    .line 490
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    :cond_1
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->nativeGetOriginClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 494
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 501
    .end local v0    # "element":Ljava/lang/String;
    .end local p0    # "className":Ljava/lang/String;
    :cond_2
    return-object p0

    .line 497
    .restart local p0    # "className":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_2

    .line 498
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getCanonicalName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "clz"    # Ljava/lang/Class;

    .prologue
    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "d":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 573
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 574
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 577
    const/4 v3, 0x0

    .line 585
    :goto_1
    return-object v3

    .line 579
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 580
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v2}, Lcom/ali/mobisecenhance/ReflectMap;->buildCanonicalName0(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 582
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 583
    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 585
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "clz"    # Ljava/lang/Class;

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "d":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 545
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 548
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v2}, Lcom/ali/mobisecenhance/ReflectMap;->buildGetName0(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 551
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 552
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 554
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static native getOriginFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getOriginMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static getPackage(Ljava/lang/Class;)Ljava/lang/Package;
    .locals 9
    .param p0, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 900
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->genOriginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 902
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    .line 904
    .local v4, "p":Ljava/lang/Package;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 922
    .end local v4    # "p":Ljava/lang/Package;
    :cond_0
    :goto_0
    return-object v4

    .line 908
    .restart local v4    # "p":Ljava/lang/Package;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 909
    .local v2, "loader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_0

    .line 913
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 914
    .local v0, "dot":I
    if-ltz v0, :cond_0

    .line 915
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 917
    .local v5, "pkgName":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/ali/mobisecenhance/ReflectMap;->ClassLoader_getPackage:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-virtual {v6, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Package;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    goto :goto_0

    .line 918
    :catch_0
    move-exception v1

    .line 919
    .local v1, "ite":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    throw v6
.end method

.method public static native getRealFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native getRealMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static getRightReflectMapData()Ljava/io/File;
    .locals 6

    .prologue
    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "libreflectmap-dat.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "reflectMapData":Ljava/lang/String;
    const-string v3, "timeStamp(%s) mainProcess(%s)"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v5, Lcom/ali/mobisecenhance/ReflectMap;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    iget-object v5, v5, Lcom/ali/mobisecenhance/ConfigInfo;->timeStamp:Ljava/lang/String;

    aput-object v5, v4, v2

    const/4 v5, 0x1

    sget-boolean v2, Lcom/ali/mobisecenhance/ReflectMap;->m_isMainProcess:Z

    if-eqz v2, :cond_0

    const-string v2, "true"

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "out":Ljava/lang/String;
    sget-object v2, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v4}, Lcom/ali/mobisecenhance/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->isReflectMapDataReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 206
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    :goto_1
    return-object v2

    .line 200
    .end local v0    # "out":Ljava/lang/String;
    :cond_0
    const-string v2, "false"

    goto :goto_0

    .line 209
    .restart local v0    # "out":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ali/mobisecenhance/ReflectMap;->m_baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "reflectmap.data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->isReflectMapDataReady(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 212
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_2
    const-string v2, "armeabi"

    const-string v3, "x86"

    const-string v4, "libreflectmap-dat.so"

    invoke-static {v2, v3, v4, v1}, Lcom/ali/mobisecenhance/ReflectMap;->extractLibraryFromApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "clz"    # Ljava/lang/Class;

    .prologue
    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, "d":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 852
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    .line 853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 856
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0, v2}, Lcom/ali/mobisecenhance/ReflectMap;->buildSimpleName0(Ljava/lang/Class;Ljava/lang/StringBuilder;)V

    .line 859
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 860
    const-string v3, "[]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 862
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static isReflectMapDataReady(Ljava/lang/String;)Z
    .locals 11
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 160
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "dataFile":Ljava/io/File;
    const/4 v4, 0x0

    .line 162
    .local v4, "magic":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 165
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 166
    .local v3, "fi":Ljava/io/FileInputStream;
    const/16 v8, 0x8

    new-array v0, v8, [B

    .line 167
    .local v0, "buffer":[B
    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    .line 168
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 169
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 181
    const-string v8, "magic(%s) enhanceVersion(%s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v7

    sget-object v10, Lcom/ali/mobisecenhance/ReflectMap;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    iget-object v10, v10, Lcom/ali/mobisecenhance/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "out":Ljava/lang/String;
    sget-object v8, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v9, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    sget-object v10, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    invoke-virtual {v8, v9, v5, v10}, Lcom/ali/mobisecenhance/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-eqz v4, :cond_1

    sget-object v8, Lcom/ali/mobisecenhance/ReflectMap;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    iget-object v8, v8, Lcom/ali/mobisecenhance/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 186
    sget-object v7, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "yes find right "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/ali/mobisecenhance/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v0    # "buffer":[B
    .end local v3    # "fi":Ljava/io/FileInputStream;
    .end local v5    # "out":Ljava/lang/String;
    :goto_0
    return v6

    .line 170
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "read  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " failed..."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10}, Lcom/ali/mobisecenhance/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 173
    goto :goto_0

    .line 177
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v6, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not exsit.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v10}, Lcom/ali/mobisecenhance/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 178
    goto :goto_0

    .restart local v0    # "buffer":[B
    .restart local v3    # "fi":Ljava/io/FileInputStream;
    .restart local v5    # "out":Ljava/lang/String;
    :cond_1
    move v6, v7

    .line 190
    goto :goto_0
.end method

.method static loadConfig()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->getRightReflectMapData()Ljava/io/File;

    move-result-object v6

    .line 227
    .local v6, "configFile":Ljava/io/File;
    sget-object v0, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ali/mobisecenhance/ReflectMap;->m_baseDir:Ljava/lang/String;

    .line 228
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/ali/mobisecenhance/ReflectMap;->isRelease:Z

    sget-boolean v5, Lcom/ali/mobisecenhance/ReflectMap;->m_isMainProcess:Z

    .line 227
    invoke-static/range {v0 .. v5}, Lcom/ali/mobisecenhance/ReflectMap;->loadRflectMapNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 230
    return-void
.end method

.method private static loadDefault(ZLjava/lang/String;)V
    .locals 2
    .param p0, "isRelease"    # Z
    .param p1, "logdir"    # Ljava/lang/String;

    .prologue
    .line 71
    sput-boolean p0, Lcom/ali/mobisecenhance/ReflectMap;->isRelease:Z

    .line 74
    :try_start_0
    const-string v1, "reflectmap"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    invoke-static {p1}, Lcom/ali/mobisecenhance/ReflectMap;->registerMainArchFunctions(Ljava/lang/String;)V

    .line 84
    :try_start_1
    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->loadConfig()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_1
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-static {}, Lcom/ali/mobisecenhance/ReflectMap;->loadReflectMapSo()V

    goto :goto_0

    .line 85
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static loadReflectMapSo()V
    .locals 8

    .prologue
    .line 50
    const-string v4, "ro.product.cpu.abi"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "arch":Ljava/lang/String;
    const-string v1, "armeabi"

    .line 52
    .local v1, "first_arch":Ljava/lang/String;
    const-string v2, "x86"

    .line 54
    .local v2, "second_arch":Ljava/lang/String;
    sget-object v4, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v5, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-eqz v0, :cond_1

    .line 57
    const-string v4, "x86"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "x86_64"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    :cond_0
    const-string v1, "x86"

    .line 59
    const-string v2, "armeabi"

    .line 64
    :cond_1
    const-string v4, "libreflectmap.so"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/ali/mobisecenhance/ReflectMap;->m_baseDir:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "reflectmap.so"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->extractLibraryFromApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "soPath":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static loadRflectMap(Landroid/content/Context;Lcom/ali/mobisecenhance/ConfigInfo;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "configs"    # Lcom/ali/mobisecenhance/ConfigInfo;
    .param p2, "baseDir"    # Ljava/lang/String;
    .param p3, "logdir"    # Ljava/lang/String;
    .param p4, "isMainProcess"    # Z

    .prologue
    .line 242
    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v2, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " init. cl: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/ali/mobisecenhance/ReflectMap;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sput-object p1, Lcom/ali/mobisecenhance/ReflectMap;->m_configs:Lcom/ali/mobisecenhance/ConfigInfo;

    .line 244
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 245
    .local v0, "mypid":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "record_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".log"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    .line 246
    sget-object v1, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v2, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_crashlog is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ali/mobisecenhance/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sput-object p2, Lcom/ali/mobisecenhance/ReflectMap;->m_baseDir:Ljava/lang/String;

    .line 248
    sput-boolean p4, Lcom/ali/mobisecenhance/ReflectMap;->m_isMainProcess:Z

    .line 249
    sput-object p0, Lcom/ali/mobisecenhance/ReflectMap;->m_context:Landroid/content/Context;

    .line 252
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/ali/mobisecenhance/ReflectMap;->m_baseDir:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 253
    iget-boolean v1, p1, Lcom/ali/mobisecenhance/ConfigInfo;->isReaseMode:Z

    invoke-static {v1, p3}, Lcom/ali/mobisecenhance/ReflectMap;->loadDefault(ZLjava/lang/String;)V

    .line 255
    return-void
.end method

.method private static native loadRflectMapNative(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
.end method

.method private static native nativeGetNamePrefixes()Ljava/lang/String;
.end method

.method private static native nativeGetOriginClassName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetRealClassName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static newResourcePath(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "owner"    # Ljava/lang/Class;
    .param p1, "r"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 934
    if-nez p1, :cond_1

    .line 944
    .end local p1    # "r":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 937
    .restart local p1    # "r":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    invoke-static {p0}, Lcom/ali/mobisecenhance/ReflectMap;->getPackage(Ljava/lang/Class;)Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 941
    .local v0, "p":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 942
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 944
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method static realNameMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 326
    new-instance v0, Lcom/ali/mobisecenhance/ReflectMap$GenRealNameMap;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ReflectMap$GenRealNameMap;-><init>()V

    return-object v0
.end method

.method private static native registerMainArchFunctions(Ljava/lang/String;)V
.end method

.method private static releaseMapData()V
    .locals 7

    .prologue
    .line 133
    sget-boolean v3, Lcom/ali/mobisecenhance/ReflectMap;->m_isMainProcess:Z

    if-eqz v3, :cond_1

    .line 134
    const-string v3, "armeabi"

    const-string v4, "x86"

    const-string v5, "libreflectmap-dat.so"

    const-string v6, "reflectmap.data"

    invoke-static {v3, v4, v5, v6}, Lcom/ali/mobisecenhance/ReflectMap;->extractLibraryFromApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .local v0, "configFile":Ljava/io/File;
    .local v2, "max_wait_time":I
    :cond_0
    return-void

    .line 137
    .end local v0    # "configFile":Ljava/io/File;
    .end local v2    # "max_wait_time":I
    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/ali/mobisecenhance/ReflectMap;->m_baseDir:Ljava/lang/String;

    const-string v4, "reflectmap.data"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .restart local v0    # "configFile":Ljava/io/File;
    const/4 v2, 0x5

    .line 139
    .restart local v2    # "max_wait_time":I
    :goto_0
    if-lez v2, :cond_0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 141
    sget-object v3, Lcom/ali/mobisecenhance/ReflectMap;->log:Lcom/ali/mobisecenhance/RecordLog;

    sget-object v4, Lcom/ali/mobisecenhance/ReflectMap;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wait for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to extract... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/ali/mobisecenhance/ReflectMap;->m_crashlog:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lcom/ali/mobisecenhance/RecordLog;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method private static searchFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 602
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 603
    .local v4, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Class;>;"
    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    :cond_0
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 606
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "clz":Ljava/lang/Class;
    check-cast p0, Ljava/lang/Class;

    .line 607
    .restart local p0    # "clz":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/ali/mobisecenhance/ReflectMap;->getRealFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "newFileName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 623
    .end local v2    # "newFileName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 612
    .restart local v2    # "newFileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 613
    .local v3, "parent":Ljava/lang/Class;
    if-eqz v3, :cond_2

    .line 614
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 617
    .local v1, "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 618
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 619
    .local v0, "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 623
    .end local v0    # "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "newFileName":Ljava/lang/String;
    .end local v3    # "parent":Ljava/lang/Class;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static searchMethodName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 627
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 628
    .local v4, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Class;>;"
    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :cond_0
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 631
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "clz":Ljava/lang/Class;
    check-cast p0, Ljava/lang/Class;

    .line 632
    .restart local p0    # "clz":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/ali/mobisecenhance/ReflectMap;->getRealMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 633
    .local v2, "newFileName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 648
    .end local v2    # "newFileName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 637
    .restart local v2    # "newFileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 638
    .local v3, "parent":Ljava/lang/Class;
    if-eqz v3, :cond_2

    .line 639
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 642
    .local v1, "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 643
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 644
    .local v0, "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 648
    .end local v0    # "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "newFileName":Ljava/lang/String;
    .end local v3    # "parent":Ljava/lang/Class;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static searchOriginalFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 778
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 779
    .local v4, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Class;>;"
    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    :cond_0
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 782
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "clz":Ljava/lang/Class;
    check-cast p0, Ljava/lang/Class;

    .line 783
    .restart local p0    # "clz":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/ali/mobisecenhance/ReflectMap;->getOriginFieldName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 784
    .local v2, "newFileName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 799
    .end local v2    # "newFileName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 788
    .restart local v2    # "newFileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 789
    .local v3, "parent":Ljava/lang/Class;
    if-eqz v3, :cond_2

    .line 790
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 793
    .local v1, "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 794
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 795
    .local v0, "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 799
    .end local v0    # "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "newFileName":Ljava/lang/String;
    .end local v3    # "parent":Ljava/lang/Class;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static searchOriginalMethodName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "clz"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 753
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    .line 754
    .local v4, "stack":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/Class;>;"
    invoke-virtual {v4, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    :cond_0
    invoke-virtual {v4}, Ljava/util/Stack;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 757
    invoke-virtual {v4}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "clz":Ljava/lang/Class;
    check-cast p0, Ljava/lang/Class;

    .line 758
    .restart local p0    # "clz":Ljava/lang/Class;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/ali/mobisecenhance/ReflectMap;->getOriginMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, "newFileName":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 774
    .end local v2    # "newFileName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 763
    .restart local v2    # "newFileName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 764
    .local v3, "parent":Ljava/lang/Class;
    if-eqz v3, :cond_2

    .line 765
    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .line 768
    .local v1, "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 769
    array-length v6, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v0, v1, v5

    .line 770
    .local v0, "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 774
    .end local v0    # "it":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "its":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "newFileName":Ljava/lang/String;
    .end local v3    # "parent":Ljava/lang/Class;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
