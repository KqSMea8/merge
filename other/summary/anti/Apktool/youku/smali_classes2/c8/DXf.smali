.class public abstract Lc8/DXf;
.super Lc8/MXf;
.source "WXCompatModule.java"

# interfaces
.implements Lc8/uXf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/CXf;
    }
.end annotation


# instance fields
.field private mModuleReceive:Lc8/CXf;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 39
    new-instance v0, Lc8/CXf;

    invoke-direct {v0, p0}, Lc8/CXf;-><init>(Lc8/DXf;)V

    iput-object v0, p0, Lc8/DXf;->mModuleReceive:Lc8/CXf;

    .line 40
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lc8/DXf;->mModuleReceive:Lc8/CXf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "actionActivityResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 42
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lc8/DXf;->mModuleReceive:Lc8/CXf;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "actionRequestPermissionsResult"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 44
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lc8/DXf;->mModuleReceive:Lc8/CXf;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 56
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 50
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 47
    return-void
.end method
