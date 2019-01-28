.class public Lc8/Dxb;
.super Ljava/lang/Object;
.source "MtopPreloader.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lc8/Dxb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Dxb;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getRealMtopApi(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 198
    const-string/jumbo v4, ""

    .line 199
    .local v4, "realApi":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v6

    .line 202
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 203
    .local v5, "uri":Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->isHierarchical()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 206
    const-string/jumbo v6, "data_prefetch"

    invoke-virtual {v5, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "prefetch_flag":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "true"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 209
    invoke-static {p0}, Lc8/Gyb;->getRealPrefetchIdUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "prefetch_id_key":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "\\"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 212
    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 214
    :cond_2
    invoke-static {v2}, Lc8/Gyb;->getMtopApiFromZcache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 215
    .local v3, "prefetch_mtop_api":Ljava/lang/String;
    invoke-static {p0}, Lc8/Gyb;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v3, v6}, Lc8/Dxb;->replaceDynamicData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v2    # "prefetch_id_key":Ljava/lang/String;
    .end local v3    # "prefetch_mtop_api":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v6, v4

    .line 222
    goto :goto_0

    .line 216
    .restart local v2    # "prefetch_id_key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "mtop params parse failed"

    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 217
    :goto_2
    invoke-static {v7, v6}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 218
    :cond_4
    const-string/jumbo v6, "data prase error"

    goto :goto_2
.end method

.method public static isLogin()Z
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lc8/nNf;->isSessionValid()Z

    move-result v0

    return v0
.end method

