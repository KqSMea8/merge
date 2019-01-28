.class public final Lc8/mA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sA;->bindService(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$connection:Landroid/app/IServiceConnection;

.field final synthetic val$info:Landroid/content/pm/ServiceInfo;

.field final synthetic val$service:Landroid/content/Intent;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/content/pm/ServiceInfo;Landroid/content/Intent;Landroid/app/IServiceConnection;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lc8/mA;->val$info:Landroid/content/pm/ServiceInfo;

    iput-object p2, p0, Lc8/mA;->val$service:Landroid/content/Intent;

    iput-object p3, p0, Lc8/mA;->val$connection:Landroid/app/IServiceConnection;

    iput-object p4, p0, Lc8/mA;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 144
    :try_start_0
    iget-object v2, p0, Lc8/mA;->val$info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 145
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v1}, Lc8/sA;->access$000(Ljava/lang/String;)Lc8/sA;

    move-result-object v2

    iget-object v2, v2, Lc8/sA;->mActiveServiceInfo:Ljava/util/HashMap;

    iget-object v3, p0, Lc8/mA;->val$service:Landroid/content/Intent;

    iget-object v4, p0, Lc8/mA;->val$connection:Landroid/app/IServiceConnection;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {v1}, Lc8/sA;->access$000(Ljava/lang/String;)Lc8/sA;

    move-result-object v2

    invoke-virtual {v2}, Lc8/sA;->getRemoteDelegate()Lc8/jA;

    move-result-object v2

    iget-object v3, p0, Lc8/mA;->val$service:Landroid/content/Intent;

    iget-object v4, p0, Lc8/mA;->val$token:Landroid/os/IBinder;

    iget-object v5, p0, Lc8/mA;->val$connection:Landroid/app/IServiceConnection;

    invoke-interface {v2, v3, v4, v5}, Lc8/jA;->bindService(Landroid/content/Intent;Landroid/os/IBinder;Landroid/app/IServiceConnection;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v1    # "processName":Ljava/lang/String;
    :goto_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
