.class public Lc8/WG;
.super Ljava/lang/Object;
.source "ZipGlobalConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/VG;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field private mAppsTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZcacheResConfig:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public online_v:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "ZipGlobalConfig"

    iput-object v0, p0, Lc8/WG;->TAG:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/WG;->v:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/WG;->i:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/WG;->online_v:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    .line 157
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    .line 225
    return-void
.end method


# virtual methods
.method public addZcacheResConfig(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "zcachename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p2, "resList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lc8/WG;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZcacheforDebug \u65b0\u589ezcache name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    return-void
.end method

.method public getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-virtual {p0}, Lc8/WG;->isAvailableData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const/4 v0, 0x0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    goto :goto_0
.end method

.method public getAppsTable()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getZcacheResConfig()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isAllAppUpdated()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 130
    invoke-virtual {p0}, Lc8/WG;->isAvailableData()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    :goto_0
    return v3

    .line 133
    :cond_0
    iget-object v5, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    monitor-enter v5

    .line 135
    :try_start_0
    iget-object v6, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 136
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 138
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 139
    .local v1, "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iget v6, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v7, Lc8/dH;->ZIP_REMOVED:I

    if-eq v6, v7, :cond_1

    .line 142
    iget-wide v6, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v8, v1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 143
    :try_start_1
    monitor-exit v5

    move v3, v4

    goto :goto_0

    .line 146
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v1    # "info":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 150
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 148
    :catch_0
    move-exception v3

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v4

    goto :goto_0
.end method

.method public isAvailableData()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isZcacheUrl(Ljava/lang/String;)Lc8/VG;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v8, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    if-eqz v8, :cond_1

    .line 193
    :try_start_0
    invoke-static {p1}, Lc8/dI;->removeQueryParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-static {p1}, Lc8/NH;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 198
    .local v7, "urlmd5":Ljava/lang/String;
    iget-object v8, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 199
    .local v4, "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 201
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 202
    .local v6, "reslist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 203
    .local v5, "key":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 204
    iget-object v8, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 205
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    iget-object v8, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    if-eqz v8, :cond_0

    if-eqz v0, :cond_0

    .line 206
    new-instance v1, Lc8/VG;

    invoke-direct {v1}, Lc8/VG;-><init>()V

    .line 207
    .local v1, "data":Lc8/VG;
    iget-object v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    iput-object v8, v1, Lc8/VG;->appName:Ljava/lang/String;

    .line 208
    iget-object v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iput-object v8, v1, Lc8/VG;->v:Ljava/lang/String;

    .line 209
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v0, v7, v9}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lc8/VG;->path:Ljava/lang/String;

    .line 210
    iget-wide v8, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iput-wide v8, v1, Lc8/VG;->seq:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v1    # "data":Lc8/VG;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v4    # "it2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "reslist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "urlmd5":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 217
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    iget-object v8, p0, Lc8/WG;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ZcacheforDebug \u8d44\u6e90url \u89e3\u6790\u5339\u914d\u5f02\u5e38\uff0curl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public putAppInfo2Table(Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    .line 52
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 54
    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_REACT:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-eq v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v2, v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v2, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 59
    iget-object v2, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 60
    .local v0, "oldAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_UPDATE_INFO_DELETE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    if-ne v2, v3, :cond_4

    .line 61
    iget-boolean v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-nez v2, :cond_2

    invoke-virtual {p2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v2

    sget-object v3, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_ZCACHE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    if-ne v2, v3, :cond_3

    .line 62
    :cond_2
    sget v2, Lc8/dH;->ZIP_REMOVED:I

    iput v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 63
    iget-wide v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    iput-wide v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    goto :goto_0

    .line 66
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    goto :goto_0

    .line 70
    :cond_4
    iget-wide v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    iput-wide v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    .line 71
    iget-wide v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v4, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 74
    iget-wide v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iput-wide v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    .line 75
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iput-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 76
    iget-wide v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    iput-wide v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    .line 77
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    iput-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 78
    iget-boolean v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    iput-boolean v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 79
    iget-boolean v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    iput-boolean v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 80
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 81
    iget-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    if-nez v2, :cond_8

    const/4 v1, -0x1

    .line 82
    .local v1, "size":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/WG;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-Folders"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Before replace: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    iput-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lc8/WG;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-Folders"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Replace "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " folders to ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .end local v1    # "size":I
    :cond_5
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 87
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    iput-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 89
    :cond_6
    iget-wide v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7

    .line 90
    iget-wide v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    iput-wide v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 92
    :cond_7
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    const-string/jumbo v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    iget-object v2, p2, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    iput-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
    :cond_8
    iget-object v2, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto/16 :goto_1

    .line 97
    .end local v0    # "oldAppInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    :cond_9
    iget-object v2, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public removeAppInfoFromTable(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    return-void
.end method

.method public removeZcacheRes(Ljava/lang/String;)V
    .locals 3
    .param p1, "zcachename"    # Ljava/lang/String;

    .prologue
    .line 181
    if-eqz p1, :cond_0

    .line 182
    iget-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v0, p0, Lc8/WG;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZcacheforDebug \u5220\u9664zcache name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/WG;->v:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lc8/WG;->i:Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lc8/WG;->isAvailableData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lc8/WG;->mAppsTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 124
    :cond_0
    iget-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 127
    :cond_1
    return-void
.end method

.method public setZcacheResConfig(Ljava/util/Hashtable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "resTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lc8/WG;->mZcacheResConfig:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 167
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v1, p0, Lc8/WG;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ZcacheforDebug \u8bbe\u7f6eZcache \u7684url map size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void

    .line 168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
