.class public Lc8/aok;
.super Ljava/lang/Object;
.source "SubscribUtil.java"

# interfaces
.implements Lc8/hzk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bok;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bok;

.field final synthetic val$callback:Lc8/vin;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isMedia:Z

.field final synthetic val$isShowTips:Z

.field final synthetic val$mOfflineSubscribe:Lc8/jzk;

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/bok;Lc8/jzk;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bok;

    .prologue
    .line 350
    iput-object p1, p0, Lc8/aok;->this$0:Lc8/bok;

    iput-object p2, p0, Lc8/aok;->val$mOfflineSubscribe:Lc8/jzk;

    iput-boolean p3, p0, Lc8/aok;->val$isMedia:Z

    iput-boolean p4, p0, Lc8/aok;->val$isShowTips:Z

    iput-object p5, p0, Lc8/aok;->val$userId:Ljava/lang/String;

    iput-object p6, p0, Lc8/aok;->val$showid:Ljava/lang/String;

    iput-object p7, p0, Lc8/aok;->val$handler:Landroid/os/Handler;

    iput-object p8, p0, Lc8/aok;->val$callback:Lc8/vin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failResult(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 391
    const/4 v0, 0x0

    sput-boolean v0, Lc8/bok;->isDeleteOfflineSucess:Z

    .line 392
    iget-boolean v0, p0, Lc8/aok;->val$isMedia:Z

    if-eqz v0, :cond_0

    .line 393
    const-string/jumbo v0, "\u53d6\u6d88\u8ffd\u5267\u5931\u8d25"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 397
    :goto_0
    iget-object v0, p0, Lc8/aok;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/aok;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/aok;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/aok;->val$isMedia:Z

    iget-object v4, p0, Lc8/aok;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/aok;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$500(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 398
    return-void

    .line 395
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_cancel_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method

.method public successReslut(Ljava/lang/String;)V
    .locals 7
    .param p1, "successResult"    # Ljava/lang/String;

    .prologue
    const/16 v3, -0x12f

    const/4 v2, 0x1

    .line 353
    iget-object v0, p0, Lc8/aok;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v0, p1}, Lc8/jzk;->pareOfflineErrorResult(Ljava/lang/String;)Lc8/izk;

    move-result-object v6

    .line 355
    .local v6, "mOfflinInfo":Lc8/izk;
    if-eqz v6, :cond_6

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=====success delete result ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    iget v0, v6, Lc8/izk;->codeStr:I

    if-ne v0, v2, :cond_3

    .line 358
    sput-boolean v2, Lc8/bok;->isDeleteOfflineSucess:Z

    .line 359
    iget-object v0, p0, Lc8/aok;->val$mOfflineSubscribe:Lc8/jzk;

    invoke-virtual {v0}, Lc8/jzk;->getOfflineSubscribeList()V

    .line 361
    iget-boolean v0, p0, Lc8/aok;->val$isMedia:Z

    if-eqz v0, :cond_2

    .line 362
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-eqz v0, :cond_0

    .line 363
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iput v2, v0, Lcom/youku/phone/detail/data/DetailVideoInfo;->bingeWatchingStatus:I

    .line 370
    :cond_0
    :goto_0
    iget-object v0, p0, Lc8/aok;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/aok;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/aok;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/aok;->val$isMedia:Z

    iget-object v4, p0, Lc8/aok;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/aok;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$400(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 371
    iget-object v0, p0, Lc8/aok;->this$0:Lc8/bok;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/bok;->access$200(Lc8/bok;Z)V

    .line 387
    :cond_1
    :goto_1
    return-void

    .line 366
    :cond_2
    iget-boolean v0, p0, Lc8/aok;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 367
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_cancel_follow_success:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 372
    :cond_3
    iget v0, v6, Lc8/izk;->codeStr:I

    if-ne v0, v3, :cond_5

    .line 373
    iget-object v0, p0, Lc8/aok;->val$callback:Lc8/vin;

    if-eqz v0, :cond_4

    .line 374
    iget-object v0, p0, Lc8/aok;->val$callback:Lc8/vin;

    invoke-interface {v0, v3}, Lc8/vin;->onError(I)V

    .line 376
    :cond_4
    iget-object v0, p0, Lc8/aok;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/aok;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/aok;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/aok;->val$isMedia:Z

    invoke-static {v0, v1, v2, v3}, Lc8/bok;->access$600(Lc8/bok;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 377
    iget-object v0, p0, Lc8/aok;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lc8/aok;->val$handler:Landroid/os/Handler;

    const/16 v1, 0x232f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 381
    :cond_5
    iget-object v0, v6, Lc8/izk;->desStr:Ljava/lang/String;

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lc8/aok;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/aok;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/aok;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/aok;->val$isMedia:Z

    iget-object v4, p0, Lc8/aok;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/aok;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$500(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    goto :goto_1

    .line 385
    :cond_6
    iget-object v0, p0, Lc8/aok;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/aok;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/aok;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/aok;->val$isMedia:Z

    iget-object v4, p0, Lc8/aok;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/aok;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$500(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    goto :goto_1
.end method
