.class public interface abstract Lc8/ven;
.super Ljava/lang/Object;
.source "IDownload.java"


# static fields
.field public static final ACTION_CREATE_DOWNLOAD_ALL_READY:Ljava/lang/String; = "com.youku.service.download.ACTION_CREATE_DOWNLOAD_ALL_READY"

.field public static final ACTION_DOWNLOAD_FINISH:Ljava/lang/String; = "com.youku.service.download.ACTION_DOWNLOAD_FINISH"

.field public static final ACTION_DOWNLOAD_TRACKER:Ljava/lang/String; = "android.intent.action.DOWNLOAD_TRACKER"

.field public static final ACTION_SDCARD_CHANGED:Ljava/lang/String; = "com.youku.service.download.ACTION_SDCARD_CHANGED"

.field public static final ACTION_SDCARD_PATH_CHANGED:Ljava/lang/String; = "com.youku.service.download.ACTION_SDCARD_PATH_CHANGED"

.field public static final ACTION_THUMBNAIL_COMPLETE:Ljava/lang/String; = "com.youku.service.download.ACTION_THUMBNAIL_COMPLETE"

.field public static final FILE_NAME:Ljava/lang/String; = "info"

.field public static final FILE_PATH:Ljava/lang/String; = "/youku/offlinedata/"

.field public static final KEY_CREATE_DOWNLOAD_IS_NEED_REFRESH:Ljava/lang/String; = "isNeedRefresh"

.field public static final KEY_LAST_NOTIFY_TASKID:Ljava/lang/String; = "download_last_notify_taskid"

.field public static final NOTIFY_ID:I = 0x7fe

.field public static final THUMBNAIL_NAME:Ljava/lang/String; = "1.png"


# virtual methods
.method public abstract canDownloadNotify()Z
.end method

.method public abstract canUse3GDownload()Z
.end method

.method public abstract createDownload(Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
.end method

.method public abstract createDownload([Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V
.end method

.method public abstract createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lc8/Cen;)V
.end method

.method public abstract createDownloadWithLoginAndFreeFlowDialog(Landroid/app/Activity;[Ljava/lang/String;[Ljava/lang/String;Lc8/Cen;)V
.end method

.method public abstract deleteDownloadeds(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/service/download/DownloadInfo;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract deleteDownloadingVideos(Ljava/util/Map;)Z
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
.end method

.method public abstract existsDownloadInfo(Ljava/lang/String;)Z
.end method

.method public abstract getCurrentDownloadSDCardPath()Ljava/lang/String;
.end method

.method public abstract getDownloadFormat()I
.end method

.method public abstract getDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;
.end method

.method public abstract getDownloadInfo(Ljava/lang/String;I)Lcom/youku/service/download/DownloadInfo;
.end method

.method public abstract getDownloadInfoListById(Ljava/lang/String;)Ljava/util/ArrayList;
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
.end method

.method public abstract getDownloadLanguage()I
.end method

.method public abstract getDownloadedData()Ljava/util/HashMap;
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
.end method

.method public abstract getDownloadingData()Ljava/util/HashMap;
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
.end method

.method public abstract getNextDownloadInfo(Ljava/lang/String;)Lcom/youku/service/download/DownloadInfo;
.end method

.method public abstract hasLivingTask()Z
.end method

.method public abstract isDownloadFinished(Ljava/lang/String;)Z
.end method

.method public abstract makeDownloadInfoFile(Lcom/youku/service/download/DownloadInfo;)Z
.end method

.method public abstract pauseAllTask()V
.end method

.method public abstract pauseDownload(Ljava/lang/String;)V
.end method

.method public abstract refresh()V
.end method

.method public abstract setCanUse3GDownload(Z)V
.end method

.method public abstract setCurrentDownloadSDCardPath(Ljava/lang/String;)V
.end method

.method public abstract setDownloadFormat(I)V
.end method

.method public abstract setDownloadLanguage(I)V
.end method

.method public abstract setDownloadNotify(Z)V
.end method

.method public abstract setP2p_switch(IZZ)V
.end method

.method public abstract startAllTask()V
.end method

.method public abstract startDownload(Ljava/lang/String;)V
.end method

.method public abstract startNewTask()V
.end method

.method public abstract stopAllTask()V
.end method
