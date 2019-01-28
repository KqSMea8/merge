.class public Lc8/MEn;
.super Landroid/content/BroadcastReceiver;
.source "AppAggreementDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youku/ui/activity/AppAggreementDialogActivity;->registBrodcaseReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/AppAggreementDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/AppAggreementDialogActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 192
    iput-object p1, p0, Lc8/MEn;->this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 195
    iget-object v0, p0, Lc8/MEn;->this$0:Lcom/youku/ui/activity/AppAggreementDialogActivity;

    iget-object v0, v0, Lcom/youku/ui/activity/AppAggreementDialogActivity;->intentActionShow:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    const-string/jumbo v0, "isShowAggrementDialog"

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lc8/VLj;->savePreference(Ljava/lang/String;I)V

    .line 198
    :cond_0
    return-void
.end method
