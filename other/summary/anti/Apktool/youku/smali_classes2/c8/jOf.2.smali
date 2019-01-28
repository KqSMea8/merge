.class public Lc8/jOf;
.super Ljava/lang/Object;
.source "TLogFileUploader.java"


# static fields
.field private static isValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    sput-boolean v1, Lc8/jOf;->isValid:Z

    .line 21
    :try_start_0
    const-string/jumbo v0, "com.taobao.tao.log.TLog"

    invoke-static {v0}, Lc8/jOf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lc8/jOf;->isValid:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    sput-boolean v1, Lc8/jOf;->isValid:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static uploadLogFile(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/jOf;->uploadLogFile(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static uploadLogFile(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 33
    sget-boolean v4, Lc8/jOf;->isValid:Z

    if-nez v4, :cond_1

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-eqz p1, :cond_2

    .line 36
    const-string/jumbo v4, "type"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    .local v0, "exception":Ljava/lang/Object;
    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 38
    const-string/jumbo v4, "exception"

    check-cast v0, Ljava/lang/String;

    .end local v0    # "exception":Ljava/lang/Object;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    :cond_2
    invoke-static {p0}, Lc8/SHf;->getInstances(Landroid/content/Context;)Lc8/SHf;

    move-result-object v2

    .line 45
    .local v2, "logFileUploadManager":Lc8/SHf;
    if-nez p2, :cond_3

    .line 46
    sget-object v4, Lc8/zHf;->FILE_PREFIX:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lc8/IHf;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 47
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Lc8/SHf;->addFiles(Ljava/util/List;)V

    .line 53
    :goto_1
    const-string/jumbo v4, "client"

    invoke-virtual {v2, v4}, Lc8/SHf;->setType(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, p1}, Lc8/SHf;->setExtData(Ljava/util/Map;)V

    .line 56
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 57
    .local v3, "reportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "userId"

    const-string/jumbo v5, "-1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v4, "serviceId"

    const-string/jumbo v5, "motu-remote"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v4, "serialNumber"

    const-string/jumbo v5, "-1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v4, "taskId"

    const-string/jumbo v5, "-1"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v2, v3}, Lc8/SHf;->setReportParams(Ljava/util/Map;)V

    .line 63
    invoke-virtual {v2}, Lc8/SHf;->startUpload()V

    goto :goto_0

    .line 49
    .end local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "reportParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {p2, v5, v6}, Lc8/IHf;->getFilePath(Ljava/lang/String;I[Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 50
    .restart local v1    # "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v2, v1}, Lc8/SHf;->addFiles(Ljava/util/List;)V

    goto :goto_1
.end method
