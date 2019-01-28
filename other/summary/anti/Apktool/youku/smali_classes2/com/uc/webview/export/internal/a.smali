.class public final Lcom/uc/webview/export/internal/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Z

.field private static b:Z

.field private static c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/uc/webview/export/internal/a;->a:Z

    .line 35
    sput-boolean v0, Lcom/uc/webview/export/internal/a;->b:Z

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/uc/webview/export/internal/a;->b()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/uc/webview/export/internal/a;->b()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/IBreakpad;->uploadCrashLogs()V

    .line 110
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/uc/webview/export/extension/BreakpadConfig;)V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 56
    sget-boolean v1, Lcom/uc/webview/export/internal/a;->a:Z

    if-eqz v1, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    sput-boolean v3, Lcom/uc/webview/export/internal/a;->a:Z

    .line 60
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v4

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v5

    const-class v2, Ljava/lang/String;

    aput-object v2, v1, v6

    .line 61
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v4

    aput-object p1, v2, v3

    iget-object v3, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashDir:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mUploadUrl:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 64
    :try_start_0
    const-string/jumbo v3, "com.uc.webview.browser.internal.breakpad.BreakpadImpl"

    const/4 v4, 0x1

    sget-object v5, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {v3, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    iget-object v3, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashLogPrefix:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashLogPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 67
    const-string/jumbo v3, "sCrashLogPrefix"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 68
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 69
    const/4 v4, 0x0

    iget-object v5, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashLogPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    :cond_2
    const-string/jumbo v3, "sEnableEncryptLog"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 72
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 73
    const/4 v4, 0x0

    iget-boolean v5, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mEnableEncryptLog:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    const-string/jumbo v3, "sZiptLog"

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 75
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    const/4 v4, 0x0

    iget-boolean v5, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mZipLog:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 78
    :goto_1
    :try_start_1
    const-string/jumbo v3, "loadBreakpadLibrary"

    invoke-static {v0, v3, v1, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/uc/webview/export/internal/a;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    :goto_2
    invoke-static {}, Lcom/uc/webview/export/internal/a;->b()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/uc/webview/export/internal/a;->b()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v0

    iget-object v1, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mCrashLogFileName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/uc/webview/export/internal/interfaces/IBreakpad;->setCrashLogFileName(Ljava/lang/String;)V

    .line 91
    :try_start_2
    iget-boolean v0, p2, Lcom/uc/webview/export/extension/BreakpadConfig;->mEnableJavaLog:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 93
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 95
    invoke-static {}, Lcom/uc/webview/export/internal/a;->b()Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    move-result-object v2

    const-string/jumbo v3, "disableLog"

    invoke-static {v2, v3, v0, v1}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_1
.end method

.method private static b()Lcom/uc/webview/export/internal/interfaces/IBreakpad;
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/uc/webview/export/internal/a;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/a;->c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    if-nez v0, :cond_0

    .line 44
    const-string/jumbo v0, "com.uc.webview.browser.internal.breakpad.BreakpadImpl"

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->newInstanceNoThrow(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    sput-object v0, Lcom/uc/webview/export/internal/a;->c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    .line 46
    :cond_0
    sget-object v0, Lcom/uc/webview/export/internal/a;->c:Lcom/uc/webview/export/internal/interfaces/IBreakpad;

    return-object v0
.end method
