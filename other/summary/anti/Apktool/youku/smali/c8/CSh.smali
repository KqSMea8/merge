.class public Lc8/CSh;
.super Lc8/PSh;
.source "CheckAPPJSBridge.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Lc8/PSh;-><init>()V

    .line 18
    iput-object p1, p0, Lc8/CSh;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public checkAPK(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 26
    .local v0, "isInstalled":Z
    invoke-virtual {p0, p1}, Lc8/CSh;->generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 27
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "pkg"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "pkg":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 31
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 33
    :try_start_0
    iget-object v5, p0, Lc8/CSh;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 34
    .local v3, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 41
    .end local v3    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    const-string/jumbo v5, "isInstalled"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v5

    goto :goto_0
.end method
