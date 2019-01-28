.class public Lcom/youku/service/update/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Fin;
    }
.end annotation


# static fields
.field private static final APK_SAVE_PATH:Ljava/lang/String;

.field public static final DOWN_FAIL:I = 0x4

.field public static final DOWN_OVER:I = 0x3

.field public static final DOWN_START:I = 0x1

.field public static final DOWN_UPDATE:I = 0x2

.field public static final MESSAGE_DOWNLOAD_CANCEL:I = 0x5

.field public static final MESSAGE_DOWNLOAD_PAUSE:I = 0x1

.field private static TAG:Ljava/lang/String;

.field public static final UPDATE_HANDLER:I


# instance fields
.field private content:Ljava/lang/String;

.field private downLoadUrl:Ljava/lang/String;

.field private downloadThread:Lc8/Fin;

.field private isCancelDownload:Z

.field private isDownLoading:Z

.field private mApkFile:Ljava/io/File;

.field private mClientMessenger:Landroid/os/Messenger;

.field private mDownloadNotification:Lc8/yin;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field public notification:Landroid/app/Notification;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field private progress:I

.field private type:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const-string/jumbo v0, "update_tag"

    sput-object v0, Lcom/youku/service/update/UpdateService;->TAG:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/youku/apkpath/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/youku/service/update/UpdateService;->APK_SAVE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    new-instance v0, Lc8/yin;

    invoke-direct {v0}, Lc8/yin;-><init>()V

    iput-object v0, p0, Lcom/youku/service/update/UpdateService;->mDownloadNotification:Lc8/yin;

    .line 50
    iput-object v1, p0, Lcom/youku/service/update/UpdateService;->notification:Landroid/app/Notification;

    .line 55
    iput-object v1, p0, Lcom/youku/service/update/UpdateService;->mClientMessenger:Landroid/os/Messenger;

    .line 60
    iput-object v1, p0, Lcom/youku/service/update/UpdateService;->downloadThread:Lc8/Fin;

    .line 61
    iput-boolean v2, p0, Lcom/youku/service/update/UpdateService;->isDownLoading:Z

    .line 79
    iput-boolean v2, p0, Lcom/youku/service/update/UpdateService;->isCancelDownload:Z

    .line 83
    new-instance v0, Lc8/Ein;

    invoke-direct {v0, p0}, Lc8/Ein;-><init>(Lcom/youku/service/update/UpdateService;)V

    iput-object v0, p0, Lcom/youku/service/update/UpdateService;->mHandler:Landroid/os/Handler;

    .line 217
    return-void
.end method

