.class public Lc8/Szb;
.super Ljava/lang/Object;
.source "UTTPKBiz.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UTMCTPKBiz"

.field private static s_instance:Lc8/Szb;


# instance fields
.field private TPK_ONLINECONF_KEY:[Ljava/lang/String;

.field private mTPKCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTPKItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/analytics/core/config/UTTPKItem;",
            ">;"
        }
    .end annotation
.end field

.field private mTPKMD5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lc8/Szb;->s_instance:Lc8/Szb;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "B01N16"

    aput-object v2, v0, v1

    iput-object v0, p0, Lc8/Szb;->TPK_ONLINECONF_KEY:[Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Szb;->mTPKItems:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Szb;->mTPKMD5:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private _getTPKValue(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .param p1, "aFetchRule"    # Ljava/lang/String;
    .param p2, "aPageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p3, "aPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 79
    invoke-static {p1}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v2

    .line 82
    :cond_1
    const-string/jumbo v3, "${url|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_2

    .line 83
    const-string/jumbo v3, "${url|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "lRuleKey":Ljava/lang/String;
    invoke-static {v0}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    .end local v0    # "lRuleKey":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "${ut|"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_3

    .line 88
    const-string/jumbo v3, "${ut|"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0    # "lRuleKey":Ljava/lang/String;
    invoke-static {v0}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 90
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 92
    .end local v0    # "lRuleKey":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "${"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_5

    .line 93
    const-string/jumbo v3, "${"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 94
    .restart local v0    # "lRuleKey":Ljava/lang/String;
    invoke-static {v0}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    if-eqz p3, :cond_4

    .line 96
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, "lValue":Ljava/lang/String;
    if-eqz v1, :cond_4

    move-object v2, v1

    .line 98
    goto/16 :goto_0

    .line 101
    .end local v1    # "lValue":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_0

    .line 102
    invoke-virtual {p2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .end local v0    # "lRuleKey":Ljava/lang/String;
    :cond_5
    move-object v2, p1

    .line 106
    goto/16 :goto_0
.end method

.method private _onTPKConfArrive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "pConfName"    # Ljava/lang/String;
    .param p2, "pConfContent"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v8, "UTMCTPKBiz"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, ""

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "pConfName"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object p1, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "pConfContent"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Lc8/NBb;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {p2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 51
    .local v5, "lTpks":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 52
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 53
    .local v4, "lTpk":Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    const-string/jumbo v8, "kn"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "kn"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 54
    const-string/jumbo v8, "kn"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "lKn":Ljava/lang/String;
    const-string/jumbo v8, "a"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 61
    new-instance v3, Lcom/alibaba/analytics/core/config/UTTPKItem;

    invoke-direct {v3}, Lcom/alibaba/analytics/core/config/UTTPKItem;-><init>()V

    .line 62
    .local v3, "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    const-string/jumbo v8, "v"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "lV":Ljava/lang/String;
    invoke-static {v7}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "${"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 66
    :cond_2
    const-string/jumbo v8, "ty"

    const-string/jumbo v9, "far"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 67
    .local v6, "lTy":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/alibaba/analytics/core/config/UTTPKItem;->setKname(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, v7}, Lcom/alibaba/analytics/core/config/UTTPKItem;->setKvalue(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v3, v6}, Lcom/alibaba/analytics/core/config/UTTPKItem;->setType(Ljava/lang/String;)V

    .line 70
    iget-object v8, p0, Lc8/Szb;->mTPKItems:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v2    # "lKn":Ljava/lang/String;
    .end local v3    # "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    .end local v6    # "lTy":Ljava/lang/String;
    .end local v7    # "lV":Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "i":I
    .end local v4    # "lTpk":Lorg/json/JSONObject;
    .end local v5    # "lTpks":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/Szb;
    .locals 2

    .prologue
    .line 38
    const-class v1, Lc8/Szb;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/Szb;->s_instance:Lc8/Szb;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lc8/Szb;

    invoke-direct {v0}, Lc8/Szb;-><init>()V

    sput-object v0, Lc8/Szb;->s_instance:Lc8/Szb;

    .line 41
    :cond_0
    sget-object v0, Lc8/Szb;->s_instance:Lc8/Szb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addTPKItem(Lcom/alibaba/analytics/core/config/UTTPKItem;)V
    .locals 1
    .param p1, "aTPKItem"    # Lcom/alibaba/analytics/core/config/UTTPKItem;

    .prologue
    .line 32
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 33
    :try_start_0
    iget-object v0, p0, Lc8/Szb;->mTPKItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    return-void

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTpkString(Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;
    .locals 13
    .param p1, "aPageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "aPageProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 112
    monitor-enter p0

    :try_start_0
    const-string/jumbo v10, "tpk_md5"

    invoke-static {v10}, Lc8/gzb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "lRemoteTPKMD5":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 114
    iget-object v10, p0, Lc8/Szb;->mTPKMD5:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 115
    const-string/jumbo v10, "tpk_string"

    invoke-static {v10}, Lc8/gzb;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 116
    .local v6, "lTPKString":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 117
    const/4 v10, 0x0

    invoke-direct {p0, v10, v6}, Lc8/Szb;->_onTPKConfArrive(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lc8/Szb;->mTPKMD5:Ljava/lang/String;

    .line 123
    .end local v6    # "lTPKString":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lc8/Szb;->mTPKItems:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/analytics/core/config/UTTPKItem;

    .line 124
    .local v5, "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    invoke-virtual {v5}, Lcom/alibaba/analytics/core/config/UTTPKItem;->getKname()Ljava/lang/String;

    move-result-object v2

    .line 125
    .local v2, "lKey":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/alibaba/analytics/core/config/UTTPKItem;->getType()Ljava/lang/String;

    move-result-object v7

    .line 126
    .local v7, "lType":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/alibaba/analytics/core/config/UTTPKItem;->getKvalue()Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "lFetchRule":Ljava/lang/String;
    invoke-static {v2}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_3

    .line 158
    .end local v1    # "lFetchRule":Ljava/lang/String;
    .end local v2    # "lKey":Ljava/lang/String;
    .end local v5    # "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    .end local v7    # "lType":Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v9

    .line 130
    .restart local v1    # "lFetchRule":Ljava/lang/String;
    .restart local v2    # "lKey":Ljava/lang/String;
    .restart local v5    # "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    .restart local v7    # "lType":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v10, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 131
    .local v8, "lValue":Ljava/lang/String;
    invoke-static {v8}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 133
    invoke-direct {p0, v1, p1, p2}, Lc8/Szb;->_getTPKValue(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "lNewValue":Ljava/lang/String;
    invoke-static {v3}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 135
    iget-object v10, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 112
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lFetchRule":Ljava/lang/String;
    .end local v2    # "lKey":Ljava/lang/String;
    .end local v3    # "lNewValue":Ljava/lang/String;
    .end local v4    # "lRemoteTPKMD5":Ljava/lang/String;
    .end local v5    # "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    .end local v7    # "lType":Ljava/lang/String;
    .end local v8    # "lValue":Ljava/lang/String;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 138
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "lFetchRule":Ljava/lang/String;
    .restart local v2    # "lKey":Ljava/lang/String;
    .restart local v4    # "lRemoteTPKMD5":Ljava/lang/String;
    .restart local v5    # "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    .restart local v7    # "lType":Ljava/lang/String;
    .restart local v8    # "lValue":Ljava/lang/String;
    :cond_4
    :try_start_2
    const-string/jumbo v10, "far"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 141
    invoke-direct {p0, v1, p1, p2}, Lc8/Szb;->_getTPKValue(Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .restart local v3    # "lNewValue":Ljava/lang/String;
    invoke-static {v3}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 143
    iget-object v10, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    invoke-interface {v10, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 149
    .end local v1    # "lFetchRule":Ljava/lang/String;
    .end local v2    # "lKey":Ljava/lang/String;
    .end local v3    # "lNewValue":Ljava/lang/String;
    .end local v5    # "lTPKItem":Lcom/alibaba/analytics/core/config/UTTPKItem;
    .end local v7    # "lType":Ljava/lang/String;
    .end local v8    # "lValue":Ljava/lang/String;
    :cond_5
    iget-object v10, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    const-string/jumbo v11, "ttid"

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 150
    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v10

    invoke-virtual {v10}, Lc8/lzb;->getOutsideTTID()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 151
    iget-object v10, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    const-string/jumbo v11, "ttid"

    invoke-static {}, Lc8/lzb;->getInstance()Lc8/lzb;

    move-result-object v12

    invoke-virtual {v12}, Lc8/lzb;->getOutsideTTID()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_6
    iget-object v10, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 156
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    invoke-static {v10}, Lc8/aCb;->convertMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto/16 :goto_1
.end method

.method public declared-synchronized sessionTimeout()V
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Szb;->mTPKCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
