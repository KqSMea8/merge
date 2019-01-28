.class public Lc8/uao;
.super Ljava/lang/Object;
.source "SingletonFactory.java"


# static fields
.field public static mFactory:Lc8/uao;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lc8/uao;->map:Ljava/util/Map;

    .line 12
    new-instance v0, Lc8/uao;

    invoke-direct {v0}, Lc8/uao;-><init>()V

    sput-object v0, Lc8/uao;->mFactory:Lc8/uao;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static clearAllInstances()V
    .locals 2

    .prologue
    .line 46
    const-class v1, Lc8/uao;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lc8/uao;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 48
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 22
    sget-object v4, Lc8/uao;->map:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 23
    .local v2, "singleton":Ljava/lang/Object;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 39
    .end local v2    # "singleton":Ljava/lang/Object;
    .local v3, "singleton":Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 26
    .end local v3    # "singleton":Ljava/lang/Object;
    .restart local v2    # "singleton":Ljava/lang/Object;
    :cond_0
    const-class v5, Lc8/uao;

    monitor-enter v5

    .line 27
    :try_start_0
    sget-object v4, Lc8/uao;->map:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 28
    if-nez v2, :cond_1

    .line 30
    const/4 v4, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 31
    .local v0, "ct":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 32
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 36
    .end local v0    # "ct":Ljava/lang/reflect/Constructor;
    :goto_1
    :try_start_2
    sget-object v4, Lc8/uao;->map:Ljava/util/Map;

    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_1
    monitor-exit v5

    move-object v3, v2

    .line 39
    .end local v2    # "singleton":Ljava/lang/Object;
    .restart local v3    # "singleton":Ljava/lang/Object;
    goto :goto_0

    .line 33
    .end local v3    # "singleton":Ljava/lang/Object;
    .restart local v2    # "singleton":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 38
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public static removeInstance(Ljava/lang/Class;)V
    .locals 1
    .param p0, "cls"    # Ljava/lang/Class;

    .prologue
    .line 56
    sget-object v0, Lc8/uao;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method
