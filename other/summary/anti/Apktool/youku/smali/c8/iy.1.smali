.class public final Lc8/iy;
.super Ljava/lang/Object;
.source "BundleInstaller.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/my;->createIdleInstallerIfNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 265
    invoke-static {}, Lc8/my;->access$000()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lc8/my;->access$100()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 266
    const/4 v5, 0x0

    invoke-static {v5}, Lc8/my;->access$202(Landroid/os/MessageQueue$IdleHandler;)Landroid/os/MessageQueue$IdleHandler;

    .line 285
    :goto_0
    return v4

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 270
    .local v1, "bundleStruct":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/taobao/atlas/framework/BundleInstaller$InstallListener;>;"
    invoke-static {}, Lc8/my;->access$100()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 271
    invoke-static {}, Lc8/my;->access$100()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bundleStruct":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/taobao/atlas/framework/BundleInstaller$InstallListener;>;"
    check-cast v1, Landroid/util/Pair;

    .line 275
    .restart local v1    # "bundleStruct":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/taobao/atlas/framework/BundleInstaller$InstallListener;>;"
    :cond_1
    :goto_1
    if-eqz v1, :cond_4

    .line 276
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 277
    .local v0, "bundleName":Ljava/lang/String;
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lc8/ly;

    .line 278
    .local v3, "listener":Lc8/ly;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v6

    invoke-virtual {v6, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    check-cast v2, Lc8/hy;

    .line 279
    .local v2, "impl":Lc8/hy;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lc8/hy;->checkValidate()Z

    move-result v6

    if-nez v6, :cond_4

    .line 280
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "idle install bundle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/String;

    aput-object v0, v7, v4

    invoke-virtual {v6, v7, v3}, Lc8/my;->installTransitivelyAsync([Ljava/lang/String;Lc8/ly;)V

    move v4, v5

    .line 282
    goto :goto_0

    .line 272
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v2    # "impl":Lc8/hy;
    .end local v3    # "listener":Lc8/ly;
    :cond_3
    invoke-static {}, Lc8/my;->access$000()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 273
    invoke-static {}, Lc8/my;->access$000()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "bundleStruct":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/taobao/atlas/framework/BundleInstaller$InstallListener;>;"
    check-cast v1, Landroid/util/Pair;

    .restart local v1    # "bundleStruct":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/taobao/atlas/framework/BundleInstaller$InstallListener;>;"
    goto :goto_1

    :cond_4
    move v4, v5

    .line 285
    goto :goto_0
.end method
