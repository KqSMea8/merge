.class public Lc8/hAk;
.super Lc8/SIj;
.source "SubscribUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jAk;->requestDeleteRelate(Ljava/lang/String;IZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jAk;

.field final synthetic val$callback:Lc8/Tzk;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isMedia:Z

.field final synthetic val$isShowTips:Z

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jAk;ZZLjava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/Tzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jAk;

    .prologue
    .line 319
    iput-object p1, p0, Lc8/hAk;->this$0:Lc8/jAk;

    iput-boolean p2, p0, Lc8/hAk;->val$isMedia:Z

    iput-boolean p3, p0, Lc8/hAk;->val$isShowTips:Z

    iput-object p4, p0, Lc8/hAk;->val$userId:Ljava/lang/String;

    iput-object p5, p0, Lc8/hAk;->val$showid:Ljava/lang/String;

    iput-object p6, p0, Lc8/hAk;->val$handler:Landroid/os/Handler;

    iput-object p7, p0, Lc8/hAk;->val$callback:Lc8/Tzk;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===result=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    iget-boolean v0, p0, Lc8/hAk;->val$isMedia:Z

    if-eqz v0, :cond_0

    .line 341
    const-string/jumbo v0, "\u53d6\u6d88\u8ffd\u5267\u5931\u8d25"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 346
    :goto_0
    iget-object v0, p0, Lc8/hAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/hAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/hAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/hAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/hAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/hAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$500(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    .line 347
    return-void

    .line 343
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_cancel_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 6
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 322
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

    .line 323
    iget-boolean v0, p0, Lc8/hAk;->val$isMedia:Z

    if-nez v0, :cond_0

    .line 328
    iget-boolean v0, p0, Lc8/hAk;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 329
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_cancel_follow_success:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 333
    :cond_0
    iget-object v0, p0, Lc8/hAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/hAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/hAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/hAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/hAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/hAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$400(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    .line 334
    iget-object v0, p0, Lc8/hAk;->this$0:Lc8/jAk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/jAk;->access$200(Lc8/jAk;Z)V

    .line 335
    return-void
.end method
