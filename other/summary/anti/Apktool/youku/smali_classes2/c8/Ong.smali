.class public abstract Lc8/Ong;
.super Ljava/lang/Object;
.source "AbsAntStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mng;,
        Lc8/Nng;
    }
.end annotation


# static fields
.field public static final ORANGE_ABTEST_CONFIG:Ljava/lang/String; = "abtest_config"

.field public static final ORANGE_ABTEST_SDK_CONFIG:Ljava/lang/String; = "abtest_sdk_config"

.field public static final ORANGE_ABTEST_WHITELIST:Ljava/lang/String; = "abtest_white_list"

.field public static sDowngradeAbtest:Z

.field public static sDowngradeAccs:Z

.field public static sFetchModel:Ljava/lang/String;


# instance fields
.field public volatile abtestServerVersion:I

.field protected mAbtestConfigKey:Ljava/lang/String;

.field private mAbtestSdkConfigKey:Ljava/lang/String;

.field protected mAbtestWhitelistKey:Ljava/lang/String;

.field private mAntConfigSign:Ljava/lang/String;

.field private mAntConfigVersion:I

.field protected mContext:Landroid/content/Context;

.field public nativeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile requestDelay:I

.field public webCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lc8/Ong;->abtestServerVersion:I

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lc8/Ong;->requestDelay:I

    .line 68
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/Ong;->nativeCache:Ljava/util/Map;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/Ong;->webCache:Ljava/util/Map;

    .line 97
    iput-object p1, p0, Lc8/Ong;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lc8/Ong;)V
    .locals 0
    .param p0, "x0"    # Lc8/Ong;

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/Ong;->fetchAbtestConfig()V

    return-void
.end method

.method static synthetic access$100(Lc8/Ong;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Ong;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/Ong;->mAbtestSdkConfigKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Ong;)V
    .locals 0
    .param p0, "x0"    # Lc8/Ong;

    .prologue
    .line 32
    invoke-direct {p0}, Lc8/Ong;->fetchAbtestSdkConfig()V

    return-void
.end method

