.class public Lc8/rZo;
.super Landroid/view/animation/Animation;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sZo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExpandCollapseAnimation"
.end annotation


# instance fields
.field private final mEndHeight:I

.field private final mStartHeight:I

.field private final mTargetView:Landroid/view/View;

.field final synthetic this$0:Lc8/sZo;


# direct methods
.method public constructor <init>(Lc8/sZo;Landroid/view/View;II)V
    .locals 2
    .param p1, "this$0"    # Lc8/sZo;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "startHeight"    # I
    .param p4, "endHeight"    # I

    .prologue
    .line 322
    iput-object p1, p0, Lc8/rZo;->this$0:Lc8/sZo;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 323
    iput-object p2, p0, Lc8/rZo;->mTargetView:Landroid/view/View;

    .line 324
    iput p3, p0, Lc8/rZo;->mStartHeight:I

    .line 325
    iput p4, p0, Lc8/rZo;->mEndHeight:I

    .line 326
    invoke-static {p1}, Lc8/sZo;->access$600(Lc8/sZo;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lc8/rZo;->setDuration(J)V

    .line 327
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 332
    iget v1, p0, Lc8/rZo;->mEndHeight:I

    iget v2, p0, Lc8/rZo;->mStartHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lc8/rZo;->mStartHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 334
    .local v0, "newHeight":I
    iget-object v1, p0, Lc8/rZo;->this$0:Lc8/sZo;

    iget-object v1, v1, Lc8/sZo;->mTv:Landroid/widget/TextView;

    iget-object v2, p0, Lc8/rZo;->this$0:Lc8/sZo;

    invoke-static {v2}, Lc8/sZo;->access$500(Lc8/sZo;)I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxHeight(I)V

    .line 335
    iget-object v1, p0, Lc8/rZo;->this$0:Lc8/sZo;

    invoke-static {v1}, Lc8/sZo;->access$000(Lc8/sZo;)F

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lc8/rZo;->this$0:Lc8/sZo;

    iget-object v1, v1, Lc8/sZo;->mTv:Landroid/widget/TextView;

    iget-object v2, p0, Lc8/rZo;->this$0:Lc8/sZo;

    invoke-static {v2}, Lc8/sZo;->access$000(Lc8/sZo;)F

    move-result v2

    iget-object v3, p0, Lc8/rZo;->this$0:Lc8/sZo;

    .line 337
    invoke-static {v3}, Lc8/sZo;->access$000(Lc8/sZo;)F

    move-result v3

    sub-float v3, v4, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 336
    invoke-static {v1, v2}, Lc8/sZo;->access$100(Landroid/view/View;F)V

    .line 339
    :cond_0
    iget-object v1, p0, Lc8/rZo;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 340
    iget-object v1, p0, Lc8/rZo;->mTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 341
    return-void
.end method

.method public initialize(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 347
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x1

    return v0
.end method
