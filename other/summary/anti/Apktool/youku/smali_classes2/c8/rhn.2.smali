.class public Lc8/rhn;
.super Ljava/lang/Object;
.source "PassportServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/shn;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/shn;

.field final synthetic val$isLogin:Z


# direct methods
.method constructor <init>(Lc8/shn;Z)V
    .locals 0
    .param p1, "this$1"    # Lc8/shn;

    .prologue
    .line 131
    iput-object p1, p0, Lc8/rhn;->this$1:Lc8/shn;

    iput-boolean p2, p0, Lc8/rhn;->val$isLogin:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 136
    :try_start_0
    iget-object v3, p0, Lc8/rhn;->this$1:Lc8/shn;

    iget-object v3, v3, Lc8/shn;->val$context:Landroid/content/Context;

    const-class v4, Lc8/kyk;

    invoke-static {v3, v4}, Lc8/Jcf;->get(Landroid/content/Context;Ljava/lang/Class;)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lc8/kyk;

    iget-boolean v4, p0, Lc8/rhn;->val$isLogin:Z

    invoke-interface {v3, v4}, Lc8/kyk;->getBabyInfo(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v2

    .line 139
    .local v2, "re":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 140
    const-string/jumbo v3, "ls_pass"

    invoke-virtual {v2}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    const-string/jumbo v3, "ls_pass"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 145
    .local v1, "ee":Ljava/lang/Error;
    const-string/jumbo v3, "ls_pass"

    invoke-virtual {v1}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string/jumbo v3, "ls_pass"

    invoke-virtual {v1}, Ljava/lang/Error;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/wHf;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
