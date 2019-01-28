.class public Lcom/ali/mobisecenhance/ld/AppInit;
.super Ljava/lang/Object;
.source "AppInit.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static baseDir:Ljava/lang/String;

.field private static final log:Lcom/ali/mobisecenhance/ld/RecordLog;

.field public static mContext:Landroid/content/Context;

.field public static uploadDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gez v0, :cond_0

    const-class v0, La/does/not/Exists2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .prologue
    :cond_0
    const/4 v1, 0x0

    .line 18
    const-class v0, Lcom/ali/mobisecenhance/ld/AppInit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Lcom/ali/mobisecenhance/ld/RecordLog;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/RecordLog;-><init>()V

    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    .line 21
    sput-object v1, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    .line 22
    sput-object v1, Lcom/ali/mobisecenhance/ld/AppInit;->uploadDirPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractLibraryFromApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "arch"    # Ljava/lang/String;
    .param p1, "entryLibName"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v5, Ljava/io/File;

    sget-object v7, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    invoke-direct {v5, v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v5, "library":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 56
    new-instance v2, Ljava/io/File;

    sget-object v7, Lcom/ali/mobisecenhance/ld/AppInit;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "apkFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 59
    .local v0, "apk":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .local v1, "apk":Ljava/util/zip/ZipFile;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 61
    .local v3, "e":Ljava/util/zip/ZipEntry;
    if-nez v3, :cond_0

    const-string v7, "armeabi"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 62
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib/armeabi-v7a/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 64
    :cond_0
    if-nez v3, :cond_1

    const-string v7, "armeabi-v7a"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 65
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lib/armeabi/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 67
    :cond_1
    if-nez v3, :cond_3

    .line 68
    new-instance v7, Ljava/lang/UnsatisfiedLinkError;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "can\'t find "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 76
    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    .local v4, "ex":Ljava/lang/Exception;
    :goto_0
    :try_start_2
    sget-object v7, Lcom/ali/mobisecenhance/ld/AppInit;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v8, Lcom/ali/mobisecenhance/ld/AppInit;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fail to extract arch "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v6, Ljava/lang/UnsatisfiedLinkError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to extract arch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 78
    .local v6, "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v6, v4}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v6    # "unsatisfiedLinkError":Ljava/lang/UnsatisfiedLinkError;
    :catchall_0
    move-exception v7

    :goto_1
    if-eqz v0, :cond_2

    .line 83
    :try_start_3
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 85
    :cond_2
    :goto_2
    throw v7

    .line 71
    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .restart local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_3
    :try_start_4
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v7, v8}, Lcom/ali/mobisecenhance/ld/util/Util;->tryUnzip(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 72
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7}, Ljava/lang/Exception;-><init>()V

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v0    # "apk":Ljava/util/zip/ZipFile;
    .restart local v1    # "apk":Ljava/util/zip/ZipFile;
    .restart local v3    # "e":Ljava/util/zip/ZipEntry;
    :cond_4
    if-eqz v1, :cond_5

    .line 83
    :try_start_5
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 89
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 84
    :catch_1
    move-exception v7

    goto :goto_3

    .end local v1    # "apk":Ljava/util/zip/ZipFile;
    .end local v3    # "e":Ljava/util/zip/ZipEntry;
    .restart local v0    # "apk":Ljava/util/zip/ZipFile;
    :catch_2
    move-exception v8

    goto :goto_2

    .line 75
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 102
    sput-object p0, Lcom/ali/mobisecenhance/ld/AppInit;->mContext:Landroid/content/Context;

    .line 103
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "ali-s"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    .line 104
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    const-string v2, "upload"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ali/mobisecenhance/ld/AppInit;->uploadDirPath:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public static loadLibrary()V
    .locals 5

    .prologue
    .line 33
    :try_start_0
    const-string v2, "reflectmap"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v1, "logdir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/ali/mobisecenhance/ld/AppInit;->baseDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logRecord"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/ali/mobisecenhance/ld/AppInit;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/mobisecenhance/ld/AppInit;->setTraceDexFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 34
    .end local v1    # "logdir":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 36
    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v3, "armeabi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string v3, "armeabi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 37
    :cond_1
    sget-object v2, Lcom/ali/mobisecenhance/ld/AppInit;->log:Lcom/ali/mobisecenhance/ld/RecordLog;

    sget-object v3, Lcom/ali/mobisecenhance/ld/AppInit;->TAG:Ljava/lang/String;

    const-string v4, "extract libzuma.so from apk."

    invoke-virtual {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/RecordLog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string v2, "armeabi"

    const-string v3, "libreflectmap.so"

    const-string v4, "libdemolish0.so"

    invoke-static {v2, v3, v4}, Lcom/ali/mobisecenhance/ld/AppInit;->extractLibraryFromApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    throw v0
.end method

.method public static native setTraceDexFile(Ljava/lang/String;Ljava/lang/String;)V
.end method
