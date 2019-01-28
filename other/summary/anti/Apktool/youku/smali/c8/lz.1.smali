.class public Lc8/lz;
.super Lc8/sz;
.source "InstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mz;->execStartActivity()Landroid/app/Instrumentation$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/mz;


# direct methods
.method constructor <init>(Lc8/mz;)V
    .locals 0
    .param p1, "this$1"    # Lc8/mz;

    .prologue
    .line 317
    iput-object p1, p0, Lc8/lz;->this$1:Lc8/mz;

    invoke-direct {p0}, Lc8/sz;-><init>()V

    return-void
.end method


# virtual methods
.method public execStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .locals 7
    .param p1, "wrapperIntent"    # Landroid/content/Intent;

    .prologue
    .line 320
    iget-object v0, p0, Lc8/lz;->this$1:Lc8/mz;

    iget-object v0, v0, Lc8/mz;->this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

    invoke-static {v0}, Landroid/taobao/atlas/runtime/InstrumentationHook;->access$000(Landroid/taobao/atlas/runtime/InstrumentationHook;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lc8/lz;->this$1:Lc8/mz;

    iget-object v1, v1, Lc8/mz;->val$who:Landroid/content/Context;

    iget-object v2, p0, Lc8/lz;->this$1:Lc8/mz;

    iget-object v2, v2, Lc8/mz;->val$contextThread:Landroid/os/IBinder;

    iget-object v3, p0, Lc8/lz;->this$1:Lc8/mz;

    iget-object v3, v3, Lc8/mz;->val$token:Landroid/os/IBinder;

    iget-object v4, p0, Lc8/lz;->this$1:Lc8/mz;

    iget-object v4, v4, Lc8/mz;->val$target:Landroid/app/Fragment;

    iget-object v5, p0, Lc8/lz;->this$1:Lc8/mz;

    iget-object v5, v5, Lc8/mz;->val$intent:Landroid/content/Intent;

    iget-object v6, p0, Lc8/lz;->this$1:Lc8/mz;

    iget v6, v6, Lc8/mz;->val$requestCode:I

    invoke-virtual/range {v0 .. v6}, Landroid/app/Instrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method
