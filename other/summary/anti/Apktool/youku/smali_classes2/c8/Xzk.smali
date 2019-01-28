.class public Lc8/Xzk;
.super Lc8/SIj;
.source "SubscribeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dAk;

.field final synthetic val$callback:Lc8/Tzk;

.field final synthetic val$finalUserUrl:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isShowTips:Z

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/dAk;ZLc8/Tzk;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dAk;

    .prologue
    .line 451
    iput-object p1, p0, Lc8/Xzk;->this$0:Lc8/dAk;

    iput-boolean p2, p0, Lc8/Xzk;->val$isShowTips:Z

    iput-object p3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    iput-object p4, p0, Lc8/Xzk;->val$finalUserUrl:Ljava/lang/String;

    iput-object p5, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    iput-object p6, p0, Lc8/Xzk;->val$userId:Ljava/lang/String;

    iput-object p7, p0, Lc8/Xzk;->val$showid:Ljava/lang/String;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===onLogin===fail result=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 550
    sget v0, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/nzk;->showTips(I)V

    .line 553
    iget-object v0, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    invoke-interface {v0}, Lc8/Tzk;->onFailed()V

    .line 556
    :cond_0
    iget-object v0, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 557
    iget-object v0, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x232b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 559
    :cond_1
    iget-object v0, p0, Lc8/Xzk;->this$0:Lc8/dAk;

    iget-object v1, p0, Lc8/Xzk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Xzk;->val$showid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 7
    .param p1, "request"    # Lc8/TIj;

    .prologue
    const/16 v6, 0x232b

    .line 454
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 455
    .local v2, "requestStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "===onLogin===result==create==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 458
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "success"

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 461
    iget-boolean v3, p0, Lc8/Xzk;->val$isShowTips:Z

    if-eqz v3, :cond_0

    .line 465
    sget v3, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_success:I

    invoke-static {v3}, Lc8/nzk;->showTips(I)V

    .line 469
    :cond_0
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    if-eqz v3, :cond_1

    .line 470
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    invoke-interface {v3}, Lc8/Tzk;->onSuccess()V

    .line 472
    :cond_1
    iget-object v3, p0, Lc8/Xzk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 473
    iget-object v3, p0, Lc8/Xzk;->this$0:Lc8/dAk;

    iget-object v4, p0, Lc8/Xzk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v3, v4}, Lc8/dAk;->access$000(Lc8/dAk;Ljava/lang/String;)V

    .line 475
    :cond_2
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    .line 476
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    const/16 v4, 0x232a

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 478
    :cond_3
    iget-object v3, p0, Lc8/Xzk;->this$0:Lc8/dAk;

    iget-object v4, p0, Lc8/Xzk;->val$userId:Ljava/lang/String;

    iget-object v5, p0, Lc8/Xzk;->val$showid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lc8/dAk;->access$100(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 479
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const-string/jumbo v3, "error"

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 483
    const/16 v3, -0x132

    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 487
    sget v3, Lcom/youku/phone/R$string;->offline_other_person_info_follow_too_quickly:I

    invoke-static {v3}, Lc8/nzk;->showTips(I)V

    .line 509
    :goto_1
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    if-eqz v3, :cond_5

    .line 510
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    invoke-interface {v3}, Lc8/Tzk;->onFailed()V

    .line 512
    :cond_5
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    if-eqz v3, :cond_6

    .line 513
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    const/16 v4, 0x232b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    :cond_6
    iget-object v3, p0, Lc8/Xzk;->this$0:Lc8/dAk;

    iget-object v4, p0, Lc8/Xzk;->val$userId:Ljava/lang/String;

    iget-object v5, p0, Lc8/Xzk;->val$showid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 525
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "SubscribeManager"

    invoke-static {v3, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    sget v3, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_fail:I

    invoke-static {v3}, Lc8/nzk;->showTips(I)V

    .line 530
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    if-eqz v3, :cond_7

    .line 531
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    invoke-interface {v3}, Lc8/Tzk;->onFailed()V

    .line 533
    :cond_7
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    if-eqz v3, :cond_8

    .line 534
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    :cond_8
    iget-object v3, p0, Lc8/Xzk;->this$0:Lc8/dAk;

    iget-object v4, p0, Lc8/Xzk;->val$userId:Ljava/lang/String;

    iget-object v5, p0, Lc8/Xzk;->val$showid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 489
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_9
    const/16 v3, -0x12c

    :try_start_1
    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 493
    sget v3, Lcom/youku/phone/R$string;->offline_other_person_info_follow_to_top:I

    invoke-static {v3}, Lc8/nzk;->showTips(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 537
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto/16 :goto_0

    .line 495
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "jsonObject":Lorg/json/JSONObject;
    :cond_a
    const/16 v3, -0x131

    :try_start_2
    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_b

    .line 499
    sget v3, Lcom/youku/phone/R$string;->offline_other_person_info_follow_cannot_done:I

    invoke-static {v3}, Lc8/nzk;->showTips(I)V

    goto :goto_1

    .line 505
    :cond_b
    sget v3, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_fail:I

    invoke-static {v3}, Lc8/nzk;->showTips(I)V

    goto :goto_1

    .line 517
    :cond_c
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    if-eqz v3, :cond_d

    .line 518
    iget-object v3, p0, Lc8/Xzk;->val$callback:Lc8/Tzk;

    invoke-interface {v3}, Lc8/Tzk;->onFailed()V

    .line 520
    :cond_d
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    if-eqz v3, :cond_e

    .line 521
    iget-object v3, p0, Lc8/Xzk;->val$handler:Landroid/os/Handler;

    const/16 v4, 0x232b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 523
    :cond_e
    iget-object v3, p0, Lc8/Xzk;->this$0:Lc8/dAk;

    iget-object v4, p0, Lc8/Xzk;->val$userId:Ljava/lang/String;

    iget-object v5, p0, Lc8/Xzk;->val$showid:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
