.class public Lc8/JFn;
.super Landroid/content/BroadcastReceiver;
.source "LoginRegistCardViewDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;


# direct methods
.method public constructor <init>(Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 157
    iput-object p1, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.youku.action.LOGIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->setResult(I)V

    .line 165
    iget-object v2, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    invoke-static {v2}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->access$000(Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;)V

    .line 166
    iget-object v2, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    invoke-virtual {v2}, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->finish()V

    .line 168
    :cond_0
    const-string/jumbo v2, "com.youku.action.LOGOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    const-string/jumbo v2, "com.youku.action.LOGIN_BIND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "========\u7ed1\u5b9a\u6210\u529f\u754c\u9762=======mAccountBindData:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    iget-object v3, v3, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    iget-object v2, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    iget-object v2, v2, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

    if-eqz v2, :cond_1

    .line 175
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "AccountBindData"

    iget-object v3, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    iget-object v3, v3, Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;->mAccountBindData:Lcom/youku/android/youkusettingservice/data/AccountBindData;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 177
    iget-object v2, p0, Lc8/JFn;->this$0:Lcom/youku/ui/activity/LoginRegistCardViewDialogActivity;

    invoke-static {v2}, Lc8/Ybf;->from(Landroid/content/Context;)Lc8/Ybf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/Ybf;->withExtras(Landroid/os/Bundle;)Lc8/Ybf;

    move-result-object v2

    const-string/jumbo v3, "youku://account_bind_success_activity"

    invoke-virtual {v2, v3}, Lc8/Ybf;->toUri(Ljava/lang/String;)Z

    .line 181
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    return-void
.end method
