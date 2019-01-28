.class public Lc8/Kaf;
.super Ljava/lang/Object;
.source "DViewEventPropertySetter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindEventHandler(Landroid/view/View;Ljava/lang/Object;)V
    .locals 17
    .param p0, "view"    # Landroid/view/View;
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocusable()Z

    move-result v10

    if-nez v10, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    sget v10, Lc8/WZe;->PROPERTY_KEY:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/Naf;

    .line 37
    .local v8, "property":Lc8/Naf;
    if-eqz v8, :cond_0

    .line 40
    iget-object v3, v8, Lc8/Naf;->eventProperty:Ljava/util/Map;

    .line 41
    .local v3, "eventProperty":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 42
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 43
    .local v6, "key":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 44
    .local v1, "eventExp":Ljava/lang/String;
    invoke-static {v1}, Lc8/baf;->getEventInfo(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    .line 45
    .local v2, "eventInfo":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 46
    const-string/jumbo v10, "Dinamic"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "\u4e8b\u4ef6\u8868\u8fbe\u5f0f %s=%s \u89e3\u6790\u51fa\u9519"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_3
    iget-object v10, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lc8/VZe;->getEventHandler(Ljava/lang/String;)Lc8/daf;

    move-result-object v4

    .line 50
    .local v4, "handler":Lc8/daf;
    if-nez v4, :cond_4

    .line 51
    const-string/jumbo v10, "Dinamic"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "%s=%s\uff0c\u6ca1\u6709\u627e\u5230%s\u5bf9\u5e94\u7684DinamicEventHandler"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    const/4 v15, 0x2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 56
    :cond_4
    iget-object v10, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lc8/iaf;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 57
    .local v7, "param":Ljava/lang/Object;
    if-nez v7, :cond_5

    .line 58
    const-string/jumbo v10, "Dinamic"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "%s=%s \u89e3\u6790\u51fa\u7684\u7ed3\u679c\u4e3anull\uff0cDinamic\u5ffd\u7565\u4e8b\u4ef6\u7ed1\u5b9a"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v1, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lc8/taf;->i(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_5
    const-string/jumbo v10, "onTap"

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 64
    new-instance v10, Lc8/Iaf;

    invoke-direct {v10, v4, v7}, Lc8/Iaf;-><init>(Lc8/daf;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    :try_start_0
    move-object/from16 v0, p0

    invoke-interface {v4, v0, v7}, Lc8/daf;->prepareBindEvent(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 79
    :catch_0
    move-exception v9

    .line 80
    .local v9, "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "DinamicEventHandler"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "handler prepareBindEvent failed, handler="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v9, v11}, Lc8/taf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 84
    .end local v9    # "t":Ljava/lang/Throwable;
    :cond_6
    const-string/jumbo v10, "onLongTap"

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 85
    new-instance v10, Lc8/Jaf;

    invoke-direct {v10, v4, v7}, Lc8/Jaf;-><init>(Lc8/daf;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 100
    :try_start_1
    move-object/from16 v0, p0

    invoke-interface {v4, v0, v7}, Lc8/daf;->prepareBindEvent(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 101
    :catch_1
    move-exception v9

    .line 102
    .restart local v9    # "t":Ljava/lang/Throwable;
    const-string/jumbo v10, "DinamicEventHandler"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "handler prepareBindEvent failed, handler="

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-static {v13}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v9, v11}, Lc8/taf;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto/16 :goto_1
.end method
