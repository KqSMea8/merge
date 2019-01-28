.class public Lc8/jz;
.super Lc8/sz;
.source "InstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/kz;


# direct methods
.method constructor <init>(Lc8/kz;)V
    .locals 0
    .param p1, "this$1"    # Lc8/kz;

    .prologue
    .line 297
    iput-object p1, p0, Lc8/jz;->this$1:Lc8/kz;

    invoke-direct {p0}, Lc8/sz;-><init>()V

    return-void
.end method


# virtual methods
.method public execStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .locals 8
    .param p1, "wrapperIntent"    # Landroid/content/Intent;

    .prologue
    .line 300
    iget-object v0, p0, Lc8/jz;->this$1:Lc8/kz;

    iget-object v0, v0, Lc8/kz;->this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

    invoke-static {v0}, Landroid/taobao/atlas/runtime/InstrumentationHook;->access$000(Landroid/taobao/atlas/runtime/InstrumentationHook;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lc8/jz;->this$1:Lc8/kz;

    iget-object v1, v1, Lc8/kz;->val$who:Landroid/content/Context;

    iget-object v2, p0, Lc8/jz;->this$1:Lc8/kz;

    iget-object v2, v2, Lc8/kz;->val$contextThread:Landroid/os/IBinder;

    iget-object v3, p0, Lc8/jz;->this$1:Lc8/kz;

    iget-object v3, v3, Lc8/kz;->val$token:Landroid/os/IBinder;

    iget-object v4, p0, Lc8/jz;->this$1:Lc8/kz;

    iget-object v4, v4, Lc8/kz;->val$target:Landroid/app/Activity;

    iget-object v5, p0, Lc8/jz;->this$1:Lc8/kz;

    iget v6, v5, Lc8/kz;->val$requestCode:I

    iget-object v5, p0, Lc8/jz;->this$1:Lc8/kz;

    iget-object v7, v5, Lc8/kz;->val$options:Landroid/os/Bundle;

    move-object v5, p1

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method
