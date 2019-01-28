.class public Lc8/pwb;
.super Ljava/lang/Object;
.source "PackageCache.java"

# interfaces
.implements Lc8/Hxb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Awb;->tryToPutZCachePackageIntoMemroyCache(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/Hxb",
        "<",
        "Ljava/lang/String;",
        "Lc8/SG;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Awb;


# direct methods
.method constructor <init>(Lc8/Awb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Awb;

    .prologue
    .line 259
    iput-object p1, p0, Lc8/pwb;->this$0:Lc8/Awb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;)Lc8/SG;
    .locals 6
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 262
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v0

    .line 263
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v3

    sget-object v4, Lc8/dH;->APP_RES_NAME:Ljava/lang/String;

    const/4 v5, 0x0

    .line 265
    invoke-virtual {v3, v0, v4, v5}, Lc8/AG;->getZipResAbsolutePath(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, "resPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    invoke-static {}, Lc8/AG;->getInstance()Lc8/AG;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/AG;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lc8/fH;->parseAppResConfig(Ljava/lang/String;Z)Lc8/SG;

    move-result-object v3

    .line 273
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "resPath":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/pwb;->call(Ljava/lang/String;)Lc8/SG;

    move-result-object v0

    return-object v0
.end method
