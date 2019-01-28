.class public Lc8/PSh;
.super Ljava/lang/Object;
.source "SimpleYoukuJSBridge.java"

# interfaces
.implements Lc8/iTh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCollectionVideo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public addItem2Cart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 70
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public addTaoKeItem2Cart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public checkAPK(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 35
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public closeActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 90
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public doPay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "vid"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method protected generateJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "obj":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 58
    .end local v0    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .restart local v0    # "obj":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method public getAliCoupon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public getGeolocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 10
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public notifyVipChanged(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 30
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public oneKeyAddCart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 85
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public setShareInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 95
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public setTitleBar(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 100
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public showLoginView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public showOrderWithSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public showShareView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 20
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public showTaoKeOrderWithSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public showUploadVideoPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 50
    const-string/jumbo v0, "{}"

    return-object v0
.end method

.method public startDiagnose(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string/jumbo v0, "{}"

    return-object v0
.end method
