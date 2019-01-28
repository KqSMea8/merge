.class public Lc8/dA;
.super Ljava/lang/Object;
.source "BaseDelegateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fA;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/IServiceConnection;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/fA;

.field final synthetic val$conn:Landroid/app/IServiceConnection;

.field final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lc8/fA;Landroid/content/Intent;Landroid/app/IServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lc8/fA;

    .prologue
    .line 79
    iput-object p1, p0, Lc8/dA;->this$0:Lc8/fA;

    iput-object p2, p0, Lc8/dA;->val$serviceIntent:Landroid/content/Intent;

    iput-object p3, p0, Lc8/dA;->val$conn:Landroid/app/IServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 82
    iget-object v3, p0, Lc8/dA;->this$0:Lc8/fA;

    iget-object v4, p0, Lc8/dA;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fA;->access$000(Lc8/fA;Landroid/content/ComponentName;)Lc8/bA;

    move-result-object v2

    .line 83
    .local v2, "record":Lc8/bA;
    if-nez v2, :cond_0

    .line 85
    iget-object v3, p0, Lc8/dA;->this$0:Lc8/fA;

    iget-object v4, p0, Lc8/dA;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/fA;->access$100(Lc8/fA;Landroid/content/ComponentName;)Lc8/bA;

    move-result-object v2

    .line 87
    :cond_0
    if-eqz v2, :cond_2

    .line 88
    iget-object v3, p0, Lc8/dA;->this$0:Lc8/fA;

    invoke-static {v3}, Lc8/fA;->access$300(Lc8/fA;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Service;

    iget-object v4, p0, Lc8/dA;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 89
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, v2, Lc8/bA;->activeConnections:Ljava/util/ArrayList;

    iget-object v4, p0, Lc8/dA;->val$conn:Landroid/app/IServiceConnection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    iget-object v3, v2, Lc8/bA;->activeConnections:Ljava/util/ArrayList;

    iget-object v4, p0, Lc8/dA;->val$conn:Landroid/app/IServiceConnection;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_1
    :try_start_0
    iget-object v3, p0, Lc8/dA;->val$conn:Landroid/app/IServiceConnection;

    iget-object v4, v2, Lc8/bA;->component:Landroid/content/ComponentName;

    invoke-interface {v3, v4, v0}, Landroid/app/IServiceConnection;->connected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    :goto_0
    return-void

    .line 94
    .restart local v0    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
