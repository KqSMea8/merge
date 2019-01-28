.class public Lc8/oUf;
.super Ljava/lang/Object;
.source "HotPatchManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/pUf;->onActivityStopped(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/pUf;


# direct methods
.method constructor <init>(Lc8/pUf;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lc8/oUf;->this$1:Lc8/pUf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lc8/oUf;->this$1:Lc8/pUf;

    iget-object v0, v0, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-virtual {v0}, Lc8/tUf;->isAppForeground()Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    iget-object v0, p0, Lc8/oUf;->this$1:Lc8/pUf;

    iget-object v0, v0, Lc8/pUf;->this$0:Lc8/tUf;

    iget-object v1, p0, Lc8/oUf;->this$1:Lc8/pUf;

    iget-object v1, v1, Lc8/pUf;->this$0:Lc8/tUf;

    invoke-static {v1}, Lc8/tUf;->access$300(Lc8/tUf;)Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/tUf;->access$1300(Lc8/tUf;Landroid/content/Context;)V

    .line 954
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 958
    :cond_0
    iget-object v0, p0, Lc8/oUf;->this$1:Lc8/pUf;

    iget-object v0, v0, Lc8/pUf;->this$0:Lc8/tUf;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/tUf;->access$1202(Lc8/tUf;Z)Z

    .line 959
    return-void
.end method
