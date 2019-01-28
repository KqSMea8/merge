.class public Lc8/Fwb;
.super Lc8/Oxb;
.source "PackageRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Gwb;->requestRemoteDepPkgsParallel(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Oxb",
        "<",
        "Lc8/lwb;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Gwb;


# direct methods
.method constructor <init>(Lc8/Gwb;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Gwb;

    .prologue
    .line 298
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/cache/Package$Item;>;"
    iput-object p1, p0, Lc8/Fwb;->this$0:Lc8/Gwb;

    invoke-direct {p0, p2}, Lc8/Oxb;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic branch(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 298
    check-cast p2, Lc8/lwb;

    invoke-virtual {p0, p1, p2}, Lc8/Fwb;->branch(ILc8/lwb;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public branch(ILc8/lwb;)Ljava/lang/String;
    .locals 12
    .param p1, "index"    # I
    .param p2, "item"    # Lc8/lwb;

    .prologue
    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 302
    .local v6, "startTime":J
    iget-object v9, p2, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iget-object v9, v9, Lc8/mwb;->remoteInfoIndex:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 303
    const-string/jumbo v1, "https://pages.tmall.com/wh/fragment/act/weexdep"

    .line 304
    .local v1, "depUrlBase":Ljava/lang/String;
    iget-object v9, p2, Lc8/lwb;->group:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 305
    iget-object v9, p2, Lc8/lwb;->group:Ljava/lang/String;

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 306
    .local v2, "host":Ljava/lang/String;
    const-string/jumbo v9, "g-assets.daily.taobao.net"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 307
    const-string/jumbo v1, "https://pre-wormhole.tmall.com/wh/fragment/act/weexdep"

    .line 310
    .end local v2    # "host":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 311
    invoke-virtual {v9}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string/jumbo v10, "wh_dep"

    iget-object v11, p2, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iget-object v11, v11, Lc8/mwb;->depComboUrl:Ljava/lang/String;

    .line 312
    invoke-virtual {v9, v10, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 313
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, "url":Ljava/lang/String;
    iget-object v9, p0, Lc8/Fwb;->this$0:Lc8/Gwb;

    invoke-static {v9, v8}, Lc8/Gwb;->access$300(Lc8/Gwb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "result":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v4, v10, v6

    .line 316
    .local v4, "requestRemoteComboPkgsTime":J
    const-string/jumbo v9, "Page_Cache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "request one remote combo pkgs time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v9, p2, Lc8/lwb;->remoteInfo:Lc8/mwb;

    iput-object v3, v9, Lc8/mwb;->comboJsData:Ljava/lang/String;

    .line 320
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    .end local v1    # "depUrlBase":Ljava/lang/String;
    .end local v3    # "result":Ljava/lang/String;
    .end local v4    # "requestRemoteComboPkgsTime":J
    .end local v8    # "url":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
