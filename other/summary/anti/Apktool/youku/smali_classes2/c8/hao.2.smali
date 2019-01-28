.class public abstract Lc8/hao;
.super Ljava/lang/Object;
.source "ADataSource.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected buildUploadInfo(Ljava/lang/String;)Lc8/Diq;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {p1}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 49
    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "file path is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 51
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 53
    :cond_1
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string/jumbo v7, "file not exists or is directory"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 56
    :cond_2
    :try_start_0
    const-string/jumbo v3, "image/jpeg"

    .line 57
    .local v3, "format":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 58
    const-string/jumbo v3, "image/png"

    .line 60
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    .local v0, "bodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Lc8/Diq;

    invoke-direct {v5}, Lc8/Diq;-><init>()V

    .line 64
    .local v5, "multipartTypedOutput":Lc8/Diq;
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    .local v4, "key":Ljava/lang/String;
    new-instance v7, Lc8/Iiq;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lc8/Iiq;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4, v7}, Lc8/Diq;->addPart(Ljava/lang/String;Lc8/Hiq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0    # "bodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "format":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "multipartTypedOutput":Lc8/Diq;
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    throw v1

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bodyMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3    # "format":Ljava/lang/String;
    .restart local v5    # "multipartTypedOutput":Lc8/Diq;
    :cond_4
    :try_start_1
    const-string/jumbo v6, "file"

    new-instance v7, Lc8/Fiq;

    invoke-direct {v7, v3, v2}, Lc8/Fiq;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {v5, v6, v7}, Lc8/Diq;->addPart(Ljava/lang/String;Lc8/Hiq;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    return-object v5
.end method

.method protected getCommonPageMap(Lc8/iao;)Ljava/util/Map;
    .locals 1
    .param p1, "pageInfo"    # Lc8/iao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/iao;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lc8/iao;->assemblePageParams()Ljava/util/Map;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected wrapperCallback(Lc8/bao;)Lc8/zgq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc8/sao;",
            ">(",
            "Lc8/bao",
            "<TT;>;)",
            "Lc8/zgq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "wrapper":Lc8/bao;, "Lcom/youku/us/baseframework/server/api/CallbackWrapper<TT;>;"
    new-instance v0, Lc8/gao;

    invoke-direct {v0, p0, p1}, Lc8/gao;-><init>(Lc8/hao;Lc8/bao;)V

    .line 98
    .local v0, "callback":Lc8/zgq;, "Lretrofit/Callback<TT;>;"
    return-object v0
.end method
