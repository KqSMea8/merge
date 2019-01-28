.class public Lc8/yIb;
.super Lc8/tIb;
.source "AlibcPromotionSDK.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/xIb;,
        Lc8/wIb;
    }
.end annotation


# static fields
.field private static final ALIBC_PROMOTION_UT_PAGE:Ljava/lang/String; = "AlibcPromotion"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/tIb;-><init>()V

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lc8/vIb;)V
    .locals 0
    .param p1, "x0"    # Lc8/vIb;

    .prologue
    .line 21
    invoke-direct {p0}, Lc8/yIb;-><init>()V

    return-void
.end method

.method public static getInstance()Lc8/yIb;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lc8/wIb;->instance:Lc8/yIb;

    return-object v0
.end method

.method private getUmid(Landroid/app/Application;)Ljava/lang/String;
    .locals 5
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 66
    const-string/jumbo v2, ""

    .line 68
    .local v2, "umid":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/wireless/security/open/SecurityGuardManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/wireless/security/open/SecurityGuardManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 69
    invoke-static {p1}, Lcom/taobao/dp/DeviceSecuritySDK;->getInstance(Landroid/content/Context;)Lcom/taobao/dp/DeviceSecuritySDK;

    move-result-object v0

    .line 70
    .local v0, "deviceSecuritySDK":Lcom/taobao/dp/DeviceSecuritySDK;
    invoke-virtual {v0}, Lcom/taobao/dp/DeviceSecuritySDK;->getSecurityToken()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .end local v0    # "deviceSecuritySDK":Lcom/taobao/dp/DeviceSecuritySDK;
    :cond_0
    move-object v3, v2

    .line 75
    .end local v2    # "umid":Ljava/lang/String;
    .local v3, "umid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 72
    .end local v3    # "umid":Ljava/lang/String;
    .restart local v2    # "umid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "throwable":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    .line 75
    .end local v2    # "umid":Ljava/lang/String;
    .restart local v3    # "umid":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "throwable":Ljava/lang/Throwable;
    .end local v3    # "umid":Ljava/lang/String;
    .restart local v2    # "umid":Ljava/lang/String;
    :catchall_0
    move-exception v4

    move-object v3, v2

    .end local v2    # "umid":Ljava/lang/String;
    .restart local v3    # "umid":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public sendPromotionUT(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "application"    # Landroid/app/Application;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "marketingId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v6, "utArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "umid"

    invoke-direct {p0, p1}, Lc8/yIb;->getUmid(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v0, "marketingId"

    invoke-interface {v6, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {}, Lc8/cGb;->getInstance()Lc8/cGb;

    move-result-object v0

    const-string/jumbo v1, "AlibcPromotion"

    const/16 v2, 0x4e1f

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lc8/cGb;->sendCustomHit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    return-void
.end method

.method public sendTokenInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc8/qIb;)V
    .locals 4
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "marketingId"    # Ljava/lang/String;
    .param p3, "encToken"    # Ljava/lang/String;
    .param p4, "callback"    # Lc8/qIb;

    .prologue
    .line 40
    new-instance v0, Lc8/xIb;

    invoke-direct {v0, p0}, Lc8/xIb;-><init>(Lc8/yIb;)V

    .line 41
    .local v0, "promotionBusiness":Lc8/xIb;
    const-string/jumbo v1, "AlibcPromotionSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendTokenInfo appkey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " marketingId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " encToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/uIb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v1, Lc8/vIb;

    invoke-direct {v1, p0, p4}, Lc8/vIb;-><init>(Lc8/yIb;Lc8/qIb;)V

    invoke-virtual {v0, p2, p3, v1}, Lc8/xIb;->sendRequest(Ljava/lang/String;Ljava/lang/String;Lc8/VFb;)Z

    .line 55
    return-void
.end method
