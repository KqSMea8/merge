.class public Lc8/lob;
.super Lc8/mob;
.source "ALPShopParam.java"


# instance fields
.field private shopID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "shopID"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lc8/mob;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/lob;->shopID:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "shop"

    iput-object v0, p0, Lc8/lob;->module:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "ali.open.nav"

    iput-object v0, p0, Lc8/lob;->action:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public checkParam()Z
    .locals 3

    .prologue
    .line 44
    iget-object v0, p0, Lc8/lob;->shopID:Ljava/lang/String;

    invoke-static {v0}, Lc8/vob;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "ALPShopParam"

    const-string/jumbo v1, "checkParam"

    const-string/jumbo v2, "mShopId is not rig"

    invoke-static {v0, v1, v2}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAPIType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "shop"

    return-object v0
.end method

.method public getBackUpH5Url()Ljava/lang/String;
    .locals 5

    .prologue
    .line 35
    invoke-virtual {p0}, Lc8/lob;->checkParam()Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string/jumbo v0, ""

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    const-string/jumbo v1, "http://shop.m.taobao.com/shop/shopIndex.htm?shop_id=%s&"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/lob;->shopID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "url":Ljava/lang/String;
    goto :goto_0
.end method

.method public getExtraParams()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const-string/jumbo v0, "shopId"

    iget-object v1, p0, Lc8/lob;->shopID:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lc8/lob;->addExtraParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-super {p0}, Lc8/mob;->getExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/lob;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPostfix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 59
    invoke-virtual {p0}, Lc8/lob;->checkParam()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const-string/jumbo v0, "shop_id=%s&"

    .line 61
    .local v0, "postfix":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lc8/lob;->shopID:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .end local v0    # "postfix":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lc8/mob;->getPostfix()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
