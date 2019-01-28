.class public Lc8/Qwb;
.super Ljava/lang/Object;
.source "PageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Pwb;,
        Lc8/Owb;,
        Lc8/Nwb;
    }
.end annotation


# static fields
.field private static final DEP_PREFIX:Ljava/lang/String; = "// "

.field private static final PLACEHOLDER:Ljava/lang/String; = "try{eval(\'##{\\u02D2}##\')}catch(e){fd()}"

.field public static final TAG:Ljava/lang/String; = "Page_Cache"

.field private static sInstance:Lc8/Qwb;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/Qwb;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lc8/Qwb;->sInstance:Lc8/Qwb;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lc8/Qwb;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lc8/Qwb;->sInstance:Lc8/Qwb;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lc8/Qwb;

    invoke-direct {v0}, Lc8/Qwb;-><init>()V

    sput-object v0, Lc8/Qwb;->sInstance:Lc8/Qwb;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lc8/Qwb;->sInstance:Lc8/Qwb;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private writeTemplateToFileForDebug(Ljava/lang/String;)V
    .locals 10
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v6

    invoke-virtual {v6}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 165
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lc8/Qwb;->isExternalStorageWritable()Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 166
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "wx_cache_tpl"

    invoke-direct {v1, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 168
    const-string/jumbo v6, "Page_Cache"

    const-string/jumbo v7, "Directory not created"

    invoke-static {v6, v7}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 171
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 173
    .local v4, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .local v5, "outputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    if-eqz v5, :cond_1

    .line 180
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 181
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 175
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 178
    if-eqz v4, :cond_1

    .line 180
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 181
    :catch_2
    move-exception v2

    .line 182
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 178
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_2

    .line 180
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 183
    :cond_2
    :goto_3
    throw v6

    .line 181
    :catch_3
    move-exception v2

    .line 182
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 178
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 175
    .end local v4    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v5    # "outputStream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "outputStream":Ljava/io/FileOutputStream;
    .restart local v4    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public isExternalStorageWritable()Z
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 191
    .local v0, "state":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const/4 v1, 0x1

    .line 194
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V
    .locals 12
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "callback"    # Lc8/Pwb;

    .prologue
    .line 49
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p2}, Ljava/lang/String;-><init>([B)V

    .line 50
    .local v2, "template":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    .local v4, "startComposeTime":J
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v3

    .line 52
    .local v3, "cachePerf":Lc8/kwb;
    iput-object p1, v3, Lc8/kwb;->pageName:Ljava/lang/String;

    .line 53
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/nyb;->make(Ljava/lang/Object;)Lc8/nyb;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nyb;->runOnNewThread()Lc8/nyb;

    move-result-object v0

    new-instance v1, Lc8/Mwb;

    invoke-direct {v1, p0, v3}, Lc8/Mwb;-><init>(Lc8/Qwb;Lc8/kwb;)V

    .line 54
    invoke-virtual {v0, v1}, Lc8/nyb;->sub(Lc8/Hxb;)Lc8/nyb;

    move-result-object v0

    new-instance v1, Lc8/Lwb;

    invoke-direct {v1, p0}, Lc8/Lwb;-><init>(Lc8/Qwb;)V

    .line 66
    invoke-virtual {v0, v1}, Lc8/nyb;->cancel(Lc8/Rxb;)Lc8/nyb;

    move-result-object v0

    new-instance v1, Lc8/Kwb;

    invoke-direct {v1, p0, v3}, Lc8/Kwb;-><init>(Lc8/Qwb;Lc8/kwb;)V

    .line 72
    invoke-virtual {v0, v1}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v7

    new-instance v0, Lc8/Jwb;

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lc8/Jwb;-><init>(Lc8/Qwb;Ljava/lang/String;Lc8/kwb;JLc8/Pwb;)V

    .line 84
    invoke-virtual {v7, v0}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v0

    new-instance v1, Lc8/Iwb;

    invoke-direct {v1, p0, p1, v3, p3}, Lc8/Iwb;-><init>(Lc8/Qwb;Ljava/lang/String;Lc8/kwb;Lc8/Pwb;)V

    .line 122
    invoke-virtual {v0, v1}, Lc8/nyb;->onError(Lc8/Yxb;)Lc8/nyb;

    move-result-object v0

    new-instance v6, Lc8/Hwb;

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    move-object v10, p3

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lc8/Hwb;-><init>(Lc8/Qwb;Ljava/lang/String;Lc8/kwb;Lc8/Pwb;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, v6}, Lc8/nyb;->onCancel(Lc8/Vxb;)Lc8/nyb;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Lc8/nyb;->flow()Lc8/Zxb;

    .line 161
    return-void
.end method
