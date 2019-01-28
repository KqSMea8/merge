.class public Lc8/ftf;
.super Ljava/lang/Object;
.source "OrangeConfigImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/qtf;->asyncBindRemoteService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/qtf;

.field final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lc8/qtf;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lc8/qtf;

    .prologue
    .line 412
    iput-object p1, p0, Lc8/ftf;->this$0:Lc8/qtf;

    iput-object p2, p0, Lc8/ftf;->val$ctx:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 415
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "asyncBindRemoteService start"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lc8/ftf;->val$ctx:Landroid/content/Context;

    const-class v3, Lcom/taobao/orange/service/OrangeApiService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/taobao/orange/service/OrangeApiService;

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    iget-object v2, p0, Lc8/ftf;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lc8/ftf;->this$0:Lc8/qtf;

    invoke-static {v3}, Lc8/qtf;->access$1100(Lc8/qtf;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 421
    :catch_0
    move-exception v1

    .line 422
    .local v1, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "OrangeConfigImpl"

    const-string/jumbo v3, "asyncBindRemoteService"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v1, v4}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 423
    iget-object v2, p0, Lc8/ftf;->this$0:Lc8/qtf;

    invoke-static {v2}, Lc8/qtf;->access$1000(Lc8/qtf;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method
