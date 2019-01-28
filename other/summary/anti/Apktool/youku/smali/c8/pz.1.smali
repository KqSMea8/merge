.class public Lc8/pz;
.super Ljava/lang/Object;
.source "InstrumentationHook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/atlas/runtime/InstrumentationHook;->asyncStartActivity(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Lc8/sz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

.field final synthetic val$callback:Lc8/sz;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$current:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/content/Context;Lc8/sz;Landroid/content/Intent;Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/taobao/atlas/runtime/InstrumentationHook;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 455
    iput-object p1, p0, Lc8/pz;->this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

    iput-object p2, p0, Lc8/pz;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lc8/pz;->val$callback:Lc8/sz;

    iput-object p4, p0, Lc8/pz;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lc8/pz;->val$dialog:Landroid/app/Dialog;

    iput-object p6, p0, Lc8/pz;->val$current:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 458
    const-string/jumbo v0, "InstrumentationHook"

    const-string/jumbo v1, "async startActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v0, p0, Lc8/pz;->val$context:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lc8/pz;->val$callback:Lc8/sz;

    invoke-virtual {v0}, Lc8/sz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;

    .line 461
    iget-object v0, p0, Lc8/pz;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 469
    :goto_0
    iget-object v0, p0, Lc8/pz;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pz;->val$current:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/pz;->val$current:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 471
    :try_start_0
    iget-object v0, p0, Lc8/pz;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lc8/pz;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 473
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    const/4 v0, 0x0

    sput-object v0, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_1
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lc8/pz;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lc8/pz;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    sput-object v3, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    goto :goto_1
.end method
