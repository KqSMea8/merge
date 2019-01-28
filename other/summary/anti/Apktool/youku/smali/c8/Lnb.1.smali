.class public Lc8/Lnb;
.super Ljava/lang/Object;
.source "ALPUserTraceManager.java"


# static fields
.field private static isFirstTime:Z

.field private static isUTExist:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Lnb;->isFirstTime:Z

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lc8/Lnb;->isUTExist:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
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

.method private getInnerClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 11
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "innerClassSimpleName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 98
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v1, v6

    .line 113
    :cond_1
    :goto_0
    return-object v1

    .line 103
    :cond_2
    :try_start_0
    invoke-static {p1}, Lc8/Lnb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 104
    .local v5, "outerClazzs":Ljava/lang/Class;
    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v1, v0, v3

    .line 105
    .local v1, "clazz":Ljava/lang/Class;
    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_1

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 109
    .end local v0    # "arr$":[Ljava/lang/Class;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "outerClazzs":Ljava/lang/Class;
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v7, "ALPUserTraceManager"

    const-string/jumbo v8, "getInnerClass"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "errmsg ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_3
    move-object v1, v6

    .line 113
    goto :goto_0
.end method

.method private static declared-synchronized isUTExsist()Z
    .locals 6

    .prologue
    .line 76
    const-class v2, Lc8/Lnb;

    monitor-enter v2

    :try_start_0
    sget-boolean v1, Lc8/Lnb;->isFirstTime:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 78
    :try_start_1
    const-string/jumbo v1, "com.ut.mini.UTAnalytics"

    invoke-static {v1}, Lc8/Lnb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 79
    const/4 v1, 0x1

    sput-boolean v1, Lc8/Lnb;->isUTExist:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-boolean v1, Lc8/Lnb;->isFirstTime:Z

    .line 87
    :cond_0
    sget-boolean v1, Lc8/Lnb;->isUTExist:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return v1

    .line 80
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 81
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    :try_start_3
    const-string/jumbo v1, "ALPUserTraceManager"

    const-string/jumbo v3, "isUTExsist"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ut do not exist , errmsg ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const/4 v1, 0x0

    sput-boolean v1, Lc8/Lnb;->isUTExist:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static sendByAplus(Lc8/Mnb;)V
    .locals 2
    .param p0, "point"    # Lc8/Mnb;

    .prologue
    .line 64
    invoke-static {}, Lc8/Knb;->create()Lc8/Knb;

    move-result-object v0

    .line 65
    .local v0, "aplus":Lc8/Knb;
    invoke-virtual {p0}, Lc8/Mnb;->getSpm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Knb;->setSPM(Ljava/lang/String;)Lc8/Knb;

    .line 66
    invoke-virtual {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Knb;->setProperty(Ljava/util/Map;)Lc8/Knb;

    .line 67
    invoke-virtual {v0}, Lc8/Knb;->send()Z

    .line 68
    return-void
.end method

.method private static sendByUT(Lc8/Mnb;)V
    .locals 12
    .param p0, "point"    # Lc8/Mnb;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 36
    const-string/jumbo v4, "com.ut.mini.UTHitBuilders$UTCustomHitBuilder"

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "java.lang.String"

    aput-object v6, v5, v9

    new-array v6, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc8/Mnb;->getSpm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v4, v5, v6}, Lc8/uob;->newInstance(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    .local v1, "lHitBuilder":Ljava/lang/Object;
    const-string/jumbo v4, "com.ut.mini.UTHitBuilders$UTCustomHitBuilder"

    const-string/jumbo v5, "setProperties"

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "java.util.Map"

    aput-object v7, v6, v9

    new-array v7, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v4, v5, v6, v1, v7}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string/jumbo v4, "com.ut.mini.UTHitBuilders$UTCustomHitBuilder"

    const-string/jumbo v5, "build"

    invoke-static {v4, v5, v11, v1, v11}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 46
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "com.ut.mini.UTAnalytics"

    const-string/jumbo v5, "getInstance"

    invoke-static {v4, v5, v11, v11, v11}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, "analytics":Ljava/lang/Object;
    const-string/jumbo v4, "com.ut.mini.UTAnalytics"

    const-string/jumbo v5, "getTracker"

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "java.lang.String"

    aput-object v7, v6, v9

    new-array v7, v10, [Ljava/lang/String;

    const-string/jumbo v8, "ALPLinkPartnerSDK"

    aput-object v8, v7, v9

    invoke-static {v4, v5, v6, v0, v7}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 54
    .local v3, "tracker":Ljava/lang/Object;
    const-string/jumbo v4, "com.ut.mini.UTTracker"

    const-string/jumbo v5, "send"

    new-array v6, v10, [Ljava/lang/String;

    const-string/jumbo v7, "java.util.Map"

    aput-object v7, v6, v9

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v4, v5, v6, v3, v7}, Lc8/uob;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    return-void
.end method

.method public static sendUserTracePoint(Lc8/Mnb;)V
    .locals 1
    .param p0, "point"    # Lc8/Mnb;

    .prologue
    .line 21
    invoke-static {}, Lc8/Lnb;->isUTExsist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {p0}, Lc8/Lnb;->sendByUT(Lc8/Mnb;)V

    .line 27
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-static {p0}, Lc8/Lnb;->sendByAplus(Lc8/Mnb;)V

    goto :goto_0
.end method
