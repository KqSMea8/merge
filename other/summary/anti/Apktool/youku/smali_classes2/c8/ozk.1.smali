.class public Lc8/ozk;
.super Ljava/lang/Object;
.source "FreeDataUrlStrategy.java"

# interfaces
.implements Lcom/taobao/orange/OrangeConfigListenerV1;


# instance fields
.field private isCustomCacheKey:Z

.field private isFreeData:Z


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v0, p0, Lc8/ozk;->isFreeData:Z

    .line 24
    iput-boolean v0, p0, Lc8/ozk;->isCustomCacheKey:Z

    .line 27
    invoke-direct {p0}, Lc8/ozk;->isFreeDataFromLocal()Z

    move-result v0

    iput-boolean v0, p0, Lc8/ozk;->isFreeData:Z

    .line 28
    invoke-direct {p0}, Lc8/ozk;->isCustomCacheKeyFromLocal()Z

    move-result v0

    iput-boolean v0, p0, Lc8/ozk;->isCustomCacheKey:Z

    .line 29
    return-void
.end method

.method private getFreeDataDomainMap()Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 100
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v5

    const-string/jumbo v7, "free_image"

    const-string/jumbo v8, "freedataDomainMap"

    const-string/jumbo v9, ""

    invoke-virtual {v5, v7, v8, v9}, Lc8/ctf;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "orangeConfig":Ljava/lang/String;
    const-string/jumbo v5, "FreeDataUrl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Orange\u4e0b\u53d1\u914d\u7f6e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    :cond_0
    return-object v3

    .line 111
    :cond_1
    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "domainPairs":[Ljava/lang/String;
    array-length v5, v0

    if-lez v5, :cond_0

    .line 116
    array-length v7, v0

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 117
    .local v2, "items":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 121
    const-string/jumbo v8, "\\|"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "domains":[Ljava/lang/String;
    array-length v8, v1

    if-le v8, v11, :cond_2

    aget-object v8, v1, v6

    .line 123
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    aget-object v8, v1, v11

    .line 124
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 129
    aget-object v8, v1, v6

    aget-object v9, v1, v11

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v8, "FreeDataUrl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u57df\u540d\u5bf9: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .end local v1    # "domains":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private isCustomCacheKeyFromLocal()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 52
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "free_image"

    invoke-virtual {v2, v3, v5}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 56
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "saveCachePathOnly"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "isCustomCacheKey":Ljava/lang/String;
    const-string/jumbo v2, "FreeDataUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "saveCachePathOnly -----------> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isFreeDataFromLocal()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "free_image"

    invoke-virtual {v2, v3, v5}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 39
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "freedataSwitch"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "isFreeDataSwitch":Ljava/lang/String;
    const-string/jumbo v2, "FreeDataUrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "freedataSwitch -----------> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method


# virtual methods
.method public isCustomCacheKey()Z
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 191
    iget-boolean v0, p0, Lc8/ozk;->isCustomCacheKey:Z

    return v0
.end method

.method public modifyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "initialUrl"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 144
    const-string/jumbo v3, "FreeDataUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -------- \u5f00\u59cb\u514d\u6d41\u9002\u914d\uff0c\u539f\u59cburl\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-boolean v3, p0, Lc8/ozk;->isFreeData:Z

    if-nez v3, :cond_1

    .line 148
    const-string/jumbo v3, "FreeDataUrl"

    const-string/jumbo v4, "\u514d\u6d41\u5f00\u5173\u5df2\u5173\u95ed\uff0c\u7ec8\u6b62\u514d\u6d41\u9002\u914d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    :cond_0
    :goto_0
    const-string/jumbo v3, "FreeDataUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " -------- \u6700\u7ec8\u514d\u6d41url\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-object p1

    .line 153
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const-string/jumbo v3, "FreeDataUrl"

    const-string/jumbo v4, "\u539f\u59cburl\u4e3a\u7a7a\uff0c\u7ec8\u6b62\u514d\u6d41\u9002\u914d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :cond_2
    sget-object v3, Lcom/youku/phone/phenix/PhenixUtil;->getInstance:Lcom/youku/phone/phenix/PhenixUtil;

    invoke-virtual {v3, p1}, Lcom/youku/phone/phenix/PhenixUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "domain":Ljava/lang/String;
    const-string/jumbo v3, "FreeDataUrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u539f\u59cb\u56fe\u7247Url\u57df\u540d\u4e3a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    const-string/jumbo v3, "FreeDataUrl"

    const-string/jumbo v4, "\u57df\u540d\u4e3a\u7a7a\uff0c\u7ec8\u6b62\u514d\u6d41\u9002\u914d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 168
    :cond_3
    invoke-direct {p0}, Lc8/ozk;->getFreeDataDomainMap()Ljava/util/Map;

    move-result-object v1

    .line 170
    .local v1, "freeDomainMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 171
    const-string/jumbo v3, "FreeDataUrl"

    const-string/jumbo v4, "\u670d\u52a1\u5668\u4e0b\u53d1\u7684\u57df\u540d\u6620\u5c04\u8868\u4e3a\u7a7a\uff0c\u7ec8\u6b62\u514d\u6d41\u9002\u914d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 176
    :cond_4
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 177
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 180
    goto/16 :goto_0
.end method

.method public onConfigUpdate(Ljava/lang/String;Z)V
    .locals 9
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .prologue
    const/4 v8, 0x0

    .line 67
    const-string/jumbo v5, "free_image"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v5

    const-string/jumbo v6, "free_image"

    invoke-virtual {v5, v6}, Lc8/ctf;->getConfigs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    .line 72
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "saveCachePathOnly"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 73
    .local v1, "isCustomCacheKey":Ljava/lang/String;
    const-string/jumbo v5, "freedataSwitch"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 75
    .local v2, "isFreeDataSwitch":Ljava/lang/String;
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v5

    const-string/jumbo v6, "free_image"

    invoke-virtual {v5, v6, v8}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 79
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 81
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "saveCachePathOnly"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 82
    const-string/jumbo v5, "freedataSwitch"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    const-string/jumbo v5, "FreeDataUrl"

    const-string/jumbo v6, "--------- \u89e6\u53d1Orange\u66f4\u65b0\u4e8b\u4ef6 --------- "

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const-string/jumbo v5, "FreeDataUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ORANGE_IS_CUSTOM_CACHE_KEY_KEY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string/jumbo v5, "FreeDataUrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ORANGE_IS_FREE_DATA_KEY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lc8/ozk;->isCustomCacheKey:Z

    .line 91
    const-string/jumbo v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lc8/ozk;->isFreeData:Z

    goto/16 :goto_0
.end method
