.class public Lc8/gCb;
.super Ljava/lang/Object;
.source "WuaHelper.java"


# direct methods
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

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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

.method public static getMiniWua()Ljava/lang/String;
    .locals 22

    .prologue
    .line 40
    const-wide/16 v16, 0x0

    .line 41
    .local v16, "time":J
    :try_start_0
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 44
    :cond_0
    const-string/jumbo v18, "com.alibaba.wireless.security.open.SecurityGuardManager"

    invoke-static/range {v18 .. v18}, Lc8/gCb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 45
    .local v10, "SecurityGuardManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v18, "getInstance"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Landroid/content/Context;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 46
    .local v12, "SecurityGuardManager_GetInstanceMethod":Ljava/lang/reflect/Method;
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v12, v0, v1}, Lc8/gCb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 48
    .local v11, "SecurityGuardManagerObj":Ljava/lang/Object;
    const-string/jumbo v18, "com.alibaba.wireless.security.open.securitybody.ISecurityBodyComponent"

    invoke-static/range {v18 .. v18}, Lc8/gCb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 49
    .local v4, "ISecurityBodyComponentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v18, "getInterface"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/Class;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 50
    .local v13, "SecurityGuardManager_GetInterfaceMethod":Ljava/lang/reflect/Method;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    move-object/from16 v0, v18

    invoke-static {v13, v11, v0}, Lc8/gCb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 52
    .local v5, "ISecurityBodyComponentObj":Ljava/lang/Object;
    const-string/jumbo v18, "com.alibaba.wireless.security.open.securitybody.SecurityBodyDefine"

    invoke-static/range {v18 .. v18}, Lc8/gCb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 53
    .local v9, "SecurityBodyDefineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v18, "OPEN_SECURITYBODY_FLAG_FORMAT_MINI"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v8

    .line 54
    .local v8, "OPEN_SECURITYBODY_FLAG_FORMAT_MINI":I
    const-string/jumbo v18, "OPEN_SECURITYBODY_ENV_ONLINE"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    .line 55
    .local v7, "OPEN_SECURITYBODY_ENV_ONLINE":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "OPEN_SECURITYBODY_FLAG_FORMAT_MINI:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "OPEN_SECURITYBODY_ENV_ONLINE:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    const-string/jumbo v18, "getSecurityBodyDataEx"

    const/16 v19, 0x6

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-class v21, Ljava/lang/String;

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const-class v21, Ljava/util/HashMap;

    aput-object v21, v19, v20

    const/16 v20, 0x4

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    const/16 v20, 0x5

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 61
    .local v6, "ISecurityBodyComponent_GetSecurityBodyDataExMethod":Ljava/lang/reflect/Method;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v18, v19

    const/16 v19, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v5, v0}, Lc8/gCb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 64
    .local v15, "miniWua":Ljava/lang/String;
    invoke-static {}, Lc8/NBb;->isDebug()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 65
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Mini Wua: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ",waste time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v20, v20, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v19}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v4    # "ISecurityBodyComponentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "ISecurityBodyComponentObj":Ljava/lang/Object;
    .end local v6    # "ISecurityBodyComponent_GetSecurityBodyDataExMethod":Ljava/lang/reflect/Method;
    .end local v7    # "OPEN_SECURITYBODY_ENV_ONLINE":I
    .end local v8    # "OPEN_SECURITYBODY_FLAG_FORMAT_MINI":I
    .end local v9    # "SecurityBodyDefineClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v10    # "SecurityGuardManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v11    # "SecurityGuardManagerObj":Ljava/lang/Object;
    .end local v12    # "SecurityGuardManager_GetInstanceMethod":Ljava/lang/reflect/Method;
    .end local v13    # "SecurityGuardManager_GetInterfaceMethod":Ljava/lang/reflect/Method;
    .end local v15    # "miniWua":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v15

    .line 68
    :catch_0
    move-exception v14

    .line 69
    .local v14, "e":Ljava/lang/Throwable;
    const-string/jumbo v18, ""

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v14}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    const/4 v15, 0x0

    goto :goto_0
.end method
