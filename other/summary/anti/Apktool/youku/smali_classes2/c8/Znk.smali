.class public Lc8/Znk;
.super Lc8/SIj;
.source "SubscribUtil.java"


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

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/bok;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bok;

    .prologue
    .line 318
    iput-object p1, p0, Lc8/Znk;->this$0:Lc8/bok;

    iput-boolean p2, p0, Lc8/Znk;->val$isMedia:Z

    iput-boolean p3, p0, Lc8/Znk;->val$isShowTips:Z

    iput-object p4, p0, Lc8/Znk;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lc8/Znk;->val$showid:Ljava/lang/String;

    iput-object p6, p0, Lc8/Znk;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lc8/Znk;->val$callback:Lc8/vin;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===result=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    iget-boolean v0, p0, Lc8/Znk;->val$isMedia:Z

    if-eqz v0, :cond_0

    .line 340
    const-string/jumbo v0, "\u53d6\u6d88\u8ffd\u5267\u5931\u8d25"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 344
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Wnk;->detailSubscribeNeedRefresh:Z

    .line 345
    iget-object v0, p0, Lc8/Znk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Znk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Znk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Znk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Znk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Znk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$500(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 346
    return-void

    .line 342
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_cancel_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 6
    .param p1, "request"    # Lc8/TIj;

    .prologue
    const/4 v2, 0x1

    .line 321
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

    .line 322
    iget-boolean v0, p0, Lc8/Znk;->val$isMedia:Z

    if-eqz v0, :cond_1

    .line 323
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    if-eqz v0, :cond_0

    .line 324
    sget-object v0, Lc8/ukk;->mDetailVideoInfo:Lcom/youku/phone/detail/data/DetailVideoInfo;

    iput v2, v0, Lcom/youku/phone/detail/data/DetailVideoInfo;->bingeWatchingStatus:I

    .line 331
    :cond_0
    :goto_0
    sput-boolean v2, Lc8/Wnk;->detailSubscribeNeedRefresh:Z

    .line 332
    iget-object v0, p0, Lc8/Znk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Znk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Znk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Znk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Znk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Znk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$400(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 333
    iget-object v0, p0, Lc8/Znk;->this$0:Lc8/bok;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/bok;->access$200(Lc8/bok;Z)V

    .line 334
    return-void

    .line 327
    :cond_1
    iget-boolean v0, p0, Lc8/Znk;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 328
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_cancel_follow_success:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method
