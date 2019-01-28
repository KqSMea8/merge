.class public Lc8/yAg;
.super Ljava/lang/Object;
.source "MIUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkIsXiaomiDevice(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    .local v0, "manager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v3, "com.xiaomi.xmsf"

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 22
    .local v1, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_1

    .line 31
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v2

    .line 25
    .restart local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x69

    if-lt v3, v4, :cond_0

    .line 31
    const/4 v2, 0x1

    goto :goto_0

    .line 29
    .end local v1    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
