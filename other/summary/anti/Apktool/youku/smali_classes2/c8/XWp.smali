.class public Lc8/XWp;
.super Ljava/lang/Object;
.source "HuaWeiRegister.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "accs.HuaWeiRegister"

.field private static phoneBrand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lc8/XWp;->phoneBrand:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkDevice(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "result":Z
    sget-object v1, Lc8/XWp;->phoneBrand:Ljava/lang/String;

    const-string/jumbo v2, "huawei"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lc8/XWp;->phoneBrand:Ljava/lang/String;

    const-string/jumbo v2, "honor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 18
    :cond_1
    return v0
.end method

.method public static register(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    :try_start_0
    invoke-static {p0}, Lcom/taobao/accs/utl/UtilityImpl;->isMainProcess(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 24
    const-string/jumbo v2, "accs.HuaWeiRegister"

    const-string/jumbo v3, "register not in main process, return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-void

    .line 28
    :cond_0
    invoke-static {p0}, Lc8/XWp;->checkDevice(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 30
    new-instance v1, Lc8/WWp;

    invoke-direct {v1, p0}, Lc8/WWp;-><init>(Landroid/content/Context;)V

    .line 37
    .local v1, "thread":Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 41
    .end local v1    # "thread":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 42
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "accs.HuaWeiRegister"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 39
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "accs.HuaWeiRegister"

    const-string/jumbo v3, "checkDevice false"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
