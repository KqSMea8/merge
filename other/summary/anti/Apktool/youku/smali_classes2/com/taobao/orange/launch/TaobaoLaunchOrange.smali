.class public Lcom/taobao/orange/launch/TaobaoLaunchOrange;
.super Ljava/lang/Object;
.source "TaobaoLaunchOrange.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LAUNCH_KEY_APPVERSION:Ljava/lang/String; = "appVersion"

.field private static final LAUNCH_KEY_ENVINDEX:Ljava/lang/String; = "envIndex"

.field private static final LAUNCH_KEY_ONLINEAPPKEY:Ljava/lang/String; = "onlineAppKey"

.field private static final LAUNCH_KEY_PREAPPKEY:Ljava/lang/String; = "preAppKey"

.field private static final LAUNCH_KEY_TESTAPPKEY:Ljava/lang/String; = "dailyAppkey"

.field private static final TAG:Ljava/lang/String; = "TbLaunchOrange"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;Ljava/util/HashMap;)V
    .locals 9
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v8, 0x0

    .line 32
    const-string/jumbo v5, "TbLaunchOrange"

    const-string/jumbo v6, "init start"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {p1}, Lc8/Ytf;->isTaobaoPackage(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    const-string/jumbo v5, "TbLaunchOrange"

    const-string/jumbo v6, "init error as not com.taobao.taobao package"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-void

    .line 38
    :cond_0
    const-string/jumbo v2, "21646297"

    .line 39
    .local v2, "appkey":Ljava/lang/String;
    const-string/jumbo v1, "*"

    .line 40
    .local v1, "appVersion":Ljava/lang/String;
    sget-object v5, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v5}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v3

    .line 42
    .local v3, "orangeEnv":I
    :try_start_0
    const-string/jumbo v5, "appVersion"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 43
    const-string/jumbo v5, "envIndex"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 45
    sget-object v5, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v5}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v5

    if-ne v3, v5, :cond_1

    .line 46
    const-string/jumbo v5, "onlineAppKey"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_1
    invoke-static {}, Lc8/ctf;->getInstance()Lc8/ctf;

    move-result-object v5

    invoke-virtual {v5, p1, v2, v1, v3}, Lc8/ctf;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 47
    :cond_1
    :try_start_1
    sget-object v5, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v5}, Lcom/taobao/orange/OConstant$ENV;->getEnvMode()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 48
    const-string/jumbo v5, "preAppKey"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    goto :goto_1

    .line 50
    :cond_2
    const-string/jumbo v5, "dailyAppkey"

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 52
    :catch_0
    move-exception v4

    .line 53
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v5, "TbLaunchOrange"

    const-string/jumbo v6, "init"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v4, v7}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1
.end method
