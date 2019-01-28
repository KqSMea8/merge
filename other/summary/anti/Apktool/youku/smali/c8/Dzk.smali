.class public Lc8/Dzk;
.super Ljava/lang/Object;
.source "CrashHandlerInitPreLauncher.java"

# interfaces
.implements Lc8/SSb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gzk;->initCrashHandler(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gzk;


# direct methods
.method constructor <init>(Lc8/Gzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gzk;

    .prologue
    .line 76
    iput-object p1, p0, Lc8/Dzk;->this$0:Lc8/Gzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCrashCaught(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 12
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Thread;",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    invoke-static {}, Lc8/bB;->getKeyPointLog()Ljava/util/Map;

    move-result-object v6

    .line 81
    .local v6, "state":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v7, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    invoke-static {v7}, Lc8/bB;->getPackageInfo(Landroid/app/Application;)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 82
    .local v4, "currentVersion":Ljava/lang/String;
    invoke-static {v4}, Lc8/bB;->getLastDDUpdateKeyPointLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "preLog":Ljava/lang/String;
    const-string/jumbo v7, "lastDDUpdateLog"

    if-eqz v5, :cond_0

    .end local v5    # "preLog":Ljava/lang/String;
    :goto_0
    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v7, "baselineinfo"

    invoke-static {}, Lc8/iB;->instance()Lc8/iB;

    move-result-object v8

    invoke-virtual {v8}, Lc8/iB;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v7

    invoke-virtual {v7}, Lc8/dy;->getBundles()Ljava/util/List;

    move-result-object v3

    .line 86
    .local v3, "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    if-eqz v3, :cond_1

    .line 87
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Seq;

    .local v0, "bundle":Lc8/Seq;
    move-object v7, v0

    .line 88
    check-cast v7, Lc8/hy;

    invoke-virtual {v7}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v7

    invoke-virtual {v7}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "bundlePath":Ljava/lang/String;
    const-string/jumbo v7, "."

    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "bundlePostfix":Ljava/lang/String;
    invoke-interface {v0}, Lc8/Seq;->getLocation()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    check-cast v7, Lc8/hy;

    invoke-virtual {v7}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v7

    invoke-virtual {v7}, Lc8/ry;->getCurrentRevision()Lc8/uy;

    move-result-object v7

    .line 91
    invoke-virtual {v7}, Lc8/uy;->getRevisionDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "|"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, "|"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v0, Lc8/hy;

    .line 92
    .end local v0    # "bundle":Lc8/Seq;
    invoke-virtual {v0}, Lc8/hy;->getArchive()Lc8/ry;

    move-result-object v10

    invoke-virtual {v10}, Lc8/ry;->getArchiveFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 83
    .end local v1    # "bundlePath":Ljava/lang/String;
    .end local v2    # "bundlePostfix":Ljava/lang/String;
    .end local v3    # "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    .restart local v5    # "preLog":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "NULL"

    goto/16 :goto_0

    .line 95
    .end local v5    # "preLog":Ljava/lang/String;
    .restart local v3    # "bundles":Ljava/util/List;, "Ljava/util/List<Lorg/osgi/framework/Bundle;>;"
    :cond_1
    return-object v6
.end method
