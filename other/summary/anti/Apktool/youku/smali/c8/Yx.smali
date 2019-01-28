.class public Lc8/Yx;
.super Ljava/lang/Object;
.source "BundleListing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/atlas/bundleInfo/BundleListing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BundleInfo"
.end annotation


# instance fields
.field public activities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public applicationName:Ljava/lang/String;

.field public contentProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public dependency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public isInternal:Z

.field public md5:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public receivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public services:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public size:J

.field public totalDependency:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public unique_tag:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Yx;->isInternal:Z

    return-void
.end method

.method private findBundleTransitively(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p2, "bundlesListForInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p1}, Lc8/Yx;->findBundleTransitivelyInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private findBundleTransitivelyInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;
    .param p3, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "bundlesListForInstall":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 369
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 379
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc8/Xx;->getDependencyForBundle(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 380
    .local v1, "singleLevelDependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 381
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 382
    .local v0, "dependepcy":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0, v0, p2, p3}, Lc8/Yx;->findBundleTransitivelyInternal(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v0    # "dependepcy":Ljava/lang/String;
    .end local v1    # "singleLevelDependencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 373
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    invoke-interface {p2, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 387
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized addRuntimeDependency(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 344
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Yx;->totalDependency:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lc8/Yx;->getTotalDependency()Ljava/util/List;

    .line 347
    :cond_0
    iget-object v0, p0, Lc8/Yx;->totalDependency:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 348
    iget-object v0, p0, Lc8/Yx;->totalDependency:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_1
    monitor-exit p0

    return-void

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActivities()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lc8/Yx;->activities:Ljava/util/HashMap;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lc8/Yx;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getComponents()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    .local v0, "components":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v1, p0, Lc8/Yx;->activities:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Yx;->activities:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 329
    iget-object v1, p0, Lc8/Yx;->activities:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 331
    :cond_0
    iget-object v1, p0, Lc8/Yx;->services:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Yx;->services:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 332
    iget-object v1, p0, Lc8/Yx;->services:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 334
    :cond_1
    iget-object v1, p0, Lc8/Yx;->receivers:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/Yx;->receivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 335
    iget-object v1, p0, Lc8/Yx;->receivers:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 337
    :cond_2
    iget-object v1, p0, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 338
    iget-object v1, p0, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 340
    :cond_3
    return-object v0
.end method

.method public getContentProviders()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    iget-object v0, p0, Lc8/Yx;->contentProviders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getDependency()Ljava/util/List;
    .locals 1
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
    .line 302
    iget-object v0, p0, Lc8/Yx;->dependency:Ljava/util/List;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lc8/Yx;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lc8/Yx;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lc8/Yx;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lc8/Yx;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getReceivers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lc8/Yx;->receivers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getServices()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lc8/Yx;->services:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 253
    iget-wide v0, p0, Lc8/Yx;->size:J

    return-wide v0
.end method

.method public declared-synchronized getTotalDependency()Ljava/util/List;
    .locals 3
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
    .line 353
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/Yx;->totalDependency:Ljava/util/List;

    if-nez v1, :cond_0

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/Yx;->totalDependency:Ljava/util/List;

    .line 355
    invoke-virtual {p0}, Lc8/Yx;->getPkgName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/Yx;->totalDependency:Ljava/util/List;

    invoke-direct {p0, v1, v2}, Lc8/Yx;->findBundleTransitively(Ljava/lang/String;Ljava/util/List;)V

    .line 357
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v0, "temp_dependency":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lc8/Yx;->totalDependency:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    monitor-exit p0

    return-object v0

    .line 353
    .end local v0    # "temp_dependency":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getUnique_tag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lc8/Yx;->unique_tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lc8/Yx;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lc8/Yx;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isInternal()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lc8/Yx;->isInternal:Z

    return v0
.end method

.method public setDependency(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, "dependency":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 307
    const/4 v0, 0x0

    .local v0, "x":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 308
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 311
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "x":I
    :cond_1
    iput-object p1, p0, Lc8/Yx;->dependency:Ljava/util/List;

    .line 316
    return-void
.end method
