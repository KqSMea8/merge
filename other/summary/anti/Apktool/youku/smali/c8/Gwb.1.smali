.class public Lc8/Gwb;
.super Ljava/lang/Object;
.source "PackageRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/aliweex/cache/PackageRepository$RequestRemotePackageFailedException;
    }
.end annotation


# static fields
.field private static final REQUEST_DEP_PKGS_URL_BASE:Ljava/lang/String; = "https://pages.tmall.com/wh/fragment/act/weexdep"

.field private static final REQUEST_DEP_PKGS_URL_BASE_PRE:Ljava/lang/String; = "https://pre-wormhole.tmall.com/wh/fragment/act/weexdep"

.field private static sInstance:Lc8/Gwb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-object v0, Lc8/Gwb;->sInstance:Lc8/Gwb;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/KL;->setUseTlog(Z)V

    .line 42
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/Gwb;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 1
    .param p0, "x0"    # Lc8/Gwb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lc8/Gwb;->tryToGetFromMemoryCache(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lc8/Gwb;Ljava/lang/String;Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 1
    .param p0, "x0"    # Lc8/Gwb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lc8/Gwb;->tryToGetFromZcache(Ljava/lang/String;Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/Gwb;Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 1
    .param p0, "x0"    # Lc8/Gwb;
    .param p1, "x1"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/Gwb;->tryToGetFromAvfsCache(Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lc8/Gwb;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Gwb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/Gwb;->requestRemotePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lc8/Gwb;
    .locals 2

    .prologue
    .line 45
    sget-object v0, Lc8/Gwb;->sInstance:Lc8/Gwb;

    if-nez v0, :cond_1

    .line 46
    const-class v1, Lc8/Gwb;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lc8/Gwb;->sInstance:Lc8/Gwb;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lc8/Gwb;

    invoke-direct {v0}, Lc8/Gwb;-><init>()V

    sput-object v0, Lc8/Gwb;->sInstance:Lc8/Gwb;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :cond_1
    sget-object v0, Lc8/Gwb;->sInstance:Lc8/Gwb;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPackagesParallel(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {p1}, Lc8/nyb;->make(Ljava/lang/Iterable;)Lc8/nyb;

    move-result-object v0

    new-instance v1, Lc8/Dwb;

    invoke-direct {v1, p0}, Lc8/Dwb;-><init>(Lc8/Gwb;)V

    .line 92
    invoke-virtual {v0, v1}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lc8/nyb;->flow()Lc8/Zxb;

    .line 144
    return-void
.end method

.method private getPackagesSequency(Ljava/util/ArrayList;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_5

    .line 148
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc8/lwb;

    .line 149
    .local v9, "item":Lc8/lwb;
    iget-object v6, v9, Lc8/lwb;->group:Ljava/lang/String;

    .line 150
    .local v6, "group":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .local v2, "depCombo":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v17, "??"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 154
    .local v10, "itemStart":J
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    iget-object v0, v9, Lc8/lwb;->depInfos:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v12, v0, :cond_3

    .line 155
    iget-object v0, v9, Lc8/lwb;->depInfos:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/aliweex/cache/Package$Info;

    .line 156
    .local v8, "info":Lcom/alibaba/aliweex/cache/Package$Info;
    iget-object v0, v8, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 157
    .local v16, "path":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/alibaba/aliweex/cache/Package$Info;->getMD5CacheKey()Ljava/lang/String;

    move-result-object v13

    .line 158
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13}, Lc8/Gwb;->tryToGetFromMemoryCache(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v4

    .line 159
    .local v4, "fromMemoryCache":Lcom/alibaba/aliweex/cache/Package$Info;
    if-eqz v4, :cond_0

    .line 160
    iget-object v0, v9, Lc8/lwb;->depInfos:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v4}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v0, v9, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 154
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 164
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v8}, Lc8/Gwb;->tryToGetFromZcache(Ljava/lang/String;Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v5

    .line 165
    .local v5, "fromZcache":Lcom/alibaba/aliweex/cache/Package$Info;
    if-eqz v5, :cond_1

    .line 166
    iget-object v0, v9, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 169
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lc8/Gwb;->tryToGetFromAvfsCache(Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;

    .line 170
    iget-object v0, v8, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 171
    iget-object v0, v9, Lc8/lwb;->cachedInfoIndex:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 174
    :cond_2
    iget-object v0, v8, Lcom/alibaba/aliweex/cache/Package$Info;->relpath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-object v0, v9, Lc8/lwb;->remoteInfo:Lc8/mwb;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/mwb;->remoteInfoIndex:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 178
    .end local v4    # "fromMemoryCache":Lcom/alibaba/aliweex/cache/Package$Info;
    .end local v5    # "fromZcache":Lcom/alibaba/aliweex/cache/Package$Info;
    .end local v8    # "info":Lcom/alibaba/aliweex/cache/Package$Info;
    .end local v13    # "key":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "depComboUrl":Ljava/lang/String;
    const-string/jumbo v17, ","

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 181
    const/16 v17, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 183
    :cond_4
    iget-object v0, v9, Lc8/lwb;->remoteInfo:Lc8/mwb;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v3, v0, Lc8/mwb;->depComboUrl:Ljava/lang/String;

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v14, v18, v10

    .line 185
    .local v14, "oneItemTime":J
    const-string/jumbo v17, "Page_Cache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "one item time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 187
    .end local v2    # "depCombo":Ljava/lang/StringBuilder;
    .end local v3    # "depComboUrl":Ljava/lang/String;
    .end local v6    # "group":Ljava/lang/String;
    .end local v9    # "item":Lc8/lwb;
    .end local v10    # "itemStart":J
    .end local v12    # "j":I
    .end local v14    # "oneItemTime":J
    :cond_5
    return-void
.end method

.method private requestRemoteDepPkgsParallel(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, "s":J
    invoke-static {}, Lc8/nyb;->make()Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/Fwb;

    invoke-direct {v3, p0, p1}, Lc8/Fwb;-><init>(Lc8/Gwb;Ljava/util/List;)V

    .line 298
    invoke-virtual {v2, v3}, Lc8/nyb;->branch(Lc8/Oxb;)Lc8/nyb;

    move-result-object v2

    new-instance v3, Lc8/Ewb;

    invoke-direct {v3, p0, v0, v1}, Lc8/Ewb;-><init>(Lc8/Gwb;J)V

    .line 323
    invoke-virtual {v2, v3}, Lc8/nyb;->next(Lc8/Hxb;)Lc8/nyb;

    move-result-object v2

    .line 330
    invoke-virtual {v2}, Lc8/nyb;->flow()Lc8/Zxb;

    .line 335
    return-object p1
.end method

.method private requestRemoteDepPkgsSequency(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 266
    .local v12, "s":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v7, v0, :cond_2

    .line 267
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/lwb;

    .line 268
    .local v8, "item":Lc8/lwb;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 269
    .local v14, "startTime":J
    const-string/jumbo v3, "https://pages.tmall.com/wh/fragment/act/weexdep"

    .line 270
    .local v3, "depUrlBase":Ljava/lang/String;
    iget-object v0, v8, Lc8/lwb;->group:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 271
    iget-object v0, v8, Lc8/lwb;->group:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "host":Ljava/lang/String;
    const-string/jumbo v17, "g-assets.daily.taobao.net"

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 273
    const-string/jumbo v3, "https://pre-wormhole.tmall.com/wh/fragment/act/weexdep"

    .line 276
    .end local v6    # "host":Ljava/lang/String;
    :cond_0
    iget-object v0, v8, Lc8/lwb;->remoteInfo:Lc8/mwb;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lc8/mwb;->remoteInfoIndex:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 277
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 278
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v17

    const-string/jumbo v18, "wh_dep"

    iget-object v0, v8, Lc8/lwb;->remoteInfo:Lc8/mwb;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/mwb;->depComboUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 279
    invoke-virtual/range {v17 .. v19}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 280
    .local v2, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 281
    .local v16, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lc8/Gwb;->requestRemotePackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 282
    .local v9, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v10, v18, v14

    .line 283
    .local v10, "requestRemoteComboPkgsTime":J
    const-string/jumbo v17, "Page_Cache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "request one remote combo pkgs time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, ", url:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, v8, Lc8/lwb;->remoteInfo:Lc8/mwb;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v9, v0, Lc8/mwb;->comboJsData:Ljava/lang/String;

    .line 266
    .end local v2    # "builder":Landroid/net/Uri$Builder;
    .end local v9    # "result":Ljava/lang/String;
    .end local v10    # "requestRemoteComboPkgsTime":J
    .end local v16    # "url":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 288
    .end local v3    # "depUrlBase":Ljava/lang/String;
    .end local v8    # "item":Lc8/lwb;
    .end local v14    # "startTime":J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v4, v18, v12

    .line 289
    .local v4, "e":J
    const-string/jumbo v17, "Page_Cache"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "request remote combo pkgs all time:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    return-object p1
.end method

.method private requestRemotePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 234
    .local v8, "start":J
    new-instance v3, Lc8/sN;

    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v11

    invoke-virtual {v11}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-direct {v3, v11}, Lc8/sN;-><init>(Landroid/content/Context;)V

    .line 235
    .local v3, "network":Lc8/hM;
    new-instance v6, Lc8/IN;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lc8/IN;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, "request":Lc8/uM;
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v11

    invoke-virtual {v11}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 238
    const-string/jumbo v11, "user-agent"

    .line 239
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v14

    invoke-virtual {v14}, Lc8/Fob;->getApplication()Landroid/app/Application;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {}, Lc8/UUf;->getConfig()Ljava/util/Map;

    move-result-object v15

    invoke-static {v14, v15}, Lc8/cag;->assembleUserAgent(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 238
    invoke-interface {v6, v11, v14}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_0
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v11

    iget-object v11, v11, Lc8/kwb;->pageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 242
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v11

    iget-object v11, v11, Lc8/kwb;->pageName:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "pn":Ljava/lang/String;
    const-string/jumbo v11, "referer"

    invoke-interface {v6, v11, v5}, Lc8/uM;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .end local v5    # "pn":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    invoke-interface {v3, v6, v11}, Lc8/hM;->syncSend(Lc8/uM;Ljava/lang/Object;)Lc8/vM;

    move-result-object v7

    .line 246
    .local v7, "response":Lc8/vM;
    invoke-interface {v7}, Lc8/vM;->getStatusCode()I

    move-result v10

    .line 248
    .local v10, "statusCode":I
    invoke-interface {v7}, Lc8/vM;->getBytedata()[B

    move-result-object v2

    .line 249
    .local v2, "data":[B
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long v12, v14, v8

    .line 250
    .local v12, "time":J
    const-string/jumbo v11, "Page_Cache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "request network time:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    .line 252
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>([B)V

    return-object v11

    .line 254
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 255
    .local v4, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v11, "path"

    move-object/from16 v0, p1

    invoke-virtual {v4, v11, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string/jumbo v11, "statusCode"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v11, v14}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v11

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "-111112"

    const-string/jumbo v16, "request remote package failed"

    move-object/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0}, Lc8/kwb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string/jumbo v11, "Page_Cache"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "request remote package failed:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", status code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v11, Lcom/alibaba/aliweex/cache/PackageRepository$RequestRemotePackageFailedException;

    const-string/jumbo v14, "request remote package failed"

    invoke-direct {v11, v14}, Lcom/alibaba/aliweex/cache/PackageRepository$RequestRemotePackageFailedException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method private tryToGetFromAvfsCache(Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 8
    .param p1, "info"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 220
    .local v4, "startTime":J
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v1

    iget-object v6, p1, Lcom/alibaba/aliweex/cache/Package$Info;->key:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lc8/Awb;->getPackageInfoFromAvfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "code":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 222
    .local v2, "requestAvfsCachePkgTime":J
    const-string/jumbo v1, "Page_Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request avfs package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    iput-object v0, p1, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    .line 225
    const-string/jumbo v1, "avfs"

    iput-object v1, p1, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    .line 226
    iput-wide v2, p1, Lcom/alibaba/aliweex/cache/Package$Info;->requestTime:J

    .line 227
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v1

    const-string/jumbo v6, "avfs"

    iget-object v7, p1, Lcom/alibaba/aliweex/cache/Package$Info;->path:Ljava/lang/String;

    invoke-virtual {v1, v6, v2, v3, v7}, Lc8/kwb;->alarmRequestSuccess(Ljava/lang/String;JLjava/lang/String;)V

    .line 229
    :cond_0
    return-object p1
.end method

.method private tryToGetFromMemoryCache(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 191
    .local v4, "startTime":J
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v1

    invoke-virtual {v1, p2}, Lc8/Awb;->getPackageInfoFromMemCache(Ljava/lang/String;)Lcom/alibaba/aliweex/cache/Package$Info;

    move-result-object v0

    .line 192
    .local v0, "cachedPkgInfo":Lcom/alibaba/aliweex/cache/Package$Info;
    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 194
    .local v2, "requestMemCachePkgTime":J
    const-string/jumbo v1, "Page_Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package memory cache hit:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "memory"

    iput-object v1, v0, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    .line 196
    iput-wide v2, v0, Lcom/alibaba/aliweex/cache/Package$Info;->requestTime:J

    .line 197
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v1

    const-string/jumbo v6, "memory"

    invoke-virtual {v1, v6, v2, v3, p1}, Lc8/kwb;->alarmRequestSuccess(Ljava/lang/String;JLjava/lang/String;)V

    .line 198
    const-string/jumbo v1, "Page_Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package memory cache all time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .end local v2    # "requestMemCachePkgTime":J
    :cond_0
    return-object v0
.end method

.method private tryToGetFromZcache(Ljava/lang/String;Lcom/alibaba/aliweex/cache/Package$Info;)Lcom/alibaba/aliweex/cache/Package$Info;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/alibaba/aliweex/cache/Package$Info;

    .prologue
    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 205
    .local v4, "zcacheStartTime":J
    invoke-static {p1}, Lc8/fH;->getStreamByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "template":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v4

    .line 207
    .local v2, "zcacheRequestTime":J
    const-string/jumbo v1, "Page_Cache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request zcache package:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    const-string/jumbo v1, "zcache"

    iput-object v1, p2, Lcom/alibaba/aliweex/cache/Package$Info;->from:Ljava/lang/String;

    .line 210
    iput-wide v2, p2, Lcom/alibaba/aliweex/cache/Package$Info;->requestTime:J

    .line 211
    iput-object v0, p2, Lcom/alibaba/aliweex/cache/Package$Info;->code:Ljava/lang/String;

    .line 212
    invoke-static {}, Lc8/kwb;->getInstance()Lc8/kwb;

    move-result-object v1

    const-string/jumbo v6, "zcache"

    invoke-virtual {v1, v6, v2, v3, p1}, Lc8/kwb;->alarmRequestSuccess(Ljava/lang/String;JLjava/lang/String;)V

    .line 215
    .end local p2    # "info":Lcom/alibaba/aliweex/cache/Package$Info;
    :goto_0
    return-object p2

    .restart local p2    # "info":Lcom/alibaba/aliweex/cache/Package$Info;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method getPackages(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/lwb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "pkgItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 58
    .local v4, "queryCacheStart":J
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v8

    invoke-virtual {v8}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v0

    .line 59
    .local v0, "configAdapter":Lc8/Hob;
    const/4 v3, 0x0

    .line 60
    .local v3, "useParallel":Z
    if-eqz v0, :cond_0

    .line 61
    const-string/jumbo v8, "weexcache_cfg"

    const-string/jumbo v9, "get_pkgs_parallel"

    const-string/jumbo v10, "false"

    invoke-interface {v0, v8, v9, v10}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "getPkgsParallel":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 63
    const/4 v3, 0x1

    .line 66
    .end local v1    # "getPkgsParallel":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_2

    .line 67
    invoke-direct {p0, p1}, Lc8/Gwb;->getPackagesParallel(Ljava/util/ArrayList;)V

    .line 71
    :goto_0
    const-string/jumbo v8, "Page_Cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getPkgsParallel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v4

    .line 74
    .local v6, "queryCacheTime":J
    const-string/jumbo v8, "Page_Cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "query cache time:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v3, 0x0

    .line 77
    if-eqz v0, :cond_1

    .line 78
    const-string/jumbo v8, "weexcache_cfg"

    const-string/jumbo v9, "get_remote_pkgs_parallel"

    const-string/jumbo v10, "true"

    invoke-interface {v0, v8, v9, v10}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "getRemotePkgsParallel":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 80
    const/4 v3, 0x1

    .line 83
    .end local v2    # "getRemotePkgsParallel":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lc8/Gwb;->requestRemoteDepPkgsParallel(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 85
    :goto_1
    const-string/jumbo v8, "Page_Cache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRemotePkgsParallel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-object p1

    .line 69
    .end local v6    # "queryCacheTime":J
    :cond_2
    invoke-direct {p0, p1}, Lc8/Gwb;->getPackagesSequency(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 83
    .restart local v6    # "queryCacheTime":J
    :cond_3
    invoke-direct {p0, p1}, Lc8/Gwb;->requestRemoteDepPkgsSequency(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1
.end method
