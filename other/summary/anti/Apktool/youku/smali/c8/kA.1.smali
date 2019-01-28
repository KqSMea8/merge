.class public final Lc8/kA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sA;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Landroid/content/pm/ServiceInfo;

.field final synthetic val$service:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lc8/kA;->val$info:Landroid/content/pm/ServiceInfo;

    iput-object p2, p0, Lc8/kA;->val$service:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 103
    iget-object v2, p0, Lc8/kA;->val$info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 105
    .local v1, "processName":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lc8/sA;->access$000(Ljava/lang/String;)Lc8/sA;

    move-result-object v2

    invoke-virtual {v2}, Lc8/sA;->getRemoteDelegate()Lc8/jA;

    move-result-object v2

    iget-object v3, p0, Lc8/kA;->val$service:Landroid/content/Intent;

    iget-object v4, p0, Lc8/kA;->val$info:Landroid/content/pm/ServiceInfo;

    invoke-interface {v2, v3, v4}, Lc8/jA;->startService(Landroid/content/Intent;Landroid/content/pm/ServiceInfo;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
