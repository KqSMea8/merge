.class public Lc8/EH;
.super Ljava/lang/Object;
.source "WVURLIntercepterDefault.java"

# interfaces
.implements Lc8/GH;


# static fields
.field private static final ADDRESS:Ljava/lang/String; = "http://my.m.taobao.com/deliver/wap_deliver_address_list.htm"

.field private static final CART:Ljava/lang/String; = "http://h5.m.taobao.com/awp/base/cart.htm"

.field private static final DETAIL:Ljava/lang/String; = "http://a.m.taobao.com/i"

.field private static final FAV:Ljava/lang/String; = "http://fav.m.taobao.com/my_collect_list.htm"

.field private static final LOGIN:Ljava/lang/String; = "http://login.m.taobao.com/login.htm"

.field private static final MYTAOBAO:Ljava/lang/String; = "http://my.m.taobao.com/myTaobao.htm"

.field private static final ORDER_LIST:Ljava/lang/String; = "http://trade.taobao.com/trade/itemlist/list_bought_items.htm"

.field private static final SEARCH:Ljava/lang/String; = "http://s.m.taobao.com/search.htm?q="

.field private static final SHOP:Ljava/lang/String; = "http://shop.m.taobao.com/shop/shop_index.htm"

.field private static final TAG:Ljava/lang/String; = "WVUrlResolver"


