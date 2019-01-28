.class public Lc8/Oqb;
.super Lc8/MXf;
.source "WXScreenModule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WXScreenModule"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    return-void
.end method

.method private getWindowIfExists()Landroid/view/Window;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v2, p0, Lc8/Oqb;->mWXSDKInstance:Lc8/nVf;

    if-nez v2, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 76
    :cond_1
    iget-object v2, p0, Lc8/Oqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_2

    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_3

    .line 78
    :cond_2
    iget-object v2, p0, Lc8/Oqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v2}, Lc8/nVf;->getUIContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    :cond_3
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 83
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    goto :goto_0
.end method

.method private setOrClearFlags(IZ)V
    .locals 4
    .param p1, "flags"    # I
    .param p2, "set"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/Oqb;->getWindowIfExists()Landroid/view/Window;

    move-result-object v1

    .line 54
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/view/Window;->addFlags(I)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/Window;->clearFlags(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WXScreenModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string/jumbo v2, "WXScreenModule"

    const-string/jumbo v3, "window not found"

    invoke-static {v2, v3}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public setAlwaysOn(Z)V
    .locals 1
    .param p1, "on"    # Z
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 34
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lc8/Oqb;->setOrClearFlags(IZ)V

    .line 35
    return-void
.end method

.method public setBrightness(F)V
    .locals 5
    .param p1, "brightness"    # F
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 39
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, p1}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 40
    invoke-direct {p0}, Lc8/Oqb;->getWindowIfExists()Landroid/view/Window;

    move-result-object v2

    .line 41
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    .line 43
    :try_start_0
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 44
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 45
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WXScreenModule"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCaptureEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 29
    const/16 v1, 0x2000

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lc8/Oqb;->setOrClearFlags(IZ)V

    .line 30
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "callback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 88
    iget-object v3, p0, Lc8/Oqb;->mWXSDKInstance:Lc8/nVf;

    if-eqz v3, :cond_1

    .line 89
    iget-object v3, p0, Lc8/Oqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v3}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 90
    .local v1, "context":Landroid/content/Context;
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_1

    move-object v0, v1

    .line 91
    check-cast v0, Landroid/app/Activity;

    .line 92
    .local v0, "activity":Landroid/app/Activity;
    const-string/jumbo v2, "portrait"

    .line 93
    .local v2, "orientation":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string/jumbo v3, "orientation"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 94
    const-string/jumbo v3, "orientation"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    :cond_0
    const-string/jumbo v3, "landscape"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 103
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "orientation":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 98
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "orientation":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "portrait"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
