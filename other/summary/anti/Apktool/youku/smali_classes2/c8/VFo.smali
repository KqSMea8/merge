.class public Lc8/VFo;
.super Ljava/lang/Object;
.source "VipDataBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/UFo;
    }
.end annotation


# static fields
.field public static final TYPE_OPERATION_ADD:I = 0x100000

.field public static final TYPE_OPERATION_DEFAULT:I = 0x100005

.field public static final TYPE_OPERATION_DELETE:I = 0x100002

.field public static final TYPE_OPERATION_FAILED:I = 0x100004

.field public static final TYPE_OPERATION_SUCCEED:I = 0x100003

.field public static final TYPE_OPERATION_UPDATE:I = 0x100001


# instance fields
.field private manager:Lc8/ZFo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/VFo;->manager:Lc8/ZFo;

    .line 35
    invoke-static {p1}, Lc8/ZFo;->getInstance(Landroid/content/Context;)Lc8/ZFo;

    move-result-object v0

    iput-object v0, p0, Lc8/VFo;->manager:Lc8/ZFo;

    .line 37
    return-void
.end method


# virtual methods
.method public getReceiver(Lc8/UFo;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p1, "listener"    # Lc8/UFo;

    .prologue
    .line 47
    new-instance v0, Lc8/TFo;

    invoke-direct {v0, p0, p1}, Lc8/TFo;-><init>(Lc8/VFo;Lc8/UFo;)V

    .line 57
    .local v0, "receiver":Landroid/content/BroadcastReceiver;
    return-object v0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 40
    iget-object v0, p0, Lc8/VFo;->manager:Lc8/ZFo;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lc8/VFo;->manager:Lc8/ZFo;

    invoke-virtual {v0, p1, p2}, Lc8/ZFo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 43
    :cond_0
    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lc8/VFo;->sendBroadcast(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 78
    return-void
.end method

.method public sendBroadcast(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 62
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 67
    :cond_0
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lc8/VFo;->manager:Lc8/ZFo;

    invoke-virtual {v1, v0}, Lc8/ZFo;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 81
    iget-object v0, p0, Lc8/VFo;->manager:Lc8/ZFo;

    invoke-virtual {v0, p1}, Lc8/ZFo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    return-void
.end method
