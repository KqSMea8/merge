.class public Lc8/pNf;
.super Ljava/lang/Object;
.source "Updater.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lc8/pNf;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-class v1, Lc8/pNf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/pNf;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    sput-object p0, Lc8/pNf;->context:Landroid/content/Context;

    .line 29
    :cond_0
    new-instance v0, Lc8/pNf;

    invoke-direct {v0}, Lc8/pNf;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public triggerBundleDownload(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 61
    invoke-static {}, Lc8/yRf;->getInstance()Lc8/yRf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/yRf;->addUpdateInfo(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public triggerDynamicDeployment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetVersionName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    if-eqz p2, :cond_0

    const-string/jumbo v1, "bundleupdatew_test"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.taobao.intent.action.UPDATE_TEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/pNf;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    sget-object v1, Lc8/pNf;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 49
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {p0, p2}, Lc8/pNf;->triggerBundleDownload(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Z)V
    .locals 2
    .param p1, "background"    # Z

    .prologue
    .line 72
    if-eqz p1, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {}, Lc8/yRf;->getInstance()Lc8/yRf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lc8/yRf;->startUpdate(ZZ)V

    goto :goto_0
.end method
