.class public Lcom/taobao/accs/election/ElectionServiceUtil;
.super Ljava/lang/Object;
.source "ElectionServiceUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    }
.end annotation


# static fields
.field public static final ACTION_ACCS_CUSTOM_ELECTION:Ljava/lang/String;

.field public static final ACTION_ACCS_ELECTION:Ljava/lang/String; = "com.taobao.accs.intent.action.ELECTION"

.field public static final TAG:Ljava/lang/String; = "ElectionServiceUtil"

.field private static electionFile:Ljava/io/File;

.field public static electionFilePath:Ljava/lang/String;

.field private static lastFlushTime:J

.field private static path:Ljava/io/File;

.field private static final random:Ljava/util/Random;

.field public static tryElectionFail:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFilePath:Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    .line 47
    sput-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFile:Ljava/io/File;

    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/taobao/accs/election/ElectionServiceUtil;->lastFlushTime:J

    .line 49
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->random:Ljava/util/Random;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.taobao.accs.intent.action."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ELECTION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->ACTION_ACCS_CUSTOM_ELECTION:Ljava/lang/String;

    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/taobao/accs/election/ElectionServiceUtil;->tryElectionFail:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$002(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 39
    sput-object p0, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$100()Ljava/io/File;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$102(Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 39
    sput-object p0, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFile:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 39
    sget-wide v0, Lcom/taobao/accs/election/ElectionServiceUtil;->lastFlushTime:J

    return-wide v0
.end method

.method public static final checkApp(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "electionVersion"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 334
    const/4 v4, 0x1

    .line 335
    .local v4, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 385
    :goto_0
    return v6

    .line 341
    :cond_0
    if-eq p2, v8, :cond_2

    .line 342
    :try_start_0
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp election version not match"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "require"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "self ver"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 382
    .local v2, "e":Ljava/lang/Throwable;
    const/4 v4, 0x0

    .line 383
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp error"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v2, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_1
    move v6, v4

    .line 385
    goto :goto_0

    .line 347
    :cond_2
    :try_start_1
    invoke-static {p0, p1}, Lcom/taobao/accs/internal/ServiceImpl;->isAppBinded(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 348
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp is unbinded"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 351
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 352
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v3, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 355
    .local v1, "clientApplicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v1, :cond_4

    .line 356
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp applicaton info null"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 360
    :cond_4
    iget-boolean v7, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v7, :cond_5

    .line 361
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp is disabled"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 366
    :cond_5
    invoke-static {p0}, Lcom/taobao/accs/election/ElectionServiceUtil;->getBlackList(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 367
    .local v0, "blackList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_1

    .line 368
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "blackList"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 369
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .line 370
    .local v5, "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_7

    const/16 v7, 0xdd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 371
    :cond_6
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp in blacklist"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "sdkv"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0xdd

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 374
    :cond_7
    const-string/jumbo v7, "*"

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    check-cast v5, Ljava/util/Set;

    .line 375
    .restart local v5    # "versions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v5, :cond_1

    const/16 v7, 0xdd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 376
    :cond_8
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "checkApp in blacklist *"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "sdkv"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/16 v11, 0xdd

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static final clearBlackList(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 250
    const-string/jumbo v2, "ElectionServiceUtil"

    const-string/jumbo v3, "clearBlackList"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionBlackList(Ljava/util/Map;)V

    .line 252
    sget-object v2, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    if-nez v2, :cond_1

    .line 253
    const-string/jumbo v2, "ElectionServiceUtil"

    const-string/jumbo v3, "clearBlackList path null"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "accs_blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 261
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 262
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "ElectionServiceUtil"

    const-string/jumbo v3, "clearBlackList"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final getBlackList(Landroid/content/Context;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 269
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/accs/client/GlobalClientInfo;->getElectionBlackList()Ljava/util/Map;

    move-result-object v0

    .line 271
    .local v0, "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_0

    .line 272
    const-string/jumbo v3, "ElectionServiceUtil"

    const-string/jumbo v4, "getBlackList from mem"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v0

    .line 290
    :goto_0
    return-object v3

    .line 276
    :cond_0
    sget-object v3, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    if-nez v3, :cond_1

    .line 277
    const-string/jumbo v3, "ElectionServiceUtil"

    const-string/jumbo v4, "getBlackList path null"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    const/4 v3, 0x0

    goto :goto_0

    .line 282
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "accs_blacklist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/taobao/accs/utl/FileUtils;->filetoByte(Ljava/io/File;)[B

    move-result-object v1

    .line 283
    .local v1, "data":[B
    if-eqz v1, :cond_2

    .line 284
    invoke-static {v1}, Lcom/taobao/accs/election/ElectionServiceUtil;->praseBlackList([B)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    .end local v1    # "data":[B
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionBlackList(Ljava/util/Map;)V

    move-object v3, v0

    .line 290
    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v3, "ElectionServiceUtil"

    const-string/jumbo v4, "getBlackList"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v3, v4, v2, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getElectionFilter()Ljava/lang/String;
    .locals 2

    .prologue
    .line 475
    sget-object v0, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    .line 476
    const-string/jumbo v0, "com.taobao.accs.intent.action.ELECTION"

    .line 478
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/taobao/accs/election/ElectionServiceUtil;->ACTION_ACCS_CUSTOM_ELECTION:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getElectionFolderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    sget-object v1, Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;->TAOBAO:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    if-ne v0, v1, :cond_0

    .line 484
    const-string/jumbo v0, "/accs/accs_main/1"

    .line 486
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/accs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/taobao/accs/client/GlobalConfig;->mGroup:Lcom/taobao/accs/client/AccsConfig$ACCS_GROUP;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getElectionResult(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->isElectionEnable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    new-instance v0, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    invoke-direct {v0}, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;-><init>()V

    .line 166
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/client/GlobalClientInfo;->getElectionResult()Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v0

    .line 161
    .local v0, "result":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    if-eqz v0, :cond_1

    .line 162
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "getElectionResult from mem"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "host"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "retry"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, v0, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 165
    :cond_1
    invoke-static {p0}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionResultFromFile(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    move-result-object v0

    .line 166
    goto :goto_0
.end method

.method public static final getElectionResultFromFile(Landroid/content/Context;)Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    new-instance v10, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    invoke-direct {v10}, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;-><init>()V

    .line 181
    .local v10, "result":Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;
    const/4 v5, 0x0

    .line 183
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_0
    sget-object v12, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    if-nez v12, :cond_0

    .line 184
    invoke-static/range {p0 .. p0}, Lcom/taobao/accs/election/ElectionServiceUtil;->initPath(Landroid/content/Context;)V

    .line 186
    :cond_0
    new-instance v4, Ljava/io/File;

    sget-object v12, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFilePath:Ljava/lang/String;

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 188
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v8

    .line 190
    .local v8, "length":I
    new-array v2, v8, [B

    .line 191
    .local v2, "buffer":[B
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 192
    new-instance v7, Ljava/lang/String;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v7, v2, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 193
    .local v7, "json":Ljava/lang/String;
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v11, "resultJson":Lorg/json/JSONObject;
    if-eqz v11, :cond_5

    .line 195
    const-string/jumbo v12, "package"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 196
    .local v9, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/taobao/accs/utl/UtilityImpl;->packageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 197
    iput-object v9, v10, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    .line 198
    const-string/jumbo v12, "lastFlushTime"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    sput-wide v12, Lcom/taobao/accs/election/ElectionServiceUtil;->lastFlushTime:J

    .line 200
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sget-wide v14, Lcom/taobao/accs/election/ElectionServiceUtil;->lastFlushTime:J

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    cmp-long v12, v12, v14

    if-gez v12, :cond_4

    .line 201
    const-string/jumbo v12, "retry"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v10, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v5, v6

    .line 207
    .end local v2    # "buffer":[B
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "length":I
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "resultJson":Lorg/json/JSONObject;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    :try_start_2
    const-string/jumbo v12, "ElectionServiceUtil"

    const-string/jumbo v13, "getElectionResult"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string/jumbo v16, "host"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v10, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->host:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "retry"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget v0, v10, Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;->retry:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    invoke-static/range {p0 .. p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionReslt(Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    if-eqz v5, :cond_3

    .line 214
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 220
    .end local v4    # "file":Ljava/io/File;
    :cond_3
    :goto_1
    return-object v10

    .line 203
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "json":Ljava/lang/String;
    .restart local v8    # "length":I
    .restart local v9    # "pkg":Ljava/lang/String;
    .restart local v11    # "resultJson":Lorg/json/JSONObject;
    :cond_4
    const-wide/16 v12, 0x0

    :try_start_4
    sput-wide v12, Lcom/taobao/accs/election/ElectionServiceUtil;->lastFlushTime:J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local v9    # "pkg":Ljava/lang/String;
    :cond_5
    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 215
    .end local v2    # "buffer":[B
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "length":I
    .end local v11    # "resultJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 216
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 209
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "file":Ljava/io/File;
    :catch_1
    move-exception v3

    .line 210
    .local v3, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_5
    const-string/jumbo v12, "ElectionServiceUtil"

    const-string/jumbo v13, "readFile is error"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v13, v3, v14}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    if-eqz v5, :cond_3

    .line 214
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 215
    :catch_2
    move-exception v3

    .line 216
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_3
    if-eqz v5, :cond_6

    .line 214
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 217
    :cond_6
    :goto_4
    throw v12

    .line 215
    :catch_3
    move-exception v3

    .line 216
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 212
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 209
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static final getResolveService(Landroid/content/Context;)Ljava/lang/String;
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 441
    const/4 v4, 0x0

    .line 443
    .local v4, "pack":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 444
    .local v5, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFilter()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v2, "intent":Landroid/content/Intent;
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 446
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_0

    .line 447
    const-string/jumbo v8, "ElectionServiceUtil"

    const-string/jumbo v9, "getResolveService resolveInfo null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v7

    .line 450
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    iget-object v3, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 451
    .local v3, "mServiceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v8

    if-nez v8, :cond_2

    .line 452
    :cond_1
    const-string/jumbo v8, "ElectionServiceUtil"

    const-string/jumbo v9, "getResolveService serviceinfo null or disabled"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mServiceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "getResolveService error"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v7, v8, v1, v9}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_1
    move-object v7, v4

    .line 467
    goto :goto_0

    .line 455
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mServiceInfo":Landroid/content/pm/ServiceInfo;
    .restart local v5    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_2
    :try_start_1
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 457
    .local v0, "clientPack":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 458
    const-string/jumbo v8, "ElectionServiceUtil"

    const-string/jumbo v9, "getResolveService clientPack null"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 462
    :cond_3
    move-object v4, v0

    .line 463
    const-string/jumbo v7, "ElectionServiceUtil"

    const-string/jumbo v8, "getResolveService"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, "package"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v7, v8, v9}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static initPath(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/taobao/accs/election/ElectionServiceUtil;->getElectionFolderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    .line 77
    const-string/jumbo v1, "ElectionServiceUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    const-string/jumbo v3, "accs_election"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    sput-object v1, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/taobao/accs/election/ElectionServiceUtil;->electionFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "ElectionServiceUtil"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static final isElectionEnable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 171
    sget-boolean v1, Lcom/taobao/accs/election/ElectionServiceUtil;->tryElectionFail:Z

    if-eqz v1, :cond_0

    .line 172
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "try Election Fail, disable election!!"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/taobao/accs/utl/OrangeAdapter;->isElectionEnable()Z

    move-result v0

    goto :goto_0
.end method

.method public static localElection(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "packMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 398
    .local v3, "localResult":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v13

    if-gtz v13, :cond_1

    .line 399
    :cond_0
    const-string/jumbo v13, "ElectionServiceUtil"

    const-string/jumbo v14, "localElection failed, packMap null"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v4, v3

    .line 431
    .end local v3    # "localResult":Ljava/lang/String;
    .local v4, "localResult":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 403
    .end local v4    # "localResult":Ljava/lang/String;
    .restart local v3    # "localResult":Ljava/lang/String;
    :cond_1
    const-wide/16 v6, -0x1

    .line 404
    .local v6, "maxPriority":J
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 407
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .local v5, "maxPacks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 411
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 412
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 413
    .local v8, "pack":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v10, v13

    .line 414
    .local v10, "priority":J
    cmp-long v13, v10, v6

    if-lez v13, :cond_3

    .line 415
    move-wide v6, v10

    .line 416
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 418
    :cond_3
    cmp-long v13, v10, v6

    if-nez v13, :cond_2

    .line 419
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 422
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "pack":Ljava/lang/String;
    .end local v10    # "priority":J
    :cond_4
    sget-object v13, Lcom/taobao/accs/election/ElectionServiceUtil;->random:Ljava/util/Random;

    const/16 v14, 0x2710

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 423
    .local v9, "rand":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    rem-int v1, v9, v13

    .line 424
    .local v1, "index":I
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 425
    .local v12, "sudoPack":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 426
    move-object v3, v12

    :goto_2
    move-object v4, v3

    .line 431
    .end local v3    # "localResult":Ljava/lang/String;
    .restart local v4    # "localResult":Ljava/lang/String;
    goto :goto_0

    .line 428
    .end local v4    # "localResult":Ljava/lang/String;
    .restart local v3    # "localResult":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 429
    const-string/jumbo v13, "ElectionServiceUtil"

    const-string/jumbo v14, "localElection localResult null, user curr app"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "pkg"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    invoke-static {v13, v14, v15}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static praseBlackList([B)Ljava/util/Map;
    .locals 18
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 294
    if-nez p0, :cond_0

    .line 295
    const/4 v1, 0x0

    .line 322
    :goto_0
    return-object v1

    .line 297
    :cond_0
    const/4 v1, 0x0

    .line 299
    .local v1, "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :try_start_0
    new-instance v7, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    .line 300
    .local v7, "json":Ljava/lang/String;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 301
    .local v9, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v13, "blacklist"

    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 302
    .local v8, "jsonArray":Lorg/json/JSONArray;
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 303
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .local v2, "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v3, v13, :cond_3

    .line 305
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 306
    .local v6, "jobj":Lorg/json/JSONObject;
    const-string/jumbo v13, "sdkvs"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 307
    .local v5, "jarray":Lorg/json/JSONArray;
    const-string/jumbo v13, "pkg"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 308
    .local v10, "key":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lez v13, :cond_2

    .line 309
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 310
    .local v12, "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 311
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 313
    :cond_1
    invoke-interface {v2, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    .end local v4    # "j":I
    .end local v12    # "value":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5    # "jarray":Lorg/json/JSONArray;
    .end local v6    # "jobj":Lorg/json/JSONObject;
    .end local v10    # "key":Ljava/lang/String;
    :cond_3
    move-object v1, v2

    .line 317
    .end local v2    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .end local v3    # "i":I
    .restart local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    :cond_4
    :try_start_2
    const-string/jumbo v14, "ElectionServiceUtil"

    const-string/jumbo v15, "praseBlackList"

    const/4 v13, 0x2

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v13, 0x0

    const-string/jumbo v17, "blacklist"

    aput-object v17, v16, v13

    const/16 v17, 0x1

    if-nez v1, :cond_5

    const-string/jumbo v13, "null"

    :goto_3
    aput-object v13, v16, v17

    invoke-static/range {v14 .. v16}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 318
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "jsonArray":Lorg/json/JSONArray;
    .end local v9    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 319
    .local v11, "t":Ljava/lang/Throwable;
    :goto_4
    const-string/jumbo v13, "ElectionServiceUtil"

    const-string/jumbo v14, "praseBlackList"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v13, v14, v11, v15}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 317
    .end local v11    # "t":Ljava/lang/Throwable;
    .restart local v7    # "json":Ljava/lang/String;
    .restart local v8    # "jsonArray":Lorg/json/JSONArray;
    .restart local v9    # "jsonObject":Lorg/json/JSONObject;
    :cond_5
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v13

    goto :goto_3

    .line 318
    .end local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .restart local v2    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .restart local v3    # "i":I
    :catch_1
    move-exception v11

    move-object v1, v2

    .end local v2    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    .restart local v1    # "blacklist":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/Integer;>;>;"
    goto :goto_4
.end method

.method public static final saveBlackList(Landroid/content/Context;[B)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # [B

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 224
    if-eqz p1, :cond_0

    sget-object v1, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    if-nez v1, :cond_1

    .line 225
    :cond_0
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "saveBlackList null"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "data"

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    const-string/jumbo v4, "path"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    sget-object v5, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    :goto_0
    return-void

    .line 228
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/taobao/accs/election/ElectionServiceUtil;->path:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/accs_blacklist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "filepath":Ljava/lang/String;
    const-string/jumbo v1, "ElectionServiceUtil"

    const-string/jumbo v2, "saveBlackList"

    new-array v3, v7, [Ljava/lang/Object;

    const-string/jumbo v4, "path"

    aput-object v4, v3, v5

    aput-object v0, v3, v6

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v1

    invoke-static {p1}, Lcom/taobao/accs/election/ElectionServiceUtil;->praseBlackList([B)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionBlackList(Ljava/util/Map;)V

    .line 231
    new-instance v1, Lcom/taobao/accs/election/ElectionServiceUtil$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/taobao/accs/election/ElectionServiceUtil$2;-><init>(Landroid/content/Context;[BLjava/lang/String;)V

    invoke-static {v1}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final saveElectionResult(Landroid/content/Context;Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "result"    # Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 147
    :goto_0
    return-void

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/taobao/accs/client/GlobalClientInfo;->getInstance(Landroid/content/Context;)Lcom/taobao/accs/client/GlobalClientInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/accs/client/GlobalClientInfo;->setElectionReslt(Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V

    .line 99
    new-instance v0, Lcom/taobao/accs/election/ElectionServiceUtil$1;

    invoke-direct {v0, p0, p1}, Lcom/taobao/accs/election/ElectionServiceUtil$1;-><init>(Landroid/content/Context;Lcom/taobao/accs/election/ElectionServiceUtil$ElectionResult;)V

    invoke-static {v0}, Lcom/taobao/accs/common/ThreadPoolExecutorFactory;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
