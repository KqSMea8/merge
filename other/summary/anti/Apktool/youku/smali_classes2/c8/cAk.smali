.class public Lc8/cAk;
.super Ljava/lang/Object;
.source "SubscribeManager.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dAk;

.field final synthetic val$callback:Lc8/Tzk;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isShowTips:Z

.field final synthetic val$mOfflineSubscribe:Lc8/jzk;

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/dAk;Lc8/jzk;Lc8/Tzk;ZLandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dAk;

    .prologue
    .line 1047
    iput-object p1, p0, Lc8/cAk;->this$0:Lc8/dAk;

    iput-object p2, p0, Lc8/cAk;->val$mOfflineSubscribe:Lc8/jzk;

    iput-object p3, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    iput-boolean p4, p0, Lc8/cAk;->val$isShowTips:Z

    iput-object p5, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lc8/cAk;->val$userId:Ljava/lang/String;

    iput-object p7, p0, Lc8/cAk;->val$showid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1105
    iget-object v0, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    invoke-interface {v0}, Lc8/Tzk;->onFailed()V

    .line 1113
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->offline_other_person_info_has_cancel_follow_fail:I

    invoke-static {v0}, Lc8/nzk;->showTips(I)V

    .line 1116
    iget-object v0, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1117
    iget-object v0, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x232d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1119
    :cond_1
    iget-object v0, p0, Lc8/cAk;->this$0:Lc8/dAk;

    iget-object v1, p0, Lc8/cAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/cAk;->val$showid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/dAk;->access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 5
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x232d

    const/16 v3, -0x12f

    .line 1050
    iget-object v1, p0, Lc8/cAk;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v1, p1}, Lc8/jzk;->pareOfflineErrorResult(Ljava/lang/String;)Lc8/izk;

    move-result-object v0

    .line 1052
    .local v0, "mOfflinInfo":Lc8/izk;
    if-eqz v0, :cond_9

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====success delete result ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1054
    iget v1, v0, Lc8/izk;->codeStr:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1055
    iget-object v1, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    if-eqz v1, :cond_0

    .line 1056
    iget-object v1, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    invoke-interface {v1}, Lc8/Tzk;->onSuccess()V

    .line 1061
    :cond_0
    iget-boolean v1, p0, Lc8/cAk;->val$isShowTips:Z

    if-eqz v1, :cond_1

    .line 1065
    sget v1, Lcom/youku/phone/R$string;->offline_other_person_info_has_cancel_follow_success:I

    invoke-static {v1}, Lc8/nzk;->showTips(I)V

    .line 1069
    :cond_1
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 1070
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    const/16 v2, 0x232c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1072
    :cond_2
    iget-object v1, p0, Lc8/cAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/cAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/cAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$400(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_3
    :goto_0
    return-void

    .line 1074
    :cond_4
    iget v1, v0, Lc8/izk;->codeStr:I

    if-ne v1, v3, :cond_6

    .line 1075
    iget-object v1, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    if-eqz v1, :cond_5

    .line 1076
    iget-object v1, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    invoke-interface {v1, v3}, Lc8/Tzk;->onError(I)V

    .line 1078
    :cond_5
    iget-object v1, p0, Lc8/cAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/cAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/cAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$600(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 1080
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    const/16 v2, 0x232f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1083
    :cond_6
    iget-object v1, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    if-eqz v1, :cond_7

    .line 1084
    iget-object v1, p0, Lc8/cAk;->val$callback:Lc8/Tzk;

    invoke-interface {v1}, Lc8/Tzk;->onFailed()V

    .line 1087
    :cond_7
    iget-object v1, v0, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v1}, Lc8/nzk;->showTips(Ljava/lang/String;)V

    .line 1089
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 1090
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1092
    :cond_8
    iget-object v1, p0, Lc8/cAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/cAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/cAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1096
    :cond_9
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    .line 1097
    iget-object v1, p0, Lc8/cAk;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1099
    :cond_a
    iget-object v1, p0, Lc8/cAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/cAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/cAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
