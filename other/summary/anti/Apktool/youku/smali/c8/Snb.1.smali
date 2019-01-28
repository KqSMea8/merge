.class public Lc8/Snb;
.super Lc8/Mnb;
.source "ALPInitPoint.java"


# instance fields
.field public appkey:Ljava/lang/String;

.field public currentName:Ljava/lang/String;

.field public currentPN:Ljava/lang/String;

.field public currentVersion:Ljava/lang/String;

.field public dataFromValue:Ljava/lang/String;

.field public sdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lc8/Mnb;-><init>()V

    .line 22
    const-string/jumbo v0, "lpSDK"

    iput-object v0, p0, Lc8/Snb;->dataFromValue:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Snb;->currentPN:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Snb;->currentName:Ljava/lang/String;

    .line 28
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lc8/Snb;->currentVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    invoke-static {}, Lc8/Ymb;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Snb;->sdkVersion:Ljava/lang/String;

    .line 31
    invoke-static {}, Lc8/Ymb;->getOpenParam()Lc8/job;

    move-result-object v0

    iget-object v0, v0, Lc8/job;->appkey:Ljava/lang/String;

    iput-object v0, p0, Lc8/Snb;->appkey:Ljava/lang/String;

    .line 32
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getProperty()Ljava/util/Map;
    .locals 3
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
    .line 41
    invoke-super {p0}, Lc8/Mnb;->getProperty()Ljava/util/Map;

    move-result-object v0

    .line 42
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "currentName"

    iget-object v1, p0, Lc8/Snb;->currentName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "unknown"

    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v2, "currentPN"

    iget-object v1, p0, Lc8/Snb;->currentPN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string/jumbo v2, "appkey"

    iget-object v1, p0, Lc8/Snb;->appkey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "unknown"

    :goto_2
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v2, "currentVersion"

    iget-object v1, p0, Lc8/Snb;->currentVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "unknown"

    :goto_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v2, "sdkVersion"

    iget-object v1, p0, Lc8/Snb;->sdkVersion:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "unknown"

    :goto_4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v2, "dataFrom"

    iget-object v1, p0, Lc8/Snb;->dataFromValue:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "unknown"

    :goto_5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-object v0

    .line 42
    :cond_0
    iget-object v1, p0, Lc8/Snb;->currentName:Ljava/lang/String;

    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lc8/Snb;->currentPN:Ljava/lang/String;

    goto :goto_1

    .line 44
    :cond_2
    iget-object v1, p0, Lc8/Snb;->appkey:Ljava/lang/String;

    goto :goto_2

    .line 45
    :cond_3
    iget-object v1, p0, Lc8/Snb;->currentVersion:Ljava/lang/String;

    goto :goto_3

    .line 46
    :cond_4
    iget-object v1, p0, Lc8/Snb;->sdkVersion:Ljava/lang/String;

    goto :goto_4

    .line 47
    :cond_5
    iget-object v1, p0, Lc8/Snb;->dataFromValue:Ljava/lang/String;

    goto :goto_5
.end method

.method public getSpm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "cf.linkpartner.0.1"

    return-object v0
.end method
