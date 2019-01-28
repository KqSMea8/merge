.class public Lc8/tUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qUf;,
        Lc8/pUf;,
        Lc8/rUf;,
        Lc8/sUf;
    }
.end annotation


# static fields
.field private static final ANDFIX_TYPE:Ljava/lang/String; = "andfix"

.field private static final DEFAULT_DIR:Ljava/lang/String; = "hotpatch"

.field private static final DETAULT_TMP_DIR:Ljava/lang/String; = "hotpatch_tmp"

.field private static final DEXPOSED_TYPE:Ljava/lang/String; = "dexposed"

.field private static final HOTPATCH_MD5:Ljava/lang/String; = "hotpatch_md5"

.field private static final HOTPATCH_NEXT_VERSION:Ljava/lang/String; = "hotpatch_next_version"

.field private static final HOTPATCH_PATH:Ljava/lang/String; = "hotpatch_path"

.field public static final HOTPATCH_PRIORITY:Ljava/lang/String; = "hotpatch_priority"

.field private static final HOTPATCH_SIZE:Ljava/lang/String; = "hotpatch_size"

.field private static final HOTPATCH_TYPE:Ljava/lang/String; = "hotpatch_type"

.field private static final HOTPATCH_VERSION:Ljava/lang/String; = "hotpatch_version"

.field private static final JAVA_CRASH_FLAG:Ljava/lang/String; = "is_java_crash"

.field private static final MAIN_DEX:Ljava/lang/String; = "com_taobao_maindex"

.field private static final MAIN_VERSION:Ljava/lang/String; = "main_version"

.field private static final NATIVE_CRASH_FLAG:Ljava/lang/String; = "is_native_crash"

.field private static final PATCHABLE:Ljava/lang/String; = "use_support"

.field private static final TAG:Ljava/lang/String; = "HotPatchManager"

.field private static isBundleMonitor:Z


# instance fields
.field private activityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private isAppForeground:Z

.field private isSettingRunnable:Z

.field private mAndFixManager:Lc8/sNc;

.field private mApp:Landroid/app/Application;

.field private mBundlesPatch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lc8/qUf;",
            ">;"
        }
    .end annotation
.end field

.field private mContentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomDomain:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsAndFixPatchLoaded:Z

.field private mIsAutoLoad:Z

.field private mIsMainProcess:Z

.field private mIsTestMode:Z

.field private mMainDexClassLoader:Ljava/lang/ClassLoader;

.field private mMainVersion:Ljava/lang/String;

.field private mNextPatchVersion:I

.field private mPatchDir:Ljava/lang/String;

.field private mPatchStateListener:Lc8/yUf;

.field private mPatchTmpDir:Ljava/lang/String;

.field private mPatchVersion:I

.field private mQueryAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mSharedPrefrences:Landroid/content/SharedPreferences;

.field private mStartExcuted:Z

.field private mTtid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    sput-boolean v0, Lc8/tUf;->isBundleMonitor:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v1, p0, Lc8/tUf;->mPatchVersion:I

    .line 77
    iput v1, p0, Lc8/tUf;->mNextPatchVersion:I

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/tUf;->mContentMap:Ljava/util/HashMap;

    .line 83
    iput-boolean v2, p0, Lc8/tUf;->mIsAutoLoad:Z

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/tUf;->mQueryAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    iput-boolean v1, p0, Lc8/tUf;->mStartExcuted:Z

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tUf;->mCustomDomain:Ljava/lang/String;

    .line 92
    iput-boolean v1, p0, Lc8/tUf;->mIsAndFixPatchLoaded:Z

    .line 93
    iput-boolean v1, p0, Lc8/tUf;->isSettingRunnable:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    .line 96
    iput-boolean v1, p0, Lc8/tUf;->mIsTestMode:Z

    .line 97
    iput-boolean v2, p0, Lc8/tUf;->mIsMainProcess:Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/tUf;->activityList:Ljava/util/ArrayList;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lc8/iUf;)V
    .locals 0
    .param p1, "x0"    # Lc8/iUf;

    .prologue
    .line 48
    invoke-direct {p0}, Lc8/tUf;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lc8/tUf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/tUf;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lc8/tUf;->isAppForeground:Z

    return p1
.end method

