.class public Lc8/yG;
.super Ljava/lang/Object;
.source "WVPackageAppTool.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "WVPackageAppTool"

    sput-object v0, Lc8/yG;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceOnline()Z
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lc8/DB;->commonConfig:Lc8/EB;

    iget v0, v0, Lc8/EB;->packageAppStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static forceUpdateApp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    invoke-static {}, Lc8/yG;->uninstallAll()V

    .line 45
    invoke-static {}, Lc8/sG;->getInstance()Lc8/sG;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v2, v2, v1}, Lc8/sG;->updatePackageAppConfig(Lc8/LB;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public static getAppsFileList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v3

    invoke-virtual {v3}, Lc8/AG;->getRootPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lc8/LD;->getFileListbyDir(Ljava/io/File;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 63
    :goto_0
    return-object v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 63
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static uninstallAll()V
    .locals 3

    .prologue
    .line 30
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/AG;->clearAppsDir()Z

    .line 31
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lc8/AG;->clearTmpDir(Ljava/lang/String;Z)Z

    .line 32
    invoke-static {}, Lc8/uG;->getInstance()Lc8/uG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/uG;->resetConfig()V

    .line 33
    invoke-static {}, Lc8/fG;->getInstance()Lc8/fG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/fG;->resetConfig()V

    .line 34
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v0

    invoke-virtual {v0}, Lc8/WG;->reset()V

    .line 35
    const-string/jumbo v0, "wv_main_config"

    const-string/jumbo v1, "package"

    const-string/jumbo v2, "0"

    invoke-static {v0, v1, v2}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "wv_main_config"

    const-string/jumbo v1, "prefixes"

    const-string/jumbo v2, "0"

    invoke-static {v0, v1, v2}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-void
.end method
