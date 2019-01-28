.class public Lc8/GLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lc8/lko;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/KLj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccsPassportListener"
.end annotation


# static fields
.field private static listener:Lc8/GLj;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 1330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1331
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1332
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v1, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 1334
    .local v1, "mUid":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "default"

    invoke-static {v2}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/accs/ACCSClient;->bindUser(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1339
    :goto_0
    :try_start_1
    const-string/jumbo v2, "youku"

    invoke-static {v2}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/accs/ACCSClient;->bindUser(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/taobao/accs/AccsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1343
    :goto_1
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v3, Lc8/DLj;

    invoke-direct {v3, p0}, Lc8/DLj;-><init>(Lc8/GLj;)V

    invoke-static {v2, v1, v3}, Lc8/qXe;->setAlias(Landroid/content/Context;Ljava/lang/String;Lc8/lXe;)V

    .line 1356
    .end local v1    # "mUid":Ljava/lang/String;
    :cond_0
    return-void

    .line 1335
    .restart local v1    # "mUid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1336
    .local v0, "ex":Lcom/taobao/accs/AccsException;
    const-string/jumbo v2, "YKAccs.init"

    const-string/jumbo v3, "Accs-Taobao bindUser AccsException"

    invoke-static {v2, v3, v0}, Lc8/wHf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1340
    .end local v0    # "ex":Lcom/taobao/accs/AccsException;
    :catch_1
    move-exception v0

    .line 1341
    .restart local v0    # "ex":Lcom/taobao/accs/AccsException;
    const-string/jumbo v2, "YKAccs.init"

    const-string/jumbo v3, "Accs-Youku bindUser AccsException"

    invoke-static {v2, v3, v0}, Lc8/wHf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static getInstance()Lc8/GLj;
    .locals 2

    .prologue
    .line 1320
    sget-object v0, Lc8/GLj;->listener:Lc8/GLj;

    if-nez v0, :cond_1

    .line 1321
    const-class v1, Lc8/GLj;

    monitor-enter v1

    .line 1322
    :try_start_0
    sget-object v0, Lc8/GLj;->listener:Lc8/GLj;

    if-nez v0, :cond_0

    .line 1323
    new-instance v0, Lc8/GLj;

    invoke-direct {v0}, Lc8/GLj;-><init>()V

    sput-object v0, Lc8/GLj;->listener:Lc8/GLj;

    .line 1325
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1327
    :cond_1
    sget-object v0, Lc8/GLj;->listener:Lc8/GLj;

    return-object v0

    .line 1325
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public onCookieRefreshed(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1426
    return-void
.end method

.method public onExpireLogout()V
    .locals 0

    .prologue
    .line 1416
    return-void
.end method

.method public onTokenRefreshed(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1421
    return-void
.end method

.method public onUserLogin()V
    .locals 4

    .prologue
    .line 1360
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1386
    :goto_0
    return-void

    .line 1363
    :cond_0
    invoke-static {}, Lc8/Gko;->getUserInfo()Lcom/youku/usercenter/passport/remote/UserInfo;

    move-result-object v2

    iget-object v1, v2, Lcom/youku/usercenter/passport/remote/UserInfo;->mUid:Ljava/lang/String;

    .line 1365
    .local v1, "mUid":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v2, "default"

    invoke-static {v2}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/accs/ACCSClient;->bindUser(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1370
    :goto_1
    :try_start_1
    const-string/jumbo v2, "youku"

    invoke-static {v2}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/taobao/accs/ACCSClient;->bindUser(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/taobao/accs/AccsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1374
    :goto_2
    sget-object v2, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v3, Lc8/ELj;

    invoke-direct {v3, p0}, Lc8/ELj;-><init>(Lc8/GLj;)V

    invoke-static {v2, v1, v3}, Lc8/qXe;->setAlias(Landroid/content/Context;Ljava/lang/String;Lc8/lXe;)V

    goto :goto_0

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "ex":Lcom/taobao/accs/AccsException;
    const-string/jumbo v2, "YKAccs.init"

    const-string/jumbo v3, "Accs-Taobao bindUser AccsException"

    invoke-static {v2, v3, v0}, Lc8/wHf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1371
    .end local v0    # "ex":Lcom/taobao/accs/AccsException;
    :catch_1
    move-exception v0

    .line 1372
    .restart local v0    # "ex":Lcom/taobao/accs/AccsException;
    const-string/jumbo v2, "YKAccs.init"

    const-string/jumbo v3, "Accs-Youku bindUser AccsException"

    invoke-static {v2, v3, v0}, Lc8/wHf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public onUserLogout()V
    .locals 3

    .prologue
    .line 1391
    :try_start_0
    const-string/jumbo v1, "default"

    invoke-static {v1}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ACCSClient;->unbindUser()V
    :try_end_0
    .catch Lcom/taobao/accs/AccsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1396
    :goto_0
    :try_start_1
    const-string/jumbo v1, "youku"

    invoke-static {v1}, Lcom/taobao/accs/ACCSClient;->getAccsClient(Ljava/lang/String;)Lcom/taobao/accs/ACCSClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/accs/ACCSClient;->unbindUser()V
    :try_end_1
    .catch Lcom/taobao/accs/AccsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1400
    :goto_1
    sget-object v1, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    new-instance v2, Lc8/FLj;

    invoke-direct {v2, p0}, Lc8/FLj;-><init>(Lc8/GLj;)V

    invoke-static {v1, v2}, Lc8/qXe;->removeAlias(Landroid/content/Context;Lc8/lXe;)V

    .line 1411
    return-void

    .line 1392
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "ex":Lcom/taobao/accs/AccsException;
    const-string/jumbo v1, "YKAccs.init"

    const-string/jumbo v2, "Accs-Taobao unbindUser AccsException"

    invoke-static {v1, v2, v0}, Lc8/wHf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1397
    .end local v0    # "ex":Lcom/taobao/accs/AccsException;
    :catch_1
    move-exception v0

    .line 1398
    .restart local v0    # "ex":Lcom/taobao/accs/AccsException;
    const-string/jumbo v1, "YKAccs.init"

    const-string/jumbo v2, "Accs-Youku unbindUser AccsException"

    invoke-static {v1, v2, v0}, Lc8/wHf;->logw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
