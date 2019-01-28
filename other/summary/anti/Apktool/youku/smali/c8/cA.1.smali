.class public Lc8/cA;
.super Ljava/lang/Object;
.source "BaseDelegateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fA;->startService(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fA;

.field final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lc8/fA;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fA;

    .prologue
    .line 59
    iput-object p1, p0, Lc8/cA;->this$0:Lc8/fA;

    iput-object p2, p0, Lc8/cA;->val$serviceIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lc8/cA;->this$0:Lc8/fA;

    iget-object v2, p0, Lc8/cA;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/fA;->access$000(Lc8/fA;Landroid/content/ComponentName;)Lc8/bA;

    move-result-object v0

    .line 63
    .local v0, "record":Lc8/bA;
    if-nez v0, :cond_0

    .line 65
    iget-object v1, p0, Lc8/cA;->this$0:Lc8/fA;

    iget-object v2, p0, Lc8/cA;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/fA;->access$100(Lc8/fA;Landroid/content/ComponentName;)Lc8/bA;

    move-result-object v0

    .line 67
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lc8/bA;->calledStart:Z

    .line 68
    if-eqz v0, :cond_1

    .line 69
    iget-object v1, p0, Lc8/cA;->this$0:Lc8/fA;

    iget-object v2, p0, Lc8/cA;->val$serviceIntent:Landroid/content/Intent;

    invoke-static {v1, v2, v0}, Lc8/fA;->access$200(Lc8/fA;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 71
    :cond_1
    return-void
.end method
