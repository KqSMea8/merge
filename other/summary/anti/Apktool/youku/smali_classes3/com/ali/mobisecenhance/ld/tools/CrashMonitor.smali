.class public Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;
.super Ljava/lang/Object;
.source "CrashMonitor.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field private crashInfoFilePath:Ljava/lang/String;

.field private isUploadCrashInfoDone:Z

.field private mBaseDir:Ljava/lang/String;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private m_configs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

.field private m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 26
    :cond_0
    const-class v0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/ali/mobisecenhance/ld/ConfigInfo;)V
    .locals 1
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "configs"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->isUploadCrashInfoDone:Z

    .line 47
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mBaseDir:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->m_context:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .line 50
    return-void
.end method

.method private UploadLastCrashInfo()V
    .locals 4

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->isNeedUploadCrashInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    iget-boolean v1, v1, Lcom/ali/mobisecenhance/ld/ConfigInfo;->isUpload:Z

    if-eqz v1, :cond_1

    .line 116
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;

    invoke-direct {v2, p0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor$1;-><init>(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 138
    :cond_0
    :goto_0
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 140
    iget-boolean v1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->isUploadCrashInfoDone:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 151
    :cond_1
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mBaseDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;)Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    return-object v0
.end method

.method static synthetic access$302(Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->isUploadCrashInfoDone:Z

    return p1
.end method

.method private native closeNdkCrashCatch()V
.end method

.method private collectJavaCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 252
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 253
    .local v2, "writer":Ljava/io/Writer;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 254
    .local v1, "printWriter":Ljava/io/PrintWriter;
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 255
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 256
    .local v0, "cause":Ljava/lang/Throwable;
    :goto_0
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 262
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static native crashTest()V
.end method

.method public static deleteCrashInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Ljava/io/File;

    const-string v1, "CrashInfo"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .local v0, "crashfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 59
    :cond_0
    return-void
.end method

.method public static getCrashInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 66
    new-instance v0, Ljava/io/File;

    const-string v1, "CrashInfo"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "crashfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 71
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/util/Util;->readTxtFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleException(Ljava/lang/Throwable;)V
    .locals 10
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 209
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mBaseDir:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v5, "path":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 211
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 216
    :cond_0
    invoke-direct {p0, p1}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->collectJavaCrashInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, "infos":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v1, "crashFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 219
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 221
    :cond_1
    sget-object v6, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v7, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception infos "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 226
    sget-object v6, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v7, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "crashFile "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v3, Ljava/io/FileWriter;

    const/4 v6, 0x0

    invoke-direct {v3, v1, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 228
    .local v3, "fileWritter":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 229
    .local v0, "bufferWritter":Ljava/io/BufferedWriter;
    invoke-virtual {v0, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "bufferWritter":Ljava/io/BufferedWriter;
    .end local v3    # "fileWritter":Ljava/io/FileWriter;
    :goto_0
    sget-object v6, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v7, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->TAG:Ljava/lang/String;

    const-string v8, "begin exit this process  SS"

    invoke-virtual {v6, v7, v8}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 240
    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/System;->exit(I)V

    .line 242
    return-void

    .line 232
    :catch_0
    move-exception v2

    .line 233
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private isNeedUploadCrashInfo()Z
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "crashfile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x1

    .line 84
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPermision(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 90
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 92
    :cond_1
    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v1, v3

    const-string v4, "android.permission.INTERNET"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v1, v4

    .line 98
    .local v1, "permison_list":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_0

    .line 100
    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 102
    goto :goto_0

    .line 98
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private native openNdkCrashCatch(Ljava/lang/String;)V
.end method


# virtual methods
.method public closeCrashMonitor()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    iget-boolean v0, v0, Lcom/ali/mobisecenhance/ld/ConfigInfo;->isUpload:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 183
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->closeNdkCrashCatch()V

    .line 186
    :cond_0
    return-void
.end method

.method public openCrashMonitor()V
    .locals 2

    .prologue
    .line 162
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mBaseDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CrashInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->m_configs:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    iget-boolean v0, v0, Lcom/ali/mobisecenhance/ld/ConfigInfo;->isUpload:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 168
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->UploadLastCrashInfo()V

    .line 169
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->crashInfoFilePath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->openNdkCrashCatch(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 192
    invoke-direct {p0, p2}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->handleException(Ljava/lang/Throwable;)V

    .line 194
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 197
    :cond_0
    return-void
.end method
