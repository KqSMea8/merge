.class public Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;
.super Ljava/lang/Object;
.source "MiniCrashMonitor.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

.field private static final miniCrashInfo:Ljava/lang/String; = "miniCrashInfo"


# instance fields
.field private crashInfoFilePath:Ljava/lang/String;

.field private isUploadCrashInfoDone:Z

.field private mBaseDir:Ljava/lang/String;

.field private m_configs:Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;

.field private m_context:Landroid/content/Context;

.field private m_raw_config:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;Ljava/lang/String;)V
    .locals 6
    .param p1, "basedir"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "info"    # Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;
    .param p4, "raw_config"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->isUploadCrashInfoDone:Z

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "miniCrashInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->m_raw_config:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->m_context:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->mBaseDir:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;

    .line 41
    sget-object v2, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "m_configs.isUpload is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;

    iget-boolean v5, v5, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isUpload:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "crashfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p3, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isUpload:Z

    if-nez v2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;

    invoke-direct {v3, p0}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor$1;-><init>(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 59
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 64
    :cond_2
    :goto_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 66
    iget-boolean v2, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->isUploadCrashInfoDone:Z

    if-eqz v2, :cond_2

    .line 67
    sget-object v2, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete CrashInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->mBaseDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->m_raw_config:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->isUploadCrashInfoDone:Z

    return p1
.end method

.method public static getFileContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 131
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v1, "crashfile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 150
    :goto_0
    return-object v5

    .line 136
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v3, "result":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 139
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 140
    .local v4, "s":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 141
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 146
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "s":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 145
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "s":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 150
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public recordException(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 13
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "logPath"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p2}, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->getFileContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 87
    .local v6, "logContent":Ljava/lang/String;
    sget-object v9, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "logContent is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 91
    .local v8, "writer":Ljava/io/Writer;
    new-instance v7, Ljava/io/PrintWriter;

    invoke-direct {v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 92
    .local v7, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 94
    .local v1, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 96
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {v7}, Ljava/io/PrintWriter;->close()V

    .line 100
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, "infos":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v9, p0, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, "crashFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 104
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 106
    :cond_1
    sget-object v9, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exception infos "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 111
    sget-object v9, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->log:Lcom/ali/mobisecenhance/ld/startup/RecordLog;

    sget-object v10, Lcom/ali/mobisecenhance/ld/startup/MiniCrashMonitor;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "crashFile "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/ali/mobisecenhance/ld/startup/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v4, Ljava/io/FileWriter;

    const/4 v9, 0x0

    invoke-direct {v4, v2, v9}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 113
    .local v4, "fileWritter":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v0, "bufferWritter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 117
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "bufferWritter":Ljava/io/BufferedWriter;
    .end local v4    # "fileWritter":Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 119
    :catch_0
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method
