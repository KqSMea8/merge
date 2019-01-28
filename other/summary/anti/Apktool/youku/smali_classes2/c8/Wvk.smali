.class public Lc8/Wvk;
.super Ljava/lang/Object;
.source "UnicomMgr.java"

# interfaces
.implements Lc8/Ivk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xvk;->getItemVideoUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/concurrent/CountDownLatch;ILc8/Gvk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xvk;

.field final synthetic val$callBack:Lc8/Gvk;

.field final synthetic val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$index:I

.field final synthetic val$videoName:Ljava/lang/String;

.field final synthetic val$videoUrl:Ljava/lang/String;

.field final synthetic val$woVideoUrls:Ljava/util/Map;


# direct methods
.method constructor <init>(Lc8/Xvk;Ljava/util/Map;Ljava/lang/String;Lc8/Gvk;Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lc8/Wvk;->this$0:Lc8/Xvk;

    iput-object p2, p0, Lc8/Wvk;->val$woVideoUrls:Ljava/util/Map;

    iput-object p3, p0, Lc8/Wvk;->val$videoUrl:Ljava/lang/String;

    iput-object p4, p0, Lc8/Wvk;->val$callBack:Lc8/Gvk;

    iput-object p5, p0, Lc8/Wvk;->val$videoName:Ljava/lang/String;

    iput p6, p0, Lc8/Wvk;->val$index:I

    iput-object p7, p0, Lc8/Wvk;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "failInfo"    # Ljava/lang/String;

    .prologue
    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getWoVideoUrl.getWoVideoUrl.fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 402
    iget-object v0, p0, Lc8/Wvk;->this$0:Lc8/Xvk;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Xvk;->access$602(Lc8/Xvk;Z)Z

    .line 403
    iget-object v0, p0, Lc8/Wvk;->this$0:Lc8/Xvk;

    sget-object v1, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_FAILED:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    invoke-static {v0, v1}, Lc8/Xvk;->access$702(Lc8/Xvk;Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;)Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .line 404
    iget-object v0, p0, Lc8/Wvk;->val$callBack:Lc8/Gvk;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lc8/Wvk;->val$callBack:Lc8/Gvk;

    iget-object v1, p0, Lc8/Wvk;->val$videoName:Ljava/lang/String;

    iget-object v2, p0, Lc8/Wvk;->val$videoUrl:Ljava/lang/String;

    iget v3, p0, Lc8/Wvk;->val$index:I

    invoke-interface {v0, v1, v2, v3, p1}, Lc8/Gvk;->onFail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 407
    :cond_0
    iget-object v0, p0, Lc8/Wvk;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 408
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "freeFlowUrl"    # Ljava/lang/String;

    .prologue
    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getWoVideoUrl.getWoVideoUrl.success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    iget-object v0, p0, Lc8/Wvk;->val$woVideoUrls:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lc8/Wvk;->val$woVideoUrls:Ljava/util/Map;

    iget-object v1, p0, Lc8/Wvk;->val$videoUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    :cond_0
    iget-object v0, p0, Lc8/Wvk;->this$0:Lc8/Xvk;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lc8/Xvk;->access$602(Lc8/Xvk;Z)Z

    .line 392
    iget-object v0, p0, Lc8/Wvk;->this$0:Lc8/Xvk;

    sget-object v1, Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;->TRANSFORM_URL_SUCCESS:Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    invoke-static {v0, v1}, Lc8/Xvk;->access$702(Lc8/Xvk;Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;)Lcom/youku/phone/freeflow/UnicomTransformUrlStateEnum;

    .line 393
    iget-object v0, p0, Lc8/Wvk;->val$callBack:Lc8/Gvk;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lc8/Wvk;->val$callBack:Lc8/Gvk;

    iget-object v1, p0, Lc8/Wvk;->val$videoName:Ljava/lang/String;

    iget-object v2, p0, Lc8/Wvk;->val$videoUrl:Ljava/lang/String;

    iget v3, p0, Lc8/Wvk;->val$index:I

    invoke-interface {v0, v1, v2, v3, p1}, Lc8/Gvk;->onSuccess(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    :cond_1
    iget-object v0, p0, Lc8/Wvk;->val$countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 397
    return-void
.end method
