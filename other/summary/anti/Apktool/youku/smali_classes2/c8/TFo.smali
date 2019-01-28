.class public Lc8/TFo;
.super Landroid/content/BroadcastReceiver;
.source "VipDataBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/VFo;->getReceiver(Lc8/UFo;)Landroid/content/BroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/VFo;

.field final synthetic val$listener:Lc8/UFo;


# direct methods
.method constructor <init>(Lc8/VFo;Lc8/UFo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/VFo;

    .prologue
    .line 47
    iput-object p1, p0, Lc8/TFo;->this$0:Lc8/VFo;

    iput-object p2, p0, Lc8/TFo;->val$listener:Lc8/UFo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    iget-object v2, p0, Lc8/TFo;->val$listener:Lc8/UFo;

    if-eqz v2, :cond_0

    .line 51
    const-string/jumbo v2, "action"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "type"

    const v3, 0x100005

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 53
    .local v1, "type":I
    iget-object v2, p0, Lc8/TFo;->val$listener:Lc8/UFo;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v2, v0, v1, v3}, Lc8/UFo;->onReceive(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 55
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_0
    return-void
.end method
