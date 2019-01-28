.class public final Lc8/cZn;
.super Ljava/lang/Object;
.source "DownloadConfig.java"


# static fields
.field public static DOWNLOAD_PATH:Ljava/lang/String;

.field private static mInstance:Lc8/cZn;


# instance fields
.field private max_download_tasks:I

.field private max_download_threads:I

.field private min_operate_interval:I

.field private recoverDownloadWhenStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/youku/cacheData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "playFunDownload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/cZn;->DOWNLOAD_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v0, p0, Lc8/cZn;->max_download_tasks:I

    .line 20
    iput v0, p0, Lc8/cZn;->max_download_threads:I

    .line 21
    const/16 v0, 0x1f4

    iput v0, p0, Lc8/cZn;->min_operate_interval:I

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/cZn;->recoverDownloadWhenStart:Z

    .line 27
    invoke-static {}, Lc8/cZn;->checkRootPath()V

    .line 28
    return-void
.end method

.method public static checkRootPath()V
    .locals 3

    .prologue
    .line 32
    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lc8/cZn;->DOWNLOAD_PATH:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lc8/cZn;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lc8/cZn;->mInstance:Lc8/cZn;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lc8/cZn;

    invoke-direct {v0}, Lc8/cZn;-><init>()V

    sput-object v0, Lc8/cZn;->mInstance:Lc8/cZn;

    .line 91
    :cond_0
    sget-object v0, Lc8/cZn;->mInstance:Lc8/cZn;

    return-object v0
.end method

.method public static getSubThreadRefrashInterval(I)J
    .locals 2
    .param p0, "fileSize"    # I

    .prologue
    const/high16 v0, 0x1400000

    .line 43
    if-gt p0, v0, :cond_0

    .line 45
    const-wide/16 v0, 0x7d0

    .line 51
    :goto_0
    return-wide v0

    .line 46
    :cond_0
    if-le p0, v0, :cond_1

    const/high16 v0, 0x6400000

    if-gt p0, v0, :cond_1

    .line 48
    const-wide/16 v0, 0x2710

    goto :goto_0

    .line 51
    :cond_1
    const-wide/16 v0, 0x4e20

    goto :goto_0
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/youku/cacheData/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "playFunDownload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/cZn;->DOWNLOAD_PATH:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lc8/Myo;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "playFunDownload/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lc8/cZn;->DOWNLOAD_PATH:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getMax_download_tasks()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lc8/cZn;->max_download_tasks:I

    return v0
.end method

.method public getMax_download_threads()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lc8/cZn;->max_download_threads:I

    return v0
.end method

.method public getMin_operate_interval()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lc8/cZn;->min_operate_interval:I

    return v0
.end method

.method public isRecoverDownloadWhenStart()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lc8/cZn;->recoverDownloadWhenStart:Z

    return v0
.end method

.method public setMax_download_tasks(I)V
    .locals 0
    .param p1, "maxTask"    # I

    .prologue
    .line 99
    iput p1, p0, Lc8/cZn;->max_download_tasks:I

    .line 100
    return-void
.end method

.method public setMax_download_threads(I)V
    .locals 0
    .param p1, "maxThread"    # I

    .prologue
    .line 111
    iput p1, p0, Lc8/cZn;->max_download_threads:I

    .line 112
    return-void
.end method

.method public setMin_operate_interval(I)V
    .locals 0
    .param p1, "minOpTime"    # I

    .prologue
    .line 123
    iput p1, p0, Lc8/cZn;->min_operate_interval:I

    .line 124
    return-void
.end method

.method public setRecoverDownloadWhenStart(Z)V
    .locals 0
    .param p1, "isRecover"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lc8/cZn;->recoverDownloadWhenStart:Z

    .line 132
    return-void
.end method
