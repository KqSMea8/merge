.class public final Lc8/oA;
.super Ljava/lang/Object;
.source "ServiceBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sA;->handleActivityStack(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lc8/Vz;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$info:Landroid/content/pm/ActivityInfo;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$observer:Lc8/Vz;


# direct methods
.method constructor <init>(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lc8/Vz;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lc8/oA;->val$info:Landroid/content/pm/ActivityInfo;

    iput-object p2, p0, Lc8/oA;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lc8/oA;->val$observer:Lc8/Vz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 185
    :try_start_0
    iget-object v2, p0, Lc8/oA;->val$info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-static {v2}, Lc8/sA;->access$000(Ljava/lang/String;)Lc8/sA;

    move-result-object v2

    invoke-virtual {v2}, Lc8/sA;->getRemoteDelegate()Lc8/jA;

    move-result-object v2

    iget-object v3, p0, Lc8/oA;->val$intent:Landroid/content/Intent;

    iget-object v4, p0, Lc8/oA;->val$info:Landroid/content/pm/ActivityInfo;

    invoke-interface {v2, v3, v4}, Lc8/jA;->handleActivityStack(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 186
    .local v1, "result":Landroid/content/Intent;
    iget-object v2, p0, Lc8/oA;->val$observer:Lc8/Vz;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lc8/oA;->val$observer:Lc8/Vz;

    invoke-interface {v2, v1}, Lc8/Vz;->onPrepared(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v1    # "result":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
