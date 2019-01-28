.class public Lc8/iaf;
.super Ljava/lang/Object;
.source "DinamicExpression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 17
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "expression"    # Ljava/lang/String;

    .prologue
    .line 18
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 19
    :cond_0
    const/4 v12, 0x0

    .line 78
    :cond_1
    return-object v12

    .line 21
    :cond_2
    const/4 v12, 0x0

    .line 22
    .local v12, "value":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 25
    .local v3, "expressionArray":[C
    const/4 v10, 0x0

    .line 26
    .local v10, "prefixStart":Z
    const/4 v5, 0x0

    .line 27
    .local v5, "expressionStart":Z
    const/4 v8, 0x0

    .line 28
    .local v8, "prefix":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 29
    .local v9, "prefixBuffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .local v4, "expressionBuffer":Ljava/lang/StringBuffer;
    const/4 v6, 0x0

    .end local v12    # "value":Ljava/lang/Object;
    .local v6, "i":I
    :goto_0
    array-length v13, v3

    if-ge v6, v13, :cond_1

    .line 31
    aget-char v1, v3, v6

    .line 32
    .local v1, "c":C
    const/16 v13, 0x24

    if-ne v13, v1, :cond_4

    .line 33
    const/4 v10, 0x1

    .line 34
    const/4 v5, 0x0

    .line 35
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "prefixBuffer":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 36
    .restart local v9    # "prefixBuffer":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4    # "expressionBuffer":Ljava/lang/StringBuffer;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 30
    .restart local v4    # "expressionBuffer":Ljava/lang/StringBuffer;
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 39
    :cond_4
    const/16 v13, 0x7b

    if-ne v13, v1, :cond_5

    if-eqz v10, :cond_5

    .line 40
    const/4 v10, 0x0

    .line 41
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 42
    invoke-static {v8}, Lc8/kaf;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 43
    const/4 v5, 0x1

    goto :goto_1

    .line 48
    :cond_5
    const/16 v13, 0x7d

    if-ne v13, v1, :cond_7

    if-eqz v5, :cond_7

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "dataExpression":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 53
    move-object/from16 v12, p0

    .restart local v12    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 55
    .end local v12    # "value":Ljava/lang/Object;
    :cond_6
    invoke-static {v8}, Lc8/kaf;->getParser(Ljava/lang/String;)Lc8/laf;

    move-result-object v7

    .line 56
    .local v7, "parser":Lc8/laf;
    if-eqz v7, :cond_3

    .line 58
    :try_start_0
    move-object/from16 v0, p0

    invoke-interface {v7, v2, v0}, Lc8/laf;->parser(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .restart local v12    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 59
    .end local v12    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v11

    .line 60
    .local v11, "t":Ljava/lang/Throwable;
    const-string/jumbo v13, "DinamicExpresstion"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "parse express failed, parser="

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v11, v14}, Lc8/taf;->w(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/String;)V

    goto :goto_1

    .line 68
    .end local v2    # "dataExpression":Ljava/lang/String;
    .end local v7    # "parser":Lc8/laf;
    .end local v11    # "t":Ljava/lang/Throwable;
    :cond_7
    if-eqz v10, :cond_8

    .line 69
    invoke-virtual {v9, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 73
    :cond_8
    if-eqz v5, :cond_3

    .line 74
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