.method private static matchReplace(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p0, "compile"    # Ljava/lang/String;
    .param p2, "mtopApi"    # Ljava/lang/String;
    .param p3, "replace"    # Ljava/lang/String;
    .param p4, "encodeStatue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "tokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 252
    :cond_0
    const-string/jumbo v5, ""

    .line 277
    :goto_0
    return-object v5

    .line 254
    :cond_1
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 255
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 256
    .local v2, "matcher":Ljava/util/regex/Matcher;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 259
    const-string/jumbo v1, ""

    .line 260
    .local v1, "macthkey":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 261
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, p3, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 265
    .local v4, "token":Ljava/lang/String;
    if-nez p4, :cond_4

    .line 266
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 270
    :cond_3
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 271
    invoke-virtual {v2, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 267
    :cond_4
    const/4 v5, 0x2

    if-ne p4, v5, :cond_3

    .line 268
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 273
    :cond_5
    const-string/jumbo v5, ""

    invoke-virtual {v2, v0, v5}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 276
    .end local v1    # "macthkey":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static preload(Ljava/lang/String;Lc8/nVf;)Ljava/lang/String;
    .locals 21
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "instance"    # Lc8/nVf;

    .prologue
    .line 40
    invoke-static {}, Lc8/Gyb;->allowPreload()Z

    move-result v18

    if-nez v18, :cond_1

    .line 41
    sget-object v18, Lc8/Dxb;->TAG:Ljava/lang/String;

    const-string/jumbo v19, "preload is disabled"

    invoke-static/range {v18 .. v19}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_0
    :goto_0
    return-object p0

    .line 45
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 49
    invoke-static/range {p0 .. p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 51
    .local v17, "uri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->isHierarchical()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 55
    const-string/jumbo v18, "wh_prefetch"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 57
    .local v14, "prefetch_api":Ljava/lang/String;
    const-string/jumbo v18, "wh_needlogin"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 58
    .local v9, "needlogin":Ljava/lang/String;
    const-string/jumbo v18, "wh_prefetch_id"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 59
    .local v16, "prefetch_id":Ljava/lang/String;
    const-string/jumbo v18, "data_prefetch"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 61
    .local v15, "prefetch_flag":Ljava/lang/String;
    const-string/jumbo v18, "mtop_prefetch"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "mtopPrefetch":Ljava/lang/String;
    const-string/jumbo v18, "mtop_prefetch_enable"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 63
    .local v6, "mtopPrefetchEnable":Ljava/lang/String;
    const-string/jumbo v18, "mtop_prefetch_id"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 64
    .local v7, "mtopPrefetchId":Ljava/lang/String;
    const-string/jumbo v18, "mtop_needlogin"

    invoke-virtual/range {v17 .. v18}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 66
    .local v8, "mtopPrefetchNeedLogin":Ljava/lang/String;
    const/4 v3, 0x0

    .line 69
    .local v3, "keyIsMtopPrefetch":Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string/jumbo v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 70
    :cond_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    const-string/jumbo v18, "1"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 72
    :cond_3
    invoke-static {}, Lc8/Dxb;->isLogin()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 73
    invoke-static/range {p0 .. p0}, Lc8/Gyb;->replaceUrlParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 81
    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 82
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 87
    :cond_5
    const/4 v10, 0x0

    .line 90
    .local v10, "prefetch":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 91
    invoke-static/range {p0 .. p0}, Lc8/Dxb;->getRealMtopApi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 94
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    const-string/jumbo v18, "true"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 96
    :try_start_0
    invoke-static/range {p0 .. p0}, Lc8/Gyb;->getRealPrefetchIdUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 97
    .local v12, "prefetchIdFromUrl":Ljava/lang/String;
    const-string/jumbo v18, "\\"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 98
    const/16 v18, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 101
    :cond_7
    invoke-static {v12}, Lc8/Gyb;->getMtopApiFromZcache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 102
    .local v11, "prefetchAPIFromJSFile":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 103
    const-string/jumbo v18, "package cache not exists error"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "package cache get error by mtop_prefetch_enable at "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 108
    .end local v11    # "prefetchAPIFromJSFile":Ljava/lang/String;
    .end local v12    # "prefetchIdFromUrl":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v19, "mtop params parse failed"

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_2
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Lc8/Gyb;->getMtopApiAndParams(Lc8/nVf;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, "mtopParams":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 149
    if-eqz v3, :cond_12

    .line 150
    const-string/jumbo v18, "mtop_prefetch"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lc8/Gyb;->replaceUrlParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 156
    :goto_3
    move-object/from16 v0, p1

    invoke-static {v0, v4, v10}, Lc8/Dxb;->sendMtopRequestData(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    .end local v4    # "mtopParams":Ljava/lang/String;
    .end local v10    # "prefetch":Ljava/lang/String;
    :cond_9
    const-string/jumbo v18, "need user login"

    const-string/jumbo v19, "user not login exception"

    invoke-static/range {v18 .. v19}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    .restart local v10    # "prefetch":Ljava/lang/String;
    .restart local v11    # "prefetchAPIFromJSFile":Ljava/lang/String;
    .restart local v12    # "prefetchIdFromUrl":Ljava/lang/String;
    :cond_a
    const/4 v3, 0x1

    .line 107
    :try_start_1
    invoke-static/range {p0 .. p0}, Lc8/Gyb;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lc8/Dxb;->replaceDynamicData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto :goto_2

    .line 109
    .end local v11    # "prefetchAPIFromJSFile":Ljava/lang/String;
    .end local v12    # "prefetchIdFromUrl":Ljava/lang/String;
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_b
    const-string/jumbo v18, "data prase error"

    goto :goto_1

    .line 113
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 114
    move-object v10, v14

    goto :goto_2

    .line 117
    :cond_d
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 118
    const/4 v3, 0x1

    .line 119
    invoke-static/range {p0 .. p0}, Lc8/Gyb;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v5, v0}, Lc8/Dxb;->replaceDynamicData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 122
    :cond_e
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_10

    .line 123
    invoke-static/range {v16 .. v16}, Lc8/Gyb;->getMtopApiFromZcache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "prefetchKey":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 125
    const-string/jumbo v18, "package cache not exists error"

    const-string/jumbo v19, "package cache get error "

    invoke-static/range {v18 .. v19}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 128
    :cond_f
    invoke-static/range {p0 .. p0}, Lc8/Gyb;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v13, v0}, Lc8/Dxb;->replaceDynamicData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 130
    goto/16 :goto_2

    .line 132
    .end local v13    # "prefetchKey":Ljava/lang/String;
    :cond_10
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 133
    invoke-static {v7}, Lc8/Gyb;->getMtopApiFromZcache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 134
    .restart local v11    # "prefetchAPIFromJSFile":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 135
    const-string/jumbo v18, "package cache not exists error"

    const-string/jumbo v19, "package cache get error by mtop_prefetch_id"

    invoke-static/range {v18 .. v19}, Lc8/Gyb;->commitFail(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_11
    const/4 v3, 0x1

    .line 139
    invoke-static/range {p0 .. p0}, Lc8/Gyb;->getParams(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v11, v0}, Lc8/Dxb;->replaceDynamicData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 152
    .end local v11    # "prefetchAPIFromJSFile":Ljava/lang/String;
    .restart local v4    # "mtopParams":Ljava/lang/String;
    :cond_12
    const-string/jumbo v18, "wh_prefetch"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v10}, Lc8/Gyb;->replaceUrlParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3
.end method

.method public static replaceDynamicData(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .param p0, "mtopApi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "tokens":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    const/4 v3, 0x0

    .line 247
    :cond_0
    :goto_0
    return-object v3

    .line 233
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v3, p0

    .line 234
    goto :goto_0

    .line 236
    :cond_3
    const-string/jumbo v1, "(\\$).*?(\\$)"

    .line 237
    .local v1, "relOneCompile":Ljava/lang/String;
    const-string/jumbo v2, "(#).*?(#)"

    .line 238
    .local v2, "relOtherCompile":Ljava/lang/String;
    const-string/jumbo v0, "(@).*?(@)"

    .line 239
    .local v0, "relEncodeCompile":Ljava/lang/String;
    const-string/jumbo v4, "\\$"

    const/4 v5, 0x0

    invoke-static {v1, p1, p0, v4, v5}, Lc8/Dxb;->matchReplace(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "result":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 241
    const-string/jumbo v4, "#"

    const/4 v5, 0x1

    invoke-static {v2, p1, v3, v4, v5}, Lc8/Dxb;->matchReplace(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 243
    :cond_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    const-string/jumbo v4, "@"

    const/4 v5, 0x2

    invoke-static {v0, p1, v3, v4, v5}, Lc8/Dxb;->matchReplace(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static sendMtopRequestData(Lc8/nVf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "instance"    # Lc8/nVf;
    .param p1, "mtopParams"    # Ljava/lang/String;
    .param p2, "prefetch"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Lc8/Cxb;

    invoke-direct {v0, p0, p2}, Lc8/Cxb;-><init>(Lc8/nVf;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lc8/Bxb;->send(Ljava/lang/String;Lc8/zxb;)V

    .line 182
    return-void
.end method
