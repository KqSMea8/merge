.class public Lc8/zhn;
.super Landroid/content/BroadcastReceiver;
.source "WakeUpReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ORIGINAL_INTENT:Ljava/lang/String; = "OI"

.field private static final TAG:Ljava/lang/String; = "WakeUpReceiver"

.field public static final WAKEUP_ALIPAY:Ljava/lang/String; = "com.youku.phone.wakeup.alipay"

.field public static final WAKEUP_CMS:Ljava/lang/String; = "com.youku.phone.wakeup.cms"

.field public static final WAKEUP_NORMAL:Ljava/lang/String; = "com.youku.android.pushsdk.action.WAKEUP_NORMAL"

.field public static final WAKEUP_VALIDATE:Ljava/lang/String; = "com.youku.android.pushsdk.action.WAKEUP_VALIDATE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 38
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    const-string/jumbo v3, "com.youku.android.pushsdk.action.WAKEUP_NORMAL"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 24
    const-string/jumbo v3, "source"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    .local v1, "source":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6210\u529f\u5524\u8d77 by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lc8/Ehn;->postWakedInfo(Ljava/lang/String;Z)V

    goto :goto_0

    .line 27
    .end local v1    # "source":Ljava/lang/String;
    :cond_2
    const-string/jumbo v3, "com.youku.android.pushsdk.action.WAKEUP_VALIDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 28
    const-string/jumbo v3, "source"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .restart local v1    # "source":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u6709\u6548\u5524\u8d77 by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lc8/Ehn;->postWakedInfo(Ljava/lang/String;Z)V

    goto :goto_0

    .line 31
    .end local v1    # "source":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "com.youku.phone.wakeup.cms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 32
    const-string/jumbo v3, "OI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 33
    .local v2, "wakeup":Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WakeUpReceiver\u51c6\u5907\u5524\u8d77 ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v3, v2, v4, v5}, Lc8/Ehn;->processWakeUp(Landroid/content/Context;Landroid/content/Intent;J)Z

    goto/16 :goto_0
.end method
