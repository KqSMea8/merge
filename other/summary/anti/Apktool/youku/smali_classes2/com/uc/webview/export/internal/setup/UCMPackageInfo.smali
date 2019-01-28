.class public Lcom/uc/webview/export/internal/setup/UCMPackageInfo;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation build Lcom/uc/webview/export/annotations/Api;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;
    }
.end annotation


# static fields
.field public static final ARCHS:[Ljava/lang/String;

.field public static final BROWSER_IF_FOR_EXPORT_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libbrowser_if_for_export_jar_kj_uc.so"

.field public static final CORE_FACTORY_IMPL_CLASS:Ljava/lang/String; = "com.uc.webkit.sdk.CoreFactoryImpl"

.field public static final CORE_IMPL_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libcore_jar_kj_uc.so"

.field public static final RES_PAKS_DIR_NAME:Ljava/lang/String; = "paks"

.field public static final SDK_SHELL_DEX_FILE_USING_SO_SUFFIX:Ljava/lang/String; = "libsdk_shell_jar_kj_uc.so"

.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field public static final compareVersion:I = 0x272b

.field public static final deleteTempDecFiles:I = 0x2737

.field public static final deleteUCMSDKDir:I = 0x273c

.field public static final expectCreateDirFile2P:I = 0x2733

.field public static final expectDirFile1F:I = 0x2730

.field public static final expectDirFile1S:I = 0x2731

.field public static final getDataDirHash:I = 0x271c

.field public static final getDecompressRoot:I = 0x2713

.field public static final getDir:I = 0x2711

.field public static final getFlagRoot:I = 0x2715

.field public static final getKernalJarCpyRoot:I = 0x2719

.field public static final getKernalJarLnkRoot:I = 0x2717

.field public static final getKernalResCpyRoot:I = 0x271a

.field public static final getKernalResLnkRoot:I = 0x2718

.field public static final getKernalShareJarCpyRoot:I = 0x273f

.field public static final getKernalShareJarLnkRoot:I = 0x273e

.field public static final getKernelFileIfMultiCoreFromDir:I = 0x272c

.field public static final getKernelFiles:I = 0x2726

.field public static final getKernelResFiles:I = 0x2728

.field public static final getLibFilter:I = 0x2727

.field public static final getOdexRoot:I = 0x2714

.field public static final getRepairApolloRoot:I = 0x273d

.field public static final getRepairRoot:I = 0x2716

.field public static final getUnExistsFilePath:I = 0x2725

.field public static final getUpdateRoot:I = 0x2712

.field public static final getVersion:I = 0x2738

.field public static final hadInstallUCMobile:I = 0x272a

.field public static final initUCMBuildInfo:I = 0x2739

.field public static final isDirShouldBeDeleted:I = 0x273b

.field public static final isThickSDK:I = 0x271b

.field public static final makeDirDeleteFlg:I = 0x273a

.field public static final sortByLastModified:I = 0x2729


# instance fields
.field public final browserIFModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field public final coreCode:Ljava/lang/String;

.field public final coreImplModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final dataDir:Ljava/lang/String;

.field public final disabledFilePath:Ljava/lang/String;

.field public final isSpecified:Z

.field public mSdkShellClassLoader:Ljava/lang/ClassLoader;

.field public final mainLibrary:Ljava/lang/String;

.field public final pkgName:Ljava/lang/String;

.field public final resDirPath:Ljava/lang/String;

.field public final sdkShellModule:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final soDirPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "WebCore_UC"

    aput-object v1, v0, v2

    const-string/jumbo v1, "webviewuc"

    aput-object v1, v0, v3

    const-string/jumbo v1, "webviewuc.cr"

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a:[Ljava/lang/String;

    .line 206
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "imagehelper"

    aput-object v1, v0, v2

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b:[Ljava/lang/String;

    .line 210
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "armeabi-v7a"

    aput-object v1, v0, v2

    const-string/jumbo v1, "armeabi"

    aput-object v1, v0, v3

    const-string/jumbo v1, "x86"

    aput-object v1, v0, v4

    sput-object v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->ARCHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->c:Landroid/content/Context;

    .line 223
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->pkgName:Ljava/lang/String;

    .line 224
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 225
    if-eqz p11, :cond_4

    move-object/from16 v0, p5

    move-object/from16 v1, p4

    invoke-static {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    :goto_0
    if-nez v2, :cond_5

    const/4 v2, 0x0

    :cond_0
    :goto_1
    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->resDirPath:Ljava/lang/String;

    .line 227
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->isSpecified:Z

    .line 229
    if-eqz p5, :cond_7

    .line 230
    const/16 v3, 0x2733

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez p10, :cond_6

    const/16 v2, 0x2714

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 231
    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    :goto_2
    aput-object v2, v4, v5

    const/4 v5, 0x1

    const/16 v2, 0x271c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p5, v6, v7

    .line 232
    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v4, v5

    .line 230
    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 233
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/e1df430e25e9dacb26ead508abb3413f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->disabledFilePath:Ljava/lang/String;

    .line 236
    new-instance v3, Landroid/util/Pair;

    if-eqz p11, :cond_1

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-static {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    .line 237
    new-instance v3, Landroid/util/Pair;

    if-eqz p11, :cond_2

    move-object/from16 v0, p5

    move-object/from16 v1, p8

    invoke-static {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    .line 238
    new-instance v3, Landroid/util/Pair;

    if-eqz p11, :cond_3

    move-object/from16 v0, p5

    move-object/from16 v1, p9

    invoke-static {p1, v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p9

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    .line 247
    :goto_3
    invoke-static/range {p3 .. p3}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 248
    :goto_4
    const/4 v6, 0x0

    .line 249
    const-wide/16 v4, 0x0

    .line 250
    sget-object v8, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a:[Ljava/lang/String;

    array-length v9, v8

    const/4 v3, 0x0

    move v7, v3

    :goto_5
    if-ge v7, v9, :cond_9

    aget-object v3, v8, v7

    .line 251
    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "lib"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ".so"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v11, v12, v4

    if-lez v11, :cond_12

    .line 253
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 250
    :goto_6
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    move-object v6, v3

    goto :goto_5

    :cond_4
    move-object/from16 v2, p4

    .line 225
    goto/16 :goto_0

    .line 226
    :cond_5
    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 231
    :cond_6
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p10

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 240
    :cond_7
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    .line 241
    const/16 v2, 0x2725

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->disabledFilePath:Ljava/lang/String;

    .line 242
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    .line 243
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    .line 244
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    goto/16 :goto_3

    :cond_8
    move-object/from16 v2, p3

    .line 247
    goto/16 :goto_4

    .line 258
    :cond_9
    if-nez v6, :cond_a

    invoke-static/range {p3 .. p3}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 259
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbb9

    const-string/jumbo v4, "Main so file U3 [%s] or U4 [%s|%s] not exists."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "WebCore_UC"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string/jumbo v7, "webviewuc"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "webviewuc.cr"

    aput-object v7, v5, v6

    .line 260
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 265
    :cond_a
    iput-object v6, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    .line 267
    const-string/jumbo v3, "WebCore_UC"

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "u3"

    .line 271
    :goto_7
    iput-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    .line 277
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    const-string/jumbo v4, "u4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 278
    sget-object v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->b:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v5, :cond_11

    aget-object v6, v4, v3

    .line 279
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "lib"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ".so"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "lib"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, ".so"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 282
    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 284
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v6, v12, v10

    if-gez v6, :cond_c

    .line 285
    :cond_b
    const/4 v6, 0x0

    invoke-static {v7, v8, v8, v6}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 278
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 267
    :cond_d
    const-string/jumbo v3, "webviewuc"

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    .line 269
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "u4"

    goto/16 :goto_7

    :cond_e
    const-string/jumbo v3, "webviewuc.cr"

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    .line 271
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "u4"

    goto/16 :goto_7

    :cond_f
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    if-nez v3, :cond_10

    const-string/jumbo v3, "null"

    goto/16 :goto_7

    :cond_10
    const-string/jumbo v3, "error"

    goto/16 :goto_7

    .line 290
    :cond_11
    return-void

    :cond_12
    move-object v3, v6

    goto/16 :goto_6
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 1224
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    .line 1225
    invoke-static {p3}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v2

    .line 1226
    invoke-static/range {p4 .. p4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v3

    .line 1229
    if-eqz v1, :cond_1

    const/16 v0, 0x271b

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1230
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 1232
    const/4 v0, 0x0

    .line 1267
    :goto_0
    return-object v0

    .line 1235
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbba

    const-string/jumbo v2, "No ucm dex file specified."

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1243
    :cond_1
    if-nez v1, :cond_2

    .line 1244
    const/16 v0, 0x2731

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1246
    const-string/jumbo v1, "core.jar"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 1249
    :try_start_0
    const-string/jumbo v1, "sdk_shell.jar"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1255
    :goto_1
    :try_start_1
    const-string/jumbo v1, "browser_if.jar"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1267
    :goto_2
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    if-nez p1, :cond_3

    const-string/jumbo v2, "specified"

    :goto_3
    const/4 v6, 0x1

    const/4 v11, 0x0

    move-object v1, p0

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, p2

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v1

    const/4 v7, 0x0

    goto :goto_1

    .line 1257
    :catch_1
    move-exception v0

    const/4 v8, 0x0

    .line 1260
    goto :goto_2

    .line 1261
    :cond_2
    const/4 v7, 0x0

    .line 1262
    const/4 v8, 0x0

    .line 1263
    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    move-object v2, p1

    .line 1267
    goto :goto_3
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    .prologue
    .line 1061
    invoke-static/range {p2 .. p2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1062
    const/4 v3, 0x0

    .line 1116
    :goto_0
    return-object v3

    .line 1064
    :cond_0
    const/16 v3, 0x2731

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1066
    const/16 v4, 0x2728

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 1067
    if-eqz v4, :cond_1

    array-length v5, v4

    if-nez v5, :cond_2

    .line 1068
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1071
    :cond_2
    const/16 v5, 0x271c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1072
    const/16 v7, 0x2733

    const/4 v6, 0x2

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v6, 0x2718

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p0, v10, v11

    invoke-static {v6, v10}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v5, v8, v6

    invoke-static {v7, v8}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 1073
    const/16 v8, 0x2733

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v7, 0x271a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-static {v7, v11}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    aput-object v7, v9, v10

    const/4 v7, 0x1

    aput-object v5, v9, v7

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 1075
    const/16 v7, 0x2733

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "paks"

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 1076
    const/16 v8, 0x2733

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "paks"

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 1078
    array-length v9, v4

    new-array v12, v9, [Z

    .line 1079
    array-length v9, v4

    new-array v13, v9, [Ljava/io/File;

    .line 1080
    array-length v9, v4

    new-array v14, v9, [Ljava/io/File;

    .line 1081
    array-length v9, v4

    new-array v15, v9, [Ljava/io/File;

    .line 1082
    const/4 v10, 0x1

    .line 1084
    const/4 v9, 0x0

    :goto_1
    array-length v11, v4

    if-ge v9, v11, :cond_7

    .line 1085
    aget-object v11, v4, v9

    .line 1086
    const-string/jumbo v16, "_pak_kr_uc.so"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    .line 1088
    const/16 v17, 0x3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1089
    const/16 v18, 0x5f

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    .line 1090
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2e

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1092
    new-instance v18, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1093
    new-instance v19, Ljava/io/File;

    if-eqz v16, :cond_4

    move-object v11, v7

    :goto_2
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1094
    new-instance v20, Ljava/io/File;

    if-eqz v16, :cond_5

    move-object v11, v8

    :goto_3
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1095
    const/4 v11, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v11}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v11

    .line 1096
    aput-object v18, v13, v9

    .line 1097
    aput-object v19, v14, v9

    .line 1098
    aput-object v20, v15, v9

    .line 1100
    move-object/from16 v0, v19

    if-ne v11, v0, :cond_6

    const/4 v11, 0x1

    .line 1101
    :goto_4
    aput-boolean v11, v12, v9

    .line 1102
    if-nez v11, :cond_3

    .line 1103
    const/4 v10, 0x0

    .line 1084
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_4
    move-object v11, v6

    .line 1093
    goto :goto_2

    :cond_5
    move-object v11, v5

    .line 1094
    goto :goto_3

    .line 1100
    :cond_6
    const/4 v11, 0x0

    goto :goto_4

    .line 1107
    :cond_7
    if-nez v10, :cond_a

    .line 1108
    const/4 v3, 0x0

    :goto_5
    array-length v6, v4

    if-ge v3, v6, :cond_9

    .line 1109
    aget-boolean v6, v12, v3

    if-eqz v6, :cond_8

    .line 1110
    aget-object v6, v13, v3

    aget-object v7, v14, v3

    aget-object v8, v15, v3

    const/4 v9, 0x1

    invoke-static {v6, v7, v8, v9}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    .line 1108
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1114
    :cond_9
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1116
    :cond_a
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    .line 1289
    if-eqz p2, :cond_5

    .line 1291
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1292
    new-instance v7, Ljava/io/File;

    const-string/jumbo v0, "sdk_shell.jar"

    invoke-direct {v7, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1293
    new-instance v8, Ljava/io/File;

    const-string/jumbo v0, "browser_if.jar"

    invoke-direct {v8, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1294
    new-instance v9, Ljava/io/File;

    const-string/jumbo v0, "core.jar"

    invoke-direct {v9, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1295
    new-instance v1, Ljava/io/File;

    const-string/jumbo v0, "lib"

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1298
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->m:Z

    if-eqz v0, :cond_0

    .line 1299
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->m:Z

    if-eqz v0, :cond_1

    .line 1300
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1301
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    move v3, v6

    .line 1303
    :goto_1
    if-eqz v3, :cond_3

    .line 1304
    sget-object v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->ARCHS:[Ljava/lang/String;

    array-length v5, v4

    move v2, v11

    :goto_2
    if-ge v2, v5, :cond_2

    aget-object v10, v4, v2

    .line 1305
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1306
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v1, v0

    .line 1313
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string/jumbo v0, "assets"

    invoke-direct {v4, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1316
    if-eqz v3, :cond_3

    .line 1317
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const-string/jumbo v2, "specified"

    .line 1319
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1320
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1321
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 1323
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 1324
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1325
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v11}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1317
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1333
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_8

    .line 1335
    array-length v1, v0

    :goto_3
    if-ge v11, v1, :cond_8

    aget-object v2, v0, v11

    .line 1336
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1337
    invoke-static {p0, v2, p2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    .line 1335
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 1289
    :cond_5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :cond_6
    move v3, v11

    .line 1301
    goto :goto_1

    .line 1304
    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1343
    :cond_8
    return-object p2
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    const-class v7, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    monitor-enter v7

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 394
    const-string/jumbo v0, "dexFilePath"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 400
    :cond_0
    const-string/jumbo v0, "set_odex_path"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 401
    if-nez v0, :cond_5

    .line 402
    const/16 v0, 0x2714

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 404
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 407
    const/4 v1, 0x0

    const-string/jumbo v0, "dexFilePath"

    .line 409
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v0, "soFilePath"

    .line 410
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v0, "resFilePath"

    .line 411
    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v0, p0

    .line 407
    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_1

    .line 414
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_1
    const/16 v0, 0x271b

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v6

    .line 447
    :goto_1
    monitor-exit v7

    return-object v0

    .line 425
    :cond_2
    :try_start_1
    const-string/jumbo v0, "ucmKrlDir"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 426
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 427
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/io/File;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 433
    :cond_3
    const-string/jumbo v0, "ucmLibDir"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 434
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 435
    invoke-static {p0, v0, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    move-result-object v0

    .line 437
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_4
    const/16 v0, 0x2729

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 390
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_5
    move-object v5, v0

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x2733

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1121
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    const/4 p2, 0x0

    .line 1140
    :cond_0
    :goto_0
    return-object p2

    .line 1124
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1125
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1126
    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "_jar_kj_uc.so"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xd

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".jar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1133
    const/16 v0, 0x271c

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    new-array v2, v6, [Ljava/lang/Object;

    const/16 v1, 0x2717

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-static {v1, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    aput-object v1, v2, v7

    aput-object v0, v2, v8

    invoke-static {v9, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 1135
    new-array v5, v6, [Ljava/lang/Object;

    const/16 v2, 0x2719

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    invoke-static {v9, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1137
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1138
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1140
    invoke-static {v3, v2, v1, v7}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uc/webview/export/internal/setup/UCSetupException;
        }
    .end annotation

    .prologue
    .line 1176
    move-object v1, p0

    :goto_0
    const/16 v0, 0x2731

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/io/File;

    .line 1178
    const/4 v7, 0x0

    .line 1179
    const/4 v8, 0x0

    .line 1180
    :try_start_0
    const-string/jumbo v0, "libcore_jar_kj_uc.so"

    invoke-static {v5, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1199
    :try_start_1
    const-string/jumbo v0, "libsdk_shell_jar_kj_uc.so"

    invoke-static {v5, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 1203
    :goto_1
    :try_start_2
    const-string/jumbo v0, "libbrowser_if_jar_kj_uc.so"

    invoke-static {v5, v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    .line 1206
    :goto_2
    new-instance v0, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    const-string/jumbo v2, "specified"

    .line 1208
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1209
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1210
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v11, 0x1

    move-object v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1206
    return-object v0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 1186
    if-eqz v4, :cond_2

    .line 1187
    sget-object v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->ARCHS:[Ljava/lang/String;

    array-length v6, v5

    const/4 v2, 0x0

    move v3, v2

    :goto_3
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    .line 1188
    array-length v8, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v8, :cond_1

    aget-object v9, v4, v2

    .line 1189
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1190
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1188
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1187
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    .line 1195
    :cond_2
    throw v0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static varargs invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .prologue
    const/16 v1, 0x2711

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 502
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 876
    :cond_0
    :goto_1
    :pswitch_0
    return-object v4

    .line 504
    :pswitch_1
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 505
    array-length v1, p1

    if-lt v1, v8, :cond_1

    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 507
    :goto_2
    const-string/jumbo v2, "ucmsdk"

    invoke-virtual {v0, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    .line 508
    if-eqz v1, :cond_0

    .line 511
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v1, v4

    .line 505
    goto :goto_2

    .line 515
    :pswitch_2
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 516
    aget-object v1, p1, v5

    check-cast v1, Ljava/io/File;

    .line 517
    aget-object v2, p1, v8

    check-cast v2, Ljava/io/File;

    .line 521
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v4

    move v7, v5

    .line 530
    :goto_3
    if-eqz v7, :cond_0

    .line 531
    invoke-static {v1, v6, v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 532
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v3, :cond_0

    .line 533
    const/16 v1, 0x273a

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v0, v2, v6

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 523
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 524
    const/16 v3, 0x273b

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v0, v7, v6

    aput-object v1, v7, v5

    invoke-static {v3, v7}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 525
    if-eqz v3, :cond_e

    move v7, v5

    .line 526
    goto :goto_3

    .line 541
    :pswitch_3
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 542
    aget-object v1, p1, v5

    check-cast v1, Ljava/io/File;

    .line 543
    const/16 v2, 0x2715

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 546
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "setup_delete"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 548
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 549
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    move-object v4, v0

    .line 554
    goto/16 :goto_1

    .line 558
    :pswitch_4
    aget-object v0, p1, v5

    check-cast v0, Ljava/io/File;

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 562
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v0

    .line 563
    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "createNewFile return false"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :catch_0
    move-exception v0

    .line 566
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    const/16 v2, 0x3ee

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 573
    :pswitch_5
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 575
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "updates"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 579
    :pswitch_6
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 581
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "decompresses"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 585
    :pswitch_7
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 586
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "odexs"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 590
    :pswitch_8
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 592
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "flags"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 596
    :pswitch_9
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 598
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "repairs"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 602
    :pswitch_a
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 604
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "kjlinks"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 608
    :pswitch_b
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 609
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "share/kjlinks"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 613
    :pswitch_c
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 615
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "krlinks"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 619
    :pswitch_d
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 621
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "kjcopies"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 625
    :pswitch_e
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 627
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "share/kjcopies"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 631
    :pswitch_f
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 633
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "krcopies"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 637
    :pswitch_10
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 639
    new-array p1, v8, [Ljava/lang/Object;

    aput-object v0, p1, v6

    const-string/jumbo v0, "rep_apollo"

    aput-object v0, p1, v5

    move p0, v1

    goto/16 :goto_0

    .line 644
    :pswitch_11
    :try_start_1
    const-string/jumbo v0, "com.uc.webkit.sdk.CoreFactoryImpl"

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 645
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    goto/16 :goto_1

    .line 647
    :catch_1
    move-exception v0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 652
    :pswitch_12
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 654
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2d

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 658
    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/unexists/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 662
    :pswitch_14
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 664
    new-instance v1, Lcom/uc/webview/export/internal/setup/as;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/as;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    goto/16 :goto_1

    .line 673
    :pswitch_15
    new-instance v4, Lcom/uc/webview/export/internal/setup/at;

    invoke-direct {v4}, Lcom/uc/webview/export/internal/setup/at;-><init>()V

    goto/16 :goto_1

    .line 687
    :pswitch_16
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 689
    new-instance v1, Lcom/uc/webview/export/internal/setup/au;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/au;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 698
    :pswitch_17
    aget-object v0, p1, v6

    check-cast v0, Ljava/util/List;

    .line 700
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_3

    .line 701
    new-instance v1, Lcom/uc/webview/export/internal/setup/av;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/av;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3
    move-object v4, v0

    .line 708
    goto/16 :goto_1

    .line 712
    :pswitch_18
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 715
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    .line 716
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 719
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 720
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "com.UCMobile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_4

    move v0, v5

    .line 726
    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 730
    :pswitch_19
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 731
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 732
    aget-object v2, p1, v8

    check-cast v2, Ljava/lang/String;

    .line 734
    const-string/jumbo v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 735
    const-string/jumbo v3, "\\."

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 736
    aget-object v3, v0, v6

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v6

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I

    move-result v4

    if-lt v3, v4, :cond_5

    aget-object v3, v0, v5

    .line 737
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v1, v5

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I

    move-result v4

    if-lt v3, v4, :cond_5

    aget-object v0, v0, v8

    .line 738
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I

    move-result v0

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 739
    :cond_5
    const-string/jumbo v0, "UCMPackageInfo"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 742
    :cond_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_1

    .line 746
    :pswitch_1a
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 747
    sget v1, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/16 v2, 0x22

    if-eq v1, v2, :cond_7

    sget v1, Lcom/uc/webview/export/Build;->PACK_TYPE:I

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 752
    :cond_7
    const/16 v1, 0x2731

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 755
    const/16 v1, 0x2726

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/io/File;

    .line 756
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 757
    aget-object v4, v0, v6

    goto/16 :goto_1

    .line 763
    :pswitch_1b
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 765
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    .line 766
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0x3ea

    const-string/jumbo v3, "Directory [%s] not exists."

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    move-object v4, v0

    .line 767
    goto/16 :goto_1

    .line 771
    :pswitch_1c
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 773
    const/16 v1, 0x2730

    new-array v2, v5, [Ljava/lang/Object;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v4, v0

    goto/16 :goto_1

    .line 777
    :pswitch_1d
    aget-object v0, p1, v6

    check-cast v0, Ljava/io/File;

    .line 778
    aget-object v1, p1, v5

    check-cast v1, Ljava/lang/String;

    .line 780
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectCreateDirFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    goto/16 :goto_1

    .line 784
    :pswitch_1e
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/String;

    .line 786
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "curver"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 792
    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 793
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_b

    .line 795
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 796
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 797
    :goto_5
    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v3

    if-eqz v3, :cond_a

    .line 804
    :goto_6
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    .line 808
    :goto_7
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :goto_8
    move-object v4, v0

    .line 798
    goto/16 :goto_1

    .line 796
    :cond_9
    :try_start_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 797
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    goto :goto_6

    .line 804
    :cond_b
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 808
    :goto_9
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_1

    .line 811
    :catch_2
    move-exception v0

    goto/16 :goto_1

    .line 800
    :catch_3
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 801
    :goto_a
    :try_start_a
    const-string/jumbo v3, "tag_test_log"

    const-string/jumbo v5, "getVersion"

    invoke-static {v3, v5, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 804
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 808
    :goto_b
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_1

    .line 811
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 803
    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    .line 804
    :goto_c
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    .line 808
    :goto_d
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c

    .line 810
    :goto_e
    throw v0

    .line 817
    :pswitch_1f
    aget-object v0, p1, v6

    check-cast v0, Ljava/lang/ClassLoader;

    .line 819
    if-nez v0, :cond_c

    .line 824
    :try_start_f
    const-string/jumbo v1, "com.uc.webview.browser.shell.Build$Version"

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 829
    :goto_f
    const-string/jumbo v2, "NAME"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 830
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    const-string/jumbo v3, "SUPPORT_SDK_MIN"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 833
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 835
    sput-object v2, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    .line 836
    sput-object v3, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    .line 838
    const-string/jumbo v2, "API_LEVEL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 839
    const/4 v2, 0x0

    .line 840
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    sput v1, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 847
    :goto_10
    :try_start_10
    const-string/jumbo v1, "com.uc.webview.browser.shell.Build"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 848
    const-string/jumbo v1, "CORE_VERSION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 849
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/webview/export/Build;->CORE_VERSION:Ljava/lang/String;

    .line 851
    const-string/jumbo v1, "TIME"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 852
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/Build;->CORE_TIME:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    goto/16 :goto_1

    .line 854
    :catch_5
    move-exception v0

    goto/16 :goto_1

    .line 826
    :cond_c
    :try_start_11
    const-string/jumbo v1, "com.uc.webview.browser.shell.Build$Version"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    move-result-object v1

    goto :goto_f

    .line 841
    :catch_6
    move-exception v1

    .line 842
    const-string/jumbo v2, "UCMPackageInfo"

    const-string/jumbo v3, "exception"

    invoke-static {v2, v3, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    sput v5, Lcom/uc/webview/export/Build$Version;->API_LEVEL:I

    goto :goto_10

    .line 859
    :pswitch_20
    aget-object v0, p1, v6

    check-cast v0, Landroid/content/Context;

    .line 861
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/uc/webview/export/internal/setup/aw;

    invoke-direct {v1}, Lcom/uc/webview/export/internal/setup/aw;-><init>()V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 868
    if-eqz v1, :cond_0

    array-length v0, v1

    if-lez v0, :cond_0

    .line 869
    array-length v2, v1

    move v0, v6

    :goto_11
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 870
    invoke-static {v3, v6, v4}, Lcom/uc/webview/export/cyclone/UCCyclone;->recursiveDelete(Ljava/io/File;ZLjava/lang/Object;)V

    .line 869
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :catch_7
    move-exception v1

    goto/16 :goto_7

    :catch_8
    move-exception v1

    goto/16 :goto_8

    :catch_9
    move-exception v0

    goto/16 :goto_9

    :catch_a
    move-exception v0

    goto/16 :goto_b

    :catch_b
    move-exception v1

    goto/16 :goto_d

    :catch_c
    move-exception v1

    goto/16 :goto_e

    .line 803
    :catchall_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    goto/16 :goto_c

    .line 800
    :catch_d
    move-exception v0

    move-object v1, v4

    goto/16 :goto_a

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :cond_d
    move v0, v6

    goto/16 :goto_4

    :cond_e
    move v7, v6

    goto/16 :goto_3

    :cond_f
    move-object v3, v4

    move v7, v6

    goto/16 :goto_3

    .line 502
    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_1e
        :pswitch_1f
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_10
        :pswitch_b
        :pswitch_e
    .end packed-switch
.end method

.method public static listFromSharedApps(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1525
    const-string/jumbo v0, "share_core_pkg_name"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1526
    if-nez v1, :cond_1

    const/4 v0, 0x0

    move-object v2, v0

    .line 1527
    :goto_0
    const-string/jumbo v0, "share_core_sys_path"

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1528
    if-eqz v2, :cond_2

    .line 1538
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    if-nez v2, :cond_3

    .line 1541
    :try_start_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x7dd

    const-string/jumbo v2, "Please set UCCore.OPTION_SHARE_CORE_PKG_NAME or UCCore.OPTION_SHARE_CORE_SYS_PATH"

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    :catch_0
    move-exception v0

    .line 1580
    const-string/jumbo v1, "UCMPackageInfo"

    const-string/jumbo v2, "getAppUCMPackageInfo"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v6

    .line 1583
    :goto_2
    return-object v0

    .line 1526
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/data/data/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/app_ucmsdk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 1528
    goto :goto_1

    .line 1545
    :cond_3
    if-eqz v1, :cond_4

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v6

    .line 1546
    goto :goto_2

    .line 1548
    :cond_4
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "config.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 1550
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 1551
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0x7de

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Config.json does not exist in: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1554
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;

    .line 1555
    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1556
    new-instance v2, Ljava/io/File;

    iget-object v3, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1557
    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->d:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1558
    new-instance v4, Ljava/io/File;

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->e:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1559
    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a:Ljava/lang/String;

    .line 1560
    iget-object v8, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->b:Ljava/lang/String;

    .line 1562
    const/16 v0, 0x272b

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/uc/webview/export/Build$Version;->SUPPORT_U4_MIN:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "\u6700\u5c0fu4\u5185\u6838\u7248\u672c\u4e0d\u901a\u8fc7"

    aput-object v11, v9, v10

    invoke-static {v0, v9}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 1563
    const/16 v0, 0x272b

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    const-string/jumbo v12, "\u6700\u5c0fSDK\u7248\u672c\u4e0d\u901a\u8fc7"

    aput-object v12, v10, v11

    invoke-static {v0, v10}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1564
    if-eqz v9, :cond_7

    if-eqz v0, :cond_7

    .line 1565
    const-string/jumbo v0, "UCMPackageInfo"

    const-string/jumbo v5, "\u7248\u672c\u6821\u9a8c\u901a\u8fc7!!!"

    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1572
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    move-result-object v0

    .line 1573
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1567
    :cond_7
    const-string/jumbo v0, "UCMPackageInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7248\u672c\u6821\u9a8c\u4e0d\u901a\u8fc7>>config ucmVersion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",SUPPORT_U4_MIN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/uc/webview/export/Build$Version;->SUPPORT_U4_MIN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    const-string/jumbo v0, "UCMPackageInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7248\u672c\u6821\u9a8c\u4e0d\u901a\u8fc7>>config ucmSuportSDKMin:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",NAME="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/uc/webview/export/Build$Version;->NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1575
    :cond_8
    const-string/jumbo v0, "UCMPackageInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, " or "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method


# virtual methods
.method public getDirAlias(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 294
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 296
    if-eqz v0, :cond_5

    .line 297
    const/16 v1, 0x2713

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    const-string/jumbo v0, "dec"

    .line 314
    :goto_0
    return-object v0

    .line 300
    :cond_0
    const/16 v1, 0x2712

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 301
    const-string/jumbo v0, "upd"

    goto :goto_0

    .line 302
    :cond_1
    const/16 v1, 0x2717

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    const-string/jumbo v0, "kjl"

    goto :goto_0

    .line 304
    :cond_2
    const/16 v1, 0x2719

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    const-string/jumbo v0, "kjc"

    goto :goto_0

    .line 306
    :cond_3
    const/16 v1, 0x2716

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 307
    const-string/jumbo v0, "rep"

    goto :goto_0

    .line 309
    :cond_4
    const-string/jumbo v0, "oth"

    goto :goto_0

    .line 312
    :cond_5
    const-string/jumbo v0, "nul"

    goto :goto_0
.end method

.method public getFileHashs()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 318
    new-instance v2, Ljava/util/HashMap;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 320
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 321
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->md5FileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :goto_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 327
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->md5FileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :goto_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 333
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/uc/webview/export/cyclone/UCCyclone;->md5FileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :goto_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 339
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 343
    :cond_0
    if-eqz v0, :cond_9

    .line 344
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_7

    .line 352
    const-string/jumbo v0, "com.uc.webview.browser.shell.NativeLibraries"

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v0, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_5

    .line 354
    const-string/jumbo v4, "LIBRARIES"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 355
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 356
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 357
    if-eqz v0, :cond_6

    .line 358
    array-length v4, v0

    :goto_3
    if-ge v1, v4, :cond_5

    aget-object v5, v0, v1

    .line 359
    const/4 v6, 0x0

    aget-object v6, v5, v6

    .line 360
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/lang/String;)J

    .line 361
    const/4 v7, 0x2

    aget-object v5, v5, v7

    .line 362
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    invoke-static {v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->md5FileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    .line 364
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 365
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 324
    :cond_1
    const-string/jumbo v0, "core"

    const-string/jumbo v3, "null"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 330
    :cond_2
    const-string/jumbo v0, "browser_if"

    const-string/jumbo v3, "null"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 336
    :cond_3
    const-string/jumbo v0, "sdk_shell"

    const-string/jumbo v3, "null"

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 367
    :cond_4
    :try_start_1
    const-string/jumbo v5, "ok"

    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 378
    :catch_0
    move-exception v0

    const-string/jumbo v0, "NativeLibraries"

    const-string/jumbo v1, "exception"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :cond_5
    :goto_5
    return-object v2

    .line 371
    :cond_6
    :try_start_2
    const-string/jumbo v0, "NativeLibraries"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 375
    :cond_7
    const-string/jumbo v0, "sdk_shell_cl"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 381
    :cond_8
    const-string/jumbo v0, "so_dir"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 384
    :cond_9
    const-string/jumbo v0, "so_path"

    const-string/jumbo v1, "null"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method