.method static synthetic access$1100(Lc8/tUf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-boolean v0, p0, Lc8/tUf;->mIsAndFixPatchLoaded:Z

    return v0
.end method

.method static synthetic access$1200(Lc8/tUf;)Z
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-boolean v0, p0, Lc8/tUf;->isSettingRunnable:Z

    return v0
.end method

.method static synthetic access$1202(Lc8/tUf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/tUf;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lc8/tUf;->isSettingRunnable:Z

    return p1
.end method

.method static synthetic access$1300(Lc8/tUf;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lc8/tUf;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lc8/tUf;->killChildProcesses(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1400(Lc8/tUf;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/tUf;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lc8/tUf;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$400(Lc8/tUf;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lc8/tUf;)Lc8/sNc;
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/tUf;->mAndFixManager:Lc8/sNc;

    return-object v0
.end method

.method static synthetic access$600(Lc8/tUf;)I
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget v0, p0, Lc8/tUf;->mPatchVersion:I

    return v0
.end method

.method static synthetic access$702(Lc8/tUf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/tUf;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lc8/tUf;->mIsAutoLoad:Z

    return p1
.end method

.method static synthetic access$800(Lc8/tUf;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/tUf;->mQueryAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$900(Lc8/tUf;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lc8/tUf;

    .prologue
    .line 48
    iget-object v0, p0, Lc8/tUf;->activityList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanInvalidPreferences()V
    .locals 4

    .prologue
    .line 337
    iget-object v1, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 338
    iget-object v1, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    .line 340
    :cond_0
    iget-object v1, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "main_version"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    .local v0, "lastMainVersion":Ljava/lang/String;
    iget-object v1, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    invoke-virtual {p0}, Lc8/tUf;->cleanSharePreferences()V

    .line 343
    invoke-direct {p0}, Lc8/tUf;->cleanPatchTmpDir()V

    .line 345
    :cond_1
    return-void
.end method

.method private cleanPatchDirs(Z)V
    .locals 8
    .param p1, "fource"    # Z

    .prologue
    .line 378
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "hotpatch"

    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 380
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 381
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 382
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_2

    array-length v6, v3

    if-lez v6, :cond_2

    .line 383
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v0, v4

    .line 384
    .local v1, "f":Ljava/io/File;
    if-eqz p1, :cond_1

    .line 385
    invoke-static {v1}, Lc8/IUf;->deleteFile(Ljava/io/File;)Z

    .line 383
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 387
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 389
    :try_start_0
    invoke-static {v1}, Lc8/IUf;->deleteFile(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_1

    .line 396
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_2
    return-void
.end method

.method private cleanPatchTmpDir()V
    .locals 7

    .prologue
    .line 399
    new-instance v2, Ljava/io/File;

    iget-object v6, p0, Lc8/tUf;->mPatchTmpDir:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 400
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 401
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 402
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 403
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v3

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 404
    .local v1, "child":Ljava/io/File;
    invoke-static {v1}, Lc8/IUf;->deleteFile(Ljava/io/File;)Z

    .line 403
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "child":Ljava/io/File;
    .end local v3    # "files":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    return-void
.end method

.method private clearActivityStack()V
    .locals 4

    .prologue
    .line 1002
    iget-object v3, p0, Lc8/tUf;->activityList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1003
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const/4 v0, 0x0

    .line 1004
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_1

    .line 1005
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 1007
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1008
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1011
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    :cond_2
    return-void
.end method

.method private getClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2
    .param p1, "bundleName"    # Ljava/lang/String;

    .prologue
    .line 614
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v0

    check-cast v0, Lc8/hy;

    .line 615
    .local v0, "bundle":Lc8/hy;
    if-nez v0, :cond_0

    .line 616
    const/4 v1, 0x0

    .line 623
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lc8/hy;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0
.end method

.method private getDownloaderPathName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "patchVersion"    # I

    .prologue
    const/4 v1, 0x0

    .line 669
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 670
    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 671
    .local v0, "index":I
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 672
    .local v3, "tmpName":Ljava/lang/String;
    const-string/jumbo v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 673
    .local v2, "s":[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 678
    .end local v0    # "index":I
    .end local v2    # "s":[Ljava/lang/String;
    .end local v3    # "tmpName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getInstance()Lc8/tUf;
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lc8/sUf;->access$100()Lc8/tUf;

    move-result-object v0

    return-object v0
.end method

.method private initAndFix(Ljava/lang/String;Landroid/content/Context;)V
    .locals 6
    .param p1, "mainVersion"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    :try_start_0
    new-instance v2, Lc8/sNc;

    const/4 v3, 0x0

    const-string/jumbo v4, "hotpatch"

    invoke-direct {v2, p2, v3, v4}, Lc8/sNc;-><init>(Landroid/content/Context;Lc8/qNc;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/tUf;->mAndFixManager:Lc8/sNc;

    .line 182
    invoke-static {p2}, Lc8/IUf;->isApkDebugable(Landroid/content/Context;)Z

    move-result v1

    .line 183
    .local v1, "isDebugable":Z
    iget-object v2, p0, Lc8/tUf;->mAndFixManager:Lc8/sNc;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3}, Lc8/sNc;->init(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1    # "isDebugable":Z
    :cond_0
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 186
    const-string/jumbo v2, "initAndFix"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v0}, Lc8/hqf;->getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private killChildProcesses(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 985
    invoke-direct {p0}, Lc8/tUf;->clearActivityStack()V

    .line 987
    :try_start_0
    const-string/jumbo v4, "activity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 988
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 989
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 990
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 991
    .local v2, "b":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 992
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 989
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 999
    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v1    # "am":Landroid/app/ActivityManager;
    .end local v2    # "b":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "i":I
    :catch_0
    move-exception v4

    :cond_1
    return-void
.end method

.method private loadAndFixPatch(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "immediatelyLoad"    # Z

    .prologue
    const/4 v10, 0x1

    .line 541
    iget-object v7, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 542
    iput-boolean v10, p0, Lc8/tUf;->mIsAndFixPatchLoaded:Z

    .line 546
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 547
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "jar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 548
    iget-object v7, p0, Lc8/tUf;->mAndFixManager:Lc8/sNc;

    invoke-virtual {v7}, Lc8/sNc;->initAndfixManager()V

    .line 550
    :cond_1
    new-instance v4, Lc8/rNc;

    invoke-direct {v4, v2}, Lc8/rNc;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    .local v4, "patch":Lc8/rNc;
    if-eqz v4, :cond_8

    .line 557
    invoke-virtual {v4}, Lc8/rNc;->getPatchNames()Ljava/util/Set;

    move-result-object v6

    .line 558
    .local v6, "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 559
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 560
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 562
    .local v5, "patchName":Ljava/lang/String;
    const-string/jumbo v7, "com_taobao_maindex"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 563
    iget-object v7, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    const-string/jumbo v8, "com_taobao_maindex"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p2, :cond_2

    .line 564
    :cond_3
    iget-object v7, p0, Lc8/tUf;->mAndFixManager:Lc8/sNc;

    iget-object v8, p0, Lc8/tUf;->mMainDexClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v7, v5, v4, v8}, Lc8/sNc;->loadPatch(Ljava/lang/String;Lc8/rNc;Ljava/lang/ClassLoader;)V

    .line 565
    iget-object v7, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    const-string/jumbo v8, "com_taobao_maindex"

    new-instance v9, Lc8/qUf;

    invoke-direct {v9, p0, v4, v10}, Lc8/qUf;-><init>(Lc8/tUf;Lc8/rNc;Z)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 569
    :cond_4
    const-string/jumbo v7, "_"

    const-string/jumbo v8, "."

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "bundleName":Ljava/lang/String;
    iget-object v7, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/qUf;

    iget-boolean v7, v7, Lc8/qUf;->isLoaded:Z

    if-eqz v7, :cond_5

    if-eqz p2, :cond_2

    .line 571
    :cond_5
    invoke-direct {p0, v0}, Lc8/tUf;->getClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 572
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_6

    .line 573
    iget-object v7, p0, Lc8/tUf;->mAndFixManager:Lc8/sNc;

    invoke-virtual {v7, v5, v4, v1}, Lc8/sNc;->loadPatch(Ljava/lang/String;Lc8/rNc;Ljava/lang/ClassLoader;)V

    .line 574
    iget-object v7, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    new-instance v8, Lc8/qUf;

    invoke-direct {v8, p0, v4, v10}, Lc8/qUf;-><init>(Lc8/tUf;Lc8/rNc;Z)V

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 577
    :cond_6
    iget-object v7, p0, Lc8/tUf;->mBundlesPatch:Ljava/util/HashMap;

    new-instance v8, Lc8/qUf;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v4, v9}, Lc8/qUf;-><init>(Lc8/tUf;Lc8/rNc;Z)V

    invoke-virtual {v7, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-boolean v7, Lc8/tUf;->isBundleMonitor:Z

    if-nez v7, :cond_7

    .line 580
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v7

    new-instance v8, Lc8/lUf;

    invoke-direct {v8, p0}, Lc8/lUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v7, v8}, Lc8/dy;->addBundleListener(Lc8/Teq;)V

    .line 604
    :cond_7
    sput-boolean v10, Lc8/tUf;->isBundleMonitor:Z

    goto/16 :goto_0

    .line 553
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v4    # "patch":Lc8/rNc;
    .end local v5    # "patchName":Ljava/lang/String;
    .end local v6    # "patchNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 610
    :cond_8
    return-void
.end method

.method private declared-synchronized loadPatch(Ljava/lang/String;ILjava/lang/String;ZZZ)Z
    .locals 14
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "patchVersion"    # I
    .param p3, "patchMd5"    # Ljava/lang/String;
    .param p4, "isDexposed"    # Z
    .param p5, "isStartStage"    # Z
    .param p6, "immediatelyLoad"    # Z

    .prologue
    .line 424
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 425
    const/4 v8, 0x0

    .line 533
    :goto_0
    monitor-exit p0

    return v8

    .line 427
    :cond_0
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 429
    const/4 v8, 0x0

    goto :goto_0

    .line 432
    :cond_1
    if-eqz p4, :cond_2

    .line 433
    const/4 v8, 0x0

    goto :goto_0

    .line 436
    :cond_2
    iget-object v8, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "is_native_crash"

    const-string/jumbo v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 439
    .local v5, "preNativeCrashVersion":Ljava/lang/String;
    iget-object v8, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 440
    iget-boolean v8, p0, Lc8/tUf;->mIsTestMode:Z

    if-eqz v8, :cond_3

    .line 441
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lc8/iUf;

    invoke-direct {v9, p0}, Lc8/iUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 448
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 451
    :cond_4
    iget-object v8, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "is_java_crash"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 452
    .local v6, "problemPatchVersion":I
    move/from16 v0, p2

    if-ne v6, v0, :cond_5

    .line 453
    const/4 v8, 0x0

    goto :goto_0

    .line 456
    :cond_5
    iget-object v8, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "use_support"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_6

    .line 457
    const/4 v8, 0x0

    goto :goto_0

    .line 461
    :cond_6
    :try_start_2
    move/from16 v0, p6

    invoke-direct {p0, p1, v0}, Lc8/tUf;->loadAndFixPatch(Ljava/lang/String;Z)V

    .line 462
    iget-boolean v8, p0, Lc8/tUf;->mIsAndFixPatchLoaded:Z

    if-eqz v8, :cond_7

    if-nez p5, :cond_7

    if-eqz p6, :cond_8

    .line 463
    :cond_7
    const-string/jumbo v8, "Page_hotpatch"

    const-string/jumbo v9, "hotpatch"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v8, v9, v10, v12, v13}, Lc8/zVb;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 464
    move/from16 v0, p2

    iput v0, p0, Lc8/tUf;->mPatchVersion:I

    .line 466
    :cond_8
    move/from16 v0, p2

    iput v0, p0, Lc8/tUf;->mNextPatchVersion:I

    .line 467
    if-eqz p5, :cond_a

    .line 468
    const-string/jumbo v8, "hotpatch_andfix_load"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/IUf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v7, Lc8/GUf;

    invoke-direct {v7}, Lc8/GUf;-><init>()V

    .line 470
    .local v7, "updateData":Lc8/GUf;
    const/4 v8, 0x1

    iput-boolean v8, v7, Lc8/GUf;->success:Z

    .line 471
    const-string/jumbo v8, "hotpatch_andfix_load"

    iput-object v8, v7, Lc8/GUf;->stage:Ljava/lang/String;

    .line 472
    const-string/jumbo v8, "0"

    iput-object v8, v7, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 473
    const-string/jumbo v8, ""

    iput-object v8, v7, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 475
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 476
    iput-object p1, v7, Lc8/GUf;->url:Ljava/lang/String;

    .line 477
    invoke-static {v7}, Lc8/HUf;->stat(Lc8/GUf;)V

    .line 491
    :goto_1
    iget-boolean v8, p0, Lc8/tUf;->mIsTestMode:Z

    if-eqz v8, :cond_9

    .line 492
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lc8/jUf;

    invoke-direct {v9, p0}, Lc8/jUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 499
    :cond_9
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 479
    .end local v7    # "updateData":Lc8/GUf;
    :cond_a
    const-string/jumbo v8, "hotpatch_andfix_load"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/IUf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    new-instance v7, Lc8/GUf;

    invoke-direct {v7}, Lc8/GUf;-><init>()V

    .line 481
    .restart local v7    # "updateData":Lc8/GUf;
    const/4 v8, 0x1

    iput-boolean v8, v7, Lc8/GUf;->success:Z

    .line 482
    const-string/jumbo v8, "hotpatch_andfix_frist_load"

    iput-object v8, v7, Lc8/GUf;->stage:Ljava/lang/String;

    .line 483
    const-string/jumbo v8, "0"

    iput-object v8, v7, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 484
    const-string/jumbo v8, ""

    iput-object v8, v7, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 485
    invoke-virtual {p0}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 487
    iput-object p1, v7, Lc8/GUf;->url:Ljava/lang/String;

    .line 488
    invoke-static {v7}, Lc8/HUf;->stat(Lc8/GUf;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 500
    .end local v7    # "updateData":Lc8/GUf;
    :catch_0
    move-exception v2

    .line 501
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v2}, Lc8/hqf;->getExceptionMsg(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "exception":Ljava/lang/String;
    const-string/jumbo v8, "hotpatch_andfix_load"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "3"

    invoke-static {v8, v9, v10, v3}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    if-eqz p5, :cond_c

    .line 504
    new-instance v7, Lc8/GUf;

    invoke-direct {v7}, Lc8/GUf;-><init>()V

    .line 505
    .restart local v7    # "updateData":Lc8/GUf;
    const/4 v8, 0x0

    iput-boolean v8, v7, Lc8/GUf;->success:Z

    .line 506
    const-string/jumbo v8, "hotpatch_andfix_load"

    iput-object v8, v7, Lc8/GUf;->stage:Ljava/lang/String;

    .line 507
    const-string/jumbo v8, "1"

    iput-object v8, v7, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 508
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 509
    invoke-virtual {p0}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 510
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 511
    iput-object p1, v7, Lc8/GUf;->url:Ljava/lang/String;

    .line 512
    invoke-static {v7}, Lc8/HUf;->stat(Lc8/GUf;)V

    .line 524
    :goto_2
    const-string/jumbo v8, "HotPatch"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-boolean v8, p0, Lc8/tUf;->mIsTestMode:Z

    if-eqz v8, :cond_b

    .line 526
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v9, Lc8/kUf;

    invoke-direct {v9, p0}, Lc8/kUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 533
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 514
    .end local v7    # "updateData":Lc8/GUf;
    :cond_c
    new-instance v7, Lc8/GUf;

    invoke-direct {v7}, Lc8/GUf;-><init>()V

    .line 515
    .restart local v7    # "updateData":Lc8/GUf;
    const/4 v8, 0x0

    iput-boolean v8, v7, Lc8/GUf;->success:Z

    .line 516
    const-string/jumbo v8, "hotpatch_andfix_frist_load"

    iput-object v8, v7, Lc8/GUf;->stage:Ljava/lang/String;

    .line 517
    const-string/jumbo v8, "1"

    iput-object v8, v7, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 518
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 519
    invoke-virtual {p0}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 520
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 521
    iput-object p1, v7, Lc8/GUf;->url:Ljava/lang/String;

    .line 522
    invoke-static {v7}, Lc8/HUf;->stat(Lc8/GUf;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 424
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "exception":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "preNativeCrashVersion":Ljava/lang/String;
    .end local v6    # "problemPatchVersion":I
    .end local v7    # "updateData":Lc8/GUf;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method


# virtual methods
.method public appendInit(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Lc8/tUf;
    .locals 8
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "mainVersion"    # Ljava/lang/String;
    .param p3, "ttid"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lc8/tUf;"
        }
    .end annotation

    .prologue
    .line 202
    .local p4, "contentMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    .line 203
    iput-object p2, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    .line 204
    iput-object p4, p0, Lc8/tUf;->mContentMap:Ljava/util/HashMap;

    .line 205
    iput-object p3, p0, Lc8/tUf;->mTtid:Ljava/lang/String;

    .line 206
    iget-object v5, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    .line 207
    const-class v5, Lc8/tUf;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    iput-object v5, p0, Lc8/tUf;->mMainDexClassLoader:Ljava/lang/ClassLoader;

    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "hotpatch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/tUf;->mPatchDir:Ljava/lang/String;

    .line 209
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lc8/tUf;->mPatchDir:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 211
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 213
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "hotpatch_tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lc8/tUf;->mPatchTmpDir:Ljava/lang/String;

    .line 214
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lc8/tUf;->mPatchTmpDir:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v2, "fileTmp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 218
    :cond_1
    iget-object v5, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v5}, Lc8/IUf;->isMainProcess(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lc8/tUf;->mIsMainProcess:Z

    .line 219
    iget-boolean v5, p0, Lc8/tUf;->mIsMainProcess:Z

    if-eqz v5, :cond_2

    .line 220
    invoke-direct {p0}, Lc8/tUf;->cleanInvalidPreferences()V

    .line 223
    :cond_2
    iget-object v5, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "hotpatch_version"

    const-string/jumbo v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, "patchVersion":Ljava/lang/String;
    iget-object v5, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "hotpatch_next_version"

    const-string/jumbo v7, "0"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    .local v3, "nextPatchVersion":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 226
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lc8/tUf;->mPatchVersion:I

    .line 229
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 230
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lc8/tUf;->mNextPatchVersion:I

    .line 233
    :cond_4
    iget v5, p0, Lc8/tUf;->mNextPatchVersion:I

    iget v6, p0, Lc8/tUf;->mPatchVersion:I

    if-eq v5, v6, :cond_5

    iget v5, p0, Lc8/tUf;->mNextPatchVersion:I

    if-eqz v5, :cond_5

    .line 234
    iget v5, p0, Lc8/tUf;->mNextPatchVersion:I

    iput v5, p0, Lc8/tUf;->mPatchVersion:I

    .line 235
    iget-object v5, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "hotpatch_version"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 237
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 239
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_5
    iget-object v5, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    iget-object v6, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-direct {p0, v5, v6}, Lc8/tUf;->initAndFix(Ljava/lang/String;Landroid/content/Context;)V

    .line 240
    invoke-static {p1}, Lc8/Jlf;->init(Landroid/content/Context;)V

    .line 241
    iget-object v5, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    new-instance v6, Lc8/pUf;

    invoke-direct {v6, p0}, Lc8/pUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v5, v6}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 243
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lc8/tUf;->mHandler:Landroid/os/Handler;

    .line 244
    return-object p0
.end method

.method public cleanPatchs(Z)V
    .locals 2
    .param p1, "fource"    # Z

    .prologue
    const/4 v1, 0x0

    .line 367
    invoke-virtual {p0}, Lc8/tUf;->cleanSharePreferences()V

    .line 368
    iput v1, p0, Lc8/tUf;->mPatchVersion:I

    .line 369
    iput v1, p0, Lc8/tUf;->mNextPatchVersion:I

    .line 370
    iget-object v0, p0, Lc8/tUf;->mAndFixManager:Lc8/sNc;

    invoke-virtual {v0}, Lc8/sNc;->rollback()V

    .line 371
    iput-boolean v1, p0, Lc8/tUf;->mIsAndFixPatchLoaded:Z

    .line 372
    invoke-direct {p0}, Lc8/tUf;->cleanPatchTmpDir()V

    .line 373
    invoke-direct {p0, p1}, Lc8/tUf;->cleanPatchDirs(Z)V

    .line 374
    return-void
.end method

.method public cleanSharePreferences()V
    .locals 2

    .prologue
    .line 348
    iget-object v1, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 349
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "use_support"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 350
    const-string/jumbo v1, "hotpatch_priority"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 351
    const-string/jumbo v1, "hotpatch_path"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 352
    const-string/jumbo v1, "hotpatch_type"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 353
    const-string/jumbo v1, "hotpatch_md5"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 354
    const-string/jumbo v1, "hotpatch_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    const-string/jumbo v1, "hotpatch_next_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 356
    const-string/jumbo v1, "is_native_crash"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    const-string/jumbo v1, "hotpatch_size"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    return-void
.end method

.method public varargs declared-synchronized dealPatchInfo(Lc8/EUf;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p1, "patchInfo"    # Lc8/EUf;
    .param p2, "dataSource"    # Ljava/lang/String;
    .param p3, "extData"    # [Ljava/lang/String;

    .prologue
    .line 729
    monitor-enter p0

    if-eqz p1, :cond_7

    .line 731
    :try_start_0
    iget-object v4, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v4}, Lc8/hqf;->isDeviceSupport(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_1

    .line 805
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 735
    :cond_1
    :try_start_1
    iget-boolean v4, p1, Lc8/EUf;->hasUpdate:Z

    if-eqz v4, :cond_0

    .line 737
    iget-boolean v4, p1, Lc8/EUf;->useSupport:Z

    if-eqz v4, :cond_6

    .line 738
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 740
    .local v2, "handler":Landroid/os/Handler;
    iget v4, p1, Lc8/EUf;->version:I

    iget v5, p0, Lc8/tUf;->mNextPatchVersion:I

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    iget-object v5, p1, Lc8/EUf;->mainVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 742
    if-eqz p2, :cond_3

    const-string/jumbo v4, "scan"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 743
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/tUf;->mIsTestMode:Z

    .line 749
    :goto_1
    iget-boolean v4, p0, Lc8/tUf;->mIsTestMode:Z

    invoke-virtual {p0, p1, p2, v4}, Lc8/tUf;->downloadPatch(Lc8/EUf;Ljava/lang/String;Z)V

    .line 750
    iget-object v4, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 751
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "hotpatch_priority"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lc8/EUf;->pri:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 752
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lc8/EUf;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "args":Ljava/lang/String;
    if-eqz p3, :cond_2

    array-length v4, p3

    if-lez v4, :cond_2

    .line 756
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, p3, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 759
    :cond_2
    const-string/jumbo v4, "hotpatch_update_info"

    invoke-static {v4, v0}, Lc8/IUf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v3, Lc8/GUf;

    invoke-direct {v3}, Lc8/GUf;-><init>()V

    .line 762
    .local v3, "updateData":Lc8/GUf;
    const/4 v4, 0x1

    iput-boolean v4, v3, Lc8/GUf;->success:Z

    .line 763
    const-string/jumbo v4, "hotpatch_update_info"

    iput-object v4, v3, Lc8/GUf;->stage:Ljava/lang/String;

    .line 764
    invoke-virtual {p0}, Lc8/tUf;->getMainVersion()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lc8/GUf;->fromVersion:Ljava/lang/String;

    .line 765
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lc8/EUf;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 766
    const-string/jumbo v4, "0"

    iput-object v4, v3, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 767
    const-string/jumbo v4, ""

    iput-object v4, v3, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 768
    iget-object v4, p1, Lc8/EUf;->patchUrl:Ljava/lang/String;

    iput-object v4, v3, Lc8/GUf;->url:Ljava/lang/String;

    .line 769
    invoke-static {v3}, Lc8/HUf;->stat(Lc8/GUf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 729
    .end local v0    # "args":Ljava/lang/String;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v3    # "updateData":Lc8/GUf;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 745
    .restart local v2    # "handler":Landroid/os/Handler;
    :cond_3
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lc8/tUf;->mIsTestMode:Z

    goto/16 :goto_1

    .line 772
    :cond_4
    if-eqz p2, :cond_5

    const-string/jumbo v4, "scan"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p1, Lc8/EUf;->version:I

    iget v5, p0, Lc8/tUf;->mNextPatchVersion:I

    if-eq v4, v5, :cond_5

    .line 773
    new-instance v4, Lc8/nUf;

    invoke-direct {v4, p0}, Lc8/nUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 781
    :cond_5
    iget v4, p1, Lc8/EUf;->version:I

    iget v5, p0, Lc8/tUf;->mNextPatchVersion:I

    if-eq v4, v5, :cond_0

    .line 782
    const-string/jumbo v4, "hotpatch_update_info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "the patchversion "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lc8/EUf;->version:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " or mainversion "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lc8/EUf;->mainVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not match"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 789
    .end local v2    # "handler":Landroid/os/Handler;
    :cond_6
    iget-object v4, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 790
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "use_support"

    iget-boolean v5, p1, Lc8/EUf;->useSupport:Z

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 791
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 792
    const-string/jumbo v4, "hotpatch_update_info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lc8/tUf;->mNextPatchVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "3"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " useSupport = false"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 801
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 802
    const-string/jumbo v4, "hotpatch_update_info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lc8/tUf;->mNextPatchVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "the patchInfo is null!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized downloadPatch(Lc8/EUf;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "patchInfo"    # Lc8/EUf;
    .param p2, "dataSource"    # Ljava/lang/String;
    .param p3, "isTestMode"    # Z

    .prologue
    .line 629
    monitor-enter p0

    if-nez p1, :cond_0

    .line 665
    :goto_0
    monitor-exit p0

    return-void

    .line 634
    :cond_0
    :try_start_0
    iget v5, p0, Lc8/tUf;->mNextPatchVersion:I

    iget v6, p1, Lc8/EUf;->version:I

    if-ne v5, v6, :cond_1

    .line 635
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "This version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lc8/tUf;->mNextPatchVersion:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been downloaded "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 639
    :cond_1
    :try_start_1
    new-instance v1, Lc8/hUf;

    iget-object v5, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-direct {v1, p1, v5, p2, p3}, Lc8/hUf;-><init>(Lc8/EUf;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 640
    .local v1, "listener":Lc8/hUf;
    new-instance v4, Lc8/Emf;

    invoke-direct {v4}, Lc8/Emf;-><init>()V

    .line 641
    .local v4, "request":Lc8/Emf;
    new-instance v0, Lc8/Fmf;

    iget-object v5, p1, Lc8/EUf;->patchUrl:Ljava/lang/String;

    invoke-direct {v0, v5}, Lc8/Fmf;-><init>(Ljava/lang/String;)V

    .line 642
    .local v0, "item":Lc8/Fmf;
    iget-object v5, p1, Lc8/EUf;->md5:Ljava/lang/String;

    iput-object v5, v0, Lc8/Fmf;->md5:Ljava/lang/String;

    .line 643
    iget-wide v6, p1, Lc8/EUf;->size:J

    iput-wide v6, v0, Lc8/Fmf;->size:J

    .line 644
    iget-object v5, p1, Lc8/EUf;->patchUrl:Ljava/lang/String;

    iget v6, p1, Lc8/EUf;->version:I

    invoke-direct {p0, v5, v6}, Lc8/tUf;->getDownloaderPathName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, "name":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 646
    iput-object v2, v0, Lc8/Fmf;->name:Ljava/lang/String;

    .line 649
    :cond_2
    new-instance v3, Lcom/taobao/downloader/request/Param;

    invoke-direct {v3}, Lcom/taobao/downloader/request/Param;-><init>()V

    .line 650
    .local v3, "param":Lcom/taobao/downloader/request/Param;
    iget-object v5, p0, Lc8/tUf;->mPatchTmpDir:Ljava/lang/String;

    iput-object v5, v3, Lcom/taobao/downloader/request/Param;->fileStorePath:Ljava/lang/String;

    .line 651
    const-string/jumbo v5, "hotpatch"

    iput-object v5, v3, Lcom/taobao/downloader/request/Param;->bizId:Ljava/lang/String;

    .line 652
    iput-object v3, v4, Lc8/Emf;->downloadParam:Lcom/taobao/downloader/request/Param;

    .line 653
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lc8/Emf;->downloadList:Ljava/util/List;

    .line 654
    iget-object v5, v4, Lc8/Emf;->downloadList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    if-eqz p3, :cond_3

    .line 656
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, Lc8/mUf;

    invoke-direct {v6, p0}, Lc8/mUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    :cond_3
    invoke-static {}, Lc8/Jlf;->getInstance()Lc8/Jlf;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Lc8/Jlf;->download(Lc8/Emf;Lc8/Dmf;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public getMainVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchSuccessedVersion()I
    .locals 1

    .prologue
    .line 683
    iget v0, p0, Lc8/tUf;->mPatchVersion:I

    return v0
.end method

.method public getSuccessedPatchInfo()Lc8/EUf;
    .locals 8

    .prologue
    .line 688
    new-instance v0, Lc8/EUf;

    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lc8/EUf;-><init>(Z)V

    .line 689
    .local v0, "info":Lc8/EUf;
    iget-object v3, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "main_version"

    iget-object v5, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/EUf;->mainVersion:Ljava/lang/String;

    .line 690
    iget-object v3, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "hotpatch_md5"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/EUf;->md5:Ljava/lang/String;

    .line 691
    iget-object v3, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "hotpatch_path"

    const-string/jumbo v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lc8/EUf;->patchUrl:Ljava/lang/String;

    .line 692
    iget-object v3, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "hotpatch_priority"

    const-string/jumbo v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "pri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 694
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lc8/EUf;->pri:I

    .line 697
    :cond_0
    iget-object v3, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "hotpatch_version"

    const-string/jumbo v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "version":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 699
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lc8/EUf;->version:I

    .line 701
    :cond_1
    iget-object v3, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v4, "hotpatch_size"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lc8/EUf;->size:J

    .line 703
    return-object v0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ttid"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    .line 125
    iput-object p2, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    .line 126
    const/4 v7, 0x1

    iput-boolean v7, p0, Lc8/tUf;->isAppForeground:Z

    .line 127
    iget-object v7, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    .line 128
    const-class v7, Lc8/tUf;

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    iput-object v7, p0, Lc8/tUf;->mMainDexClassLoader:Ljava/lang/ClassLoader;

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "hotpatch"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/tUf;->mPatchDir:Ljava/lang/String;

    .line 130
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lc8/tUf;->mPatchDir:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 134
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-virtual {v8}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "hotpatch_tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lc8/tUf;->mPatchTmpDir:Ljava/lang/String;

    .line 135
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lc8/tUf;->mPatchTmpDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, "fileTmp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 139
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "com.taobao.tao.msgcenter.agoo"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v7, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    new-instance v8, Lc8/vUf;

    iget-object v9, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-direct {v8, v9}, Lc8/vUf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v3}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    iput-object p4, p0, Lc8/tUf;->mTtid:Ljava/lang/String;

    .line 143
    iget-object v7, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v7}, Lc8/IUf;->isMainProcess(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lc8/tUf;->mIsMainProcess:Z

    .line 144
    iget-boolean v7, p0, Lc8/tUf;->mIsMainProcess:Z

    if-eqz v7, :cond_5

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMainProcess : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lc8/tUf;->mIsMainProcess:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and clear the patches infos!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lc8/tUf;->cleanInvalidPreferences()V

    .line 151
    :goto_0
    iget-object v7, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "hotpatch_version"

    const-string/jumbo v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "patchVersion":Ljava/lang/String;
    iget-object v7, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "hotpatch_next_version"

    const-string/jumbo v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "nextPatchVersion":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 154
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lc8/tUf;->mPatchVersion:I

    .line 157
    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lc8/tUf;->mNextPatchVersion:I

    .line 161
    :cond_3
    iget v7, p0, Lc8/tUf;->mNextPatchVersion:I

    iget v8, p0, Lc8/tUf;->mPatchVersion:I

    if-eq v7, v8, :cond_4

    iget v7, p0, Lc8/tUf;->mNextPatchVersion:I

    if-eqz v7, :cond_4

    .line 162
    iget v7, p0, Lc8/tUf;->mNextPatchVersion:I

    iput v7, p0, Lc8/tUf;->mPatchVersion:I

    .line 163
    iget-object v7, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v7, "hotpatch_version"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 168
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    iget-object v7, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    iget-object v8, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-direct {p0, v7, v8}, Lc8/tUf;->initAndFix(Ljava/lang/String;Landroid/content/Context;)V

    .line 169
    invoke-static {p1}, Lc8/Jlf;->init(Landroid/content/Context;)V

    .line 170
    invoke-static {}, Lc8/yRf;->getInstance()Lc8/yRf;

    move-result-object v7

    const-string/jumbo v8, "hotpatch"

    new-instance v9, Lc8/xUf;

    invoke-direct {v9}, Lc8/xUf;-><init>()V

    invoke-virtual {v7, v8, v9}, Lc8/yRf;->registerListener(Ljava/lang/String;Lc8/zRf;)V

    .line 171
    iget-object v7, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v7}, Lc8/CUf;->init(Landroid/content/Context;)V

    .line 172
    iget-object v7, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    new-instance v8, Lc8/pUf;

    invoke-direct {v8, p0}, Lc8/pUf;-><init>(Lc8/tUf;)V

    invoke-virtual {v7, v8}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 173
    new-instance v4, Lc8/gqf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v4, v8, v9}, Lc8/gqf;-><init>(J)V

    .line 174
    .local v4, "monitor":Lc8/gqf;
    invoke-static {}, Lc8/XSb;->getInstance()Lc8/XSb;

    move-result-object v7

    invoke-virtual {v7, v4}, Lc8/XSb;->setCrashCaughtListener(Lc8/SSb;)V

    .line 175
    new-instance v7, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v7, p0, Lc8/tUf;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-static {}, Lc8/wUf;->init()V

    .line 177
    return-void

    .line 148
    .end local v4    # "monitor":Lc8/gqf;
    .end local v5    # "nextPatchVersion":Ljava/lang/String;
    .end local v6    # "patchVersion":Ljava/lang/String;
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, " isMainProcess : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lc8/tUf;->mIsMainProcess:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public isAppForeground()Z
    .locals 1

    .prologue
    .line 893
    iget-boolean v0, p0, Lc8/tUf;->isAppForeground:Z

    return v0
.end method

.method public declared-synchronized loadDownloadedPatch(Ljava/lang/String;Lc8/EUf;)V
    .locals 16
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "patchInfo"    # Lc8/EUf;

    .prologue
    .line 808
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDownloadFinsh+"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 809
    const/4 v12, 0x0

    .line 810
    .local v12, "loaded":Z
    const/4 v6, 0x1

    .line 812
    .local v6, "isDexposed":Z
    if-nez p2, :cond_0

    .line 890
    :goto_0
    monitor-exit p0

    return-void

    .line 816
    :cond_0
    :try_start_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lc8/EUf;->type:Ljava/lang/String;

    const-string/jumbo v4, "dexposed"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 817
    const/4 v6, 0x1

    .line 821
    :cond_1
    :goto_1
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 822
    .local v14, "src":Ljava/io/File;
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tUf;->mPatchDir:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v13, "parent":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v13, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 824
    .local v9, "dest":Ljava/io/File;
    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    :try_start_2
    invoke-static {v14, v9}, Lc8/IUf;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 843
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 844
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 845
    .local v3, "newApkPath":Ljava/lang/String;
    const-string/jumbo v2, "copyFile"

    const-string/jumbo v4, ""

    invoke-static {v2, v4}, Lc8/IUf;->commitSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    new-instance v15, Lc8/GUf;

    invoke-direct {v15}, Lc8/GUf;-><init>()V

    .line 847
    .local v15, "updateData":Lc8/GUf;
    const/4 v2, 0x1

    iput-boolean v2, v15, Lc8/GUf;->success:Z

    .line 848
    const-string/jumbo v2, "copyFile"

    iput-object v2, v15, Lc8/GUf;->stage:Ljava/lang/String;

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v4, v0, Lc8/EUf;->version:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 850
    const-string/jumbo v2, "0"

    iput-object v2, v15, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 851
    const-string/jumbo v2, ""

    iput-object v2, v15, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 852
    move-object/from16 v0, p2

    iget-object v2, v0, Lc8/EUf;->patchUrl:Ljava/lang/String;

    iput-object v2, v15, Lc8/GUf;->url:Ljava/lang/String;

    .line 853
    invoke-static {v15}, Lc8/HUf;->stat(Lc8/GUf;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 869
    .end local v15    # "updateData":Lc8/GUf;
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/tUf;->mIsAutoLoad:Z

    if-eqz v2, :cond_2

    .line 870
    move-object/from16 v0, p2

    iget v4, v0, Lc8/EUf;->version:I

    move-object/from16 v0, p2

    iget-object v5, v0, Lc8/EUf;->md5:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lc8/EUf;->isImmediatelyLoad:Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lc8/tUf;->loadPatch(Ljava/lang/String;ILjava/lang/String;ZZZ)Z

    move-result v12

    .line 873
    :cond_2
    if-nez v12, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/tUf;->mIsAutoLoad:Z

    if-nez v2, :cond_4

    .line 875
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 876
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "hotpatch_path"

    invoke-interface {v11, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    const-string/jumbo v2, "hotpatch_next_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget v5, v0, Lc8/EUf;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 878
    const-string/jumbo v2, "hotpatch_version"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 879
    const-string/jumbo v2, "hotpatch_md5"

    move-object/from16 v0, p2

    iget-object v4, v0, Lc8/EUf;->md5:Ljava/lang/String;

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 880
    const-string/jumbo v2, "main_version"

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 881
    const-string/jumbo v2, "hotpatch_size"

    move-object/from16 v0, p2

    iget-wide v4, v0, Lc8/EUf;->size:J

    invoke-interface {v11, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 883
    const-string/jumbo v2, "hotpatch_type"

    invoke-interface {v11, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 885
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 888
    .end local v11    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loaded result "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 808
    .end local v3    # "newApkPath":Ljava/lang/String;
    .end local v6    # "isDexposed":Z
    .end local v9    # "dest":Ljava/io/File;
    .end local v12    # "loaded":Z
    .end local v13    # "parent":Ljava/io/File;
    .end local v14    # "src":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 818
    .restart local v6    # "isDexposed":Z
    .restart local v12    # "loaded":Z
    :cond_5
    :try_start_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lc8/EUf;->type:Ljava/lang/String;

    const-string/jumbo v4, "andfix"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 819
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 854
    .restart local v9    # "dest":Ljava/io/File;
    .restart local v13    # "parent":Ljava/io/File;
    .restart local v14    # "src":Ljava/io/File;
    :catch_0
    move-exception v10

    .line 855
    .local v10, "e":Ljava/lang/Throwable;
    if-eqz v10, :cond_6

    .line 856
    const-string/jumbo v2, "copyFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/File;->canWrite()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " and is exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v4, v5, v7}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v15, Lc8/GUf;

    invoke-direct {v15}, Lc8/GUf;-><init>()V

    .line 858
    .restart local v15    # "updateData":Lc8/GUf;
    const/4 v2, 0x0

    iput-boolean v2, v15, Lc8/GUf;->success:Z

    .line 859
    const-string/jumbo v2, "copyFile"

    iput-object v2, v15, Lc8/GUf;->stage:Ljava/lang/String;

    .line 860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    iget v4, v0, Lc8/EUf;->version:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lc8/GUf;->toVersion:Ljava/lang/String;

    .line 861
    const-string/jumbo v2, "1"

    iput-object v2, v15, Lc8/GUf;->errorCode:Ljava/lang/String;

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u76ee\u6807\u6587\u4ef6\u76ee\u5f55\u662f\u5426\u4e3a\u53ef\u5199:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/File;->canWrite()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " and the parent dirs is exist "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lc8/GUf;->errorMsg:Ljava/lang/String;

    .line 863
    move-object/from16 v0, p2

    iget-object v2, v0, Lc8/EUf;->patchUrl:Ljava/lang/String;

    iput-object v2, v15, Lc8/GUf;->url:Ljava/lang/String;

    .line 864
    invoke-static {v15}, Lc8/HUf;->stat(Lc8/GUf;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 866
    .end local v15    # "updateData":Lc8/GUf;
    :cond_6
    move-object/from16 v3, p1

    .restart local v3    # "newApkPath":Ljava/lang/String;
    goto/16 :goto_2
.end method

.method public queryNewHotPatch(Ljava/lang/String;)V
    .locals 7
    .param p1, "group"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v0, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v0}, Lc8/IUf;->isSupportPatch(Landroid/app/Application;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/tUf;->mIsAutoLoad:Z

    .line 308
    iget-object v0, p0, Lc8/tUf;->mTtid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-static {}, Lc8/AUf;->getInstance()Lc8/AUf;

    move-result-object v0

    iget-object v1, p0, Lc8/tUf;->mTtid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/AUf;->setTtid(Ljava/lang/String;)V

    .line 311
    :cond_1
    invoke-static {}, Lc8/AUf;->getInstance()Lc8/AUf;

    move-result-object v0

    iget-object v1, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    iget-object v2, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    iget v3, p0, Lc8/tUf;->mNextPatchVersion:I

    iget-object v5, p0, Lc8/tUf;->mCustomDomain:Ljava/lang/String;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lc8/AUf;->queryHotPatchUpdateInfo(Landroid/app/Application;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lc8/EUf;

    move-result-object v6

    .line 312
    .local v6, "patchInfo":Lc8/EUf;
    const-string/jumbo v0, "MTOP"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v1}, Lc8/tUf;->dealPatchInfo(Lc8/EUf;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryNewHotPatch(Z)V
    .locals 4
    .param p1, "isAutoLoad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 321
    iget-object v1, p0, Lc8/tUf;->mQueryAtomic:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    new-instance v0, Lc8/rUf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/rUf;-><init>(Lc8/tUf;Lc8/iUf;)V

    .line 323
    .local v0, "queryTask":Lc8/rUf;
    new-array v1, v2, [Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lc8/rUf;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 325
    .end local v0    # "queryTask":Lc8/rUf;
    :cond_0
    return-void
.end method

.method public queryNewHotpatchSelf(Lc8/zUf;Ljava/lang/String;)V
    .locals 4
    .param p1, "query"    # Lc8/zUf;
    .param p2, "group"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-object v0, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v0}, Lc8/IUf;->isSupportPatch(Landroid/app/Application;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    iget-object v1, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/tUf;->mNextPatchVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lc8/zUf;->queryHotpatchSelf(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCustomDomain(Ljava/lang/String;)V
    .locals 0
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lc8/tUf;->mCustomDomain:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setJavaCrashFlag(Z)V
    .locals 3
    .param p1, "isCrash"    # Z

    .prologue
    .line 714
    if-eqz p1, :cond_0

    .line 715
    iget-object v1, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 716
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "is_java_crash"

    iget v2, p0, Lc8/tUf;->mPatchVersion:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 717
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 719
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setNativeCrashFlag()V
    .locals 5

    .prologue
    .line 707
    iget-object v1, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 708
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "is_native_crash"

    iget-object v2, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 710
    const-string/jumbo v1, "hotpatch_nativecrash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lc8/tUf;->mPatchVersion:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "4"

    const-string/jumbo v4, "there is native crash during initiating stage"

    invoke-static {v1, v2, v3, v4}, Lc8/IUf;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public setPatchStateListener(Lc8/yUf;)V
    .locals 0
    .param p1, "listener"    # Lc8/yUf;

    .prologue
    .line 415
    iput-object p1, p0, Lc8/tUf;->mPatchStateListener:Lc8/yUf;

    .line 416
    return-void
.end method

.method public setUsedSupport(Z)V
    .locals 2
    .param p1, "usedSupport"    # Z

    .prologue
    .line 722
    iget-object v1, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 723
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "use_support"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 724
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 725
    return-void
.end method

.method public declared-synchronized startHotPatch()V
    .locals 10

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lc8/tUf;->mStartExcuted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-static {v0}, Lc8/IUf;->isSupportPatch(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "use_support"

    const/4 v5, 0x1

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "main_version"

    const-string/jumbo v5, ""

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 273
    .local v9, "patchMainVersion":Ljava/lang/String;
    iget-object v0, p0, Lc8/tUf;->mMainVersion:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lc8/tUf;->mIsMainProcess:Z

    if-eqz v0, :cond_2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lc8/tUf;->mApp:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "hotpatch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 276
    .local v8, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v7, "file":Ljava/io/File;
    invoke-static {v7}, Lc8/IUf;->cleanFileDirs(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "patchMainVersion":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 281
    .restart local v9    # "patchMainVersion":Ljava/lang/String;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "hotpatch_path"

    const-string/jumbo v5, ""

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "apkpath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "hotpatch_md5"

    const-string/jumbo v5, ""

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "patchMD5":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 291
    :try_start_3
    iget-object v0, p0, Lc8/tUf;->mSharedPrefrences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "hotpatch_type"

    const/4 v5, 0x0

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 292
    .local v4, "isDexposed":Z
    iget v2, p0, Lc8/tUf;->mPatchVersion:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lc8/tUf;->loadPatch(Ljava/lang/String;ILjava/lang/String;ZZZ)Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 294
    .end local v4    # "isDexposed":Z
    :goto_1
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lc8/tUf;->mStartExcuted:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
