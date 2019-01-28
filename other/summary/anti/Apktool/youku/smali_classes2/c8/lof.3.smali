.class public Lc8/lof;
.super Ljava/lang/Object;
.source "InstrumentationHook.java"

# interfaces
.implements Lc8/oof;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qof;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qof;

.field final synthetic val$contextThread:Landroid/os/IBinder;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$requestCode:I

.field final synthetic val$target:Landroid/app/Activity;

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$who:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/qof;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lc8/lof;->this$0:Lc8/qof;

    iput-object p2, p0, Lc8/lof;->val$who:Landroid/content/Context;

    iput-object p3, p0, Lc8/lof;->val$contextThread:Landroid/os/IBinder;

    iput-object p4, p0, Lc8/lof;->val$token:Landroid/os/IBinder;

    iput-object p5, p0, Lc8/lof;->val$target:Landroid/app/Activity;

    iput-object p6, p0, Lc8/lof;->val$intent:Landroid/content/Intent;

    iput p7, p0, Lc8/lof;->val$requestCode:I

    iput-object p8, p0, Lc8/lof;->val$options:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
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


# virtual methods
.method public execStartActivity()Landroid/app/Instrumentation$ActivityResult;
    .locals 6

    .prologue
    .line 69
    :try_start_0
    const-class v1, Landroid/app/Instrumentation;

    const-string/jumbo v2, "execStartActivity"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/os/IBinder;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x5

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 73
    .local v0, "execStartActivity":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 74
    iget-object v1, p0, Lc8/lof;->this$0:Lc8/qof;

    invoke-static {v1}, Lc8/qof;->access$000(Lc8/qof;)Landroid/app/Instrumentation;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/lof;->val$who:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lc8/lof;->val$contextThread:Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lc8/lof;->val$token:Landroid/os/IBinder;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lc8/lof;->val$target:Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lc8/lof;->val$intent:Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lc8/lof;->val$requestCode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    iget-object v4, p0, Lc8/lof;->val$options:Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/lof;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 77
    .end local v0    # "execStartActivity":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "do not support!!! pls adapt it"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