.method public static synthetic access$000(Lcom/youku/service/update/UpdateService;)Landroid/os/Messenger;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->mClientMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public static synthetic access$002(Lcom/youku/service/update/UpdateService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # Landroid/os/Messenger;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/service/update/UpdateService;->mClientMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/youku/service/update/UpdateService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/youku/service/update/UpdateService;->isDownLoading()Z

    move-result v0

    return v0
.end method

.method public static synthetic access$1000(Lcom/youku/service/update/UpdateService;)Lc8/Fin;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->downloadThread:Lc8/Fin;

    return-object v0
.end method

.method public static synthetic access$1002(Lcom/youku/service/update/UpdateService;Lc8/Fin;)Lc8/Fin;
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # Lc8/Fin;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/service/update/UpdateService;->downloadThread:Lc8/Fin;

    return-object p1
.end method

.method public static synthetic access$1102(Lcom/youku/service/update/UpdateService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # Z
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/youku/service/update/UpdateService;->isDownLoading:Z

    return p1
.end method

.method public static synthetic access$1200(Lcom/youku/service/update/UpdateService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/youku/service/update/UpdateService;->sendToClient(I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/youku/service/update/UpdateService;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/youku/service/update/UpdateService;->installApk()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/youku/service/update/UpdateService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/youku/service/update/UpdateService;->createFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic access$1500(Lcom/youku/service/update/UpdateService;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->mApkFile:Ljava/io/File;

    return-object v0
.end method

.method public static synthetic access$1600(Lcom/youku/service/update/UpdateService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/youku/service/update/UpdateService;->isCancelDownload:Z

    return v0
.end method

.method public static synthetic access$1700(Lcom/youku/service/update/UpdateService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic access$200()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lcom/youku/service/update/UpdateService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->downLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$302(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/service/update/UpdateService;->downLoadUrl:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->version:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$402(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/service/update/UpdateService;->version:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$500(Lcom/youku/service/update/UpdateService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->content:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$502(Lcom/youku/service/update/UpdateService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput-object p1, p0, Lcom/youku/service/update/UpdateService;->content:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$600(Lcom/youku/service/update/UpdateService;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/youku/service/update/UpdateService;->type:I

    return v0
.end method

.method public static synthetic access$602(Lcom/youku/service/update/UpdateService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput p1, p0, Lcom/youku/service/update/UpdateService;->type:I

    return p1
.end method

.method public static synthetic access$700(Lcom/youku/service/update/UpdateService;)I
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget v0, p0, Lcom/youku/service/update/UpdateService;->progress:I

    return v0
.end method

.method public static synthetic access$702(Lcom/youku/service/update/UpdateService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .param p1, "x1"    # I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iput p1, p0, Lcom/youku/service/update/UpdateService;->progress:I

    return p1
.end method

.method public static synthetic access$800(Lcom/youku/service/update/UpdateService;)Lc8/yin;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->mDownloadNotification:Lc8/yin;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/youku/service/update/UpdateService;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lcom/youku/service/update/UpdateService;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private static compatUri(Landroid/content/Context;Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 369
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 370
    const-string/jumbo v3, "com.youku.phone.fileprovider"

    invoke-static {p0, v3, p2}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 371
    .local v0, "fileUri":Landroid/net/Uri;
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 372
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 374
    .local v2, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 375
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v0, v5}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    goto :goto_0

    .line 378
    .end local v0    # "fileUri":Landroid/net/Uri;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 380
    .restart local v0    # "fileUri":Landroid/net/Uri;
    :cond_1
    return-object v0
.end method

.method private createFile()Ljava/io/File;
    .locals 5

    .prologue
    .line 329
    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/youku/service/update/UpdateService;->APK_SAVE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/youku/service/update/UpdateService;->deleteFiles(Ljava/io/File;)Z

    .line 333
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 335
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/youku/service/update/UpdateService;->APK_SAVE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "youku_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/service/update/UpdateService;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/youku/service/update/UpdateService;->mApkFile:Ljava/io/File;

    .line 336
    iget-object v2, p0, Lcom/youku/service/update/UpdateService;->mApkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "f":Ljava/io/File;
    :goto_0
    iget-object v2, p0, Lcom/youku/service/update/UpdateService;->mApkFile:Ljava/io/File;

    return-object v2

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/youku/service/update/UpdateService;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/youku/service/update/UpdateService;->TAG:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static deleteFiles(Ljava/io/File;)Z
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 384
    if-nez p0, :cond_1

    .line 394
    :cond_0
    return v3

    .line 386
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 388
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    .line 389
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 390
    aget-object v2, v0, v1

    invoke-static {v2}, Lc8/bzo;->deleteFile(Ljava/io/File;)Z

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private installApk()V
    .locals 4

    .prologue
    .line 360
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/youku/service/update/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/youku/service/update/UpdateService;->mApkFile:Ljava/io/File;

    invoke-static {v2, v0, v3}, Lcom/youku/service/update/UpdateService;->compatUri(Landroid/content/Context;Landroid/content/Intent;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 362
    .local v1, "uri":Landroid/net/Uri;
    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 364
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 365
    invoke-virtual {p0, v0}, Lcom/youku/service/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    .line 366
    return-void
.end method

.method private isDownLoading()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->downloadThread:Lc8/Fin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/service/update/UpdateService;->downloadThread:Lc8/Fin;

    invoke-virtual {v0}, Lc8/Fin;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendToClient(I)V
    .locals 3
    .param p1, "msgWhat"    # I

    .prologue
    .line 346
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 347
    .local v1, "message":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 348
    iget-object v2, p0, Lcom/youku/service/update/UpdateService;->mClientMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    .line 349
    iget-object v2, p0, Lcom/youku/service/update/UpdateService;->mClientMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/youku/service/update/UpdateService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 209
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/youku/service/update/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/youku/service/update/UpdateService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 211
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 202
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 204
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 191
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 197
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public setCancelDownload()V
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/youku/service/update/UpdateService;->isCancelDownload:Z

    .line 399
    return-void
.end method
