.class public Lc8/rdc;
.super Ljava/lang/Object;
.source "VerifyActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/verificationsdk/ui/VerifyActivity;->initNoCaptchaUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V
    .locals 0
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 348
    iput-object p1, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 353
    const-string/jumbo v2, "VerifyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " y: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 356
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 423
    :cond_0
    :goto_0
    return v5

    .line 358
    :pswitch_0
    const-string/jumbo v2, "VerifyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "draw:  left: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Qdc;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " right: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Qdc;->getRight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " top: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Qdc;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bottom: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Qdc;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->getInitLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->getInitRight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->getInitTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->getInitBottom()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 366
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$202(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Z)Z

    .line 367
    const-string/jumbo v2, "VerifyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFingerValid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 369
    :cond_1
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2, v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$202(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Z)Z

    .line 370
    const-string/jumbo v2, "VerifyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFingerValid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/Idc;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 375
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryRight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryBottom()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 379
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$400(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    goto/16 :goto_0

    .line 383
    :cond_2
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Qdc;->resetPostion()V

    .line 384
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Qdc;->invalidate()V

    goto/16 :goto_0

    .line 389
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->getRadiusTouch()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$500()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Qdc;->getRadiusTouch()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 392
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Qdc;->getRadiusTouch()F

    move-result v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getBottom()I

    move-result v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$600(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v4}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v4

    invoke-virtual {v4}, Lc8/Qdc;->getRadiusTouch()F

    move-result v4

    sub-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 395
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lc8/Qdc;->setPosition(FF)V

    .line 398
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$100(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Qdc;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Qdc;->invalidate()V

    .line 401
    :try_start_0
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$700(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/alibaba/wireless/security/open/nocaptcha/INoCaptchaComponent;->putNoCaptchaTraceRecord(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryLeft()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryRight()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryTop()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v3}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$300(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Lc8/Rdc;

    move-result-object v3

    invoke-virtual {v3}, Lc8/Rdc;->getBoundaryBottom()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 410
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$200(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$800(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    .line 413
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2, v5}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$902(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Z)Z

    goto/16 :goto_0

    .line 402
    :catch_0
    move-exception v1

    .line 403
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 415
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$900(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2, v6}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$902(Lcom/alibaba/verificationsdk/ui/VerifyActivity;Z)Z

    .line 417
    iget-object v2, p0, Lc8/rdc;->this$0:Lcom/alibaba/verificationsdk/ui/VerifyActivity;

    invoke-static {v2}, Lcom/alibaba/verificationsdk/ui/VerifyActivity;->access$1000(Lcom/alibaba/verificationsdk/ui/VerifyActivity;)V

    goto/16 :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
