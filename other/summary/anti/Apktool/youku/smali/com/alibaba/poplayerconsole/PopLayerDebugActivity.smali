.class public Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;
.super Landroid/app/Activity;
.source "PopLayerDebugActivity.java"


# static fields
.field private static mStartDebug:Z


# instance fields
.field private mTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static isStartDebug()Z
    .locals 1

    .prologue
    .line 23
    sget-boolean v0, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mStartDebug:Z

    return v0
.end method

.method private openConsole()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v4, v5}, Lc8/uZb;->closeAll(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v4, v5, v6}, Lc8/uZb;->show(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 54
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mTV:Landroid/widget/TextView;

    .line 55
    iget-object v4, p0, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mTV:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->setContentView(Landroid/view/View;)V

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "windvane"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "wvplugins":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 60
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v4}, Lc8/ZYb;->monitorWVPlugin([Ljava/lang/String;)V

    .line 63
    :goto_0
    iget-object v4, p0, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mTV:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Start monitoring WVPlugins:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "log_cache_size"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "log_cache_size":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, "cacheSize":I
    invoke-static {v0}, Lcom/alibaba/poplayer/utils/ConsoleLogger;->setCacheSize(I)V

    .line 72
    .end local v0    # "cacheSize":I
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mStartDebug:Z

    .line 73
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->finish()V

    .line 74
    const-string/jumbo v4, "PopLayerDebugActivity.openConsole.monitorWVPlugins{%s}.withLogCache{%s}.success."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lc8/lZb;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .end local v2    # "log_cache_size":Ljava/lang/String;
    .end local v3    # "wvplugins":Ljava/lang/String;
    :goto_1
    return-void

    .line 62
    .restart local v3    # "wvplugins":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/ZYb;->monitorWVPlugin([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v3    # "wvplugins":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PopLayerDebugtActivity.onCreate"

    invoke-static {v4, v1}, Lc8/lZb;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    iget-object v4, p0, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mTV:Landroid/widget/TextView;

    const/high16 v5, -0x10000

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 78
    iget-object v4, p0, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mTV:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/alibaba/poplayerconsole/PopLayerConsole;

    invoke-static {v4, v5}, Lc8/uZb;->closeAll(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->openConsole()V

    .line 49
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sput-boolean v2, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->mStartDebug:Z

    .line 32
    :try_start_0
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 33
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 35
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 44
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->openConsole()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "PopLayerDebugActivity.onCreate.canDrawOverlaysError"

    invoke-static {v2, v0}, Lc8/lZb;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    invoke-direct {p0}, Lcom/alibaba/poplayerconsole/PopLayerDebugActivity;->openConsole()V

    goto :goto_0
.end method
