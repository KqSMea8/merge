.class public Lc8/ERf;
.super Ljava/lang/Object;
.source "UpdateLocalDataStore.java"


# static fields
.field private static INSTANCE:Lc8/ERf;


# instance fields
.field private path:Ljava/lang/String;

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lc8/ERf;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mtl_update.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 37
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/ERf;->path:Ljava/lang/String;

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 135
    .local v1, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 141
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/ERf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Lc8/ERf;->INSTANCE:Lc8/ERf;

    if-nez v0, :cond_1

    .line 47
    if-nez p0, :cond_0

    .line 48
    sget-object p0, Lc8/yRf;->sContext:Landroid/app/Application;

    .line 50
    :cond_0
    new-instance v0, Lc8/ERf;

    invoke-direct {v0, p0}, Lc8/ERf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/ERf;->INSTANCE:Lc8/ERf;

    .line 52
    :cond_1
    sget-object v0, Lc8/ERf;->INSTANCE:Lc8/ERf;

    return-object v0
.end method

.method private readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v2, "fl":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    const-string/jumbo v3, ""

    .line 129
    .end local v2    # "fl":Ljava/io/File;
    :goto_0
    return-object v3

    .line 122
    .restart local v2    # "fl":Ljava/io/File;
    :cond_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 123
    .local v1, "fin":Ljava/io/FileInputStream;
    invoke-direct {p0, v1}, Lc8/ERf;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "ret":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    .end local v1    # "fin":Ljava/io/FileInputStream;
    .end local v2    # "fl":Ljava/io/File;
    .end local v3    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "Exception"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "File read failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 147
    .local v1, "outputStreamWriter":Ljava/io/OutputStreamWriter;
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v1    # "outputStreamWriter":Ljava/io/OutputStreamWriter;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "Exception"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File write failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearCache()V
    .locals 2

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    .line 78
    const-string/jumbo v0, ""

    iget-object v1, p0, Lc8/ERf;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/ERf;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public getData()Lcom/taobao/update/datasource/local/UpdateInfo;
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    if-nez v1, :cond_0

    .line 91
    iget-object v1, p0, Lc8/ERf;->path:Ljava/lang/String;

    invoke-direct {p0, v1}, Lc8/ERf;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    :try_start_0
    const-class v1, Lcom/taobao/update/datasource/local/UpdateInfo;

    invoke-static {v0, v1}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/update/datasource/local/UpdateInfo;

    iput-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "json":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    return-object v1

    .restart local v0    # "json":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getSP(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    iget-object v0, p0, Lc8/ERf;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resetData(Lcom/taobao/update/datasource/local/UpdateInfo;)V
    .locals 4
    .param p1, "updateInfo"    # Lcom/taobao/update/datasource/local/UpdateInfo;

    .prologue
    .line 82
    iput-object p1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    .line 83
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/taobao/update/datasource/local/UpdateInfo;->lastUpdateTime:J

    .line 84
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    invoke-static {v1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lc8/ERf;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/ERf;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public updateData(Lcom/taobao/update/datasource/local/UpdateInfo;)V
    .locals 4
    .param p1, "updateInfo"    # Lcom/taobao/update/datasource/local/UpdateInfo;

    .prologue
    .line 58
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    if-nez v1, :cond_2

    .line 63
    iput-object p1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    .line 70
    :goto_1
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    iget-object v1, v1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    const-string/jumbo v2, "cmd"

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/taobao/update/datasource/local/UpdateInfo;->lastUpdateTime:J

    .line 72
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    invoke-static {v1}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lc8/ERf;->path:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lc8/ERf;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    .end local v0    # "str":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lc8/ERf;->updateInfoCache:Lcom/taobao/update/datasource/local/UpdateInfo;

    iget-object v1, v1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    iget-object v2, p1, Lcom/taobao/update/datasource/local/UpdateInfo;->updateList:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1
.end method

.method public updateSP(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    iget-object v1, p0, Lc8/ERf;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 108
    return-void
.end method
