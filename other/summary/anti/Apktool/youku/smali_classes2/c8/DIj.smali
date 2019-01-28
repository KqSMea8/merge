.class public Lc8/DIj;
.super Ljava/lang/Object;
.source "NavManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerPreprocessor()V
    .locals 8

    .prologue
    .line 17
    const-string/jumbo v0, ""

    .line 19
    .local v0, "appVersionName":Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    sget-object v6, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 20
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v3, Lc8/KIj;

    new-instance v5, Lc8/IIj;

    invoke-direct {v5}, Lc8/IIj;-><init>()V

    invoke-direct {v3, v5, v0}, Lc8/KIj;-><init>(Lc8/FIj;Ljava/lang/String;)V

    .line 26
    .local v3, "preprocessor":Lc8/KIj;
    invoke-static {v3}, Lc8/Ybf;->registerPreprocessor(Lc8/Tbf;)V

    .line 29
    new-instance v4, Lc8/JIj;

    invoke-direct {v4}, Lc8/JIj;-><init>()V

    .line 30
    .local v4, "weex":Lc8/JIj;
    invoke-static {v4}, Lc8/Ybf;->registerPreprocessor(Lc8/Tbf;)V

    .line 31
    return-void

    .line 21
    .end local v3    # "preprocessor":Lc8/KIj;
    .end local v4    # "weex":Lc8/JIj;
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
