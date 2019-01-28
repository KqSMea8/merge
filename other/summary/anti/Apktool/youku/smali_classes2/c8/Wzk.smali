.class public Lc8/Wzk;
.super Ljava/lang/Object;
.source "SubscribeManager.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/dAk;

.field final synthetic val$callback:Lc8/vin;

.field final synthetic val$finalUserUrl:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isShowTips:Z

.field final synthetic val$mOfflineSubscribe:Lc8/jzk;

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/dAk;Lc8/jzk;Lc8/vin;ZLjava/lang/String;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/dAk;

    .prologue
    .line 298
    iput-object p1, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iput-object p2, p0, Lc8/Wzk;->val$mOfflineSubscribe:Lc8/jzk;

    iput-object p3, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    iput-boolean p4, p0, Lc8/Wzk;->val$isShowTips:Z

    iput-object p5, p0, Lc8/Wzk;->val$finalUserUrl:Ljava/lang/String;

    iput-object p6, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iput-object p8, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 3
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v0, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    invoke-interface {v0}, Lc8/vin;->onFailed()V

    .line 412
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/nzk;->showTips(I)V

    .line 414
    iget-object v0, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x232b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 417
    :cond_1
    iget-object v0, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v1, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 6
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    const/16 v4, -0x12c

    const/16 v5, 0x232b

    .line 302
    :try_start_0
    iget-object v2, p0, Lc8/Wzk;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v2, p1}, Lc8/jzk;->pareOfflineErrorResult(Ljava/lang/String;)Lc8/izk;

    move-result-object v1

    .line 304
    .local v1, "mOfflinInfo":Lc8/izk;
    if-eqz v1, :cond_10

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "==mofflininfo======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lc8/izk;->codeStr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "====desc==="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    iget v2, v1, Lc8/izk;->codeStr:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 309
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    if-eqz v2, :cond_0

    .line 310
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    invoke-interface {v2}, Lc8/vin;->onSuccess()V

    .line 316
    :cond_0
    iget-boolean v2, p0, Lc8/Wzk;->val$isShowTips:Z

    if-eqz v2, :cond_1

    .line 320
    sget v2, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_success:I

    invoke-static {v2}, Lc8/nzk;->showTips(I)V

    .line 323
    :cond_1
    iget-object v2, p0, Lc8/Wzk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 324
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/dAk;->access$000(Lc8/dAk;Ljava/lang/String;)V

    .line 326
    :cond_2
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    .line 327
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    const/16 v3, 0x232a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    :cond_3
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/dAk;->access$100(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .end local v1    # "mOfflinInfo":Lc8/izk;
    :goto_0
    return-void

    .line 332
    .restart local v1    # "mOfflinInfo":Lc8/izk;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "====failed  create===, mOfflinInfo.codeStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lc8/izk;->codeStr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    iget v2, v1, Lc8/izk;->codeStr:I

    if-ne v2, v4, :cond_9

    .line 334
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    if-eqz v2, :cond_5

    .line 335
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    const/16 v3, -0x12c

    invoke-interface {v2, v3}, Lc8/vin;->onError(I)V

    .line 339
    :cond_5
    iget-object v2, v1, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v2}, Lc8/nzk;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :try_start_1
    const-class v2, Lc8/fhn;

    invoke-static {v2}, Lc8/ddn;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/fhn;

    iget-object v3, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    invoke-static {v3}, Lc8/dAk;->access$300(Lc8/dAk;)Landroid/content/Context;

    move-result-object v3

    invoke-interface {v2, v3}, Lc8/fhn;->goLogin(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .line 346
    :goto_1
    :try_start_2
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_6

    .line 347
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    const/16 v3, 0x232b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    :cond_6
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 388
    .end local v1    # "mOfflinInfo":Lc8/izk;
    :catch_0
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 391
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    if-eqz v2, :cond_7

    .line 392
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    invoke-interface {v2}, Lc8/vin;->onFailed()V

    .line 394
    :cond_7
    sget v2, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_fail:I

    invoke-static {v2}, Lc8/nzk;->showTips(I)V

    .line 395
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 396
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 398
    :cond_8
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local v1    # "mOfflinInfo":Lc8/izk;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 350
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9
    iget v2, v1, Lc8/izk;->codeStr:I

    const/16 v3, -0x12e

    if-ne v2, v3, :cond_d

    .line 354
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    if-eqz v2, :cond_a

    .line 355
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    invoke-interface {v2}, Lc8/vin;->onSuccess()V

    .line 357
    :cond_a
    iget-object v2, p0, Lc8/Wzk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 358
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v2, v3}, Lc8/dAk;->access$000(Lc8/dAk;Ljava/lang/String;)V

    .line 360
    :cond_b
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_c

    .line 361
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    const/16 v3, 0x232a

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 363
    :cond_c
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/dAk;->access$100(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_d
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    if-eqz v2, :cond_e

    .line 367
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    invoke-interface {v2}, Lc8/vin;->onFailed()V

    .line 369
    :cond_e
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_f

    .line 370
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    const/16 v3, 0x232b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 372
    :cond_f
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v2, v1, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v2}, Lc8/nzk;->showTips(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 379
    :cond_10
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    if-eqz v2, :cond_11

    .line 380
    iget-object v2, p0, Lc8/Wzk;->val$callback:Lc8/vin;

    invoke-interface {v2}, Lc8/vin;->onFailed()V

    .line 382
    :cond_11
    sget v2, Lcom/youku/phone/R$string;->offline_other_person_info_has_follow_fail:I

    invoke-static {v2}, Lc8/nzk;->showTips(I)V

    .line 383
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_12

    .line 384
    iget-object v2, p0, Lc8/Wzk;->val$handler:Landroid/os/Handler;

    const/16 v3, 0x232b

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    :cond_12
    iget-object v2, p0, Lc8/Wzk;->this$0:Lc8/dAk;

    iget-object v3, p0, Lc8/Wzk;->val$userId:Ljava/lang/String;

    iget-object v4, p0, Lc8/Wzk;->val$showid:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lc8/dAk;->access$200(Lc8/dAk;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
