.class public Lc8/uTb;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vTb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMRuntimeUtils"
.end annotation


# static fields
.field static initSuccess:Z

.field static mRuntime:Ljava/lang/Object;

.field static mVMRuntimeClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field static mVMRuntimeClazz_DisableJitCompilationMethod:Ljava/lang/reflect/Method;

.field static mVMRuntimeClazz_IsDebuggerActiveMethod:Ljava/lang/reflect/Method;

.field static mVMRuntimeClazz_StartJitCompilationMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 938
    sput-boolean v1, Lc8/uTb;->initSuccess:Z

    .line 942
    :try_start_0
    const-string/jumbo v1, "dalvik.system.VMRuntime"

    invoke-static {v1}, Lc8/uTb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 943
    sput-object v1, Lc8/uTb;->mVMRuntimeClazz:Ljava/lang/Class;

    const-string/jumbo v2, "getRuntime"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 944
    .local v0, "getRuntimeMethod":Ljava/lang/reflect/Method;
    sget-object v1, Lc8/uTb;->mVMRuntimeClazz:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/uTb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lc8/uTb;->mRuntime:Ljava/lang/Object;

    .line 945
    sget-object v1, Lc8/uTb;->mVMRuntimeClazz:Ljava/lang/Class;

    const-string/jumbo v2, "isDebuggerActive"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lc8/uTb;->mVMRuntimeClazz_IsDebuggerActiveMethod:Ljava/lang/reflect/Method;

    .line 946
    sget-object v1, Lc8/uTb;->mVMRuntimeClazz:Ljava/lang/Class;

    const-string/jumbo v2, "startJitCompilation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lc8/uTb;->mVMRuntimeClazz_StartJitCompilationMethod:Ljava/lang/reflect/Method;

    .line 947
    sget-object v1, Lc8/uTb;->mVMRuntimeClazz:Ljava/lang/Class;

    const-string/jumbo v2, "disableJitCompilation"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lc8/uTb;->mVMRuntimeClazz_DisableJitCompilationMethod:Ljava/lang/reflect/Method;

    .line 948
    const/4 v1, 0x1

    sput-boolean v1, Lc8/uTb;->initSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 952
    :goto_0
    return-void

    .line 950
    :catch_0
    move-exception v1

    const-string/jumbo v1, "init system properties utils"

    invoke-static {v1}, Lc8/USb;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

.method public static disableJitCompilation()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 982
    sget-boolean v2, Lc8/uTb;->initSuccess:Z

    if-eqz v2, :cond_0

    .line 984
    :try_start_0
    sget-object v2, Lc8/uTb;->mVMRuntimeClazz_DisableJitCompilationMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lc8/uTb;->mRuntime:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/uTb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    const/4 v1, 0x1

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 986
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 987
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "disableJitCompilation"

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isDebuggerActive()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 956
    sget-boolean v3, Lc8/uTb;->initSuccess:Z

    if-eqz v3, :cond_0

    .line 958
    :try_start_0
    sget-object v3, Lc8/uTb;->mVMRuntimeClazz_IsDebuggerActiveMethod:Ljava/lang/reflect/Method;

    sget-object v4, Lc8/uTb;->mRuntime:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/uTb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 959
    .local v1, "objIsDebuggerActive":Ljava/lang/Object;
    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "objIsDebuggerActive":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 964
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v2

    .line 960
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 961
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "isDebuggerActive"

    invoke-static {v3, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static startJitCompilation()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 969
    sget-boolean v2, Lc8/uTb;->initSuccess:Z

    if-eqz v2, :cond_0

    .line 971
    :try_start_0
    sget-object v2, Lc8/uTb;->mVMRuntimeClazz_StartJitCompilationMethod:Ljava/lang/reflect/Method;

    sget-object v3, Lc8/uTb;->mRuntime:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/uTb;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    const/4 v1, 0x1

    .line 977
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return v1

    .line 973
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 974
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "startJitCompilation"

    invoke-static {v2, v0}, Lc8/USb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
