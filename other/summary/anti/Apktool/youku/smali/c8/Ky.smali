.class public Lc8/Ky;
.super Ljava/lang/Object;
.source "ActivityManagerDelegate.java"

# interfaces
.implements Lc8/Dz;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ny;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ny;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$method:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Lc8/Ny;Landroid/content/Intent;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ny;

    .prologue
    .line 258
    iput-object p1, p0, Lc8/Ky;->this$0:Lc8/Ny;

    iput-object p2, p0, Lc8/Ky;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lc8/Ky;->val$method:Ljava/lang/reflect/Method;

    iput-object p4, p0, Lc8/Ky;->val$args:[Ljava/lang/Object;

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
.method public onPrepared(I)V
    .locals 4
    .param p1, "resultCode"    # I

    .prologue
    .line 261
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 263
    :try_start_0
    iget-object v1, p0, Lc8/Ky;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "atlas_external_service"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-static {}, Lc8/Lz;->get()Lc8/Lz;

    move-result-object v1

    iget-object v2, p0, Lc8/Ky;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lc8/Lz;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v1, p0, Lc8/Ky;->val$method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lc8/Ky;->this$0:Lc8/Ny;

    invoke-static {v2}, Lc8/Ny;->access$000(Lc8/Ny;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lc8/Ky;->val$args:[Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lc8/Ky;->_1invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
