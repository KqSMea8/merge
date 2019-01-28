.class public final Lc8/AJb;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lc8/DJb;
.implements Lc8/hJb;


# static fields
.field public static final instance:Lc8/AJb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lc8/AJb;

    invoke-direct {v0}, Lc8/AJb;-><init>()V

    sput-object v0, Lc8/AJb;->instance:Lc8/AJb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
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


# virtual methods
.method public deserialze(Lc8/NIb;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16
    .param p1, "parser"    # Lc8/NIb;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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
    .line 149
    const-class v12, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 150
    invoke-virtual/range {p0 .. p1}, Lc8/AJb;->parseStackTraceElement(Lc8/NIb;)Ljava/lang/Object;

    move-result-object v2

    .line 245
    .end local p2    # "clazz":Ljava/lang/reflect/Type;
    :goto_0
    return-object v2

    .line 153
    .restart local p2    # "clazz":Ljava/lang/reflect/Type;
    :cond_0
    move-object/from16 v0, p1

    iget-object v6, v0, Lc8/NIb;->lexer:Lc8/PIb;

    .line 157
    .local v6, "lexer":Lc8/PIb;
    move-object/from16 v0, p1

    iget v12, v0, Lc8/NIb;->resolveStatus:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 158
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iput v12, v0, Lc8/NIb;->resolveStatus:I

    .line 159
    const/16 v12, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->accept(I)V

    .line 161
    invoke-virtual {v6}, Lc8/PIb;->token()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_2

    .line 162
    const-string/jumbo v12, "val"

    invoke-virtual {v6}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 163
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "syntax error"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 165
    :cond_1
    invoke-virtual {v6}, Lc8/PIb;->nextToken()V

    .line 170
    const/16 v12, 0x11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->accept(I)V

    .line 172
    invoke-virtual/range {p1 .. p1}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v8

    .line 174
    .local v8, "objVal":Ljava/lang/Object;
    const/16 v12, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lc8/NIb;->accept(I)V

    .line 179
    :goto_1
    if-nez v8, :cond_4

    .line 180
    const/4 v2, 0x0

    goto :goto_0

    .line 167
    .end local v8    # "objVal":Ljava/lang/Object;
    :cond_2
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "syntax error"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 176
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lc8/NIb;->parse()Ljava/lang/Object;

    move-result-object v8

    .restart local v8    # "objVal":Ljava/lang/Object;
    goto :goto_1

    .line 184
    :cond_4
    instance-of v12, v8, Ljava/lang/String;

    if-eqz v12, :cond_5

    move-object v9, v8

    .line 185
    check-cast v9, Ljava/lang/String;

    .line 190
    .local v9, "strVal":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_6

    .line 191
    const/4 v2, 0x0

    goto :goto_0

    .line 187
    .end local v9    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "except string value"

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 194
    .restart local v9    # "strVal":Ljava/lang/String;
    :cond_6
    const-class v12, Ljava/util/UUID;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_7

    .line 195
    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    goto/16 :goto_0

    .line 196
    :cond_7
    const-class v12, Ljava/lang/Class;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_8

    .line 197
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/NIb;->config:Lc8/XIb;

    iget-object v12, v12, Lc8/XIb;->defaultClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v9, v12}, Lc8/RJb;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_0

    .line 198
    :cond_8
    const-class v12, Ljava/util/Locale;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_b

    .line 199
    const-string/jumbo v12, "_"

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "items":[Ljava/lang/String;
    array-length v12, v5

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 202
    new-instance v2, Ljava/util/Locale;

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-direct {v2, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_9
    array-length v12, v5

    const/4 v13, 0x2

    if-ne v12, v13, :cond_a

    .line 206
    new-instance v2, Ljava/util/Locale;

    const/4 v12, 0x0

    aget-object v12, v5, v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    invoke-direct {v2, v12, v13}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    :cond_a
    new-instance v2, Ljava/util/Locale;

    const/4 v12, 0x0

    aget-object v12, v5, v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    const/4 v14, 0x2

    aget-object v14, v5, v14

    invoke-direct {v2, v12, v13, v14}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    .end local v5    # "items":[Ljava/lang/String;
    :cond_b
    const-class v12, Ljava/net/URI;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_c

    .line 211
    invoke-static {v9}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    goto/16 :goto_0

    .line 212
    :cond_c
    const-class v12, Ljava/net/URL;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_d

    .line 214
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 215
    :catch_0
    move-exception v3

    .line 216
    .local v3, "e":Ljava/net/MalformedURLException;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "create url error"

    invoke-direct {v12, v13, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 218
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_d
    const-class v12, Ljava/util/regex/Pattern;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_e

    .line 219
    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    goto/16 :goto_0

    .line 220
    :cond_e
    const-class v12, Ljava/nio/charset/Charset;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_f

    .line 221
    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto/16 :goto_0

    .line 222
    :cond_f
    const-class v12, Ljava/util/Currency;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_10

    .line 223
    invoke-static {v9}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v2

    goto/16 :goto_0

    .line 224
    :cond_10
    const-class v12, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_11

    .line 225
    new-instance v2, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v12, v12, Lc8/PIb;->locale:Ljava/util/Locale;

    invoke-direct {v2, v9, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 226
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/NIb;->lexer:Lc8/PIb;

    iget-object v12, v12, Lc8/PIb;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v12}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    .line 228
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_11
    sget-object v12, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p2

    if-eq v0, v12, :cond_12

    const-class v12, Ljava/lang/Character;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_13

    .line 229
    :cond_12
    invoke-static {v9}, Lc8/RJb;->castToChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v2

    goto/16 :goto_0

    .line 231
    :cond_13
    move-object/from16 v0, p2

    instance-of v12, v0, Ljava/lang/Class;

    if-eqz v12, :cond_14

    .line 232
    check-cast p2, Ljava/lang/Class;

    .end local p2    # "clazz":Ljava/lang/reflect/Type;
    invoke-static/range {p2 .. p2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "className":Ljava/lang/String;
    const-string/jumbo v12, "android.net.Uri"

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    .line 235
    :try_start_1
    const-string/jumbo v12, "android.net.Uri"

    invoke-static {v12}, Lc8/AJb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 236
    .local v11, "uriClass":Ljava/lang/Class;
    const-string/jumbo v12, "parse"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 237
    .local v7, "method":Ljava/lang/reflect/Method;
    const/4 v12, 0x0

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-static {v7, v12, v13}, Lc8/AJb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .local v10, "uri":Ljava/lang/Object;
    move-object v2, v10

    .line 238
    goto/16 :goto_0

    .line 239
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v10    # "uri":Ljava/lang/Object;
    .end local v11    # "uriClass":Ljava/lang/Class;
    :catch_1
    move-exception v4

    .line 240
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v13, "parse android.net.Uri error."

    invoke-direct {v12, v13, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 245
    .end local v1    # "className":Ljava/lang/String;
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_14
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    goto/16 :goto_0
.end method

.method protected parseStackTraceElement(Lc8/NIb;)Ljava/lang/Object;
    .locals 13
    .param p1, "parser"    # Lc8/NIb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/NIb;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v12, 0xd

    const/4 v11, 0x4

    const/16 v10, 0x10

    const/16 v9, 0x8

    .line 251
    iget-object v4, p1, Lc8/NIb;->lexer:Lc8/PIb;

    .line 253
    .local v4, "lexer":Lc8/PIb;
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v9, :cond_0

    .line 254
    invoke-virtual {v4}, Lc8/PIb;->nextToken()V

    .line 255
    const/4 v7, 0x0

    .line 344
    :goto_0
    return-object v7

    .line 258
    :cond_0
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    const/16 v8, 0xc

    if-eq v7, v8, :cond_1

    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-eq v7, v10, :cond_1

    .line 259
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syntax error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v9

    invoke-static {v9}, Lc8/QIb;->name(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 262
    :cond_1
    const/4 v0, 0x0

    .line 263
    .local v0, "declaringClass":Ljava/lang/String;
    const/4 v6, 0x0

    .line 264
    .local v6, "methodName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 265
    .local v2, "fileName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 269
    .local v5, "lineNumber":I
    :cond_2
    iget-object v7, p1, Lc8/NIb;->symbolTable:Lc8/aJb;

    invoke-virtual {v4, v7}, Lc8/PIb;->scanSymbol(Lc8/aJb;)Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_4

    .line 272
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v12, :cond_3

    .line 273
    invoke-virtual {v4, v10}, Lc8/PIb;->nextToken(I)V

    .line 344
    :goto_1
    new-instance v7, Ljava/lang/StackTraceElement;

    invoke-direct {v7, v0, v6, v2, v5}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 281
    :cond_4
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Lc8/PIb;->nextTokenWithChar(C)V

    .line 282
    const-string/jumbo v7, "className"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 283
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v9, :cond_6

    .line 284
    const/4 v0, 0x0

    .line 339
    :cond_5
    :goto_2
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v12, :cond_2

    .line 340
    invoke-virtual {v4, v10}, Lc8/PIb;->nextToken(I)V

    goto :goto_1

    .line 285
    :cond_6
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v11, :cond_7

    .line 286
    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 288
    :cond_7
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 290
    :cond_8
    const-string/jumbo v7, "methodName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 291
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v9, :cond_9

    .line 292
    const/4 v6, 0x0

    goto :goto_2

    .line 293
    :cond_9
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v11, :cond_a

    .line 294
    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 296
    :cond_a
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 298
    :cond_b
    const-string/jumbo v7, "fileName"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 299
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v9, :cond_c

    .line 300
    const/4 v2, 0x0

    goto :goto_2

    .line 301
    :cond_c
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v11, :cond_d

    .line 302
    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 304
    :cond_d
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 306
    :cond_e
    const-string/jumbo v7, "lineNumber"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 307
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v9, :cond_f

    .line 308
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 309
    :cond_f
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_10

    .line 310
    invoke-virtual {v4}, Lc8/PIb;->intValue()I

    move-result v5

    goto/16 :goto_2

    .line 312
    :cond_10
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 314
    :cond_11
    const-string/jumbo v7, "nativeMethod"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 315
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v9, :cond_12

    .line 316
    invoke-virtual {v4, v10}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_2

    .line 317
    :cond_12
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_13

    .line 318
    invoke-virtual {v4, v10}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_2

    .line 319
    :cond_13
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    const/4 v8, 0x7

    if-ne v7, v8, :cond_14

    .line 320
    invoke-virtual {v4, v10}, Lc8/PIb;->nextToken(I)V

    goto/16 :goto_2

    .line 322
    :cond_14
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 324
    :cond_15
    const-string/jumbo v7, "@type"

    if-ne v3, v7, :cond_17

    .line 325
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-ne v7, v11, :cond_16

    .line 326
    invoke-virtual {v4}, Lc8/PIb;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "elementType":Ljava/lang/String;
    const-string/jumbo v7, "java.lang.StackTraceElement"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 328
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 331
    .end local v1    # "elementType":Ljava/lang/String;
    :cond_16
    invoke-virtual {v4}, Lc8/PIb;->token()I

    move-result v7

    if-eq v7, v9, :cond_5

    .line 332
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    const-string/jumbo v8, "syntax error"

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 336
    :cond_17
    new-instance v7, Lcom/alibaba/fastjson/JSONException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syntax error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 25
    .param p1, "serializer"    # Lc8/wJb;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->out:Lc8/JJb;

    move-object/from16 v17, v0

    .line 42
    .local v17, "out":Lc8/JJb;
    if-nez p2, :cond_3

    .line 43
    sget-object v23, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_0

    const-class v23, Ljava/lang/Character;

    move-object/from16 v0, p4

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v23, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    .line 145
    :goto_0
    return-void

    .line 46
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v23, v0

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_2

    .line 47
    invoke-static/range {p4 .. p4}, Lc8/RJb;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v11

    .line 48
    .local v11, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v23, Ljava/util/Enumeration;

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 49
    const-string/jumbo v23, "[]"

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    .end local v11    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lc8/JJb;->writeNull()V

    goto :goto_0

    .line 58
    :cond_3
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/regex/Pattern;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v18, p2

    .line 59
    check-cast v18, Ljava/util/regex/Pattern;

    .line 60
    .local v18, "p":Ljava/util/regex/Pattern;
    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v18    # "p":Ljava/util/regex/Pattern;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/TimeZone;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v21, p2

    .line 62
    check-cast v21, Ljava/util/TimeZone;

    .line 63
    .local v21, "timeZone":Ljava/util/TimeZone;
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v21    # "timeZone":Ljava/util/TimeZone;
    :cond_5
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Currency;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v8, p2

    .line 65
    check-cast v8, Ljava/util/Currency;

    .line 66
    .local v8, "currency":Ljava/util/Currency;
    invoke-virtual {v8}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v8    # "currency":Ljava/util/Currency;
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v6, p2

    .line 68
    check-cast v6, Ljava/lang/Class;

    .line 69
    .local v6, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Character;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v22, p2

    .line 71
    check-cast v22, Ljava/lang/Character;

    .line 73
    .local v22, "value":Ljava/lang/Character;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Character;->charValue()C

    move-result v5

    .line 74
    .local v5, "c":C
    if-nez v5, :cond_8

    .line 75
    const-string/jumbo v23, "\u0000"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_8
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 79
    .end local v5    # "c":C
    .end local v22    # "value":Ljava/lang/Character;
    :cond_9
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/text/SimpleDateFormat;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    move-object/from16 v23, p2

    .line 80
    check-cast v23, Ljava/text/SimpleDateFormat;

    invoke-virtual/range {v23 .. v23}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v20

    .line 82
    .local v20, "pattern":Ljava/lang/String;
    move-object/from16 v0, v17

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v23, v0

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_a

    .line 83
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_a

    .line 84
    const/16 v23, 0x7b

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    .line 85
    const-string/jumbo v23, "@type"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lc8/JJb;->writeFieldName(Ljava/lang/String;Z)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    .line 87
    const/16 v23, 0x2c

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    .line 88
    const-string/jumbo v23, "val"

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lc8/JJb;->writeFieldName(Ljava/lang/String;Z)V

    .line 89
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    .line 90
    const/16 v23, 0x7d

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    goto/16 :goto_0

    .line 95
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/JJb;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 96
    .end local v20    # "pattern":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p2

    instance-of v0, v0, Lc8/DIb;

    move/from16 v23, v0

    if-eqz v23, :cond_c

    move-object/from16 v4, p2

    .line 97
    check-cast v4, Lc8/DIb;

    .line 98
    .local v4, "aware":Lc8/DIb;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->out:Lc8/JJb;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Lc8/DIb;->writeJSONString(Ljava/lang/Appendable;)V

    goto/16 :goto_0

    .line 99
    .end local v4    # "aware":Lc8/DIb;
    :cond_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lc8/BIb;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    move-object/from16 v4, p2

    .line 100
    check-cast v4, Lc8/BIb;

    .line 101
    .local v4, "aware":Lc8/BIb;
    invoke-interface {v4}, Lc8/BIb;->toJSONString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 102
    .end local v4    # "aware":Lc8/BIb;
    :cond_d
    move-object/from16 v0, p2

    instance-of v0, v0, Lc8/vJb;

    move/from16 v23, v0

    if-eqz v23, :cond_e

    move-object/from16 v16, p2

    .line 103
    check-cast v16, Lc8/vJb;

    .line 104
    .local v16, "jsonSerializable":Lc8/vJb;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-interface {v0, v1, v2, v3}, Lc8/vJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/reflect/Type;)V

    goto/16 :goto_0

    .line 105
    .end local v16    # "jsonSerializable":Lc8/vJb;
    :cond_e
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Enumeration;

    move/from16 v23, v0

    if-eqz v23, :cond_13

    .line 106
    const/4 v10, 0x0

    .line 107
    .local v10, "elementType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v17

    iget v0, v0, Lc8/JJb;->features:I

    move/from16 v23, v0

    sget-object v24, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->mask:I

    move/from16 v24, v0

    and-int v23, v23, v24

    if-eqz v23, :cond_f

    .line 108
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v23, v0

    if-eqz v23, :cond_f

    move-object/from16 v19, p4

    .line 109
    check-cast v19, Ljava/lang/reflect/ParameterizedType;

    .line 110
    .local v19, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface/range {v19 .. v19}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v23

    const/16 v24, 0x0

    aget-object v10, v23, v24

    .end local v19    # "param":Ljava/lang/reflect/ParameterizedType;
    :cond_f
    move-object/from16 v9, p2

    .line 114
    check-cast v9, Ljava/util/Enumeration;

    .line 116
    .local v9, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    move-object/from16 v0, p1

    iget-object v7, v0, Lc8/wJb;->context:Lc8/GJb;

    .line 117
    .local v7, "context":Lc8/GJb;
    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v23

    invoke-virtual {v0, v7, v1, v2, v3}, Lc8/wJb;->setContext(Lc8/GJb;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 120
    const/4 v12, 0x0

    .line 121
    .local v12, "i":I
    const/16 v23, 0x5b

    :try_start_0
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v13, v12

    .line 122
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v23

    if-eqz v23, :cond_12

    .line 123
    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v14

    .line 124
    .local v14, "item":Ljava/lang/Object;
    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    if-eqz v13, :cond_10

    .line 125
    const/16 v23, 0x2c

    :try_start_2
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V

    .line 128
    :cond_10
    if-nez v14, :cond_11

    .line 129
    invoke-virtual/range {v17 .. v17}, Lc8/JJb;->writeNull()V

    move v13, v12

    .line 130
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 133
    .end local v13    # "i":I
    .restart local v12    # "i":I
    :cond_11
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    .line 135
    .restart local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/wJb;->config:Lc8/HJb;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lc8/HJb;->get(Ljava/lang/Class;)Lc8/DJb;

    move-result-object v15

    .line 136
    .local v15, "itemSerializer":Lc8/DJb;
    add-int/lit8 v23, v12, -0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-interface {v15, v0, v14, v1, v10}, Lc8/DJb;->write(Lc8/wJb;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v13, v12

    .line 137
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto :goto_1

    .line 138
    .end local v6    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "item":Ljava/lang/Object;
    .end local v15    # "itemSerializer":Lc8/DJb;
    :cond_12
    const/16 v23, 0x5d

    :try_start_3
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/JJb;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    move-object/from16 v0, p1

    iput-object v7, v0, Lc8/wJb;->context:Lc8/GJb;

    goto/16 :goto_0

    .end local v13    # "i":I
    .restart local v12    # "i":I
    :catchall_0
    move-exception v23

    :goto_2
    move-object/from16 v0, p1

    iput-object v7, v0, Lc8/wJb;->context:Lc8/GJb;

    throw v23

    .line 143
    .end local v7    # "context":Lc8/GJb;
    .end local v9    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "elementType":Ljava/lang/reflect/Type;
    .end local v12    # "i":I
    :cond_13
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lc8/wJb;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .restart local v7    # "context":Lc8/GJb;
    .restart local v9    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "elementType":Ljava/lang/reflect/Type;
    .restart local v13    # "i":I
    :catchall_1
    move-exception v23

    move v12, v13

    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_2
.end method
