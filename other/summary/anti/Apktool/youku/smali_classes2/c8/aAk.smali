.class public Lc8/aAk;
.super Ljava/lang/Object;
.source "SubscribeManager.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dAk;

.field final synthetic val$callback:Lc8/vin;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isShowTips:Z

.field final synthetic val$mOfflineSubscribe:Lc8/jzk;

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/dAk;Lc8/jzk;Lc8/vin;ZLandroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dAk;

    .prologue
    .line 888
    iput-object p1, p0, Lc8/aAk;->this$0:Lc8/dAk;

    iput-object p2, p0, Lc8/aAk;->val$mOfflineSubscribe:Lc8/jzk;

    iput-object p3, p0, Lc8/aAk;->val$callback:Lc8/vin;

    iput-boolean p4, p0, Lc8/aAk;->val$isShowTips:Z

    iput-object p5, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lc8/aAk;->val$userId:Ljava/lang/String;

    iput-object p7, p0, Lc8/aAk;->val$showid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 946
    iget-object v0, p0, Lc8/aAk;->val$callback:Lc8/vin;

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lc8/aAk;->val$callback:Lc8/vin;

    invoke-interface {v0}, Lc8/vin;->onFailed()V

    .line 954
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->offline_other_person_info_has_cancel_follow_fail:I

    invoke-static {v0}, Lc8/nzk;->showTips(I)V

    .line 957
    iget-object v0, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 958
    iget-object v0, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x232d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 960
    :cond_1
    iget-object v0, p0, Lc8/aAk;->this$0:Lc8/dAk;

    iget-object v1, p0, Lc8/aAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/aAk;->val$showid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/dAk;->access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 5
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x232d

    const/16 v3, -0x12f

    .line 891
    iget-object v1, p0, Lc8/aAk;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v1, p1}, Lc8/jzk;->pareOfflineErrorResult(Ljava/lang/String;)Lc8/izk;

    move-result-object v0

    .line 893
    .local v0, "mOfflinInfo":Lc8/izk;
    if-eqz v0, :cond_9

    .line 894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "=====success delete result ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 895
    iget v1, v0, Lc8/izk;->codeStr:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 896
    iget-object v1, p0, Lc8/aAk;->val$callback:Lc8/vin;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lc8/aAk;->val$callback:Lc8/vin;

    invoke-interface {v1}, Lc8/vin;->onSuccess()V

    .line 902
    :cond_0
    iget-boolean v1, p0, Lc8/aAk;->val$isShowTips:Z

    if-eqz v1, :cond_1

    .line 906
    sget v1, Lcom/youku/phone/R$string;->offline_other_person_info_has_cancel_follow_success:I

    invoke-static {v1}, Lc8/nzk;->showTips(I)V

    .line 910
    :cond_1
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 911
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    const/16 v2, 0x232c

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 913
    :cond_2
    iget-object v1, p0, Lc8/aAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/aAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/aAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$400(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_3
    :goto_0
    return-void

    .line 915
    :cond_4
    iget v1, v0, Lc8/izk;->codeStr:I

    if-ne v1, v3, :cond_6

    .line 916
    iget-object v1, p0, Lc8/aAk;->val$callback:Lc8/vin;

    if-eqz v1, :cond_5

    .line 917
    iget-object v1, p0, Lc8/aAk;->val$callback:Lc8/vin;

    invoke-interface {v1, v3}, Lc8/vin;->onError(I)V

    .line 919
    :cond_5
    iget-object v1, p0, Lc8/aAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/aAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/aAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$600(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    .line 921
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    const/16 v2, 0x232f

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 924
    :cond_6
    iget-object v1, p0, Lc8/aAk;->val$callback:Lc8/vin;

    if-eqz v1, :cond_7

    .line 925
    iget-object v1, p0, Lc8/aAk;->val$callback:Lc8/vin;

    invoke-interface {v1}, Lc8/vin;->onFailed()V

    .line 928
    :cond_7
    iget-object v1, v0, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v1}, Lc8/nzk;->showTips(Ljava/lang/String;)V

    .line 930
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_8

    .line 931
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 933
    :cond_8
    iget-object v1, p0, Lc8/aAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/aAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/aAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_9
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    if-eqz v1, :cond_a

    .line 938
    iget-object v1, p0, Lc8/aAk;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 940
    :cond_a
    iget-object v1, p0, Lc8/aAk;->this$0:Lc8/dAk;

    iget-object v2, p0, Lc8/aAk;->val$userId:Ljava/lang/String;

    iget-object v3, p0, Lc8/aAk;->val$showid:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lc8/dAk;->access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
