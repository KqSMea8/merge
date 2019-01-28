.class public final Lc8/hTh;
.super Ljava/lang/Object;
.source "YoukuJSBridge.java"

# interfaces
.implements Lc8/iTh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iTh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "JSPoxy"
.end annotation


# static fields
.field private static final EMPTY:Ljava/lang/Object;


# instance fields
.field private API:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lc8/PSh;

    invoke-direct {v0}, Lc8/PSh;-><init>()V

    sput-object v0, Lc8/hTh;->EMPTY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lc8/hTh;->API:Ljava/util/Map;

    .line 99
    const-class v1, Lc8/iTh;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 100
    .local v0, "method":Ljava/lang/reflect/Method;
    iget-object v4, p0, Lc8/hTh;->API:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lc8/hTh;->EMPTY:Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 121
    iget-object v3, p0, Lc8/hTh;->API:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 122
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_0

    sget-object v3, Lc8/hTh;->EMPTY:Ljava/lang/Object;

    if-eq v2, v3, :cond_0

    .line 123
    const-string/jumbo v3, "YKWeb.YoukuJSBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JS\u8c03\u7528\u4e86"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u65b9\u6cd5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 126
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Lc8/hTh;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v3, "{}"

    goto :goto_0

    .line 131
    :cond_0
    const-string/jumbo v3, "YKWeb.YoukuJSBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "JS\u6ca1\u6709\u5b9e\u73b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u65b9\u6cd5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public addCollectionVideo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 200
    const-string/jumbo v0, "addCollectionVideo"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addItem2Cart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 188
    const-string/jumbo v0, "addItem2Cart"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public addObjects([Ljava/lang/Object;)V
    .locals 10
    .param p1, "objs"    # [Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 110
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v2, p1, v5

    .line 111
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_1

    aget-object v0, v7, v3

    .line 112
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "name":Ljava/lang/String;
    iget-object v9, p0, Lc8/hTh;->API:Ljava/util/Map;

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 114
    iget-object v9, p0, Lc8/hTh;->API:Ljava/util/Map;

    invoke-interface {v9, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 118
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method public addTaoKeItem2Cart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 194
    const-string/jumbo v0, "addTaoKeItem2Cart"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkAPK(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 170
    const-string/jumbo v0, "checkAPK"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public closeActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 224
    const-string/jumbo v0, "closeActivity"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public doPay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 158
    const-string/jumbo v0, "doPay"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAliCoupon(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 212
    const-string/jumbo v0, "getAliCoupon"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeolocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 242
    const-string/jumbo v0, "getGeolocation"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 140
    const-string/jumbo v0, "loadUrl"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyVipChanged(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 164
    const-string/jumbo v0, "notifyVipChanged"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public oneKeyAddCart(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 218
    const-string/jumbo v0, "oneKeyAddCart"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setShareInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 230
    const-string/jumbo v0, "setShareInfo"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setTitleBar(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 236
    const-string/jumbo v0, "setTitleBar"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showLoginView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 146
    const-string/jumbo v0, "showLoginView"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showOrderWithSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 176
    const-string/jumbo v0, "showOrderWithSKU"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showShareView(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 152
    const-string/jumbo v0, "showShareView"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showTaoKeOrderWithSKU(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 182
    const-string/jumbo v0, "showTaoKeOrderWithSKU"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public showUploadVideoPage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 206
    const-string/jumbo v0, "showUploadVideoPage"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startDiagnose(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 248
    const-string/jumbo v0, "startDiagnose"

    invoke-direct {p0, v0, p1}, Lc8/hTh;->execute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
