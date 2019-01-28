.class public Lc8/Ico;
.super Ljava/lang/Object;
.source "JsBridgeProxy.java"


# instance fields
.field private bridgeMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private jsBridge:Lc8/Hco;


# direct methods
.method public constructor <init>(Lc8/Hco;)V
    .locals 1
    .param p1, "jsBridge"    # Lc8/Hco;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Ico;->bridgeMaps:Ljava/util/Map;

    .line 31
    iput-object p1, p0, Lc8/Ico;->jsBridge:Lc8/Hco;

    .line 32
    return-void
.end method

.method private initMethods()V
    .locals 6

    .prologue
    .line 39
    iget-object v3, p0, Lc8/Ico;->jsBridge:Lc8/Hco;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 40
    .local v2, "ownerClass":Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 41
    .local v1, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 42
    iget-object v3, p0, Lc8/Ico;->bridgeMaps:Ljava/util/Map;

    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    aget-object v5, v1, v0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Lc8/Eco;)V
    .locals 23
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "responseFunction"    # Lc8/Eco;

    .prologue
    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->bridgeMaps:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v20

    if-nez v20, :cond_0

    .line 55
    invoke-direct/range {p0 .. p0}, Lc8/Ico;->initMethods()V

    .line 57
    :cond_0
    const/4 v11, 0x1

    .line 58
    .local v11, "isEmptyData":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v6, "clazzList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v7, "dataList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-static/range {p2 .. p2}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 62
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .local v13, "jsonObject":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v15

    .line 64
    .local v15, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v15, :cond_2

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 66
    const/4 v11, 0x0

    .line 67
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 68
    .local v14, "key":Ljava/lang/String;
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 69
    .local v12, "jsonData":Ljava/lang/Object;
    invoke-static {v12}, Lc8/ebo;->toBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v20

    if-eqz v20, :cond_4

    .line 70
    const-class v20, Ljava/lang/Boolean;

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    .end local v12    # "jsonData":Ljava/lang/Object;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 88
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 92
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    const/16 v17, 0x0

    .line 93
    .local v17, "result":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 96
    .local v10, "invokeSuccess":Z
    const/16 v18, 0x0

    .line 97
    .local v18, "returnType":Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->bridgeMaps:Ljava/util/Map;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/reflect/Method;

    .line 98
    .local v16, "method":Ljava/lang/reflect/Method;
    if-nez v16, :cond_8

    .line 99
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "invokeJavaScriptInterface, java interface method not found: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lc8/Oao;->w(Ljava/lang/String;)I

    .line 100
    if-eqz p3, :cond_3

    .line 101
    const/16 v20, 0x3

    const-string/jumbo v21, "Sorry, the function is not found"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lc8/Eco;->onCallBack(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v17    # "result":Ljava/lang/Object;
    :cond_3
    :goto_1
    return-void

    .line 72
    .end local v10    # "invokeSuccess":Z
    .end local v16    # "method":Ljava/lang/reflect/Method;
    .end local v18    # "returnType":Ljava/lang/Class;
    .restart local v12    # "jsonData":Ljava/lang/Object;
    .restart local v13    # "jsonObject":Lorg/json/JSONObject;
    .restart local v14    # "key":Ljava/lang/String;
    .restart local v15    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :try_start_1
    invoke-static {v12}, Lc8/ebo;->toInteger(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v20

    if-eqz v20, :cond_5

    .line 73
    const-class v20, Ljava/lang/Integer;

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 75
    :cond_5
    invoke-static {v12}, Lc8/ebo;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v20

    if-eqz v20, :cond_6

    .line 76
    const-class v20, Ljava/lang/Long;

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 78
    :cond_6
    invoke-static {v12}, Lc8/ebo;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v20

    if-eqz v20, :cond_7

    .line 79
    const-class v20, Ljava/lang/Double;

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 81
    :cond_7
    invoke-static {v12}, Lc8/ebo;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    .line 82
    const-class v20, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 105
    .end local v12    # "jsonData":Ljava/lang/Object;
    .end local v13    # "jsonObject":Lorg/json/JSONObject;
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v10    # "invokeSuccess":Z
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    .restart local v17    # "result":Ljava/lang/Object;
    .restart local v18    # "returnType":Ljava/lang/Class;
    :cond_8
    if-eqz v16, :cond_9

    .line 106
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v18

    .line 109
    :cond_9
    const/16 v19, 0x0

    .line 110
    .local v19, "types":[Ljava/lang/Class;
    invoke-static {v7}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 111
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    .line 112
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_a

    .line 113
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Class;

    aput-object v20, v19, v9

    .line 112
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 118
    .end local v9    # "i":I
    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    if-eqz v20, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 120
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->jsBridge:Lc8/Hco;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lc8/Zao;->invokeMethodWithThrows(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    .line 121
    const/4 v10, 0x1

    .line 122
    if-eqz p3, :cond_3

    .line 123
    const/16 v21, 0x0

    const-string/jumbo v22, "ok"

    if-eqz v17, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v20

    invoke-interface {v0, v1, v2, v3}, Lc8/Eco;->onCallBack(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .end local v17    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v20

    .line 131
    :cond_c
    const-string/jumbo v20, "void"

    invoke-static/range {v18 .. v18}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    .line 133
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->jsBridge:Lc8/Hco;

    move-object/from16 v20, v0

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lc8/Zao;->invokeMethodWithThrows(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v17

    .line 134
    .restart local v17    # "result":Ljava/lang/Object;
    const/4 v10, 0x1

    .line 187
    .end local v17    # "result":Ljava/lang/Object;
    :cond_d
    :goto_4
    if-eqz p3, :cond_3

    .line 188
    if-nez v10, :cond_12

    .line 189
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "InvokeJavaScriptInterface, but java interface method invoke failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lc8/Oao;->w(Ljava/lang/String;)I

    .line 190
    const/16 v20, 0x1

    const-string/jumbo v21, "Sorry, execute failed"

    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lc8/Eco;->onCallBack(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    .restart local v17    # "result":Ljava/lang/Object;
    :cond_e
    const/16 v20, 0x0

    goto :goto_3

    .line 138
    .end local v17    # "result":Ljava/lang/Object;
    :cond_f
    if-eqz p3, :cond_d

    .line 139
    invoke-static {v7}, Lc8/abo;->isNull(Ljava/util/Collection;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 141
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->jsBridge:Lc8/Hco;

    move-object/from16 v20, v0

    invoke-interface {v7}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lc8/Zao;->invokeMethodWithThrows(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v17

    .line 142
    .restart local v17    # "result":Ljava/lang/Object;
    const/4 v10, 0x1

    .line 146
    .end local v17    # "result":Ljava/lang/Object;
    :goto_5
    if-nez v10, :cond_10

    .line 148
    :try_start_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 149
    .local v4, "appendList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/Class;

    .line 151
    .local v5, "appendTypes":[Ljava/lang/Class;
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 152
    array-length v0, v5

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x1

    const-class v21, Lc8/Eco;

    aput-object v21, v5, v20

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->jsBridge:Lc8/Hco;

    move-object/from16 v20, v0

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Lc8/Zao;->invokeMethodWithThrows(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v17

    .line 154
    .restart local v17    # "result":Ljava/lang/Object;
    const/4 v10, 0x1

    .line 161
    .end local v4    # "appendList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "appendTypes":[Ljava/lang/Class;
    .end local v17    # "result":Ljava/lang/Object;
    :cond_10
    :goto_6
    if-nez v10, :cond_11

    if-nez v11, :cond_11

    .line 163
    :try_start_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .restart local v4    # "appendList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Lc8/Eco;

    aput-object v21, v5, v20

    .line 166
    .restart local v5    # "appendTypes":[Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->jsBridge:Lc8/Hco;

    move-object/from16 v20, v0

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Lc8/Zao;->invokeMethodWithThrows(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-result-object v17

    .line 167
    .restart local v17    # "result":Ljava/lang/Object;
    const/4 v10, 0x1

    .line 173
    .end local v4    # "appendList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "appendTypes":[Ljava/lang/Class;
    .end local v17    # "result":Ljava/lang/Object;
    :cond_11
    :goto_7
    if-nez v10, :cond_d

    .line 175
    :try_start_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .restart local v4    # "appendList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/Class;

    const/16 v20, 0x0

    const-class v21, Lc8/Eco;

    aput-object v21, v5, v20

    .line 178
    .restart local v5    # "appendTypes":[Ljava/lang/Class;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Ico;->jsBridge:Lc8/Hco;

    move-object/from16 v20, v0

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v5, v2}, Lc8/Zao;->invokeMethodWithThrows(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v17

    .line 179
    .restart local v17    # "result":Ljava/lang/Object;
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 191
    .end local v4    # "appendList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v5    # "appendTypes":[Ljava/lang/Class;
    .end local v17    # "result":Ljava/lang/Object;
    :cond_12
    if-eqz v17, :cond_3

    .line 192
    const/16 v20, 0x0

    const-string/jumbo v21, "ok"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-interface {v0, v1, v2, v3}, Lc8/Eco;->onCallBack(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_2
    move-exception v20

    goto/16 :goto_4

    :catch_3
    move-exception v20

    goto :goto_7

    :catch_4
    move-exception v20

    goto/16 :goto_6

    :catch_5
    move-exception v20

    goto/16 :goto_5

    .line 137
    :catch_6
    move-exception v20

    goto/16 :goto_4
.end method
