.class public final Lc8/pA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sA;->notifyonReceived(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Landroid/content/pm/ActivityInfo;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lc8/pA;->val$info:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lc8/pA;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Lc8/pA;->val$info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v1}, Lc8/sA;->access$000(Ljava/lang/String;)Lc8/sA;

    move-result-object v1

    invoke-virtual {v1}, Lc8/sA;->getRemoteDelegate()Lc8/jA;

    move-result-object v1

    iget-object v2, p0, Lc8/pA;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lc8/pA;->val$info:Landroid/content/pm/ActivityInfo;

    invoke-interface {v1, v2, v3}, Lc8/jA;->handleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
