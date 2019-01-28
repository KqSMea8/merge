.class public final Lc8/lA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sA;->stopService(Landroid/content/Intent;)Z
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
    .line 120
    iput-object p1, p0, Lc8/lA;->val$info:Landroid/content/pm/ServiceInfo;

    iput-object p2, p0, Lc8/lA;->val$service:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 124
    :try_start_0
    iget-object v2, p0, Lc8/lA;->val$info:Landroid/content/pm/ServiceInfo;

    iget-object v1, v2, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 125
    .local v1, "processName":Ljava/lang/String;
    invoke-static {v1}, Lc8/sA;->access$000(Ljava/lang/String;)Lc8/sA;

    move-result-object v2

    invoke-virtual {v2}, Lc8/sA;->getRemoteDelegate()Lc8/jA;

    move-result-object v2

    iget-object v3, p0, Lc8/lA;->val$service:Landroid/content/Intent;

    invoke-interface {v2, v3}, Lc8/jA;->stopService(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v1    # "processName":Ljava/lang/String;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
