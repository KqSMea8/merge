.class public abstract Lc8/Jdn;
.super Ljava/lang/Object;
.source "BaseDownload.java"

# interfaces
.implements Lc8/ven;


# static fields
.field protected static sdCard_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/vfn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;
    .locals 7
    .param p0, "savePath"    # Ljava/lang/String;

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "info"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Lc8/OWc;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 69
    .local v3, "s":Ljava/lang/String;
    invoke-static {v3}, Lcom/youku/service/download/DownloadInfo;->jsonToDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v2

    .line 70
    .local v2, "i":Lcom/youku/service/download/DownloadInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 71
    iput-object p0, v2, Lcom/youku/service/download/DownloadInfo;->savePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i":Lcom/youku/service/download/DownloadInfo;
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "Download_BaseDownload"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDownloadInfoBySavePath()#savePath:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final existsDownloadInfo(Ljava/lang/String;)Z
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lc8/Jdn;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;
    .locals 4
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-virtual {p0}, Lc8/Jdn;->hasStoragePath()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lc8/Jdn;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lc8/Jdn;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/vfn;

    iget-object v2, v2, Lc8/vfn;->path:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/youku/offlinedata/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/Jdn;->getDownloadInfoBySavePath(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v1

    .line 53
    .local v1, "info":Lcom/youku/service/download/DownloadInfo;
    if-eqz v1, :cond_0

    iget v2, v1, Lcom/youku/service/download/DownloadInfo;->state:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 58
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    :goto_1
    return-object v1

    .line 51
    .restart local v0    # "i":I
    .restart local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/youku/service/download/DownloadInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public hasStoragePath()Z
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lc8/Jdn;->sdCard_list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lc8/wfn;->getExternalStorageDirectory()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lc8/Jdn;->sdCard_list:Ljava/util/ArrayList;

    .line 85
    :cond_0
    sget-object v0, Lc8/Jdn;->sdCard_list:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lc8/Jdn;->sdCard_list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDownloadFinished(Ljava/lang/String;)Z
    .locals 3
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 44
    invoke-virtual {p0, p1}, Lc8/Jdn;->getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;

    move-result-object v0

    .line 45
    .local v0, "info":Lcom/youku/service/download/DownloadInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/youku/service/download/DownloadInfo;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public makeDownloadInfoFile(Lcom/youku/service/download/DownloadInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/youku/service/download/DownloadInfo;

    .prologue
    .line 90
    invoke-static {p1}, Lc8/oen;->makeDownloadInfoFile(Lcom/youku/service/download/DownloadInfo;)Z

    move-result v0

    return v0
.end method
