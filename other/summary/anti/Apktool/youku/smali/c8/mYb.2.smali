.class public Lc8/mYb;
.super Landroid/content/BroadcastReceiver;
.source "InternalTriggerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/oYb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FragmentSwitchBroadcastReceiver"
.end annotation


# instance fields
.field private mTriggleController:Lc8/oYb;


# direct methods
.method public constructor <init>(Lc8/oYb;)V
    .locals 0
    .param p1, "controller"    # Lc8/oYb;

    .prologue
    .line 265
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 266
    iput-object p1, p0, Lc8/mYb;->mTriggleController:Lc8/oYb;

    .line 267
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 272
    :try_start_0
    const-string/jumbo v4, "fragment_name"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "fragmentName":Ljava/lang/String;
    const-string/jumbo v4, "fragment_param"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, "param":Ljava/lang/String;
    const-string/jumbo v4, "fragment_need_activity_param"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 275
    .local v2, "needAcParam":Z
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    const-string/jumbo v4, "FragmentSwitchBroadcastReceiver.onReceive?fragmentName is empty"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    .end local v1    # "fragmentName":Ljava/lang/String;
    .end local v2    # "needAcParam":Z
    .end local v3    # "param":Ljava/lang/String;
    :goto_0
    return-void

    .line 279
    .restart local v1    # "fragmentName":Ljava/lang/String;
    .restart local v2    # "needAcParam":Z
    .restart local v3    # "param":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lc8/mYb;->mTriggleController:Lc8/oYb;

    invoke-virtual {v4, v1, v3, v2}, Lc8/oYb;->onFragmentResumed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 280
    const-string/jumbo v4, "FragmentSwitchBroadcastReceiver.onReceive?fragmentName=%s,param=%s,needAcParam=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    const/4 v6, 0x2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    .end local v1    # "fragmentName":Ljava/lang/String;
    .end local v2    # "needAcParam":Z
    .end local v3    # "param":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "FragmentSwitchBroadcastReceiver.onReceive.fail"

    invoke-static {v4, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
