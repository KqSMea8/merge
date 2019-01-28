.class public Lc8/ben;
.super Lc8/Jdn;
.source "DownloadManager.java"

# interfaces
.implements Lc8/ren;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aen;,
        Lc8/Zdn;,
        Lcom/youku/service/download/DownloadManager$CacheRequest;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Download_Manager"

.field private static volatile currentProcessName:Ljava/lang/String;

.field private static downloadService:Lc8/Aen;

.field private static downloadedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static instance:Lc8/ben;

.field private static listener:Lc8/Ben;

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Ben;",
            ">;"
        }
    .end annotation
.end field

.field private static final mCallback:Lc8/uen;

.field private static final sConnect:Landroid/content/ServiceConnection;

.field private static volatile sMotuRegistered:Z


# instance fields
.field private enableVipModel:Z

.field private lis:Lc8/Cen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lc8/ben;->sMotuRegistered:Z

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lc8/ben;->listeners:Ljava/util/List;

    .line 104
    new-instance v0, Lc8/Rdn;

    invoke-direct {v0}, Lc8/Rdn;-><init>()V

    sput-object v0, Lc8/ben;->mCallback:Lc8/uen;

    .line 168
    new-instance v0, Lc8/Tdn;

    invoke-direct {v0}, Lc8/Tdn;-><init>()V

    sput-object v0, Lc8/ben;->sConnect:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    invoke-direct {p0}, Lc8/Jdn;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ben;->lis:Lc8/Cen;

    .line 266
    iput-object p1, p0, Lc8/ben;->context:Landroid/content/Context;

    .line 267
    invoke-direct {p0, p1}, Lc8/ben;->bindService(Landroid/content/Context;)V

    .line 270
    sget-boolean v0, Lc8/ben;->sMotuRegistered:Z

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    sput-boolean v0, Lc8/ben;->sMotuRegistered:Z

    .line 272
    invoke-static {}, Lc8/Len;->register()V

    .line 274
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lc8/ben;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$102(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    .line 80
    sput-object p0, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lc8/ben;->getNewDownloadedData()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Lc8/ben;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lc8/ben;->instance:Lc8/ben;

    return-object v0
.end method

.method static synthetic access$400(Lc8/ben;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lc8/ben;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lc8/ben;->bindService(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500()Lc8/Aen;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lc8/ben;->downloadService:Lc8/Aen;

    return-object v0
.end method

.method static synthetic access$502(Lc8/Aen;)Lc8/Aen;
    .locals 0
    .param p0, "x0"    # Lc8/Aen;

    .prologue
    .line 80
    sput-object p0, Lc8/ben;->downloadService:Lc8/Aen;

    return-object p0
.end method

.method static synthetic access$600()Lc8/uen;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lc8/ben;->mCallback:Lc8/uen;

    return-object v0
.end method

.method public static synthetic access$800()Landroid/content/Intent;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lc8/ben;)Lc8/Cen;
    .locals 1
    .param p0, "x0"    # Lc8/ben;

    .prologue
    .line 80
    iget-object v0, p0, Lc8/ben;->lis:Lc8/Cen;

    return-object v0
.end method

.method static synthetic access$902(Lc8/ben;Lc8/Cen;)Lc8/Cen;
    .locals 0
    .param p0, "x0"    # Lc8/ben;
    .param p1, "x1"    # Lc8/Cen;

    .prologue
    .line 80
    iput-object p1, p0, Lc8/ben;->lis:Lc8/Cen;

    return-object p1
.end method

.method private bindService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/ben;->sConnect:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 284
    return-void
.end method

.method private faultDeleteDownloadingVideos(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1013
    .local p1, "infos":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/youku/service/download/DownloadInfo;>;"
    const/4 v1, 0x1

    .line 1014
    .local v1, "isDeleteSuccess":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 1015
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    const/4 v3, 0x4

    iput v3, v0, Lcom/youku/service/download/DownloadInfo;->state:I

    .line 1016
    iget-object v3, v0, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-static {v3}, Lc8/Zfn;->deleteVideoDir(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1017
    const/4 v1, 0x0

    .line 1018
    const-string/jumbo v3, "faultDeleteDownloadingVideos"

    invoke-virtual {p0}, Lc8/ben;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lc8/Len;->statDeleteFileError(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V

    goto :goto_0

    .line 1021
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_1
    return v1
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    sget-object v8, Lc8/ben;->currentProcessName:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 225
    sget-object v8, Lc8/ben;->currentProcessName:Ljava/lang/String;

    .line 260
    :goto_0
    return-object v8

    .line 227
    :cond_0
    const-class v9, Lc8/ben;

    monitor-enter v9

    .line 228
    :try_start_0
    sget-object v8, Lc8/ben;->currentProcessName:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 229
    sget-object v8, Lc8/ben;->currentProcessName:Ljava/lang/String;

    monitor-exit v9

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 231
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 232
    .local v6, "pid":I
    const/4 v3, 0x0

    .line 234
    .local v3, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 236
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v4, "cmdlineReader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v7, "processName":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->read()I

    move-result v2

    .local v2, "c":I
    if-lez v2, :cond_4

    .line 238
    int-to-char v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 242
    .end local v2    # "c":I
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v5

    move-object v3, v4

    .line 243
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 246
    if-eqz v3, :cond_2

    .line 247
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 253
    :cond_2
    :goto_3
    :try_start_6
    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 254
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 255
    .local v1, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v10, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v10, v6, :cond_3

    .line 256
    iget-object v8, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 257
    sput-object v8, Lc8/ben;->currentProcessName:Ljava/lang/String;

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 240
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "c":I
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v7    # "processName":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_7
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    sput-object v8, Lc8/ben;->currentProcessName:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 246
    if-eqz v4, :cond_5

    .line 247
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 251
    :cond_5
    :goto_4
    :try_start_9
    monitor-exit v9

    goto/16 :goto_0

    .line 249
    :catch_1
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 249
    .end local v2    # "c":I
    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v7    # "processName":Ljava/lang/StringBuilder;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v5

    .line 250
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 245
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v8

    .line 246
    :goto_5
    if-eqz v3, :cond_6

    .line 247
    :try_start_a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 251
    :cond_6
    :goto_6
    :try_start_b
    throw v8

    .line 249
    :catch_3
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 260
    .restart local v0    # "am":Landroid/app/ActivityManager;
    :cond_7
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 245
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "cmdlineReader":Ljava/io/BufferedReader;
    .restart local v3    # "cmdlineReader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 242
    :catch_4
    move-exception v5

    goto :goto_2
.end method

.method public static getDownloadIdFile()Ljava/lang/String;
    .locals 4

    .prologue
    .line 516
    invoke-static {}, Lc8/wfn;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 517
    const-string/jumbo v2, ""

    .line 543
    .local v1, "j":I
    :goto_0
    return-object v2

    .line 519
    .end local v1    # "j":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_1
    sget-object v2, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 520
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vfn;

    iget-object v2, v2, Lc8/vfn;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/youku/offlinedata/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 541
    const-string/jumbo v2, ""

    goto :goto_0

    .line 519
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 543
    .end local v0    # "dir":Ljava/io/File;
    :cond_2
    const-string/jumbo v2, ""

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lc8/ben;
    .locals 4

    .prologue
    .line 202
    const-class v2, Lc8/ben;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/ben;->instance:Lc8/ben;

    if-nez v1, :cond_0

    .line 204
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/ben;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "processName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInstance() processName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-static {v1}, Lc8/Lfn;->fetchConfigs(Landroid/content/Context;)V

    .line 209
    new-instance v1, Lc8/ben;

    sget-object v3, Lc8/ddn;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Lc8/ben;-><init>(Landroid/content/Context;)V

    sput-object v1, Lc8/ben;->instance:Lc8/ben;

    .line 215
    :cond_0
    sget-object v1, Lc8/ben;->instance:Lc8/ben;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return-object v1

    .line 212
    :cond_1
    :try_start_1
    sget-object v1, Lc8/ben;->instance:Lc8/ben;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getNewDownloadedData()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    .line 363
    invoke-static {}, Lc8/wfn;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v6

    sput-object v6, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 364
    sget-object v6, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    .line 382
    .local v4, "j":I
    :goto_0
    return-object v6

    .line 366
    .end local v4    # "j":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_1
    sget-object v6, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 367
    new-instance v1, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/vfn;

    iget-object v6, v6, Lc8/vfn;->path:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/youku/offlinedata/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 371
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 372
    .local v2, "dirs":[Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 373
    array-length v6, v2

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_2

    .line 374
    aget-object v5, v2, v3

    .line 375
    .local v5, "vid":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/vfn;

    iget-object v6, v6, Lc8/vfn;->path:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/youku/offlinedata/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lc8/ben;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    .line 376
    .local v0, "d":Lcom/youku/service/download/DownloadInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 377
    sget-object v6, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    iget-object v7, v0, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 366
    .end local v0    # "d":Lcom/youku/service/download/DownloadInfo;
    .end local v2    # "dirs":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "vid":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 382
    .end local v1    # "dir":Ljava/io/File;
    :cond_3
    sget-object v6, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    goto/16 :goto_0
.end method

.method private static makeIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 278
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.youku.service.download.DownloadService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 279
    return-object v0
.end method

.method private restartService()V
    .locals 2

    .prologue
    .line 1005
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1006
    .local v0, "i":Landroid/content/Intent;
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1007
    return-void
.end method

.method private setOnCreateDownloadListener(Lc8/Cen;)V
    .locals 3
    .param p1, "listener"    # Lc8/Cen;

    .prologue
    .line 844
    iput-object p1, p0, Lc8/ben;->lis:Lc8/Cen;

    .line 845
    if-nez p1, :cond_0

    .line 860
    :goto_0
    return-void

    .line 848
    :cond_0
    new-instance v1, Lc8/Wdn;

    invoke-direct {v1, p0}, Lc8/Wdn;-><init>(Lc8/ben;)V

    .line 857
    .local v1, "on":Lc8/Zdn;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 858
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.youku.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public bindAccService()V
    .locals 2

    .prologue
    .line 1231
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->bindAccService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_0
    return-void

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public canDownloadNotify()Z
    .locals 2

    .prologue
    .line 1178
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->canDownloadNotify()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1183
    :goto_0
    return v1

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1183
    invoke-static {}, Lc8/Egn;->isTaskFinishSoundEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public canUse3GDownload()Z
    .locals 2

    .prologue
    .line 1095
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->canUse3GDownload()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1099
    :goto_0
    return v1

    .line 1096
    :catch_0
    move-exception v0

    .line 1097
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1099
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createDownload(Lcom/youku/service/download/DownloadManager$CacheRequest;Lc8/Cen;)V
    .locals 3
    .param p1, "request"    # Lcom/youku/service/download/DownloadManager$CacheRequest;
    .param p2, "listener"    # Lc8/Cen;

    .prologue
    .line 723
    invoke-direct {p0, p2}, Lc8/ben;->setOnCreateDownloadListener(Lc8/Cen;)V

    .line 725
    :try_start_0
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/youku/service/download/DownloadManager$CacheRequest;->make()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public createDownload(Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
    .locals 6
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "videoName"    # Ljava/lang/String;
    .param p3, "listener"    # Lc8/Cen;

    .prologue
    .line 715
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;Z)V

    .line 716
    return-void
.end method

.method public createDownload(Ljava/lang/String;Ljava/lang/String;Lc8/Cen;Z)V
    .locals 6
    .param p1, "videoId"    # Ljava/lang/String;
    .param p2, "videoName"    # Ljava/lang/String;
    .param p3, "listener"    # Lc8/Cen;
    .param p4, "isPush"    # Z

    .prologue
    .line 744
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;Z)V

    .line 745
    return-void
.end method

.method public createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
    .locals 6
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "videoName"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Cen;

    .prologue
    .line 719
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;Z)V

    .line 720
    return-void
.end method

.method public createDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;Z)V
    .locals 3
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "videoName"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Cen;
    .param p5, "isPushDownload"    # Z

    .prologue
    .line 750
    invoke-direct {p0, p4}, Lc8/ben;->setOnCreateDownloadListener(Lc8/Cen;)V

    .line 752
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 753
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "create"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    const-string/jumbo v2, "videoId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string/jumbo v2, "videoName"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 757
    const-string/jumbo v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    :cond_0
    invoke-static {v1}, Lc8/aen;->sign(Landroid/content/Intent;)V

    .line 760
    const-string/jumbo v2, "isPushDownload"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 762
    :try_start_0
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Download_Manager"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createDownload(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V
    .locals 6
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "videoIds"    # [Ljava/lang/String;
    .param p3, "videoNames"    # [Ljava/lang/String;
    .param p4, "listener"    # Lc8/Cen;

    .prologue
    .line 740
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownload(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;Z)V

    .line 741
    return-void
.end method

.method public createDownload(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;Z)V
    .locals 3
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "videoIds"    # [Ljava/lang/String;
    .param p3, "videoNames"    # [Ljava/lang/String;
    .param p4, "listener"    # Lc8/Cen;
    .param p5, "isPushDownload"    # Z

    .prologue
    .line 776
    invoke-direct {p0, p4}, Lc8/ben;->setOnCreateDownloadListener(Lc8/Cen;)V

    .line 777
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 778
    .local v1, "i":Landroid/content/Intent;
    invoke-static {v1}, Lc8/aen;->sign(Landroid/content/Intent;)V

    .line 779
    const-string/jumbo v2, "create"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const-string/jumbo v2, "videoIds"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string/jumbo v2, "videoNames"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 782
    const-string/jumbo v2, "isPushDownload"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 783
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 784
    const-string/jumbo v2, "showId"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    :cond_0
    :try_start_0
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Download_Manager"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createDownload([Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V
    .locals 6
    .param p1, "videoIds"    # [Ljava/lang/String;
    .param p2, "videoNames"    # [Ljava/lang/String;
    .param p3, "listener"    # Lc8/Cen;

    .prologue
    .line 736
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownload(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;Z)V

    .line 737
    return-void
.end method

.method public createDownload([Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;Z)V
    .locals 6
    .param p1, "videoIds"    # [Ljava/lang/String;
    .param p2, "videoNames"    # [Ljava/lang/String;
    .param p3, "listener"    # Lc8/Cen;
    .param p4, "isPush"    # Z

    .prologue
    .line 769
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownload(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;Z)V

    .line 770
    return-void
.end method

.method public createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Lcom/youku/service/download/DownloadManager$CacheRequest;Lc8/Cen;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "request"    # Lcom/youku/service/download/DownloadManager$CacheRequest;
    .param p3, "listener"    # Lc8/Cen;

    .prologue
    .line 826
    if-nez p1, :cond_0

    .line 831
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0, p2, p3}, Lc8/ben;->createDownload(Lcom/youku/service/download/DownloadManager$CacheRequest;Lc8/Cen;)V

    goto :goto_0
.end method

.method public createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoId"    # Ljava/lang/String;
    .param p3, "videoName"    # Ljava/lang/String;
    .param p4, "listener"    # Lc8/Cen;

    .prologue
    .line 822
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V

    .line 823
    return-void
.end method

.method public createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoId"    # Ljava/lang/String;
    .param p4, "videoName"    # Ljava/lang/String;
    .param p5, "listener"    # Lc8/Cen;

    .prologue
    .line 794
    if-eqz p1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 797
    :cond_1
    new-instance v0, Lc8/Vdn;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lc8/Vdn;-><init>(Lc8/ben;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V

    invoke-static {p1, v0}, Lc8/oen;->doDownloadLogin(Landroid/app/Activity;Lc8/Qdn;)V

    goto :goto_0
.end method

.method public createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "showId"    # Ljava/lang/String;
    .param p3, "videoIds"    # [Ljava/lang/String;
    .param p4, "videoNames"    # [Ljava/lang/String;
    .param p5, "listener"    # Lc8/Cen;

    .prologue
    .line 833
    if-nez p1, :cond_0

    .line 837
    :goto_0
    return-void

    .line 836
    :cond_0
    invoke-virtual {p0, p2, p3, p4, p5}, Lc8/ben;->createDownload(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V

    goto :goto_0
.end method

.method public createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "videoIds"    # [Ljava/lang/String;
    .param p3, "videoNames"    # [Ljava/lang/String;
    .param p4, "listener"    # Lc8/Cen;

    .prologue
    .line 840
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lc8/ben;->createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V

    .line 841
    return-void
.end method

.method public deleteDownloadeds(Ljava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    const/4 v6, 0x0

    .line 1026
    const/4 v2, 0x1

    .line 1029
    .local v2, "isDeleteSuccess":Z
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteDownloadeds(deleteList) : ArrayList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_1

    move v7, v6

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1030
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 1031
    :cond_0
    const/4 v6, 0x1

    .line 1067
    :goto_1
    return v6

    .line 1029
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_0

    .line 1033
    :cond_2
    const-string/jumbo v7, "download_last_notify_taskid"

    invoke-static {v7}, Lc8/oen;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1034
    .local v3, "nId":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/service/download/DownloadInfo;

    .line 1035
    .local v5, "tempInfo":Lcom/youku/service/download/DownloadInfo;
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v8

    iget-object v9, v5, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/service/download/DownloadInfo;

    .line 1036
    .local v1, "info":Lcom/youku/service/download/DownloadInfo;
    if-eqz v1, :cond_3

    .line 1037
    const/4 v8, 0x4

    iput v8, v1, Lcom/youku/service/download/DownloadInfo;->state:I

    .line 1038
    invoke-static {v1}, Lc8/oen;->makeDownloadInfoFile(Lcom/youku/service/download/DownloadInfo;)Z

    .line 1039
    sget-object v8, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    iget-object v9, v1, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1040
    iget-object v8, v1, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1041
    iget-object v8, p0, Lc8/ben;->context:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 1042
    .local v4, "nm":Landroid/app/NotificationManager;
    const/16 v8, 0x7fe

    invoke-virtual {v4, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1043
    const-string/jumbo v8, "download_last_notify_taskid"

    const-string/jumbo v9, ""

    invoke-static {v8, v9}, Lc8/oen;->savePreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1059
    .end local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    .end local v3    # "nId":Ljava/lang/String;
    .end local v4    # "nm":Landroid/app/NotificationManager;
    .end local v5    # "tempInfo":Lcom/youku/service/download/DownloadInfo;
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/Exception;
    instance-of v7, v0, Landroid/os/DeadObjectException;

    if-eqz v7, :cond_4

    .line 1061
    invoke-direct {p0}, Lc8/ben;->restartService()V

    .line 1063
    :cond_4
    const-string/jumbo v7, ""

    const-string/jumbo v8, "DownloadManager#deleteDownloadeds"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lc8/Len;->statException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1047
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "nId":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/service/download/DownloadInfo;

    .line 1048
    .restart local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v8, v1, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lc8/ben;->markVideoWatched(Ljava/lang/String;)V

    .line 1049
    invoke-static {}, Lc8/Xfn;->getInstance()Lc8/Xfn;

    move-result-object v8

    iget-object v9, v1, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lc8/Xfn;->notifyTaskDeleted(Ljava/lang/String;)V

    .line 1050
    invoke-static {v1}, Lc8/Jen;->trackDelete(Lcom/youku/service/download/DownloadInfo;)V

    .line 1051
    iget-object v8, v1, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;

    invoke-static {v8}, Lc8/Zfn;->deleteVideoDir(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1052
    const-string/jumbo v8, "deleteDownloadeds"

    invoke-virtual {p0}, Lc8/ben;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Lc8/Len;->statDeleteFileError(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;)V

    .line 1053
    const/4 v2, 0x0

    goto :goto_3

    .line 1058
    .end local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_7
    sget-object v7, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v7, p1}, Lc8/Aen;->deleteDownloadeds(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v6, v2

    .line 1067
    goto/16 :goto_1
.end method

.method public deleteDownloadingVideos(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;>;"
    const/4 v3, 0x0

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteDownloading(deleteMap) : Map:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 981
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 982
    :cond_0
    const/4 v3, 0x1

    .line 997
    :goto_1
    return v3

    .line 979
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_0

    .line 986
    :cond_2
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/service/download/DownloadInfo;

    .line 987
    .local v1, "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v4, v1, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lc8/ben;->markVideoWatched(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 990
    .end local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Download_Manager"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 992
    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_4

    .line 993
    invoke-direct {p0}, Lc8/ben;->restartService()V

    .line 994
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/ben;->faultDeleteDownloadingVideos(Ljava/util/Collection;)Z

    move-result v3

    goto :goto_1

    .line 989
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v2, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v2, p1}, Lc8/Aen;->deleteDownloadingVideos(Ljava/util/Map;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_1

    .line 996
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const-string/jumbo v2, ""

    const-string/jumbo v4, "DownloadManager#deleteDownloadingVideos"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v5, v6}, Lc8/Len;->statException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public disableVipMode()V
    .locals 2

    .prologue
    .line 1323
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    if-nez v1, :cond_0

    .line 1330
    :goto_0
    return-void

    .line 1325
    :cond_0
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->disableVipMode()V

    .line 1326
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/ben;->enableVipModel:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1327
    :catch_0
    move-exception v0

    .line 1328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public enableVipMode(I)V
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 1314
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    if-nez v1, :cond_0

    .line 1321
    :goto_0
    return-void

    .line 1316
    :cond_0
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->enableVipMode(I)V

    .line 1317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/ben;->enableVipModel:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1318
    :catch_0
    move-exception v0

    .line 1319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getCurrentDownloadSDCardPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1073
    :try_start_0
    sget-object v2, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v2}, Lc8/Aen;->getCurrentDownloadSDCardPath()Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "path":Ljava/lang/String;
    const-string/jumbo v2, "download_file_path"

    invoke-static {v2, v1}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1079
    .end local v1    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1076
    :catch_0
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Download_Manager"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1079
    const-string/jumbo v2, "download_file_path"

    invoke-static {}, Lc8/wfn;->getDefauleSDCardPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Iin;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDownloadFormat()I
    .locals 2

    .prologue
    .line 1138
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->getDownloadFormat()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1142
    :goto_0
    return v1

    .line 1139
    :catch_0
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1142
    invoke-static {}, Lc8/oen;->getDownloadFormat()I

    move-result v1

    goto :goto_0
.end method

.method public getDownloadInfo(Ljava/lang/String;I)Lcom/youku/service/download/DownloadInfo;
    .locals 5
    .param p1, "showId"    # Ljava/lang/String;
    .param p2, "show_videoseq"    # I

    .prologue
    const/4 v1, 0x0

    .line 400
    if-nez p1, :cond_0

    move-object v0, v1

    .line 416
    :goto_0
    return-object v0

    .line 405
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 406
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v3, v0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/youku/service/download/DownloadInfo;->show_videoseq:I

    if-ne v3, p2, :cond_1

    .line 408
    invoke-virtual {v0}, Lcom/youku/service/download/DownloadInfo;->getState()I
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_0

    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :catch_0
    move-exception v2

    :cond_2
    move-object v0, v1

    .line 416
    goto :goto_0
.end method

.method public getDownloadInfoListById(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "videoIdOrShowId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 422
    if-nez p1, :cond_1

    .line 423
    const/4 v1, 0x0

    .line 443
    :cond_0
    :goto_0
    return-object v1

    .line 425
    :cond_1
    const/4 v1, 0x0

    .line 426
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 430
    :cond_2
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 431
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v3, v0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 432
    if-nez v1, :cond_4

    .line 433
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 438
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_5
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 439
    const/4 v2, 0x0

    sput v2, Lcom/youku/service/download/DownloadInfo;->compareBy:I

    .line 440
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method public getDownloadLanguage()I
    .locals 3

    .prologue
    .line 1158
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->getDownloadLanguage()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1162
    :goto_0
    return v1

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1162
    const-string/jumbo v1, "cachepreferlanguage"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lc8/Iin;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public getDownloadedData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    sget-object v0, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 356
    invoke-static {}, Lc8/ben;->getNewDownloadedData()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    .line 358
    :cond_0
    sget-object v0, Lc8/ben;->downloadedData:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDownloadedList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 389
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 391
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_0
    return-object v1
.end method

.method public getDownloadingData()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    sget-object v8, Lc8/ben;->downloadService:Lc8/Aen;

    if-eqz v8, :cond_1

    .line 319
    :try_start_0
    sget-object v8, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v8}, Lc8/Aen;->getDownloadingData()Ljava/util/Map;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v8

    .line 347
    :cond_0
    return-object v2

    .line 320
    :catch_0
    move-exception v3

    .line 321
    .local v3, "e":Landroid/os/DeadObjectException;
    const-string/jumbo v8, "Download_Manager"

    invoke-static {v8, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    .end local v3    # "e":Landroid/os/DeadObjectException;
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v2, "downloadingData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;>;"
    sget-object v8, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    if-nez v8, :cond_2

    invoke-static {}, Lc8/wfn;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v8

    sput-object v8, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    .line 331
    :cond_2
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    sget-object v8, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 332
    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/vfn;

    iget-object v8, v8, Lc8/vfn;->path:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/youku/offlinedata/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 336
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "dirs":[Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 338
    array-length v8, v1

    add-int/lit8 v4, v8, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 339
    aget-object v7, v1, v4

    .line 340
    .local v7, "vid":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lc8/ben;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/vfn;

    iget-object v8, v8, Lc8/vfn;->path:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/youku/offlinedata/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lc8/ben;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v5

    .line 341
    .local v5, "info":Lcom/youku/service/download/DownloadInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    invoke-virtual {v5}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3

    .line 342
    iget-object v8, v5, Lcom/youku/service/download/DownloadInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 322
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "dirs":[Ljava/lang/String;
    .end local v2    # "downloadingData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;>;"
    .end local v4    # "i":I
    .end local v5    # "info":Lcom/youku/service/download/DownloadInfo;
    .end local v6    # "j":I
    .end local v7    # "vid":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 323
    .local v3, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "Download_Manager"

    invoke-static {v8, v3}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 331
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v2    # "downloadingData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/youku/service/download/DownloadInfo;>;"
    .restart local v6    # "j":I
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1
.end method

.method public getHowManyDownloadsByShowId(Ljava/lang/String;)I
    .locals 4
    .param p1, "showId"    # Ljava/lang/String;

    .prologue
    .line 497
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 498
    :cond_0
    const/4 v0, 0x0

    .line 506
    :cond_1
    return v0

    .line 500
    :cond_2
    const/4 v0, 0x0

    .line 501
    .local v0, "count":I
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/service/download/DownloadInfo;

    .line 502
    .local v1, "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v3, v1, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getNextDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;
    .locals 8
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 454
    invoke-virtual {p0, p1}, Lc8/ben;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v3

    .line 455
    .local v3, "thisinfo":Lcom/youku/service/download/DownloadInfo;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    .local v2, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/service/download/DownloadInfo;>;"
    if-nez v3, :cond_1

    move-object v0, v4

    .line 489
    :cond_0
    :goto_0
    return-object v0

    .line 459
    :cond_1
    const/4 v1, 0x0

    .line 460
    .local v1, "isthis":Z
    invoke-virtual {v3}, Lcom/youku/service/download/DownloadInfo;->isSeries()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 461
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 462
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    iget-object v6, v0, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    iget-object v7, v3, Lcom/youku/service/download/DownloadInfo;->showid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 463
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 466
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_3
    const/4 v5, 0x0

    sput v5, Lcom/youku/service/download/DownloadInfo;->compareBy:I

    .line 467
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 468
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 469
    .restart local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    if-nez v1, :cond_0

    .line 471
    iget-object v6, v0, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 472
    const/4 v1, 0x1

    goto :goto_2

    .line 476
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_5
    invoke-virtual {p0}, Lc8/ben;->getDownloadedData()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 477
    .restart local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 479
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_6
    const/4 v5, 0x1

    sput v5, Lcom/youku/service/download/DownloadInfo;->compareBy:I

    .line 480
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 481
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 482
    .restart local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/youku/service/download/DownloadInfo;->isSeries()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 484
    :cond_8
    iget-object v6, v3, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    iget-object v7, v0, Lcom/youku/service/download/DownloadInfo;->videoid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 485
    const/4 v1, 0x1

    goto :goto_4

    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_9
    move-object v0, v4

    .line 489
    goto/16 :goto_0
.end method

.method public hasLivingTask()Z
    .locals 4

    .prologue
    .line 963
    invoke-virtual {p0}, Lc8/ben;->getDownloadingData()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/service/download/DownloadInfo;

    .line 964
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    invoke-virtual {v0}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v1

    .line 965
    .local v1, "state":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v3, 0x5

    if-eq v1, v3, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 970
    :cond_1
    const/4 v2, 0x1

    .line 974
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    .end local v1    # "state":I
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasUnwatchedVideo()Z
    .locals 4

    .prologue
    .line 1305
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "download.video.unwatched"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1306
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isScreenAwakeEnabled()Z
    .locals 1

    .prologue
    .line 1248
    :try_start_0
    sget-object v0, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v0}, Lc8/Aen;->isScreenAwakeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1252
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {}, Lc8/Egn;->isScreenAwakeEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isVipAccMode()Z
    .locals 1

    .prologue
    .line 1337
    iget-boolean v0, p0, Lc8/ben;->enableVipModel:Z

    return v0
.end method

.method public markVideoWatched(Ljava/lang/String;)V
    .locals 4
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 1310
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v2, "download.video.unwatched"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1311
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1312
    return-void
.end method

.method public pauseAllTask()V
    .locals 2

    .prologue
    .line 936
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 937
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "pauseAllTask"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 939
    return-void
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 887
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->pause(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    :goto_0
    return-void

    .line 888
    :catch_0
    move-exception v0

    .line 889
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 896
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :goto_0
    return-void

    .line 897
    :catch_0
    move-exception v0

    .line 898
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public registerOnChangedListener(Lc8/Ben;)V
    .locals 1
    .param p1, "listener"    # Lc8/Ben;

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .line 305
    sget-object v0, Lc8/ben;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_0
    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 2
    .param p1, "apiValue"    # Ljava/lang/String;

    .prologue
    .line 1207
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setApi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :goto_0
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCanUse3GDownload(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    .line 1105
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setCanUse3GDownload(Z)V

    .line 1106
    const-string/jumbo v1, "allowCache3G"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Iin;->commitPreference(Ljava/lang/String;Ljava/lang/Boolean;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1110
    :goto_0
    return-void

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCookie(Ljava/lang/String;)V
    .locals 2
    .param p1, "cookie"    # Ljava/lang/String;

    .prologue
    .line 1223
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setCookie(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setCurrentDownloadSDCardPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1085
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setCurrentDownloadSDCardPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    const-string/jumbo v1, "download_file_path"

    invoke-static {v1, p1}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    return-void

    .line 1086
    :catch_0
    move-exception v0

    .line 1087
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDownloadFormat(I)V
    .locals 2
    .param p1, "format"    # I

    .prologue
    .line 1148
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setDownloadFormat(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1152
    :goto_0
    const-string/jumbo v1, "definition"

    invoke-static {v1, p1}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 1153
    return-void

    .line 1149
    :catch_0
    move-exception v0

    .line 1150
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDownloadLanguage(I)V
    .locals 2
    .param p1, "language"    # I

    .prologue
    .line 1168
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setDownloadLanguage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :goto_0
    const-string/jumbo v1, "cachepreferlanguage"

    invoke-static {v1, p1}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 1173
    return-void

    .line 1169
    :catch_0
    move-exception v0

    .line 1170
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setDownloadNotify(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 1189
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setDownloadNotify(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1194
    :goto_0
    invoke-static {p1}, Lc8/Egn;->setTaskFinishSoundEnabled(Z)V

    .line 1195
    return-void

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setLog(Ljava/lang/String;)V
    .locals 2
    .param p1, "logValue"    # Ljava/lang/String;

    .prologue
    .line 1215
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setApi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1219
    :goto_0
    return-void

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setOnChangeListener(Lc8/Ben;)V
    .locals 1
    .param p1, "listener"    # Lc8/Ben;

    .prologue
    .line 296
    sget-object v0, Lc8/ben;->listener:Lc8/Ben;

    invoke-virtual {p0, v0}, Lc8/ben;->unregisterOnChangeListener(Lc8/Ben;)V

    .line 297
    invoke-virtual {p0, p1}, Lc8/ben;->registerOnChangedListener(Lc8/Ben;)V

    .line 299
    sput-object p1, Lc8/ben;->listener:Lc8/Ben;

    .line 301
    return-void
.end method

.method public setP2p_switch(IZZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "downloadSwitch"    # Z
    .param p3, "playSwitch"    # Z

    .prologue
    .line 1114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "p2p_switch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--p2p_download"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "--p2p_play"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1116
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1, p2, p3}, Lc8/Aen;->setP2p_switch(IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1120
    :goto_0
    const-string/jumbo v1, "p2p_switch"

    invoke-static {v1, p1}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 1121
    const-string/jumbo v1, "p2p_download"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1122
    const-string/jumbo v1, "p2p_play"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1133
    return-void

    .line 1117
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setScreenAwakeEnabled(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1239
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->setScreenAwakeEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    :goto_0
    return-void

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1242
    invoke-static {p1}, Lc8/Egn;->setScreenAwakeEnabled(Z)V

    goto :goto_0
.end method

.method public setTimeStamp(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 1199
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1, p2}, Lc8/Aen;->setTimeStamp(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1203
    :goto_0
    return-void

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startAllTask()V
    .locals 2

    .prologue
    .line 946
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 947
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "startAllTask"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 948
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 949
    return-void
.end method

.method public startAllTaskAuto()V
    .locals 3

    .prologue
    .line 952
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 953
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "startAllTask"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 954
    const-string/jumbo v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 955
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 956
    return-void
.end method

.method public startDownload(Ljava/lang/String;)V
    .locals 2
    .param p1, "taskId"    # Ljava/lang/String;

    .prologue
    .line 878
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1, p1}, Lc8/Aen;->down(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startNewTask()V
    .locals 3

    .prologue
    .line 916
    :try_start_0
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 917
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "startNewTask"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 918
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Download_Manager"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopAllTask()V
    .locals 2

    .prologue
    .line 926
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v0

    .line 927
    .local v0, "i":Landroid/content/Intent;
    const-string/jumbo v1, "stopAllTask"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    sget-object v1, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 929
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 288
    :try_start_0
    sget-object v1, Lc8/ben;->downloadService:Lc8/Aen;

    invoke-interface {v1}, Lc8/Aen;->unregister()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "Download_Manager"

    invoke-static {v1, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unregisterOnChangeListener(Lc8/Ben;)V
    .locals 1
    .param p1, "listener"    # Lc8/Ben;

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .line 310
    sget-object v0, Lc8/ben;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    return-void
.end method

.method public unwatchedVideoSince(J)Ljava/util/List;
    .locals 7
    .param p1, "timeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    sget-object v4, Lc8/ddn;->context:Landroid/content/Context;

    const-string/jumbo v5, "download.video.unwatched"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1294
    .local v2, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1295
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/youku/service/download/DownloadInfo;>;"
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1296
    .local v3, "vid":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lc8/ben;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    .line 1297
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    if-eqz v0, :cond_0

    .line 1298
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1301
    .end local v0    # "info":Lcom/youku/service/download/DownloadInfo;
    .end local v3    # "vid":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 904
    :try_start_0
    invoke-static {}, Lc8/ben;->makeIntent()Landroid/content/Intent;

    move-result-object v1

    .line 905
    .local v1, "i":Landroid/content/Intent;
    const-string/jumbo v2, "startNewTask"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    const-string/jumbo v2, "vid"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 907
    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    sget-object v2, Lc8/ddn;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 912
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Download_Manager"

    invoke-static {v2, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
