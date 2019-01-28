.class public Lc8/KXb;
.super Landroid/widget/AbsoluteLayout;
.source "AugmentedLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/IXb;,
        Lc8/JXb;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mOperateRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lc8/LXb;",
            ">;"
        }
    .end annotation
.end field

.field private mSandoContainer:Lc8/RXb;

.field private final mTmpLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lc8/KXb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/KXb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/KXb;->mOperateRecords:Ljava/util/Set;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/KXb;->mTmpLocation:[I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/KXb;->mOperateRecords:Ljava/util/Set;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/KXb;->mTmpLocation:[I

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/KXb;->mOperateRecords:Ljava/util/Set;

    .line 90
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lc8/KXb;->mTmpLocation:[I

    .line 32
    return-void
.end method

.method private bindTargetView(Landroid/view/View;Lc8/LXb;)V
    .locals 7
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "canvas"    # Lc8/LXb;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 57
    iget-object v1, p0, Lc8/KXb;->mTmpLocation:[I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 58
    sget v1, Lcom/youku/phone/R$id;->poplayer_augmentedview_record_tag_id:I

    new-instance v2, Lc8/JXb;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lc8/JXb;-><init>(Landroid/view/View;Lc8/IXb;)V

    invoke-virtual {p2, v1, v2}, Lc8/LXb;->setTag(ILjava/lang/Object;)V

    .line 59
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 60
    .local v0, "myLocation":[I
    invoke-virtual {p0, v0}, Lc8/KXb;->getLocationOnScreen([I)V

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AugmentedLayer: myLocation[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " myLocation[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lc8/KXb;->mTmpLocation:[I

    aget v4, v4, v5

    aget v5, v0, v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lc8/KXb;->mTmpLocation:[I

    aget v5, v5, v6

    aget v6, v0, v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p2, v1}, Lc8/KXb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    return-void
.end method

.method private isNeedUpdateLayoutParams(IIIIIIII)Z
    .locals 1
    .param p1, "preX"    # I
    .param p2, "preY"    # I
    .param p3, "preWidth"    # I
    .param p4, "preHeight"    # I
    .param p5, "curX"    # I
    .param p6, "curY"    # I
    .param p7, "curWidth"    # I
    .param p8, "curHeight"    # I

    .prologue
    .line 183
    if-ne p1, p5, :cond_0

    if-ne p2, p6, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p4, p8, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public augmentTargetView(Landroid/view/View;Lc8/LXb;)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "canvas"    # Lc8/LXb;

    .prologue
    .line 45
    if-nez p2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lc8/KXb;->mOperateRecords:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    invoke-direct {p0, p1, p2}, Lc8/KXb;->bindTargetView(Landroid/view/View;Lc8/LXb;)V

    .line 51
    iget-object v0, p0, Lc8/KXb;->mOperateRecords:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lc8/KXb;->mSandoContainer:Lc8/RXb;

    invoke-virtual {v0}, Lc8/RXb;->startPreDrawListenerIfNeed()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    iget-object v0, p0, Lc8/KXb;->mSandoContainer:Lc8/RXb;

    invoke-virtual {v0}, Lc8/RXb;->getMirrorLayer()Lc8/OXb;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lc8/OXb;->hitMirrorView(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    sget v0, Lcom/youku/phone/R$id;->poplayer_view:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 96
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 101
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 102
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setSandoContainer(Lc8/RXb;)V
    .locals 0
    .param p1, "sandoContainer"    # Lc8/RXb;

    .prologue
    .line 108
    iput-object p1, p0, Lc8/KXb;->mSandoContainer:Lc8/RXb;

    .line 109
    return-void
.end method

.method public unaugmentTarget(Lc8/LXb;)V
    .locals 1
    .param p1, "canvas"    # Lc8/LXb;

    .prologue
    .line 71
    iget-object v0, p0, Lc8/KXb;->mOperateRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/KXb;->mOperateRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p0, p1}, Lc8/KXb;->removeView(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method

.method public updateAugmentedViews()V
    .locals 22

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lc8/KXb;->getChildCount()I

    move-result v16

    .line 127
    .local v16, "len":I
    const/4 v13, 0x0

    .line 128
    .local v13, "canvasLostTargets":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/layermanager/view/Canvas;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v14, v0, :cond_6

    .line 129
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/KXb;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 130
    .local v21, "view":Landroid/view/View;
    move-object/from16 v0, v21

    instance-of v2, v0, Lc8/LXb;

    if-eqz v2, :cond_2

    move-object/from16 v11, v21

    .line 132
    check-cast v11, Lc8/LXb;

    .line 133
    .local v11, "augmented":Lc8/LXb;
    sget v2, Lcom/youku/phone/R$id;->poplayer_augmentedview_record_tag_id:I

    invoke-virtual {v11, v2}, Lc8/LXb;->getTag(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lc8/JXb;

    .line 134
    .local v20, "targetTag":Lc8/JXb;
    invoke-static/range {v20 .. v20}, Lc8/JXb;->access$100(Lc8/JXb;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-static {v2}, Lcom/alibaba/poplayer/utils/Utils;->getObjectFromWeak(Ljava/lang/ref/WeakReference;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    .line 135
    .local v18, "target":Landroid/view/View;
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v18 .. v18}, Lcom/alibaba/poplayer/utils/Utils;->isInActivityContentView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {v18 .. v18}, Lcom/alibaba/poplayer/utils/Utils;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    const/16 v19, 0x1

    .line 143
    .local v19, "targetLost":Z
    :goto_1
    if-eqz v19, :cond_5

    .line 144
    if-nez v18, :cond_4

    .line 145
    if-nez v13, :cond_1

    new-instance v13, Ljava/util/ArrayList;

    .end local v13    # "canvasLostTargets":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/layermanager/view/Canvas;>;"
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .restart local v13    # "canvasLostTargets":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/layermanager/view/Canvas;>;"
    :cond_1
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v11    # "augmented":Lc8/LXb;
    .end local v18    # "target":Landroid/view/View;
    .end local v19    # "targetLost":Z
    .end local v20    # "targetTag":Lc8/JXb;
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 135
    .restart local v11    # "augmented":Lc8/LXb;
    .restart local v18    # "target":Landroid/view/View;
    .restart local v20    # "targetTag":Lc8/JXb;
    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    .line 149
    .restart local v19    # "targetLost":Z
    :cond_4
    const v2, -0x39e3c000    # -10000.0f

    invoke-virtual {v11, v2}, Lc8/LXb;->setX(F)V

    .line 150
    const v2, -0x39e3c000    # -10000.0f

    invoke-virtual {v11, v2}, Lc8/LXb;->setY(F)V

    goto :goto_2

    .line 155
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/KXb;->mTmpLocation:[I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 157
    invoke-virtual {v11}, Lc8/LXb;->getX()F

    move-result v2

    float-to-int v3, v2

    invoke-virtual {v11}, Lc8/LXb;->getY()F

    move-result v2

    float-to-int v4, v2

    invoke-virtual {v11}, Lc8/LXb;->getWidth()I

    move-result v5

    invoke-virtual {v11}, Lc8/LXb;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/KXb;->mTmpLocation:[I

    const/4 v7, 0x0

    aget v7, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/KXb;->mTmpLocation:[I

    const/4 v8, 0x1

    aget v8, v2, v8

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lc8/KXb;->isNeedUpdateLayoutParams(IIIIIIII)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 161
    .local v17, "myLocation":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/KXb;->getLocationOnScreen([I)V

    .line 163
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/KXb;->mTmpLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v3, 0x0

    aget v3, v17, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v11, v2}, Lc8/LXb;->setX(F)V

    .line 164
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/KXb;->mTmpLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x1

    aget v3, v17, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v11, v2}, Lc8/LXb;->setY(F)V

    .line 170
    invoke-virtual {v11}, Lc8/LXb;->getLeft()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v11, v2}, Lc8/LXb;->setRight(I)V

    .line 171
    invoke-virtual {v11}, Lc8/LXb;->getTop()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v11, v2}, Lc8/LXb;->setBottom(I)V

    goto/16 :goto_2

    .line 173
    .end local v11    # "augmented":Lc8/LXb;
    .end local v17    # "myLocation":[I
    .end local v18    # "target":Landroid/view/View;
    .end local v19    # "targetLost":Z
    .end local v20    # "targetTag":Lc8/JXb;
    .end local v21    # "view":Landroid/view/View;
    :cond_6
    if-nez v13, :cond_8

    .line 179
    :cond_7
    return-void

    .line 176
    :cond_8
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc8/LXb;

    .line 177
    .local v12, "canvas":Lc8/LXb;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lc8/KXb;->unaugmentTarget(Lc8/LXb;)V

    goto :goto_3
.end method
