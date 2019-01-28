.class public final Lc8/XUf;
.super Ljava/lang/Object;
.source "WXSDKEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bVf;->doInitInternal(Landroid/app/Application;Lc8/RUf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$config:Lc8/RUf;


# direct methods
.method constructor <init>(Lc8/RUf;Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lc8/XUf;->val$config:Lc8/RUf;

    iput-object p2, p0, Lc8/XUf;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 188
    .local v2, "start":J
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v1

    .line 189
    .local v1, "sm":Lc8/pVf;
    invoke-virtual {v1}, Lc8/pVf;->onSDKEngineInitialize()V

    .line 190
    iget-object v4, p0, Lc8/XUf;->val$config:Lc8/RUf;

    if-eqz v4, :cond_0

    .line 191
    iget-object v4, p0, Lc8/XUf;->val$config:Lc8/RUf;

    invoke-virtual {v1, v4}, Lc8/pVf;->setInitConfig(Lc8/RUf;)V

    .line 193
    :cond_0
    iget-object v4, p0, Lc8/XUf;->val$application:Landroid/app/Application;

    invoke-virtual {v1}, Lc8/pVf;->getIWXSoLoaderAdapter()Lc8/GVf;

    move-result-object v6

    invoke-virtual {v1}, Lc8/pVf;->getWXStatisticsListener()Lc8/OUf;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lc8/Cgg;->init(Landroid/content/Context;Lc8/GVf;Lc8/OUf;)V

    .line 196
    const-string/jumbo v6, "weexjsc"

    const/4 v7, 0x1

    iget-object v4, p0, Lc8/XUf;->val$config:Lc8/RUf;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/XUf;->val$config:Lc8/RUf;

    invoke-virtual {v4}, Lc8/RUf;->getUtAdapter()Lc8/HVf;

    move-result-object v4

    :goto_0
    invoke-static {v6, v7, v4}, Lc8/Cgg;->initSo(Ljava/lang/String;ILc8/HVf;)Z

    move-result v0

    .line 197
    .local v0, "isSoInitSuccess":Z
    if-nez v0, :cond_2

    .line 204
    :goto_1
    return-void

    .end local v0    # "isSoInitSuccess":Z
    :cond_1
    move-object v4, v5

    .line 196
    goto :goto_0

    .line 200
    .restart local v0    # "isSoInitSuccess":Z
    :cond_2
    iget-object v4, p0, Lc8/XUf;->val$config:Lc8/RUf;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lc8/XUf;->val$config:Lc8/RUf;

    invoke-virtual {v4}, Lc8/RUf;->getFramework()Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v1, v5}, Lc8/pVf;->initScriptsFramework(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sput-wide v4, Lc8/UUf;->sSDKInitExecuteTime:J

    .line 203
    const-string/jumbo v4, "SDKInitExecuteTime"

    sget-wide v6, Lc8/UUf;->sSDKInitExecuteTime:J

    invoke-static {v4, v6, v7}, Lc8/xgg;->renderPerformanceLog(Ljava/lang/String;J)V

    goto :goto_1
.end method
