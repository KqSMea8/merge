.class public Lc8/nfg;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/sfg;->setupAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/sfg;

.field final synthetic val$ring:Lc8/rfg;


# direct methods
.method constructor <init>(Lc8/sfg;Lc8/rfg;)V
    .locals 0

    .prologue
    .line 368
    iput-object p1, p0, Lc8/nfg;->this$0:Lc8/sfg;

    iput-object p2, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 14
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 371
    iget-object v10, p0, Lc8/nfg;->this$0:Lc8/sfg;

    iget-boolean v10, v10, Lc8/sfg;->mFinishing:Z

    if-eqz v10, :cond_0

    .line 372
    iget-object v10, p0, Lc8/nfg;->this$0:Lc8/sfg;

    iget-object v11, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-static {v10, p1, v11}, Lc8/sfg;->access$000(Lc8/sfg;FLc8/rfg;)V

    .line 418
    :goto_0
    return-void

    .line 376
    :cond_0
    iget-object v10, p0, Lc8/nfg;->this$0:Lc8/sfg;

    iget-object v11, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-static {v10, v11}, Lc8/sfg;->access$100(Lc8/sfg;Lc8/rfg;)F

    move-result v3

    .line 377
    .local v3, "minProgressArc":F
    iget-object v10, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-virtual {v10}, Lc8/rfg;->getStartingEndTrim()F

    move-result v7

    .line 378
    .local v7, "startingEndTrim":F
    iget-object v10, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-virtual {v10}, Lc8/rfg;->getStartingStartTrim()F

    move-result v9

    .line 379
    .local v9, "startingTrim":F
    iget-object v10, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-virtual {v10}, Lc8/rfg;->getStartingRotation()F

    move-result v8

    .line 381
    .local v8, "startingRotation":F
    iget-object v10, p0, Lc8/nfg;->this$0:Lc8/sfg;

    iget-object v11, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-static {v10, p1, v11}, Lc8/sfg;->access$200(Lc8/sfg;FLc8/rfg;)V

    .line 385
    const/high16 v10, 0x3f000000    # 0.5f

    cmpg-float v10, p1, v10

    if-gtz v10, :cond_1

    .line 389
    const/high16 v10, 0x3f000000    # 0.5f

    div-float v5, p1, v10

    .line 391
    .local v5, "scaledTime":F
    const v10, 0x3f4ccccd    # 0.8f

    sub-float/2addr v10, v3

    invoke-static {}, Lc8/sfg;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v11

    invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v11

    mul-float/2addr v10, v11

    add-float v6, v9, v10

    .line 394
    .local v6, "startTrim":F
    iget-object v10, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-virtual {v10, v6}, Lc8/rfg;->setStartTrim(F)V

    .line 399
    .end local v5    # "scaledTime":F
    .end local v6    # "startTrim":F
    :cond_1
    const/high16 v10, 0x3f000000    # 0.5f

    cmpl-float v10, p1, v10

    if-lez v10, :cond_2

    .line 403
    const v10, 0x3f4ccccd    # 0.8f

    sub-float v2, v10, v3

    .line 404
    .local v2, "minArc":F
    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v10, p1, v10

    const/high16 v11, 0x3f000000    # 0.5f

    div-float v5, v10, v11

    .line 406
    .restart local v5    # "scaledTime":F
    invoke-static {}, Lc8/sfg;->access$300()Landroid/view/animation/Interpolator;

    move-result-object v10

    invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v10, v2

    add-float v0, v7, v10

    .line 408
    .local v0, "endTrim":F
    iget-object v10, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-virtual {v10, v0}, Lc8/rfg;->setEndTrim(F)V

    .line 411
    .end local v0    # "endTrim":F
    .end local v2    # "minArc":F
    .end local v5    # "scaledTime":F
    :cond_2
    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v10, p1

    add-float v4, v8, v10

    .line 412
    .local v4, "rotation":F
    iget-object v10, p0, Lc8/nfg;->val$ring:Lc8/rfg;

    invoke-virtual {v10, v4}, Lc8/rfg;->setRotation(F)V

    .line 414
    const/high16 v10, 0x43580000    # 216.0f

    mul-float/2addr v10, p1

    const/high16 v11, 0x44870000    # 1080.0f

    iget-object v12, p0, Lc8/nfg;->this$0:Lc8/sfg;

    invoke-static {v12}, Lc8/sfg;->access$400(Lc8/sfg;)F

    move-result v12

    const/high16 v13, 0x40a00000    # 5.0f

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    add-float v1, v10, v11

    .line 416
    .local v1, "groupRotation":F
    iget-object v10, p0, Lc8/nfg;->this$0:Lc8/sfg;

    invoke-virtual {v10, v1}, Lc8/sfg;->setRotation(F)V

    goto/16 :goto_0
.end method
