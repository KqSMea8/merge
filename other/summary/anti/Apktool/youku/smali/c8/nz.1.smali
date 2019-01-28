.class public Lc8/nz;
.super Lc8/sz;
.source "InstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/oz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/oz;


# direct methods
.method constructor <init>(Lc8/oz;)V
    .locals 0
    .param p1, "this$1"    # Lc8/oz;

    .prologue
    .line 339
    iput-object p1, p0, Lc8/nz;->this$1:Lc8/oz;

    invoke-direct {p0}, Lc8/sz;-><init>()V

    return-void
.end method


# virtual methods
.method public execStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .locals 8
    .param p1, "wrapperIntent"    # Landroid/content/Intent;

    .prologue
    .line 342
    iget-object v0, p0, Lc8/nz;->this$1:Lc8/oz;

    iget-object v0, v0, Lc8/oz;->this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

    invoke-static {v0}, Landroid/taobao/atlas/runtime/InstrumentationHook;->access$000(Landroid/taobao/atlas/runtime/InstrumentationHook;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lc8/nz;->this$1:Lc8/oz;

    iget-object v1, v1, Lc8/oz;->val$who:Landroid/content/Context;

    iget-object v2, p0, Lc8/nz;->this$1:Lc8/oz;

    iget-object v2, v2, Lc8/oz;->val$contextThread:Landroid/os/IBinder;

    iget-object v3, p0, Lc8/nz;->this$1:Lc8/oz;

    iget-object v3, v3, Lc8/oz;->val$token:Landroid/os/IBinder;

    iget-object v4, p0, Lc8/nz;->this$1:Lc8/oz;

    iget-object v4, v4, Lc8/oz;->val$target:Landroid/app/Fragment;

    iget-object v5, p0, Lc8/nz;->this$1:Lc8/oz;

    iget-object v5, v5, Lc8/oz;->val$intent:Landroid/content/Intent;

    iget-object v6, p0, Lc8/nz;->this$1:Lc8/oz;

    iget v6, v6, Lc8/oz;->val$requestCode:I

    iget-object v7, p0, Lc8/nz;->this$1:Lc8/oz;

    iget-object v7, v7, Lc8/oz;->val$options:Landroid/os/Bundle;

    invoke-virtual/range {v0 .. v7}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method
