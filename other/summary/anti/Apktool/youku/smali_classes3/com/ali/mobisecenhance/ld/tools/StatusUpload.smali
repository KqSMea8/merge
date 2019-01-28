.class public Lcom/ali/mobisecenhance/ld/tools/StatusUpload;
.super Ljava/lang/Object;
.source "StatusUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;


# instance fields
.field private mEnhanceConfig:Lcom/ali/mobisecenhance/ld/ConfigInfo;

.field private mIsFirstStartUp:Z

.field private m_baseDir:Ljava/lang/String;

.field private m_context:Landroid/content/Context;

.field private m_uploadDir:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    .line 17
    :cond_0
    const-class v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLcom/ali/mobisecenhance/ld/ConfigInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isFirstStartUp"    # Z
    .param p3, "enhanceConfig"    # Lcom/ali/mobisecenhance/ld/ConfigInfo;
    .param p4, "uploadDir"    # Ljava/lang/String;
    .param p5, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_context:Landroid/content/Context;

    .line 34
    iput-boolean p2, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->mIsFirstStartUp:Z

    .line 35
    iput-object p3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->mEnhanceConfig:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    .line 36
    sget-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enhance config is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->mEnhanceConfig:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p4, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_baseDir:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V
    .locals 0
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->upLoadContext()V

    return-void
.end method

.method static synthetic access$100(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)Z
    .locals 1
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->mIsFirstStartUp:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V
    .locals 0
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->recordStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V
    .locals 0
    .param p0, "x0"    # Lcom/ali/mobisecenhance/ld/tools/StatusUpload;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->uploadInternal()V

    return-void
.end method

.method private checkFirstUpLoadDone()Z
    .locals 6

    .prologue
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "upDone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "checkfile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 111
    .local v1, "result":Z
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  exisit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v1
.end method

.method private checkLastUpLoadDone()Z
    .locals 6

    .prologue
    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "last"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "upDone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "checkfile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    .line 101
    .local v1, "result":Z
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  exisit "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v1
.end method

.method private createUpDoneFile(Z)V
    .locals 6
    .param p1, "isFirstUpload"    # Z

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "upDoneFile":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "first"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "upDone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    :goto_0
    sget-object v2, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create uploaddone file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_1
    return-void

    .line 224
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "last"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "upDone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private createUploadingFile()V
    .locals 4

    .prologue
    .line 176
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    const-string v3, "uploading"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .local v1, "uploading":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private deleteUploadingFile()V
    .locals 3

    .prologue
    .line 170
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    const-string v2, "uploading"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .local v0, "uploading":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 173
    return-void
.end method

.method private getNativeStatus()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;

    invoke-direct {v1, p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$WaitStatus;-><init>(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method private isHasLastStatus()Z
    .locals 3

    .prologue
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "recordPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private isNeedUploadFirst()Z
    .locals 3

    .prologue
    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "upDone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "uploadFirst":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x0

    .line 209
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUploading()Z
    .locals 3

    .prologue
    .line 190
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    const-string v2, "uploading"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .local v0, "uploading":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/4 v1, 0x1

    .line 196
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private recordStatus()V
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, "recordPath":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->mIsFirstStartUp:Z

    if-eqz v1, :cond_0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "first"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    :goto_0
    const-string v1, "Obfuscator no Status"

    invoke-static {v0, v1}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->recordStatusInFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void

    .line 73
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_uploadDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "last"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static recordStatusInFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 47
    .local v3, "record":Ljava/io/File;
    sget-object v4, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v5, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "record file path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v4, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v5, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "record file content "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 52
    new-instance v2, Ljava/io/FileWriter;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 53
    .local v2, "fw":Ljava/io/FileWriter;
    new-instance v0, Ljava/io/BufferedWriter;

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 54
    .local v0, "bw":Ljava/io/BufferedWriter;
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 57
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .end local v0    # "bw":Ljava/io/BufferedWriter;
    .end local v2    # "fw":Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 59
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private upLoadContext()V
    .locals 9

    .prologue
    .line 245
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_context:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ld/tools/CrashMonitor;->isPermision(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    sget-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    const-string v3, "Permison not allow do Upload ,we have to Stop..."

    invoke-virtual {v0, v1, v3}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 252
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "device_imei":Ljava/lang/String;
    :goto_1
    const/4 v8, 0x0

    .line 255
    .local v8, "uploadStatus":Z
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->isNeedUploadFirst()Z

    move-result v4

    .line 257
    .local v4, "isNeedUploadFirst":Z
    sget-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enhanceVersion is  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->mEnhanceConfig:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    iget-object v5, v5, Lcom/ali/mobisecenhance/ld/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    sget-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isNeedUploadFirst is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_context:Landroid/content/Context;

    iget-object v1, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->m_baseDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->mEnhanceConfig:Lcom/ali/mobisecenhance/ld/ConfigInfo;

    const-string v5, "OBFUSCATOR_STATUS"

    const-string v6, "OBFUSCATOR_NATIVE_STATUS"

    invoke-static/range {v0 .. v6}, Lcom/ali/mobisecenhance/ld/tools/BaseUpLoad;->reportStartUpInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ali/mobisecenhance/ld/ConfigInfo;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 263
    sget-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "upload status "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz v8, :cond_1

    .line 266
    invoke-direct {p0, v4}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->createUpDoneFile(Z)V

    .line 269
    :cond_1
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->deleteUploadingFile()V

    goto/16 :goto_0

    .line 252
    .end local v2    # "device_imei":Ljava/lang/String;
    .end local v4    # "isNeedUploadFirst":Z
    .end local v8    # "uploadStatus":Z
    :cond_2
    const-string v2, "null"

    goto :goto_1
.end method

.method private uploadInThread()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$1;

    invoke-direct {v1, p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload$1;-><init>(Lcom/ali/mobisecenhance/ld/tools/StatusUpload;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 135
    return-void
.end method

.method private uploadInternal()V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    sget-object v0, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v1, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->TAG:Ljava/lang/String;

    const-string v2, "Uploading just return"

    invoke-virtual {v0, v1, v2}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->checkFirstUpLoadDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->createUploadingFile()V

    .line 148
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->uploadInThread()V

    .line 150
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->isHasLastStatus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->recordStatus()V

    goto :goto_0

    .line 156
    :cond_2
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->checkLastUpLoadDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->createUploadingFile()V

    .line 158
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->uploadInThread()V

    goto :goto_0
.end method


# virtual methods
.method public doUpload()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/ali/mobisecenhance/ld/tools/StatusUpload;->getNativeStatus()V

    .line 92
    return-void
.end method
