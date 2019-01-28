.class public abstract Lcom/uc/webview/export/internal/setup/l;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/l;",
        "Lcom/uc/webview/export/internal/setup/l;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field private final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/l;->a:Z

    .line 34
    iput-boolean v0, p0, Lcom/uc/webview/export/internal/setup/l;->b:Z

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/uc/webview/export/internal/setup/l;->c:I

    return-void
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 84
    new-instance v0, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-static {p2, p0}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    :cond_0
    const-string/jumbo v1, "com.UCMobile"

    const/4 v2, 0x0

    invoke-static {p2, p0, p0, v1, v2}, Lcom/uc/webview/export/internal/utility/c;->a(Ljava/lang/String;Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-static {p2, p0, v4}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 88
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbbd

    const-string/jumbo v2, "[%s] verify failed"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    invoke-static {p2, p0, v3}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 93
    :cond_2
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 38
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 41
    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->getDecompressSourceHash(Ljava/lang/String;JJZ)Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 5

    .prologue
    .line 68
    const/16 v0, 0x2715

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 69
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_y"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 75
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 78
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 150
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 154
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 155
    array-length v0, v2

    if-lez v0, :cond_1

    .line 156
    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 157
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 158
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 159
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfad

    const-string/jumbo v3, "UCM version [%s] is excluded by rules [%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p0, v4, v0

    .line 162
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :catch_0
    move-exception v0

    .line 174
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfac

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    const/16 v0, 0x2715

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 47
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 51
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_y"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 64
    :goto_0
    return v0

    .line 56
    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbbd

    const-string/jumbo v4, "[%s] verifyQuick failed"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "_y"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 60
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 61
    goto :goto_0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 98
    const-string/jumbo v0, "load"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/l;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    const-string/jumbo v1, "u3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "u4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfa2

    const-string/jumbo v3, "UCM with core code [%s] is excluded by param load [%s]."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreCode:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 105
    :cond_1
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc0

    const-string/jumbo v3, "UCM param load value [%s] unknown."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 108
    :cond_2
    return-void
.end method

.method protected final a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;)V
    .locals 8

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    :try_start_0
    const-string/jumbo v0, "com.uc.webview.browser.shell.SdkAuthentication"

    invoke-virtual {p3, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 191
    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v3, v0, v2

    const-class v3, Ljava/util/HashMap;

    aput-object v3, v0, v7

    .line 192
    :try_start_1
    const-string/jumbo v3, "tryLoadUCCore"

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 196
    new-instance v5, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/l;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 197
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/l;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 198
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v0, v6

    const/4 v6, 0x1

    aput-object p1, v0, v6

    const/4 v6, 0x2

    aput-object v5, v0, v6
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 210
    :goto_0
    const/4 v5, 0x0

    :try_start_2
    invoke-static {v5, v4, v3, v0}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 211
    :goto_1
    if-nez v0, :cond_3

    .line 212
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfb1

    const-string/jumbo v3, "tryLoadUCCore return false."

    invoke-direct {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 213
    :catch_0
    move-exception v0

    throw v0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfae

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 200
    :catch_2
    move-exception v0

    new-array v0, v7, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v3, Lcom/uc/webview/export/internal/utility/UCMPackageInfo;

    aput-object v3, v0, v2

    .line 202
    :try_start_3
    const-string/jumbo v3, "tryLoadUCCore"

    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 203
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v0, v5

    const/4 v5, 0x1

    aput-object p1, v0, v5
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 204
    :catch_3
    move-exception v0

    .line 205
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfaf

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    :cond_0
    move v0, v1

    .line 210
    goto :goto_1

    .line 215
    :catch_4
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 218
    if-eqz v2, :cond_1

    .line 219
    const-string/jumbo v3, "9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 220
    if-nez v3, :cond_1

    .line 222
    add-int/lit8 v4, v3, 0x4

    :try_start_4
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v1

    .line 227
    :cond_1
    :goto_2
    const/16 v2, 0x2328

    if-lt v1, v2, :cond_2

    .line 228
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v2, v1, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 230
    :cond_2
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfb0

    invoke-direct {v1, v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 232
    :cond_3
    return-void

    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method protected final a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V
    .locals 16

    .prologue
    .line 236
    const/4 v3, 0x0

    .line 241
    const/4 v2, 0x0

    .line 243
    :try_start_0
    const-string/jumbo v4, "com.uc.webview.browser.shell.NativeLibraries"

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-static {v4, v5, v0}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 244
    if-eqz v4, :cond_10

    .line 245
    :try_start_1
    const-string/jumbo v2, "LIBRARIES"

    invoke-virtual {v4, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 246
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 247
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    move-object v6, v2

    .line 291
    :goto_1
    if-eqz v6, :cond_c

    .line 292
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 293
    if-nez v2, :cond_d

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    move-object v5, v2

    .line 297
    :goto_2
    and-int/lit8 v2, p4, 0x10

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move v4, v2

    .line 298
    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, v2, p4

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    .line 300
    :goto_4
    array-length v7, v6

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v7, :cond_c

    aget-object v8, v6, v3

    .line 301
    const/4 v9, 0x0

    aget-object v9, v8, v9

    .line 302
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/lang/String;)J

    move-result-wide v10

    .line 303
    const/4 v12, 0x2

    aget-object v8, v8, v12

    .line 305
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    cmp-long v9, v14, v10

    if-eqz v9, :cond_6

    .line 307
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0x3f0

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v5, "So file [%s] with length [%d] mismatch to predefined [%d]."

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    .line 310
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    .line 311
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    .line 308
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 252
    :catch_0
    move-exception v4

    move-object v5, v2

    :goto_6
    const/4 v4, 0x0

    .line 256
    const/16 v2, 0x271b

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 257
    if-eqz v2, :cond_0

    .line 258
    const/4 v2, 0x1

    .line 280
    :goto_7
    if-eqz v2, :cond_e

    .line 281
    new-instance v4, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v5, :cond_1

    const/16 v2, 0xbca

    :goto_8
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v7, "%s [%s] missing."

    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Object;

    const/4 v9, 0x0

    if-nez v5, :cond_2

    const-string/jumbo v3, "Class"

    :goto_9
    aput-object v3, v8, v9

    const/4 v9, 0x1

    if-nez v5, :cond_3

    const-string/jumbo v3, "com.uc.webview.browser.shell.NativeLibraries"

    :goto_a
    aput-object v3, v8, v9

    .line 284
    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 260
    :cond_0
    :try_start_2
    const-string/jumbo v2, "com.uc.webview.browser.shell.Build$Version"

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-static {v2, v5, v0}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 265
    if-eqz v5, :cond_f

    .line 266
    const-string/jumbo v2, "BUILD_SERIAL"

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 267
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 268
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    .line 269
    const/16 v6, 0x13

    if-lt v2, v6, :cond_f

    .line 270
    const/4 v2, 0x1

    goto :goto_7

    .line 274
    :catch_1
    move-exception v2

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xbcc

    const-string/jumbo v4, "Version.BUILD_SERIAL not found."

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 281
    :cond_1
    const/16 v2, 0xbcb

    goto :goto_8

    :cond_2
    const-string/jumbo v3, "Field"

    goto :goto_9

    :cond_3
    const-string/jumbo v3, "com.uc.webview.browser.shell.NativeLibraries.LIBRARIES"

    goto :goto_a

    .line 297
    :cond_4
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 298
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 314
    :cond_6
    move-object/from16 v0, p0

    iget v9, v0, Lcom/uc/webview/export/internal/setup/l;->c:I

    sget-object v10, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v11, "Check file size ok [%s]."

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-static {v10, v11, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Throwable;

    invoke-static {v9, v10, v11}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 316
    if-eqz v4, :cond_b

    .line 317
    if-eqz v2, :cond_7

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 318
    :cond_7
    invoke-static {v12}, Lcom/uc/webview/export/cyclone/UCCyclone;->md5FileContents(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 319
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 320
    if-eqz v2, :cond_8

    .line 321
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 322
    :cond_8
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0x3f3

    const-string/jumbo v4, "So file [%s] with md5 [%s] mismatch to predefined [%s]."

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v12, v5, v6

    const/4 v6, 0x1

    aput-object v9, v5, v6

    const/4 v6, 0x2

    aput-object v8, v5, v6

    .line 323
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 328
    :cond_9
    if-eqz v2, :cond_a

    .line 329
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p2

    invoke-static {v8, v0, v9}, Lcom/uc/webview/export/internal/setup/l;->a(Ljava/lang/String;Landroid/content/Context;Z)V

    .line 333
    :cond_a
    move-object/from16 v0, p0

    iget v8, v0, Lcom/uc/webview/export/internal/setup/l;->c:I

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string/jumbo v10, "Check file md5-hash ok [%s]."

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Throwable;

    invoke-static {v8, v9, v10}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 300
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    .line 337
    :cond_c
    return-void

    .line 252
    :catch_2
    move-exception v2

    move-object v5, v4

    goto/16 :goto_6

    :cond_d
    move-object v5, v2

    goto/16 :goto_2

    :cond_e
    move-object v6, v3

    goto/16 :goto_1

    :cond_f
    move v2, v4

    goto/16 :goto_7

    :cond_10
    move-object v2, v3

    goto/16 :goto_0
.end method

.method protected final a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;ZZ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    if-nez p2, :cond_1

    .line 128
    :cond_0
    return-void

    .line 115
    :cond_1
    if-nez p3, :cond_3

    move v0, v1

    .line 116
    :goto_0
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/l;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v4, "skip_old_extra_kernel"

    invoke-static {v3, v4}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    .line 117
    if-eqz v3, :cond_2

    .line 118
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 120
    :cond_2
    if-eqz v0, :cond_0

    .line 121
    iget v0, p0, Lcom/uc/webview/export/internal/setup/l;->c:I

    const-string/jumbo v4, "checkParamSkipOldKernel:true"

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-static {v0, v4, v5}, Lcom/uc/webview/export/cyclone/UCLogger;->print(ILjava/lang/String;[Ljava/lang/Throwable;)Z

    .line 123
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xfa6

    const-string/jumbo v5, "UCM [%s] is excluded by param skip_old_extra_kernel value [%s]."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    aput-object v7, v6, v2

    aput-object v3, v6, v1

    .line 124
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v4, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    move v0, v2

    .line 115
    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;JJ)V
    .locals 5

    .prologue
    .line 341
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    new-instance v0, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v2, "cnt"

    const-string/jumbo v3, "1"

    .line 344
    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "code"

    .line 345
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v3, "frun"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "T"

    .line 346
    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "data"

    .line 347
    invoke-virtual {v0, v2, p4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "cost"

    .line 348
    invoke-static {p5, p6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "cost_cpu"

    .line 349
    invoke-static {p7, p8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 341
    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/l;->callbackStat(Landroid/util/Pair;)V

    .line 353
    :goto_1
    return-void

    .line 345
    :cond_0
    const-string/jumbo v0, "F"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    goto :goto_1
.end method
