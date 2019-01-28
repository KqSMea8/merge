.class public Lc8/Zzk;
.super Lc8/SIj;
.source "SubscribeManager.java"


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

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/dAk;ZLc8/vin;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dAk;

    .prologue
    .line 836
    iput-object p1, p0, Lc8/Zzk;->this$0:Lc8/dAk;

    iput-boolean p2, p0, Lc8/Zzk;->val$isShowTips:Z

    iput-object p3, p0, Lc8/Zzk;->val$callback:Lc8/vin;

    iput-object p4, p0, Lc8/Zzk;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lc8/Zzk;->val$userId:Ljava/lang/String;

    iput-object p6, p0, Lc8/Zzk;->val$showid:Ljava/lang/String;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===result=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    iget-object v0, p0, Lc8/Zzk;->val$callback:Lc8/vin;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lc8/Zzk;->val$callback:Lc8/vin;

    invoke-interface {v0}, Lc8/vin;->onFailed()V

    .line 874
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->offline_other_person_info_has_cancel_follow_fail:I

    invoke-static {v0}, Lc8/nzk;->showTips(I)V

    .line 880
    iget-object v0, p0, Lc8/Zzk;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lc8/Zzk;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x232d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 883
    :cond_1
    iget-object v0, p0, Lc8/Zzk;->this$0:Lc8/dAk;

    iget-object v1, p0, Lc8/Zzk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Zzk;->val$showid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/dAk;->access$500(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 3
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===result==delete!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 841
    iget-boolean v0, p0, Lc8/Zzk;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 845
    sget v0, Lcom/youku/phone/R$string;->offline_other_person_info_has_cancel_follow_success:I

    invoke-static {v0}, Lc8/nzk;->showTips(I)V

    .line 850
    :cond_0
    iget-object v0, p0, Lc8/Zzk;->val$callback:Lc8/vin;

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lc8/Zzk;->val$callback:Lc8/vin;

    invoke-interface {v0}, Lc8/vin;->onSuccess()V

    .line 856
    :cond_1
    iget-object v0, p0, Lc8/Zzk;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lc8/Zzk;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x232c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 859
    :cond_2
    iget-object v0, p0, Lc8/Zzk;->this$0:Lc8/dAk;

    iget-object v1, p0, Lc8/Zzk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Zzk;->val$showid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/dAk;->access$400(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    return-void
.end method
