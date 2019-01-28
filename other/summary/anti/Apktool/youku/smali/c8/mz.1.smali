.class public Lc8/mz;
.super Lc8/sz;
.source "InstrumentationHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/taobao/atlas/runtime/InstrumentationHook;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

.field final synthetic val$contextThread:Landroid/os/IBinder;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$target:Landroid/app/Fragment;

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$who:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/taobao/atlas/runtime/InstrumentationHook;Landroid/content/Intent;Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/taobao/atlas/runtime/InstrumentationHook;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 313
    iput-object p1, p0, Lc8/mz;->this$0:Landroid/taobao/atlas/runtime/InstrumentationHook;

    iput-object p2, p0, Lc8/mz;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lc8/mz;->val$who:Landroid/content/Context;

    iput-object p4, p0, Lc8/mz;->val$contextThread:Landroid/os/IBinder;

    iput-object p5, p0, Lc8/mz;->val$token:Landroid/os/IBinder;

    iput-object p6, p0, Lc8/mz;->val$target:Landroid/app/Fragment;

    iput p7, p0, Lc8/mz;->val$requestCode:I

    invoke-direct {p0}, Lc8/sz;-><init>()V

    return-void
.end method


# virtual methods
.method public execStartActivity()Landroid/app/Instrumentation$ActivityResult;
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lc8/mz;->val$intent:Landroid/content/Intent;

    new-instance v1, Lc8/lz;

    invoke-direct {v1, p0}, Lc8/lz;-><init>(Lc8/mz;)V

    invoke-static {v0, v1}, Lc8/Wz;->execStartActivity(Landroid/content/Intent;Lc8/sz;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method
