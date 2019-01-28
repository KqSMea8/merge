.class public Lc8/uA;
.super Ljava/lang/Object;
.source "DexLoadBooster.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DexLoadBooster"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static isClassAvailable(Ljava/lang/String;)Z
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 285
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    :goto_0
    return v1

    .line 289
    :cond_0
    :try_start_0
    invoke-static {p0}, Lc8/uA;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/4 v1, 0x1

    goto :goto_0

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "DexLoadBooster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected exception when checking if class:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exists at runtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 292
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private isYunOS()Z
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 272
    const/4 v2, 0x0

    .line 273
    .local v2, "version":Ljava/lang/String;
    const/4 v3, 0x0

    .line 275
    .local v3, "vmName":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Lc8/uA;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v7, "get"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 276
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "ro.yunos.version"

    aput-object v9, v7, v8

    invoke-static {v1, v4, v7}, Lc8/uA;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 277
    const/4 v4, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "java.vm.name"

    aput-object v9, v7, v8

    invoke-static {v1, v4, v7}, Lc8/uA;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "lemur"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    :cond_1
    move v4, v5

    :goto_1
    return v4

    :cond_2
    move v4, v6

    .line 280
    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 234
    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 235
    .local v0, "isTaobao":Z
    invoke-direct {p0}, Lc8/uA;->isYunOS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    if-eqz v0, :cond_2

    .line 242
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/taobao/android/runtime/Dex2OatService;->setBootCompleted(Z)V

    .line 247
    :cond_2
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v1

    const-string/jumbo v2, "com.ali.mobisecenhance.ld.startup.ConfigInfo"

    invoke-static {v2}, Lc8/uA;->isClassAvailable(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lc8/icf;->init(Landroid/content/Context;Z)V

    .line 248
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/icf;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    const-string/jumbo v1, "AndroidRuntime"

    const-class v2, Lcom/taobao/android/runtime/Dex2OatService;

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_0

    .line 255
    invoke-static {}, Lc8/Uqg;->patchIfPossible()I

    goto :goto_0
.end method

.method public isOdexValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "outputPathName"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/icf;->isOdexValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourcePathName"    # Ljava/lang/String;
    .param p3, "outputPathName"    # Ljava/lang/String;
    .param p4, "flags"    # I
    .param p5, "interpretOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lc8/icf;->loadDex(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Ldalvik/system/DexFile;

    move-result-object v0

    return-object v0
.end method

.method public setVerificationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 259
    invoke-static {}, Lc8/icf;->getInstance()Lc8/icf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/icf;->setVerificationEnabled(Z)V

    .line 260
    return-void
.end method
