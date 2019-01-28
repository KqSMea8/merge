.class public Lc8/Znb;
.super Ljava/lang/Object;
.source "ALPJumpUrlHandler.java"


# instance fields
.field public jumpParam:Lc8/iob;


# direct methods
.method public constructor <init>(Lc8/iob;)V
    .locals 0
    .param p1, "jumpParam"    # Lc8/iob;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    .line 26
    return-void
.end method

.method private getH5BaseUrl()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 81
    const/4 v0, 0x0

    .line 83
    .local v0, "baseUrl":Ljava/lang/String;
    sget-object v3, Lc8/Ymb;->configManager:Lc8/Anb;

    if-eqz v3, :cond_0

    sget-object v3, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v3}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 84
    sget-object v3, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v3}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v1

    .line 85
    .local v1, "configInfo":Lc8/Fnb;
    iget-object v3, v1, Lc8/Fnb;->h5Scheme:Ljava/util/Map;

    iget-object v4, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    invoke-virtual {v4}, Lc8/iob;->getModule()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "baseUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 86
    .restart local v0    # "baseUrl":Ljava/lang/String;
    if-nez v0, :cond_3

    move-object v0, v2

    .line 90
    .end local v1    # "configInfo":Lc8/Fnb;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    invoke-virtual {v3}, Lc8/iob;->isTaobaoOrTmall()Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    sget-object v3, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v3}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v1

    .line 92
    .restart local v1    # "configInfo":Lc8/Fnb;
    iget-object v3, v1, Lc8/Fnb;->h5Scheme:Ljava/util/Map;

    iget-object v4, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    iget-object v4, v4, Lc8/iob;->linkKey:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "baseUrl":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 93
    .restart local v0    # "baseUrl":Ljava/lang/String;
    if-nez v0, :cond_4

    move-object v0, v2

    .line 97
    .end local v1    # "configInfo":Lc8/Fnb;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 98
    iget-object v2, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    invoke-virtual {v2}, Lc8/iob;->getBackUpH5Url()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_2
    return-object v0

    .line 86
    .restart local v1    # "configInfo":Lc8/Fnb;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lc8/vob;->addUrlPostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    invoke-virtual {v4}, Lc8/iob;->getPostfix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lc8/vob;->addUrlPostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    invoke-virtual {v3}, Lc8/iob;->getPostfix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getDownLoadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 61
    if-eqz p1, :cond_3

    sget-object v1, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v1}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-object v1, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v1}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v1

    iget-object v1, v1, Lc8/Fnb;->downloadUrl:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 64
    const-string/jumbo v1, "taobao"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    const-string/jumbo p1, "taobao"

    .line 70
    :cond_0
    :goto_0
    sget-object v1, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v1}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v1

    iget-object v1, v1, Lc8/Fnb;->downloadUrl:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "downloadUrl":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    .line 74
    .end local v0    # "downloadUrl":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0

    .line 66
    :cond_2
    const-string/jumbo v1, "tmall"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    const-string/jumbo p1, "tmall"

    goto :goto_0

    .line 74
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public getH5Url()Ljava/lang/String;
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0}, Lc8/Znb;->getH5BaseUrl()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v1, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    sget-object v2, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v2}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v2

    iget-object v2, v2, Lc8/Fnb;->dynamicParam:Ljava/util/Map;

    invoke-static {v1, v0, v2}, Lc8/yob;->getH5URL(Lc8/iob;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNativeUrlAndAction(Ljava/lang/String;)Lc8/bob;
    .locals 7
    .param p1, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v2, Lc8/bob;

    invoke-direct {v2}, Lc8/bob;-><init>()V

    .line 31
    .local v2, "info":Lc8/bob;
    const/4 v1, 0x0

    .line 35
    .local v1, "configUrl":Ljava/lang/String;
    sget-object v4, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v4}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v4

    invoke-virtual {v4, p1}, Lc8/Fnb;->getSchemeInfo(Ljava/lang/String;)Lc8/Enb;

    move-result-object v3

    .line 36
    .local v3, "schemeInfo":Lc8/Enb;
    if-eqz v3, :cond_0

    .line 37
    iget-object v1, v3, Lc8/Enb;->uri:Ljava/lang/String;

    .line 38
    iget-object v4, v3, Lc8/Enb;->action:Ljava/util/List;

    iput-object v4, v2, Lc8/bob;->actions:Ljava/util/List;

    .line 39
    iget-object v4, v3, Lc8/Enb;->category:Ljava/util/List;

    iput-object v4, v2, Lc8/bob;->categroies:Ljava/util/List;

    .line 40
    iget-object v4, v3, Lc8/Enb;->packageName:Ljava/lang/String;

    iput-object v4, v2, Lc8/bob;->packageName:Ljava/lang/String;

    .line 46
    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v0, "tbopen://m.taobao.com/tbopen/index.html?"

    .line 48
    .local v0, "baseUrl":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lc8/Znb;->jumpParam:Lc8/iob;

    sget-object v5, Lc8/Ymb;->configManager:Lc8/Anb;

    invoke-virtual {v5}, Lc8/Anb;->getMemConfigInfo()Lc8/Fnb;

    move-result-object v5

    iget-object v5, v5, Lc8/Fnb;->dynamicParam:Ljava/util/Map;

    invoke-static {v4, v0, v5}, Lc8/yob;->getNativeOpenUrl(Lc8/iob;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lc8/bob;->url:Ljava/lang/String;

    .line 52
    return-object v2

    .line 42
    .end local v0    # "baseUrl":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "ALPJumpUrlHandler"

    const-string/jumbo v5, "getNativeUrlAndAction"

    const-string/jumbo v6, "\u4ece\u914d\u7f6e\u4e2d\u83b7\u53d6\u7684schmeInfo\u4e3a\u7a7a"

    invoke-static {v4, v5, v6}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 46
    goto :goto_1
.end method
