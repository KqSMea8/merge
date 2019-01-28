.class public Lcom/taobao/accs/init/Launcher_Login$1;
.super Ljava/lang/Object;
.source "Launcher_Login.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/accs/init/Launcher_Login;->init(Landroid/app/Application;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/accs/init/Launcher_Login;

.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$params:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/taobao/accs/init/Launcher_Login;Ljava/util/HashMap;Landroid/app/Application;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/taobao/accs/init/Launcher_Login$1;->this$0:Lcom/taobao/accs/init/Launcher_Login;

    iput-object p2, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$application:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 27
    const/4 v1, 0x0

    .line 29
    .local v1, "appKey":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v8, "envIndex"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 30
    .local v2, "env":I
    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v8, "onlineAppKey"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 31
    if-ne v2, v6, :cond_2

    .line 32
    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v6, "preAppKey"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2    # "env":I
    :cond_0
    :goto_0
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 41
    const-string/jumbo v5, "Launcher_Login"

    const-string/jumbo v6, "login get appkey null"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const-string/jumbo v1, "21646297"

    .line 46
    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/taobao/accs/init/Launcher_InitAccs;->mForceBindUser:Z

    .line 47
    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v6, "userId"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/taobao/accs/init/Launcher_InitAccs;->mUserId:Ljava/lang/String;

    .line 48
    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v6, "sid"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/taobao/accs/init/Launcher_InitAccs;->mSid:Ljava/lang/String;

    .line 49
    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$application:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v8, "ttid"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v8, Lcom/taobao/accs/init/Launcher_InitAccs;->mAppReceiver:Lcom/taobao/accs/IAppReceiver;

    invoke-static {v6, v1, v5, v8}, Lcom/taobao/accs/ACCSManager;->bindApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/taobao/accs/IAppReceiver;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 57
    :goto_1
    return-void

    .line 33
    .restart local v2    # "env":I
    :cond_2
    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    move v8, v6

    :goto_2
    const/4 v5, 0x3

    if-ne v2, v5, :cond_4

    move v5, v6

    :goto_3
    or-int/2addr v5, v8

    if-eqz v5, :cond_0

    .line 34
    :try_start_2
    iget-object v5, p0, Lcom/taobao/accs/init/Launcher_Login$1;->val$params:Ljava/util/HashMap;

    const-string/jumbo v6, "dailyAppkey"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    move v8, v7

    .line 33
    goto :goto_2

    :cond_4
    move v5, v7

    goto :goto_3

    .line 36
    .end local v2    # "env":I
    :catch_0
    move-exception v3

    .line 37
    .local v3, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string/jumbo v5, "Launcher_Login"

    const-string/jumbo v6, "login get param error"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v3, v8}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 53
    .end local v3    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v4

    .line 54
    .local v4, "t1":Ljava/lang/Throwable;
    const-string/jumbo v5, "Launcher_Login"

    const-string/jumbo v6, "login"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