.method private fetchAbtestConfig()V
    .locals 8

    .prologue
    .line 192
    invoke-static {}, Lc8/ttf;->getInstance()Lc8/ttf;

    move-result-object v5

    iget-object v6, p0, Lc8/Ong;->mAbtestConfigKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc8/ttf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 193
    .local v0, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 197
    :cond_0
    :try_start_0
    iget-object v5, p0, Lc8/Ong;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "aliabtest"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 198
    .local v4, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 199
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "fetchModel"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 200
    .local v3, "fetchModel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lc8/Ong;->sFetchModel:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 201
    const-string/jumbo v5, "fetchModel"

    invoke-interface {v2, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    :cond_1
    invoke-virtual {p0, v0}, Lc8/Ong;->doAfterFetchAbtestConfig(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "fetchModel":Ljava/lang/String;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private fetchAbtestSdkConfig()V
    .locals 12

    .prologue
    .line 153
    invoke-static {}, Lc8/ttf;->getInstance()Lc8/ttf;

    move-result-object v9

    iget-object v10, p0, Lc8/Ong;->mAbtestSdkConfigKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lc8/ttf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 154
    .local v1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 159
    :cond_0
    :try_start_0
    iget-object v9, p0, Lc8/Ong;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "aliabtest"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 160
    .local v5, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 161
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v9, "downgrade"

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    .local v3, "downgradeStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 163
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "downgradeJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "abtest"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 165
    .local v7, "tempDowngradeAbtest":Z
    const-string/jumbo v9, "accs"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 167
    .local v8, "tempDowngradeAccs":Z
    const/4 v0, 0x0

    .line 168
    .local v0, "changed":Z
    sget-boolean v9, Lc8/Ong;->sDowngradeAbtest:Z

    if-eq v7, v9, :cond_1

    .line 169
    const-string/jumbo v9, "downgrade_abtest"

    invoke-interface {v4, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 170
    sput-boolean v7, Lc8/Ong;->sDowngradeAbtest:Z

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_1
    sget-boolean v9, Lc8/Ong;->sDowngradeAccs:Z

    if-eq v8, v9, :cond_2

    .line 174
    const-string/jumbo v9, "downgrade_accs"

    invoke-interface {v4, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 175
    sput-boolean v8, Lc8/Ong;->sDowngradeAccs:Z

    .line 176
    const/4 v0, 0x1

    .line 178
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    .end local v0    # "changed":Z
    .end local v2    # "downgradeJson":Lorg/json/JSONObject;
    .end local v7    # "tempDowngradeAbtest":Z
    .end local v8    # "tempDowngradeAccs":Z
    :cond_3
    invoke-virtual {p0, v1}, Lc8/Ong;->doAfterFetchAbtestSdkConfig(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v3    # "downgradeStr":Ljava/lang/String;
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v6

    .line 183
    .local v6, "t":Ljava/lang/Throwable;
    invoke-static {v6}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getTempExperimentCache(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "component"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lc8/Ung;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 323
    .local p2, "nativeCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    .local p3, "webCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    const-string/jumbo v1, "Rewrite"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    move-object v0, p3

    .line 328
    .local v0, "tempCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    :goto_0
    return-object v0

    .line 326
    .end local v0    # "tempCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    :cond_0
    move-object v0, p2

    .restart local v0    # "tempCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    goto :goto_0
.end method

.method public static readAntBasicConfig(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 345
    const-string/jumbo v1, "aliabtest"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 346
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "downgrade_abtest"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lc8/Ong;->sDowngradeAbtest:Z

    .line 347
    const-string/jumbo v1, "downgrade_accs"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lc8/Ong;->sDowngradeAccs:Z

    .line 348
    const-string/jumbo v1, "fetchModel"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/Ong;->sFetchModel:Ljava/lang/String;

    .line 349
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 332
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/Ong;->nativeCache:Ljava/util/Map;

    .line 333
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/Ong;->webCache:Ljava/util/Map;

    .line 334
    return-void
.end method

.method public convertFlatStructureToMap(Lorg/json/JSONObject;Z)Z
    .locals 28
    .param p1, "configObject"    # Lorg/json/JSONObject;
    .param p2, "init"    # Z

    .prologue
    .line 222
    const/4 v11, 0x0

    .line 223
    .local v11, "hasUpdate":Z
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v26

    if-nez v26, :cond_2

    .line 224
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lc8/Ong;->clear()V

    :cond_1
    move v12, v11

    .line 317
    .end local v11    # "hasUpdate":Z
    .local v12, "hasUpdate":I
    :goto_0
    return v12

    .line 228
    .end local v12    # "hasUpdate":I
    .restart local v11    # "hasUpdate":Z
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v9, "exptList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    const-string/jumbo v26, "ver"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v25

    .line 230
    .local v25, "upToDateConfigVersion":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Ong;->mAntConfigVersion:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 231
    const/4 v11, 0x1

    .line 234
    :cond_3
    const-string/jumbo v26, "sign"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 236
    .local v4, "antConfigSign":Ljava/lang/String;
    const-string/jumbo v26, "ants"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 237
    .local v6, "array":Lorg/json/JSONArray;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v26

    if-nez v26, :cond_6

    .line 238
    :cond_4
    if-nez p2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lc8/Ong;->clear()V

    .line 239
    :cond_5
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ong;->mAntConfigVersion:I

    .line 240
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/Ong;->mAntConfigSign:Ljava/lang/String;

    move v12, v11

    .line 241
    .restart local v12    # "hasUpdate":I
    goto :goto_0

    .line 243
    .end local v12    # "hasUpdate":I
    :cond_6
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v18

    .line 245
    .local v18, "length":I
    :goto_1
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 247
    .local v24, "trackerGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v13, v0, :cond_a

    .line 248
    invoke-virtual {v6, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lc8/Vng;->create(Lorg/json/JSONObject;)Lc8/Vng;

    move-result-object v10

    .line 249
    .local v10, "group":Lc8/Vng;
    invoke-virtual {v10}, Lc8/Vng;->isEffective()Z

    move-result v26

    if-eqz v26, :cond_8

    .line 250
    if-nez p2, :cond_7

    move-object/from16 v0, v24

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_7
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 243
    .end local v10    # "group":Lc8/Vng;
    .end local v13    # "i":I
    .end local v18    # "length":I
    .end local v24    # "trackerGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    :cond_9
    const/16 v18, 0x0

    goto :goto_1

    .line 256
    .restart local v13    # "i":I
    .restart local v18    # "length":I
    .restart local v24    # "trackerGroupList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    :cond_a
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 257
    .local v5, "antIdToGroup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/Vng;

    .line 258
    .restart local v10    # "group":Lc8/Vng;
    iget v0, v10, Lc8/Vng;->antId:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_b

    .line 259
    iget v0, v10, Lc8/Vng;->antId:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 261
    :cond_b
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    iget v0, v10, Lc8/Vng;->antId:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 268
    .end local v10    # "group":Lc8/Vng;
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    :cond_c
    new-instance v22, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 269
    .local v22, "tempNativeCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    new-instance v23, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 270
    .local v23, "tempWebCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    const/4 v13, 0x0

    .end local v14    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v13, v0, :cond_12

    .line 272
    new-instance v8, Lc8/Ung;

    invoke-direct {v8}, Lc8/Ung;-><init>()V

    .line 273
    .local v8, "experiment":Lc8/Ung;
    invoke-virtual {v5, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 274
    .local v7, "expList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    iput-object v7, v8, Lc8/Ung;->groups:Ljava/util/List;

    .line 276
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_11

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/Vng;

    .line 278
    .restart local v10    # "group":Lc8/Vng;
    iget-object v0, v8, Lc8/Ung;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_e

    .line 279
    iget v0, v10, Lc8/Vng;->antId:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v8, Lc8/Ung;->antId:I

    .line 280
    iget v0, v10, Lc8/Vng;->releaseId:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v8, Lc8/Ung;->releaseId:I

    .line 281
    iget-object v0, v10, Lc8/Vng;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v0, v8, Lc8/Ung;->name:Ljava/lang/String;

    .line 282
    iget-object v0, v10, Lc8/Vng;->type:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-object v0, v8, Lc8/Ung;->type:Ljava/lang/String;

    .line 283
    iget-wide v0, v10, Lc8/Vng;->beginTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v8, Lc8/Ung;->begin:J

    .line 284
    iget-wide v0, v10, Lc8/Vng;->endTime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v8, Lc8/Ung;->end:J

    .line 285
    iget-wide v0, v10, Lc8/Vng;->grey:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v8, Lc8/Ung;->grey:J

    .line 288
    :cond_e
    iget-object v0, v10, Lc8/Vng;->results:Landroid/support/v4/util/ArrayMap;

    move-object/from16 v17, v0

    .line 289
    .local v17, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tmall/wireless/ant/model/ExperimentItem;>;"
    if-eqz v17, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_d

    .line 292
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_f
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/Wng;

    .line 293
    .local v16, "item":Lc8/Wng;
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/Wng;->component:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lc8/Ong;->getTempExperimentCache(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v21

    .line 295
    .local v21, "tempCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/Wng;->indexKey:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    .line 296
    .local v19, "list":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    if-nez v19, :cond_10

    .line 297
    new-instance v19, Ljava/util/ArrayList;

    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .restart local v19    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    move-object/from16 v0, v16

    iget-object v0, v0, Lc8/Wng;->indexKey:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_10
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 302
    move-object/from16 v0, v19

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 270
    .end local v10    # "group":Lc8/Vng;
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "item":Lc8/Wng;
    .end local v17    # "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/tmall/wireless/ant/model/ExperimentItem;>;"
    .end local v19    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;"
    .end local v21    # "tempCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/tmall/wireless/ant/model/Experiment;>;>;"
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 310
    .end local v7    # "expList":Ljava/util/List;, "Ljava/util/List<Lcom/tmall/wireless/ant/model/ExperimentGroup;>;"
    .end local v8    # "experiment":Lc8/Ung;
    :cond_12
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Ong;->nativeCache:Ljava/util/Map;

    .line 311
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Ong;->webCache:Ljava/util/Map;

    .line 312
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Ong;->mAntConfigVersion:I

    .line 313
    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/Ong;->mAntConfigSign:Ljava/lang/String;

    .line 316
    if-nez p2, :cond_13

    invoke-static/range {v24 .. v24}, Lc8/mog;->commitAntArrivePoint(Ljava/util/List;)V

    :cond_13
    move v12, v11

    .line 317
    .restart local v12    # "hasUpdate":I
    goto/16 :goto_0
.end method

.method protected doAfterFetchAbtestConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 212
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected doAfterFetchAbtestSdkConfig(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "configMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method protected fetchAbtestWhiteList()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public fetchOrangeConfig(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "orangeKey":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 150
    :cond_0
    return-void

    .line 121
    :cond_1
    const-string/jumbo v4, "abtest_config"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lc8/Ong;->mAbtestConfigKey:Ljava/lang/String;

    .line 122
    const-string/jumbo v4, "abtest_sdk_config"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lc8/Ong;->mAbtestSdkConfigKey:Ljava/lang/String;

    .line 123
    const-string/jumbo v4, "abtest_white_list"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lc8/Ong;->mAbtestWhitelistKey:Ljava/lang/String;

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lc8/Ong;->mAbtestConfigKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 127
    iget-object v4, p0, Lc8/Ong;->mAbtestConfigKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_2
    iget-object v4, p0, Lc8/Ong;->mAbtestSdkConfigKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 130
    iget-object v4, p0, Lc8/Ong;->mAbtestSdkConfigKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_3
    iget-object v4, p0, Lc8/Ong;->mAbtestWhitelistKey:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 133
    iget-object v4, p0, Lc8/Ong;->mAbtestWhitelistKey:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 141
    .local v0, "configKeyArray":[Ljava/lang/String;
    invoke-static {}, Lc8/ttf;->getInstance()Lc8/ttf;

    move-result-object v4

    iget-object v5, p0, Lc8/Ong;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lc8/ttf;->init(Landroid/content/Context;)V

    .line 142
    invoke-static {}, Lc8/ttf;->getInstance()Lc8/ttf;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    new-instance v6, Lc8/Nng;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lc8/Nng;-><init>(Lc8/Ong;Lc8/Mng;)V

    invoke-virtual {v5, v4, v6}, Lc8/ttf;->registerListener([Ljava/lang/String;Lcom/taobao/orange/OrangeConfigListenerV1;)V

    .line 147
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 148
    .local v3, "namespace":Ljava/lang/String;
    invoke-static {}, Lc8/ttf;->getInstance()Lc8/ttf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lc8/ttf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    goto :goto_0
.end method

.method public abstract getAntConfig()Ljava/lang/String;
.end method

.method public getCurrentAntConfigSign()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lc8/Ong;->mAntConfigSign:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentAntConfigVersion()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lc8/Ong;->mAntConfigVersion:I

    return v0
.end method

.method public isGroupInWhitelist(Lc8/Vng;)Z
    .locals 1
    .param p1, "group"    # Lc8/Vng;

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public abstract loadLocalData()V
.end method

.method public abstract saveAntConfig(Ljava/lang/String;)Z
.end method
