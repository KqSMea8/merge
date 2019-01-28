.class public final Lcom/uc/webview/export/internal/setup/ad;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/ad;",
        "Lcom/uc/webview/export/internal/setup/ad;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/uc/webview/export/internal/setup/ae;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ae;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/setup/ad;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    const/16 v9, 0x2733

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 127
    invoke-static {p2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 141
    :goto_0
    return-object v0

    .line 130
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 132
    sget-object v1, Lcom/uc/webview/export/internal/setup/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    const/16 v1, 0x271c

    new-array v2, v8, [Ljava/lang/Object;

    aput-object p1, v2, v7

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 135
    new-array v3, v6, [Ljava/lang/Object;

    const/16 v2, 0x273e

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p0, v5, v7

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    aput-object v2, v3, v7

    aput-object v1, v3, v8

    invoke-static {v9, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 136
    new-array v5, v6, [Ljava/lang/Object;

    const/16 v3, 0x273f

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p0, v6, v7

    invoke-static {v3, v6}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    aput-object v3, v5, v7

    aput-object v1, v5, v8

    invoke-static {v9, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 138
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 141
    invoke-static {v4, v3, v2, v7}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;Ljava/io/File;Ljava/io/File;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 106
    :goto_0
    const/16 v0, 0x2731

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 107
    :try_start_0
    const-string/jumbo v1, "libcore_jar_kj_uc.so"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :catch_0
    move-exception v1

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 112
    if-eqz v4, :cond_2

    .line 113
    sget-object v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->ARCHS:[Ljava/lang/String;

    array-length v6, v5

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v7, v5, v3

    .line 114
    array-length v8, v4

    move v0, v2

    :goto_2
    if-ge v0, v8, :cond_1

    aget-object v9, v4, v0

    .line 115
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 116
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 113
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 121
    :cond_2
    throw v1
.end method

.method private a()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ad;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "ucmLibDir"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const/16 v2, 0x2731

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v4

    invoke-static {v2, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 148
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ad;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "CONTEXT"

    invoke-virtual {v2, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 151
    :try_start_0
    const-string/jumbo v5, "libcore_jar_kj_uc.so"

    invoke-static {v1, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 152
    const-string/jumbo v6, "libsdk_shell_jar_kj_uc.so"

    invoke-static {v1, v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 153
    const-string/jumbo v7, "libbrowser_if_for_export_jar_kj_uc.so"

    invoke-static {v1, v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {v2, v0, v5}, Lcom/uc/webview/export/internal/setup/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-static {v2, v0, v6}, Lcom/uc/webview/export/internal/setup/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-static {v2, v0, v1}, Lcom/uc/webview/export/internal/setup/ad;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 163
    :goto_0
    return v0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    const-string/jumbo v1, "ShareCoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ShareCoreTask::createShareJarFromSo fail! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 163
    goto :goto_0
.end method

.method private static a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 182
    new-instance v3, Ljava/io/File;

    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    :cond_0
    const-string/jumbo v0, "ShareCoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setExecutable dexDir and parent\'s dir fail."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 224
    :goto_0
    return v0

    .line 190
    :cond_1
    new-instance v4, Ljava/io/File;

    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->e:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    const/16 v0, 0x2733

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    const-string/jumbo v6, "paks"

    aput-object v6, v5, v2

    invoke-static {v0, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 192
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 193
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 195
    :cond_2
    const-string/jumbo v0, "ShareCoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setExecutable resDir fail."

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 196
    goto :goto_0

    .line 199
    :cond_3
    new-instance v4, Ljava/io/File;

    iget-object v0, p1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->d:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/d;->d(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 201
    const-string/jumbo v0, "ShareCoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setExecutable soDir fail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 202
    goto :goto_0

    .line 205
    :cond_4
    invoke-static {p0}, Lcom/uc/webview/export/internal/utility/d;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)[Ljava/lang/String;

    move-result-object v5

    .line 206
    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_8

    aget-object v7, v5, v0

    .line 207
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 209
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/d;->d(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 211
    :cond_5
    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-static {v8}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 212
    :cond_6
    const-string/jumbo v0, "ShareCoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setExecutable(soFile) or setReadable(soFile) fail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 213
    goto/16 :goto_0

    .line 206
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    :cond_8
    sget-object v0, Lcom/uc/webview/export/internal/setup/ad;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 219
    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/d;->b(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 220
    const-string/jumbo v0, "ShareCoreTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setReadable(new File(dexDir, dex)) fail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 221
    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 224
    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 256
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/io/File;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move v3, v4

    .line 242
    :cond_0
    :goto_0
    return v3

    .line 231
    :cond_1
    invoke-static {p1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v5

    .line 232
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    move v2, v3

    .line 236
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 237
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;

    iget-object v6, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a:Ljava/lang/String;

    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->b:Ljava/lang/String;

    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->b:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->d:Ljava/lang/String;

    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->d:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->f:Ljava/lang/String;

    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->f:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->g:Ljava/lang/String;

    iget-object v7, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->g:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->e:Ljava/lang/String;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_2
    if-nez v0, :cond_3

    move v3, v4

    .line 238
    goto :goto_0

    :cond_2
    move v0, v3

    .line 237
    goto :goto_2

    .line 236
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 35
    const-string/jumbo v0, "share_core"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ad;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 37
    if-nez v0, :cond_1

    move v2, v1

    .line 39
    :goto_0
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/ad;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 42
    const/16 v3, 0x271b

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 103
    :cond_0
    :goto_1
    return-void

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v2, v0

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 50
    iget v3, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    if-eq v3, v5, :cond_0

    .line 53
    iget-object v5, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 56
    :try_start_0
    invoke-static {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->getUpdateRoot(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 57
    new-instance v3, Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "config.json"

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    :try_start_1
    const-string/jumbo v0, "ShareCoreTask"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u5904\u7406\u5171\u4eab\u5185\u6838:"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    if-nez v2, :cond_3

    .line 60
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 97
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 98
    :goto_2
    const-string/jumbo v2, "ShareCoreTask"

    const-string/jumbo v3, "FilePermissions.run"

    invoke-static {v2, v3, v0}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 66
    :cond_3
    :try_start_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 67
    if-nez v5, :cond_5

    .line 68
    :goto_3
    if-eqz v4, :cond_4

    .line 69
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_4
    invoke-static {v7, v3}, Lcom/uc/webview/export/internal/setup/ad;->a(Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 73
    const-string/jumbo v0, "ShareCoreTask"

    const-string/jumbo v1, "\u5904\u7406\u5171\u4eab\u5185\u6838:\u5185\u6838\u4fe1\u606f\u65e0\u53d8\u5316"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_5
    const/16 v1, 0x271c

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ad;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v8, "ucmLibDir"

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ad;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "CONTEXT"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;

    invoke-direct {v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;-><init>()V

    sget-object v2, Lcom/uc/webview/export/Build;->UCM_VERSION:Ljava/lang/String;

    iput-object v2, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a:Ljava/lang/String;

    sget-object v2, Lcom/uc/webview/export/Build;->UCM_SUPPORT_SDK_MIN:Ljava/lang/String;

    iput-object v2, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->b:Ljava/lang/String;

    const/16 v8, 0x2733

    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v2, 0x273e

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v2, v11}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    aput-object v2, v9, v10

    const/4 v2, 0x1

    aput-object v0, v9, v2

    invoke-static {v8, v9}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->c:Ljava/lang/String;

    iget-object v2, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    iput-object v2, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->d:Ljava/lang/String;

    const/16 v2, 0x2733

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x2718

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v0, v8, v1

    invoke-static {v2, v8}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->e:Ljava/lang/String;

    goto/16 :goto_3

    .line 77
    :cond_6
    invoke-static {v6}, Lcom/uc/webview/export/internal/utility/d;->c(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 78
    const-string/jumbo v0, "ShareCoreTask"

    const-string/jumbo v1, "setExecutable(ucmRoot) fail."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 82
    :cond_7
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/ad;->a()Z

    move-result v0

    if-nez v0, :cond_8

    .line 83
    const-string/jumbo v0, "ShareCoreTask"

    const-string/jumbo v1, "createShareJarFromSo() fail."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    :cond_8
    if-eqz v4, :cond_9

    invoke-static {v5, v4}, Lcom/uc/webview/export/internal/setup/ad;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 88
    const-string/jumbo v0, "ShareCoreTask"

    const-string/jumbo v1, "modifyFilePermissions(config) fail."

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {v7, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    :cond_9
    invoke-static {v7, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo$a;->a(Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v3}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 93
    const-string/jumbo v0, "ShareCoreTask"

    const-string/jumbo v1, "\u6210\u529f\u4fee\u6539\u5171\u4eab\u5185\u6838\u914d\u7f6e\u6587\u4ef6"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 95
    :cond_a
    const-string/jumbo v0, "ShareCoreTask"

    const-string/jumbo v1, "\u4fee\u6539\u5171\u4eab\u5185\u6838\u914d\u7f6e\u6587\u4ef6\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 97
    :catch_1
    move-exception v0

    move-object v1, v4

    goto/16 :goto_2
.end method
