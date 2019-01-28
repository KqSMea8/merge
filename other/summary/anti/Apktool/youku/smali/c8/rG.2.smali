.class public Lc8/rG;
.super Ljava/lang/Object;
.source "WVPackageAppManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sG;->cleanUp(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sG;

.field final synthetic val$retainList:Ljava/util/List;


# direct methods
.method constructor <init>(Lc8/sG;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lc8/rG;->this$0:Lc8/sG;

    iput-object p2, p0, Lc8/rG;->val$retainList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 212
    invoke-static {}, Lc8/LG;->getLocGlobalConfig()Lc8/WG;

    move-result-object v1

    .line 215
    .local v1, "config":Lc8/WG;
    :try_start_0
    invoke-virtual {v1}, Lc8/WG;->getAppsTable()Ljava/util/Hashtable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 216
    .local v6, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 217
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 218
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .line 220
    .local v0, "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    sget-object v9, Lc8/DB;->commonConfig:Lc8/EB;

    iget-boolean v9, v9, Lc8/EB;->isCheckCleanup:Z

    if-eqz v9, :cond_5

    .line 221
    iget-object v9, p0, Lc8/rG;->val$retainList:Ljava/util/List;

    iget-object v10, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 222
    iget v9, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v10, Lc8/dH;->ZIP_REMOVED:I

    if-ne v9, v10, :cond_0

    .line 223
    sget v9, Lc8/dH;->ZIP_NEWEST:I

    iput v9, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 224
    iget-object v9, p0, Lc8/rG;->this$0:Lc8/sG;

    invoke-static {v9}, Lc8/sG;->access$100(Lc8/sG;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ZipApp \u6062\u590dApp : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    .end local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .end local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :catch_0
    move-exception v3

    .line 240
    .local v3, "e":Ljava/lang/Throwable;
    iget-object v9, p0, Lc8/rG;->this$0:Lc8/sG;

    invoke-static {v9}, Lc8/sG;->access$100(Lc8/sG;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "try clear up zipapp failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v9

    invoke-virtual {v9}, Lc8/GG;->getInfoMap()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 246
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 247
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 248
    .local v2, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 249
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/BG;

    .line 250
    .local v8, "value":Lc8/BG;
    iget-boolean v9, v8, Lc8/BG;->needReinstall:Z

    if-eqz v9, :cond_2

    .line 251
    invoke-virtual {v1, v7}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v9

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 252
    invoke-virtual {v1, v7}, Lc8/WG;->getAppInfo(Ljava/lang/String;)Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    move-result-object v9

    const-string/jumbo v10, "0.0"

    iput-object v10, v9, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    .line 254
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, v8, Lc8/BG;->needReinstall:Z

    .line 255
    const/4 v9, 0x0

    iput v9, v8, Lc8/BG;->failCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 257
    .end local v2    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;"
    .end local v5    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/cleanup/InfoSnippet;>;>;"
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Lc8/BG;
    :catch_1
    move-exception v3

    .line 258
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lc8/rG;->this$0:Lc8/sG;

    invoke-static {v9}, Lc8/sG;->access$100(Lc8/sG;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "try Reinstall zipapp by clearUp failed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lc8/GG;->getInstance()Lc8/GG;

    move-result-object v9

    invoke-virtual {v9}, Lc8/GG;->saveInfoSnippetToDisk()V

    .line 261
    invoke-static {v1}, Lc8/LG;->saveGlobalConfigToloc(Lc8/WG;)Z

    .line 262
    return-void

    .line 228
    .restart local v0    # "appInfo":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;"
    .restart local v6    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;>;>;"
    :cond_4
    :try_start_2
    iget v9, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v10, Lc8/dH;->ZIP_NEWEST:I

    if-ne v9, v10, :cond_0

    .line 229
    sget v9, Lc8/dH;->ZIP_REMOVED:I

    iput v9, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 230
    iget-object v9, p0, Lc8/rG;->this$0:Lc8/sG;

    invoke-static {v9}, Lc8/sG;->access$100(Lc8/sG;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ZipApp \u6dd8\u6c70App : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 234
    :cond_5
    iget-boolean v9, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    if-nez v9, :cond_0

    iget v9, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    sget v10, Lc8/dH;->ZIP_REMOVED:I

    if-ne v9, v10, :cond_0

    .line 235
    sget v9, Lc8/dH;->ZIP_NEWEST:I

    iput v9, v0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
