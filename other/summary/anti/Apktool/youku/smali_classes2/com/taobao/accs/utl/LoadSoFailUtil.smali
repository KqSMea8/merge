.class public Lcom/taobao/accs/utl/LoadSoFailUtil;
.super Ljava/lang/Object;
.source "LoadSoFailUtil.java"


# static fields
.field public static final MAX_FAIL_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LoadSoFailUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableSoFailCheck()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public static getSoFailTimes()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 60
    const/4 v3, 0x0

    .line 62
    .local v3, "times":I
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/utl/LoadSoFailUtil;->enableSoFailCheck()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v4, "ACCS_LOAD_SO"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "load_so_times"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 66
    const-string/jumbo v4, "LoadSoFailUtil"

    const-string/jumbo v5, "getSoFailTimes"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "times"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v3

    .line 68
    :catch_0
    move-exception v2

    .line 69
    .local v2, "t":Ljava/lang/Throwable;
    const-string/jumbo v4, "LoadSoFailUtil"

    const-string/jumbo v5, "getSoFailTimes"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v4, v5, v2, v6}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loadSoFail()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 35
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v5, "ACCS_LOAD_SO"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 38
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "load_so_times"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 39
    .local v4, "times":I
    add-int/lit8 v4, v4, 0x1

    .line 40
    if-lez v4, :cond_0

    .line 41
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 42
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "load_so_times"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string/jumbo v5, "LoadSoFailUtil"

    const-string/jumbo v6, "loadSoFail"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "times"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xf

    if-ne v5, v6, :cond_1

    .line 48
    invoke-static {v0}, Lcom/taobao/accs/utl/UtilityImpl;->killService(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "times":I
    :cond_1
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "LoadSoFailUtil"

    const-string/jumbo v6, "loadSoFail"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-static {v5, v6, v1, v7}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static loadSoSuccess()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 21
    :try_start_0
    invoke-static {}, Lcom/taobao/accs/utl/LoadSoFailUtil;->getSoFailTimes()I

    move-result v2

    .line 22
    .local v2, "times":I
    if-lez v2, :cond_0

    .line 23
    invoke-static {}, Lcom/taobao/accs/client/GlobalClientInfo;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "ACCS_LOAD_SO"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 24
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 25
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 26
    const-string/jumbo v3, "LoadSoFailUtil"

    const-string/jumbo v4, "loadSoSuccess"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "fail times"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/taobao/accs/utl/ALog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "LoadSoFailUtil"

    const-string/jumbo v4, "loadSoSuccess"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v0, v5}, Lcom/taobao/accs/utl/ALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
