.class public Lc8/Uqg;
.super Ljava/lang/Object;
.source "DalvikPatch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DalvikPatch"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1loadLibrary(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ali/mobisecenhance/Library;->isKeepSoloadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p0, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static native adjustLinearAlloc()I
.end method

.method private static native dumpLinearAlloc()V
.end method

.method private static native getError()I
.end method

.method private static native getMapAddr()I
.end method

.method private static native getMapLength()I
.end method

.method private static native getMapUsed()I
.end method

.method private static native isDalvik()Z
.end method

.method public static patchIfPossible()I
    .locals 4

    .prologue
    .line 12
    :try_start_0
    const-string/jumbo v2, "dalvikpatch"

    invoke-static {v2}, Lc8/Uqg;->_1loadLibrary(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lc8/Uqg;->isDalvik()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    invoke-static {}, Lc8/Uqg;->adjustLinearAlloc()I

    move-result v0

    .line 15
    .local v0, "adjustLinearAlloc":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- patchIfPossible: adjustLinearAlloc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v0    # "adjustLinearAlloc":I
    :goto_0
    return v0

    .line 18
    .restart local v0    # "adjustLinearAlloc":I
    :catch_0
    move-exception v1

    .line 23
    .local v1, "ingored":Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v2, "DalvikPatch"

    invoke-virtual {v1}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
