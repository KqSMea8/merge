.class public Lc8/BH;
.super Ljava/lang/Object;
.source "WVURLInterceptHelper.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final URL_FILTER_TAG:Ljava/lang/String; = "_wv_url_hyid"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lc8/BH;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/BH;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized parseByRule(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Lc8/zH;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lc8/yH;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)",
            "Lc8/zH;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "urlRules":Ljava/util/Set;, "Ljava/util/Set<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    .local p2, "rulePat":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/regex/Pattern;>;"
    const-class v18, Lc8/BH;

    monitor-enter v18

    :try_start_0
    new-instance v7, Lc8/zH;

    invoke-direct {v7}, Lc8/zH;-><init>()V

    .line 41
    .local v7, "info":Lc8/zH;
    move-object/from16 v0, p0

    iput-object v0, v7, Lc8/zH;->url:Ljava/lang/String;

    .line 43
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 44
    .local v10, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/yH;

    .line 45
    .local v3, "data":Lc8/yH;
    iget-object v12, v3, Lc8/yH;->pattern:Ljava/lang/String;

    .line 46
    .local v12, "patStr":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/regex/Pattern;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .local v11, "pat":Ljava/util/regex/Pattern;
    if-nez v11, :cond_1

    .line 49
    :try_start_1
    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 50
    move-object/from16 v0, p2

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :cond_1
    :goto_0
    if-nez v11, :cond_3

    .line 90
    .end local v3    # "data":Lc8/yH;
    .end local v11    # "pat":Ljava/util/regex/Pattern;
    .end local v12    # "patStr":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit v18

    return-object v7

    .line 52
    .restart local v3    # "data":Lc8/yH;
    .restart local v11    # "pat":Ljava/util/regex/Pattern;
    .restart local v12    # "patStr":Ljava/lang/String;
    :catch_0
    move-exception v17

    :try_start_2
    sget-object v17, Lc8/BH;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "pattern:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 40
    .end local v3    # "data":Lc8/yH;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "info":Lc8/zH;
    .end local v10    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pat":Ljava/util/regex/Pattern;
    .end local v12    # "patStr":Ljava/lang/String;
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 57
    .restart local v3    # "data":Lc8/yH;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "info":Lc8/zH;
    .restart local v10    # "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "pat":Ljava/util/regex/Pattern;
    .restart local v12    # "patStr":Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 58
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 59
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 60
    sget-object v17, Lc8/BH;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "url matched for pattern "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_4
    iget v0, v3, Lc8/yH;->target:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v7, Lc8/zH;->code:I

    .line 63
    iput-object v12, v7, Lc8/zH;->rule:Ljava/lang/String;

    .line 64
    iget v13, v3, Lc8/yH;->rutype:I

    .line 65
    .local v13, "rtype":I
    if-nez v13, :cond_6

    .line 66
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 67
    .local v2, "count":I
    iget-object v0, v3, Lc8/yH;->indexp:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    .line 68
    .local v14, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 69
    .local v6, "indexp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 70
    .local v5, "index":I
    invoke-virtual {v8, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 71
    .local v16, "val":Ljava/lang/String;
    if-lt v2, v5, :cond_5

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 72
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 75
    .end local v2    # "count":I
    .end local v5    # "index":I
    .end local v6    # "indexp":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v14    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v16    # "val":Ljava/lang/String;
    :cond_6
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v13, v0, :cond_8

    .line 76
    iget-object v0, v3, Lc8/yH;->namep:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    .line 77
    .local v15, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 78
    .local v9, "namep":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lc8/dI;->getParamVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 79
    .restart local v16    # "val":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 80
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v10, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 88
    .end local v3    # "data":Lc8/yH;
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v9    # "namep":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "pat":Ljava/util/regex/Pattern;
    .end local v12    # "patStr":Ljava/lang/String;
    .end local v13    # "rtype":I
    .end local v15    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v16    # "val":Ljava/lang/String;
    :cond_8
    if-eqz v10, :cond_2

    .line 89
    iput-object v10, v7, Lc8/zH;->params:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public static parseByTag(Ljava/lang/String;)Lc8/zH;
    .locals 15
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 154
    const-string/jumbo v13, "_wv_url_hyid"

    invoke-static {p0, v13}, Lc8/dI;->getParamVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 155
    .local v11, "tagVal":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 156
    const/4 v3, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v3

    .line 157
    :cond_1
    new-instance v3, Lc8/zH;

    invoke-direct {v3}, Lc8/zH;-><init>()V

    .line 158
    .local v3, "info":Lc8/zH;
    iput-object p0, v3, Lc8/zH;->url:Ljava/lang/String;

    .line 160
    const-string/jumbo v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 161
    const/4 v3, 0x0

    goto :goto_0

    .line 163
    :cond_2
    const-string/jumbo v13, ";"

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 164
    .local v9, "s1":I
    const/4 v13, 0x0

    invoke-static {v11, v13, v9}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "code":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    iput v13, v3, Lc8/zH;->code:I

    .line 167
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v8, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v13, v9, 0x1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-static {v11, v13, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "namep":Ljava/lang/String;
    const-string/jumbo v13, ","

    invoke-virtual {v5, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 170
    .local v6, "nameps":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v6

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_4

    aget-object v7, v0, v2

    .line 171
    .local v7, "p":Ljava/lang/String;
    const-string/jumbo v13, ":"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 172
    .local v10, "sp":[Ljava/lang/String;
    array-length v13, v10

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    .line 173
    const/4 v13, 0x1

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {p0, v13}, Lc8/dI;->getParamVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 174
    .local v12, "val":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 175
    const/4 v13, 0x0

    aget-object v13, v10, v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8, v13, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .end local v12    # "val":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 179
    .end local v7    # "p":Ljava/lang/String;
    .end local v10    # "sp":[Ljava/lang/String;
    :cond_4
    if-eqz v8, :cond_0

    .line 180
    iput-object v8, v3, Lc8/zH;->params:Ljava/util/Map;

    goto :goto_0
.end method

.method public static parseRuleData(Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/yH;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v13

    .line 103
    .local v13, "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    const/4 v7, 0x0

    .line 104
    .local v7, "jsObj":Lorg/json/JSONObject;
    new-instance v12, Lc8/gC;

    invoke-direct {v12}, Lc8/gC;-><init>()V

    .line 105
    .local v12, "response":Lc8/gC;
    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Lc8/gC;->parseJsonResult(Ljava/lang/String;)Lc8/gC;

    move-result-object v17

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lc8/gC;->success:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 106
    iget-object v7, v12, Lc8/gC;->data:Lorg/json/JSONObject;

    .line 109
    :cond_0
    if-eqz v7, :cond_6

    .line 110
    :try_start_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v13    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    .local v14, "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    :try_start_1
    const-string/jumbo v17, "lock"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x1

    :goto_0
    sput-boolean v17, Lc8/PB;->URL_FILTER:Z

    .line 112
    const-string/jumbo v17, "rules"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 113
    const-string/jumbo v17, "rules"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 114
    .local v15, "rules":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v17

    move/from16 v0, v17

    if-ge v4, v0, :cond_7

    .line 115
    invoke-virtual {v15, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/json/JSONObject;

    .line 116
    .local v10, "obj":Lorg/json/JSONObject;
    new-instance v3, Lc8/yH;

    invoke-direct {v3}, Lc8/yH;-><init>()V

    .line 117
    .local v3, "data":Lc8/yH;
    const-string/jumbo v17, "target"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v3, Lc8/yH;->target:I

    .line 118
    const-string/jumbo v17, "pattern"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v3, Lc8/yH;->pattern:Ljava/lang/String;

    .line 119
    const-string/jumbo v17, "rutype"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    iput v0, v3, Lc8/yH;->rutype:I

    .line 120
    const-string/jumbo v17, "indexp"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, "indexps":[Ljava/lang/String;
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v6

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v11, v2, v5

    .line 122
    .local v11, "p":Ljava/lang/String;
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, "sp":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/16 v17, 0x1

    aget-object v17, v16, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 124
    iget-object v0, v3, Lc8/yH;->indexp:Ljava/util/Map;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 111
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "data":Lc8/yH;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "indexps":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v11    # "p":Ljava/lang/String;
    .end local v15    # "rules":Lorg/json/JSONArray;
    .end local v16    # "sp":[Ljava/lang/String;
    :cond_2
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 127
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "data":Lc8/yH;
    .restart local v4    # "i":I
    .restart local v5    # "i$":I
    .restart local v6    # "indexps":[Ljava/lang/String;
    .restart local v8    # "len$":I
    .restart local v10    # "obj":Lorg/json/JSONObject;
    .restart local v15    # "rules":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v17, "namep"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 128
    .local v9, "nameps":[Ljava/lang/String;
    move-object v2, v9

    array-length v8, v9

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_5

    aget-object v11, v2, v5

    .line 129
    .restart local v11    # "p":Ljava/lang/String;
    const-string/jumbo v17, ":"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 130
    .restart local v16    # "sp":[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 132
    iget-object v0, v3, Lc8/yH;->namep:Ljava/util/Map;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget-object v18, v16, v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v17 .. v19}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 135
    .end local v11    # "p":Ljava/lang/String;
    .end local v16    # "sp":[Ljava/lang/String;
    :cond_5
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 114
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "data":Lc8/yH;
    .end local v4    # "i":I
    .end local v5    # "i$":I
    .end local v6    # "indexps":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v9    # "nameps":[Ljava/lang/String;
    .end local v10    # "obj":Lorg/json/JSONObject;
    .end local v14    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    .end local v15    # "rules":Lorg/json/JSONArray;
    .restart local v13    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    :catch_0
    move-exception v17

    .line 143
    :cond_6
    :goto_4
    return-object v13

    .end local v13    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    .restart local v14    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    :catch_1
    move-exception v17

    move-object v13, v14

    .end local v14    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    .restart local v13    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    goto :goto_4

    .end local v13    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    .restart local v14    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    :cond_7
    move-object v13, v14

    .end local v14    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    .restart local v13    # "ruleList":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    goto :goto_4
.end method
