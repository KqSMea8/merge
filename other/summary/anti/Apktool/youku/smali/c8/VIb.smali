.class public Lc8/VIb;
.super Ljava/lang/Object;
.source "MapDeserializer.java"

# interfaces
.implements Lc8/hJb;


# static fields
.field public static instance:Lc8/VIb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lc8/VIb;

    invoke-direct {v0}, Lc8/VIb;-><init>()V

    sput-object v0, Lc8/VIb;->instance:Lc8/VIb;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseMap(Lc8/NIb;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15
    .param p0, "parser"    # Lc8/NIb;
    .param p2, "keyType"    # Ljava/lang/reflect/Type;
    .param p3, "valueType"    # Ljava/lang/reflect/Type;
    .param p4, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/NIb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v4, p0, Lc8/NIb;->lexer:Lc8/PIb;

    .line 173
    .local v4, "lexer":Lc8/PIb;
    iget v9, v4, Lc8/PIb;->token:I

    .line 174
    .local v9, "token":I
    const/16 v12, 0xc

    if-eq v9, v12, :cond_0

    const/16 v12, 0x10

    if-eq v9, v12, :cond_0

    .line 175
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "syntax error, expect {, actual "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 178
    :cond_0
    iget-object v12, p0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v3

    .line 179
    .local v3, "keyDeserializer":Lc8/hJb;
    iget-object v12, p0, Lc8/NIb;->config:Lc8/XIb;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v11

    .line 180
    .local v11, "valueDeserializer":Lc8/hJb;
    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    .line 182
    iget-object v1, p0, Lc8/NIb;->contex:Lc8/WIb;

    .line 185
    .local v1, "context":Lc8/WIb;
    :cond_1
    :goto_0
    :try_start_0
    iget v9, v4, Lc8/PIb;->token:I

    .line 186
    const/16 v12, 0xd

    if-ne v9, v12, :cond_2

    .line 187
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lc8/PIb;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {p0, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    .line 265
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :goto_1
    return-object p1

    .line 191
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    :cond_2
    const/4 v12, 0x4

    if-ne v9, v12, :cond_8

    :try_start_1
    iget v12, v4, Lc8/PIb;->sp:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_8

    iget-object v12, v4, Lc8/PIb;->text:Ljava/lang/String;

    const-string/jumbo v13, "$ref"

    iget v14, v4, Lc8/PIb;->np:I

    add-int/lit8 v14, v14, 0x1

    .line 192
    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 193
    invoke-virtual {v4, v12}, Lc8/PIb;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 194
    const/4 v5, 0x0

    .line 196
    .local v5, "object":Ljava/lang/Object;
    const/16 v12, 0x3a

    invoke-virtual {v4, v12}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 197
    iget v12, v4, Lc8/PIb;->token:I

    const/4 v13, 0x4

    if-ne v12, v13, :cond_6

    .line 198
    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, "ref":Ljava/lang/String;
    const-string/jumbo v12, ".."

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 200
    iget-object v6, v1, Lc8/WIb;->parent:Lc8/WIb;

    .line 201
    .local v6, "parentContext":Lc8/WIb;
    iget-object v5, v6, Lc8/WIb;->object:Ljava/lang/Object;

    .line 217
    .end local v5    # "object":Ljava/lang/Object;
    .end local v6    # "parentContext":Lc8/WIb;
    :goto_2
    const/16 v12, 0xd

    invoke-virtual {v4, v12}, Lc8/PIb;->nextToken(I)V

    .line 218
    iget v12, v4, Lc8/PIb;->token:I

    const/16 v13, 0xd

    if-eq v12, v13, :cond_7

    .line 219
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "illegal ref"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v7    # "ref":Ljava/lang/String;
    :catchall_0
    move-exception v12

    invoke-virtual {p0, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    throw v12

    .line 202
    .restart local v5    # "object":Ljava/lang/Object;
    .restart local v7    # "ref":Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v12, "$"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 203
    move-object v8, v1

    .line 204
    .local v8, "rootContext":Lc8/WIb;
    :goto_3
    iget-object v12, v8, Lc8/WIb;->parent:Lc8/WIb;

    if-eqz v12, :cond_4

    .line 205
    iget-object v8, v8, Lc8/WIb;->parent:Lc8/WIb;

    goto :goto_3

    .line 208
    :cond_4
    iget-object v5, v8, Lc8/WIb;->object:Ljava/lang/Object;

    .line 209
    goto :goto_2

    .line 210
    .end local v8    # "rootContext":Lc8/WIb;
    :cond_5
    new-instance v12, Lc8/MIb;

    invoke-direct {v12, v1, v7}, Lc8/MIb;-><init>(Lc8/WIb;Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Lc8/NIb;->addResolveTask(Lc8/MIb;)V

    .line 211
    const/4 v12, 0x1

    iput v12, p0, Lc8/NIb;->resolveStatus:I

    goto :goto_2

    .line 214
    .end local v7    # "ref":Ljava/lang/String;
    :cond_6
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "illegal ref, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v9}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 221
    .end local v5    # "object":Ljava/lang/Object;
    .restart local v7    # "ref":Ljava/lang/String;
    :cond_7
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lc8/PIb;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    invoke-virtual {p0, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    move-object/from16 p1, v5

    .line 226
    goto/16 :goto_1

    .line 229
    .end local v7    # "ref":Ljava/lang/String;
    :cond_8
    :try_start_3
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v12

    if-nez v12, :cond_a

    const/4 v12, 0x4

    if-ne v9, v12, :cond_a

    const-string/jumbo v12, "@type"

    .line 231
    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    sget-object v12, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 232
    invoke-virtual {v4, v12}, Lc8/PIb;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 233
    const/16 v12, 0x3a

    invoke-virtual {v4, v12}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 234
    const/16 v12, 0x10

    invoke-virtual {v4, v12}, Lc8/PIb;->nextToken(I)V

    .line 235
    iget v12, v4, Lc8/PIb;->token:I

    const/16 v13, 0xd

    if-ne v12, v13, :cond_9

    .line 236
    invoke-virtual {v4}, Lc8/PIb;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    invoke-virtual {p0, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto/16 :goto_1

    .line 239
    :cond_9
    :try_start_4
    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    .line 242
    :cond_a
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-interface {v3, p0, v0, v12}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 244
    .local v2, "key":Ljava/lang/Object;
    iget v12, v4, Lc8/PIb;->token:I

    const/16 v13, 0x11

    if-eq v12, v13, :cond_b

    .line 245
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "syntax error, expect :, actual "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Lc8/PIb;->token:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 248
    :cond_b
    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    .line 250
    move-object/from16 v0, p3

    invoke-interface {v11, p0, v0, v2}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 251
    .local v10, "value":Ljava/lang/Object;
    iget v12, p0, Lc8/NIb;->resolveStatus:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    .line 252
    move-object/from16 v0, p1

    invoke-virtual {p0, v0, v2}, Lc8/NIb;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 255
    :cond_c
    move-object/from16 v0, p1

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget v12, v4, Lc8/PIb;->token:I

    const/16 v13, 0x10

    if-ne v12, v13, :cond_1

    .line 258
    invoke-virtual {v4}, Lc8/PIb;->nextToken()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public static parseMap(Lc8/NIb;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 12
    .param p0, "parser"    # Lc8/NIb;
    .param p2, "valueType"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/NIb;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v5, p0, Lc8/NIb;->lexer:Lc8/PIb;

    .line 60
    .local v5, "lexer":Lc8/PIb;
    iget v9, v5, Lc8/PIb;->token:I

    const/16 v10, 0xc

    if-eq v9, v10, :cond_0

    .line 61
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, expect {, actual "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lc8/PIb;->token:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 64
    :cond_0
    iget-object v2, p0, Lc8/NIb;->contex:Lc8/WIb;

    .line 67
    .local v2, "context":Lc8/WIb;
    :cond_1
    :try_start_0
    invoke-virtual {v5}, Lc8/PIb;->skipWhitespace()V

    .line 68
    iget-char v0, v5, Lc8/PIb;->ch:C

    .line 69
    .local v0, "ch":C
    :goto_0
    const/16 v9, 0x2c

    if-ne v0, v9, :cond_2

    .line 70
    invoke-virtual {v5}, Lc8/PIb;->next()C

    .line 71
    invoke-virtual {v5}, Lc8/PIb;->skipWhitespace()V

    .line 72
    iget-char v0, v5, Lc8/PIb;->ch:C

    goto :goto_0

    .line 76
    :cond_2
    const/16 v9, 0x22

    if-ne v0, v9, :cond_3

    .line 77
    iget-object v9, p0, Lc8/NIb;->symbolTable:Lc8/aJb;

    const/16 v10, 0x22

    invoke-virtual {v5, v9, v10}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v5}, Lc8/PIb;->skipWhitespace()V

    .line 79
    iget-char v0, v5, Lc8/PIb;->ch:C

    .line 80
    const/16 v9, 0x3a

    if-eq v0, v9, :cond_6

    .line 81
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0    # "ch":C
    .end local v4    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v9

    invoke-virtual {p0, v2}, Lc8/NIb;->setContext(Lc8/WIb;)V

    throw v9

    .line 83
    .restart local v0    # "ch":C
    :cond_3
    const/16 v9, 0x7d

    if-ne v0, v9, :cond_4

    .line 84
    :try_start_1
    invoke-virtual {v5}, Lc8/PIb;->next()C

    .line 85
    const/4 v9, 0x0

    iput v9, v5, Lc8/PIb;->sp:I

    .line 86
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lc8/PIb;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lc8/NIb;->setContext(Lc8/WIb;)V

    .line 160
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-object p1

    .line 88
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const/16 v9, 0x27

    if-ne v0, v9, :cond_5

    .line 89
    :try_start_2
    iget-object v9, p0, Lc8/NIb;->symbolTable:Lc8/aJb;

    const/16 v10, 0x27

    invoke-virtual {v5, v9, v10}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v4

    .line 90
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v5}, Lc8/PIb;->skipWhitespace()V

    .line 91
    iget-char v0, v5, Lc8/PIb;->ch:C

    .line 92
    const/16 v9, 0x3a

    if-eq v0, v9, :cond_6

    .line 93
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "syntax error, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lc8/PIb;->info()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 96
    .end local v4    # "key":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lc8/NIb;->symbolTable:Lc8/aJb;

    invoke-virtual {v5, v9}, Lc8/PIb;->scanSymbolUnQuoted(Lc8/aJb;)Ljava/lang/String;

    move-result-object v4

    .line 97
    .restart local v4    # "key":Ljava/lang/String;
    invoke-virtual {v5}, Lc8/PIb;->skipWhitespace()V

    .line 98
    iget-char v0, v5, Lc8/PIb;->ch:C

    .line 99
    const/16 v9, 0x3a

    if-eq v0, v9, :cond_6

    .line 100
    new-instance v9, Lcom/alibaba/fastjson/JSONException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "expect \':\' at "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lc8/PIb;->pos:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", actual "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 104
    :cond_6
    invoke-virtual {v5}, Lc8/PIb;->next()C

    .line 105
    invoke-virtual {v5}, Lc8/PIb;->skipWhitespace()V

    .line 106
    iget-char v9, v5, Lc8/PIb;->ch:C

    .line 108
    const/4 v9, 0x0

    iput v9, v5, Lc8/PIb;->sp:I

    .line 110
    const-string/jumbo v9, "@type"

    if-ne v4, v9, :cond_9

    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v5, v9}, Lc8/PIb;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 111
    iget-object v9, p0, Lc8/NIb;->symbolTable:Lc8/aJb;

    const/16 v10, 0x22

    invoke-virtual {v5, v9, v10}, Lc8/PIb;->scanSymbol(Lc8/aJb;C)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "typeName":Ljava/lang/String;
    iget-object v9, p0, Lc8/NIb;->config:Lc8/XIb;

    iget-object v9, v9, Lc8/XIb;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v7, v9}, Lc8/RJb;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 114
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    if-ne v1, v9, :cond_7

    .line 115
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lc8/PIb;->nextToken(I)V

    .line 116
    iget v9, v5, Lc8/PIb;->token:I

    const/16 v10, 0xd

    if-ne v9, v10, :cond_1

    .line 117
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lc8/PIb;->nextToken(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto/16 :goto_1

    .line 123
    :cond_7
    :try_start_3
    iget-object v9, p0, Lc8/NIb;->config:Lc8/XIb;

    invoke-virtual {v9, v1}, Lc8/XIb;->getDeserializer(Ljava/lang/reflect/Type;)Lc8/hJb;

    move-result-object v3

    .line 125
    .local v3, "deserializer":Lc8/hJb;
    const/16 v9, 0x10

    invoke-virtual {v5, v9}, Lc8/PIb;->nextToken(I)V

    .line 127
    const/4 v9, 0x2

    iput v9, p0, Lc8/NIb;->resolveStatus:I

    .line 129
    if-eqz v2, :cond_8

    instance-of v9, p3, Ljava/lang/Integer;

    if-nez v9, :cond_8

    .line 130
    invoke-virtual {p0}, Lc8/NIb;->popContext()V

    .line 133
    :cond_8
    invoke-interface {v3, p0, v1, p3}, Lc8/hJb;->deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lc8/NIb;->setContext(Lc8/WIb;)V

    move-object p1, v9

    .line 133
    goto/16 :goto_1

    .line 137
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "deserializer":Lc8/hJb;
    .end local v7    # "typeName":Ljava/lang/String;
    :cond_9
    :try_start_4
    invoke-virtual {v5}, Lc8/PIb;->nextToken()V

    .line 139
    invoke-virtual {p0, v2}, Lc8/NIb;->setContext(Lc8/WIb;)V

    .line 140
    iget v9, v5, Lc8/PIb;->token:I

    const/16 v10, 0x8

    if-ne v9, v10, :cond_c

    .line 141
    const/4 v8, 0x0

    .line 142
    .local v8, "value":Ljava/lang/Object;
    invoke-virtual {v5}, Lc8/PIb;->nextToken()V

    .line 147
    .end local v8    # "value":Ljava/lang/Object;
    :goto_2
    invoke-interface {p1, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget v9, p0, Lc8/NIb;->resolveStatus:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 149
    invoke-virtual {p0, p1, v4}, Lc8/NIb;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 151
    :cond_a
    invoke-virtual {p0, v2, v8, v4}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    .line 153
    iget v6, v5, Lc8/PIb;->token:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .local v6, "tok":I
    const/16 v9, 0x14

    if-eq v6, v9, :cond_b

    const/16 v9, 0xf

    if-ne v6, v9, :cond_d

    .line 164
    :cond_b
    invoke-virtual {p0, v2}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto/16 :goto_1

    .line 144
    .end local v6    # "tok":I
    :cond_c
    :try_start_5
    invoke-virtual {p0, p2, v4}, Lc8/NIb;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "value":Ljava/lang/Object;
    goto :goto_2

    .line 158
    .end local v8    # "value":Ljava/lang/Object;
    .restart local v6    # "tok":I
    :cond_d
    const/16 v9, 0xd

    if-ne v6, v9, :cond_1

    .line 159
    invoke-virtual {v5}, Lc8/PIb;->nextToken()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 164
    invoke-virtual {p0, v2}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 270
    const-class v5, Ljava/util/Properties;

    if-ne p1, v5, :cond_0

    .line 271
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    .line 321
    :goto_0
    return-object v5

    .line 274
    :cond_0
    const-class v5, Ljava/util/Hashtable;

    if-ne p1, v5, :cond_1

    .line 275
    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    goto :goto_0

    .line 278
    :cond_1
    const-class v5, Ljava/util/IdentityHashMap;

    if-ne p1, v5, :cond_2

    .line 279
    new-instance v5, Ljava/util/IdentityHashMap;

    invoke-direct {v5}, Ljava/util/IdentityHashMap;-><init>()V

    goto :goto_0

    .line 282
    :cond_2
    const-class v5, Ljava/util/SortedMap;

    if-eq p1, v5, :cond_3

    const-class v5, Ljava/util/TreeMap;

    if-ne p1, v5, :cond_4

    .line 283
    :cond_3
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 286
    :cond_4
    const-class v5, Ljava/util/concurrent/ConcurrentMap;

    if-eq p1, v5, :cond_5

    const-class v5, Ljava/util/concurrent/ConcurrentHashMap;

    if-ne p1, v5, :cond_6

    .line 287
    :cond_5
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    .line 290
    :cond_6
    const-class v5, Ljava/util/Map;

    if-eq p1, v5, :cond_7

    const-class v5, Ljava/util/HashMap;

    if-ne p1, v5, :cond_8

    .line 291
    :cond_7
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 294
    :cond_8
    const-class v5, Ljava/util/LinkedHashMap;

    if-ne p1, v5, :cond_9

    .line 295
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    goto :goto_0

    .line 298
    :cond_9
    const-class v5, Lcom/alibaba/fastjson/JSONObject;

    if-ne p1, v5, :cond_a

    .line 299
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    goto :goto_0

    .line 302
    :cond_a
    instance-of v5, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v5, :cond_c

    move-object v3, p1

    .line 303
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 305
    .local v3, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 306
    .local v4, "rawType":Ljava/lang/reflect/Type;
    const-class v5, Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 307
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 309
    .local v0, "actualArgs":[Ljava/lang/reflect/Type;
    new-instance v6, Ljava/util/EnumMap;

    const/4 v5, 0x0

    aget-object v5, v0, v5

    check-cast v5, Ljava/lang/Class;

    invoke-direct {v6, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v5, v6

    goto/16 :goto_0

    .line 312
    .end local v0    # "actualArgs":[Ljava/lang/reflect/Type;
    :cond_b
    invoke-virtual {p0, v4}, Lc8/VIb;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v5

    goto/16 :goto_0

    .end local v3    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v4    # "rawType":Ljava/lang/reflect/Type;
    :cond_c
    move-object v1, p1

    .line 315
    check-cast v1, Ljava/lang/Class;

    .line 316
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 317
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupport type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 321
    :cond_d
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unsupport type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 22
    const-class v7, Lcom/alibaba/fastjson/JSONObject;

    if-ne p2, v7, :cond_0

    iget-object v7, p1, Lc8/NIb;->fieldTypeResolver:Lc8/gJb;

    if-nez v7, :cond_0

    .line 23
    invoke-virtual {p1}, Lc8/NIb;->parseObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v7

    .line 49
    :goto_0
    return-object v7

    .line 26
    :cond_0
    iget-object v3, p1, Lc8/NIb;->lexer:Lc8/PIb;

    .line 27
    .local v3, "lexer":Lc8/PIb;
    iget v7, v3, Lc8/PIb;->token:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 28
    const/16 v7, 0x10

    invoke-virtual {v3, v7}, Lc8/PIb;->nextToken(I)V

    .line 29
    const/4 v7, 0x0

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, p2}, Lc8/VIb;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v4

    .line 34
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v1, p1, Lc8/NIb;->contex:Lc8/WIb;

    .line 37
    .local v1, "context":Lc8/WIb;
    :try_start_0
    invoke-virtual {p1, v1, v4, p3}, Lc8/NIb;->setContext(Lc8/WIb;Ljava/lang/Object;Ljava/lang/Object;)Lc8/WIb;

    .line 38
    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_3

    .line 39
    move-object v0, p2

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    move-object v5, v0

    .line 40
    .local v5, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v2, v7, v8

    .line 41
    .local v2, "keyType":Ljava/lang/reflect/Type;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v6, v7, v8

    .line 43
    .local v6, "valueType":Ljava/lang/reflect/Type;
    const-class v7, Ljava/lang/String;

    if-ne v7, v2, :cond_2

    .line 44
    invoke-static {p1, v4, v6, p3}, Lc8/VIb;->parseMap(Lc8/NIb;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 52
    invoke-virtual {p1, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto :goto_0

    .line 46
    :cond_2
    :try_start_1
    invoke-static {p1, v4, v2, v6, p3}, Lc8/VIb;->parseMap(Lc8/NIb;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    .line 52
    invoke-virtual {p1, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto :goto_0

    .line 49
    .end local v2    # "keyType":Ljava/lang/reflect/Type;
    .end local v5    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v6    # "valueType":Ljava/lang/reflect/Type;
    :cond_3
    :try_start_2
    invoke-virtual {p1, v4, p3}, Lc8/NIb;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 52
    invoke-virtual {p1, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {p1, v1}, Lc8/NIb;->setContext(Lc8/WIb;)V

    throw v7
.end method