# instance fields
.field private isUpdating:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/EH;->isUpdating:Z

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/EH;->isNeedupdateURLRule(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lc8/EH;->updateURLRule()V

    .line 60
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc8/EH;->refreshConfig(Ljava/util/List;)V

    .line 61
    return-void
.end method

.method static synthetic access$002(Lc8/EH;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/EH;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lc8/EH;->isUpdating:Z

    return p1
.end method

.method static synthetic access$100(Lc8/EH;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/EH;

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/EH;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStorageKeyPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 288
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hitURLInterceptRules(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v1

    .line 122
    :cond_1
    invoke-static {p0}, Lc8/EH;->parse(Ljava/lang/String;)Lc8/zH;

    move-result-object v0

    .line 123
    .local v0, "info":Lc8/zH;
    if-eqz v0, :cond_0

    iget v2, v0, Lc8/zH;->code:I

    if-eqz v2, :cond_0

    .line 124
    invoke-static {v0}, Lc8/EH;->toUri(Lc8/zH;)Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "newurl":Ljava/lang/String;
    invoke-static {p0, v1}, Lc8/dI;->rebuildWVurl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    goto :goto_0
.end method

.method public static parse(Ljava/lang/String;)Lc8/zH;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v0

    .line 100
    :cond_1
    invoke-static {}, Lc8/CH;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lc8/CH;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :cond_2
    invoke-static {p0}, Lc8/BH;->parseByTag(Ljava/lang/String;)Lc8/zH;

    move-result-object v0

    .line 104
    .local v0, "info":Lc8/zH;
    if-eqz v0, :cond_3

    iget v1, v0, Lc8/zH;->code:I

    if-lez v1, :cond_3

    .line 105
    const-string/jumbo v1, "WVUrlResolver"

    const-string/jumbo v2, "parse url success through tag."

    invoke-static {v1, v2}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_3
    invoke-static {}, Lc8/CH;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Lc8/CH;->getWVURLInterceptRulePats()Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lc8/BH;->parseByRule(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)Lc8/zH;

    move-result-object v0

    goto :goto_0
.end method

.method private refreshConfig(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lc8/yH;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lc8/EH;->readConfigFile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/BH;->parseRuleData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 76
    :cond_0
    sget-object v2, Lc8/DB;->commonConfig:Lc8/EB;

    iget v2, v2, Lc8/EB;->urlRuleStatus:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 85
    :cond_1
    return-void

    .line 78
    :cond_2
    if-eqz p1, :cond_1

    sget-boolean v2, Lc8/PB;->URL_FILTER:Z

    if-eqz v2, :cond_1

    .line 79
    invoke-static {}, Lc8/CH;->resetRulesAndPat()V

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/yH;

    .line 81
    .local v1, "rule":Lc8/yH;
    invoke-static {}, Lc8/CH;->getWVURLinterceptRules()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static toUri(Lc8/zH;)Ljava/lang/String;
    .locals 6
    .param p0, "urlInfo"    # Lc8/zH;

    .prologue
    .line 242
    if-nez p0, :cond_0

    .line 243
    const/4 v4, 0x0

    .line 271
    :goto_0
    return-object v4

    .line 244
    :cond_0
    iget v0, p0, Lc8/zH;->code:I

    .line 245
    .local v0, "code":I
    iget-object v1, p0, Lc8/zH;->params:Ljava/util/Map;

    .line 246
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x64

    if-ne v0, v4, :cond_1

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://a.m.taobao.com/i"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v4, "HY_ITM_ID"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".htm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 248
    :cond_1
    const/16 v4, 0xc8

    if-ne v0, v4, :cond_2

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://s.m.taobao.com/search.htm?q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v4, "HY_S_Q"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 250
    :cond_2
    const/16 v4, 0x12c

    if-ne v0, v4, :cond_4

    .line 251
    const-string/jumbo v4, "HY_SHOP_ID"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 252
    .local v2, "shopId":Ljava/lang/String;
    const-string/jumbo v4, "HY_USER_ID"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 253
    .local v3, "userId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 254
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://shop.m.taobao.com/shop/shop_index.htm?user_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 255
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "http://shop.m.taobao.com/shop/shop_index.htm?shop_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 258
    .end local v2    # "shopId":Ljava/lang/String;
    .end local v3    # "userId":Ljava/lang/String;
    :cond_4
    const/16 v4, 0x190

    if-ne v0, v4, :cond_5

    .line 259
    const-string/jumbo v4, "http://h5.m.taobao.com/awp/base/cart.htm"

    goto/16 :goto_0

    .line 260
    :cond_5
    const/16 v4, 0x258

    if-ne v0, v4, :cond_6

    .line 261
    const-string/jumbo v4, "http://my.m.taobao.com/myTaobao.htm"

    goto/16 :goto_0

    .line 262
    :cond_6
    const/16 v4, 0x2bc

    if-ne v0, v4, :cond_7

    .line 263
    const-string/jumbo v4, "http://fav.m.taobao.com/my_collect_list.htm"

    goto/16 :goto_0

    .line 264
    :cond_7
    const/16 v4, 0x1f4

    if-ne v0, v4, :cond_8

    .line 265
    const-string/jumbo v4, "http://trade.taobao.com/trade/itemlist/list_bought_items.htm"

    goto/16 :goto_0

    .line 266
    :cond_8
    const/16 v4, 0x320

    if-ne v0, v4, :cond_9

    .line 267
    const-string/jumbo v4, "http://my.m.taobao.com/deliver/wap_deliver_address_list.htm"

    goto/16 :goto_0

    .line 268
    :cond_9
    const/16 v4, 0x3e8

    if-ne v0, v4, :cond_a

    .line 269
    const-string/jumbo v4, "http://login.m.taobao.com/login.htm"

    goto/16 :goto_0

    .line 271
    :cond_a
    iget-object v4, p0, Lc8/zH;->url:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method protected getConfigUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    const-string/jumbo v0, "urlRule.json"

    const-string/jumbo v1, "2"

    invoke-static {v0, v1}, Lc8/RB;->getConfigUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNeedupdateURLRule(Z)Z
    .locals 2
    .param p1, "isBoot"    # Z

    .prologue
    .line 224
    invoke-virtual {p0}, Lc8/EH;->isOpenURLIntercept()Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lc8/MB;->SPNAME:Ljava/lang/String;

    invoke-direct {p0}, Lc8/EH;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lc8/MB;->isNeedUpdate(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isOpenURLIntercept()Z
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lc8/AB;->getInstance()Lc8/AB;

    move-result-object v0

    iget-boolean v0, v0, Lc8/AB;->url_updateConfig:Z

    return v0
.end method

.method protected needSaveConfig(Ljava/lang/String;)Z
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v4

    .line 138
    :cond_1
    const/4 v1, 0x0

    .line 139
    .local v1, "jsonObj":Lorg/json/JSONObject;
    new-instance v3, Lc8/gC;

    invoke-direct {v3}, Lc8/gC;-><init>()V

    .line 140
    .local v3, "response":Lc8/gC;
    invoke-virtual {v3, p1}, Lc8/gC;->parseJsonResult(Ljava/lang/String;)Lc8/gC;

    move-result-object v5

    iget-boolean v5, v5, Lc8/gC;->success:Z

    if-eqz v5, :cond_2

    .line 141
    iget-object v1, v3, Lc8/gC;->data:Lorg/json/JSONObject;

    .line 143
    :cond_2
    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Lc8/BH;->parseRuleData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 146
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/urlintercept/WVURLInterceptData$RuleData;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    invoke-direct {p0, v2}, Lc8/EH;->refreshConfig(Ljava/util/List;)V

    .line 149
    const/4 v4, 0x1

    goto :goto_0
.end method

.method protected readConfigFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 280
    sget-object v0, Lc8/MB;->SPNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lc8/EH;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wv-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected saveConfigFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 284
    sget-object v0, Lc8/MB;->SPNAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lc8/EH;->getStorageKeyPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "wv-data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/taobao/windvane/webview/IWVWebView;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p3}, Lc8/EH;->parse(Ljava/lang/String;)Lc8/zH;

    move-result-object v0

    .line 165
    .local v0, "info":Lc8/zH;
    if-eqz v0, :cond_0

    invoke-static {}, Lc8/CH;->getWVURLInterceptHandler()Lc8/FH;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-static {}, Lc8/CH;->getWVURLInterceptHandler()Lc8/FH;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, v0}, Lc8/FH;->doURLIntercept(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;Ljava/lang/String;Lc8/zH;)Z

    move-result v1

    .line 168
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateURLRule()V
    .locals 3

    .prologue
    .line 178
    iget-boolean v0, p0, Lc8/EH;->isUpdating:Z

    if-nez v0, :cond_1

    .line 179
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const-string/jumbo v0, "WVUrlResolver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "doUpdateConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lc8/EH;->getConfigUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/EH;->isUpdating:Z

    .line 183
    invoke-static {}, Lc8/VB;->getInstance()Lc8/VB;

    move-result-object v0

    invoke-virtual {p0}, Lc8/EH;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lc8/DH;

    invoke-direct {v2, p0}, Lc8/DH;-><init>(Lc8/EH;)V

    invoke-virtual {v0, v1, v2}, Lc8/VB;->connect(Ljava/lang/String;Lc8/WB;)V

    .line 210
    :cond_1
    return-void
.end method
