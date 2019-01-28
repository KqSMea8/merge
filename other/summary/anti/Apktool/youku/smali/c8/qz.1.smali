.class public Lc8/qz;
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

.field final synthetic val$component:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$current:Landroid/app/Activity;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/app/Activity;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/taobao/atlas/runtime/InstrumentationHook;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 481
    iput-object p1, p0, Lc8/qz;->this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

    iput-object p2, p0, Lc8/qz;->val$current:Landroid/app/Activity;

    iput-object p3, p0, Lc8/qz;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lc8/qz;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Lc8/qz;->val$component:Ljava/lang/String;

    iput-object p6, p0, Lc8/qz;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 484
    iget-object v0, p0, Lc8/qz;->val$current:Landroid/app/Activity;

    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    move-result-object v1

    invoke-virtual {v1}, Lc8/Oy;->peekTopActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lc8/qz;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lc8/qz;->val$intent:Landroid/content/Intent;

    iget-object v2, p0, Lc8/qz;->val$component:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/taobao/atlas/runtime/InstrumentationHook;->fallBackToClassNotFoundCallback(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 488
    :cond_0
    iget-object v0, p0, Lc8/qz;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/qz;->val$current:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/qz;->val$current:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    :try_start_0
    iget-object v0, p0, Lc8/qz;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lc8/qz;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 492
    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    const/4 v0, 0x0

    sput-object v0, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    invoke-static {}, Lc8/Oy;->getInstance()Lc8/Oy;

    sput-object v3, Lc8/Oy;->sReminderDialog:Landroid/app/Dialog;

    goto :goto_0
.end method
