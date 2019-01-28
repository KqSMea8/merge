.class public Lc8/RXb;
.super Landroid/widget/FrameLayout;
.source "SandoContainer.java"


# instance fields
.field private isBeginPreDrawListener:Z

.field private mAugmentedLayer:Lc8/KXb;

.field private mMirrorLayer:Lc8/OXb;

.field private mPopLayerContainer:Lc8/PXb;

.field private final mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/RXb;->isBeginPreDrawListener:Z

    .line 86
    new-instance v0, Lc8/QXb;

    invoke-direct {v0, p0}, Lc8/QXb;-><init>(Lc8/RXb;)V

    iput-object v0, p0, Lc8/RXb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 35
    invoke-direct {p0, p1}, Lc8/RXb;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/RXb;->isBeginPreDrawListener:Z

    .line 86
    new-instance v0, Lc8/QXb;

    invoke-direct {v0, p0}, Lc8/QXb;-><init>(Lc8/RXb;)V

    iput-object v0, p0, Lc8/RXb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 30
    invoke-direct {p0, p1}, Lc8/RXb;->initialize(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/RXb;->isBeginPreDrawListener:Z

    .line 86
    new-instance v0, Lc8/QXb;

    invoke-direct {v0, p0}, Lc8/QXb;-><init>(Lc8/RXb;)V

    iput-object v0, p0, Lc8/RXb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 25
    invoke-direct {p0, p1}, Lc8/RXb;->initialize(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method static synthetic access$000(Lc8/RXb;)Lc8/OXb;
    .locals 1
    .param p0, "x0"    # Lc8/RXb;

    .prologue
    .line 14
    iget-object v0, p0, Lc8/RXb;->mMirrorLayer:Lc8/OXb;

    return-object v0
.end method

.method static synthetic access$100(Lc8/RXb;)Lc8/KXb;
    .locals 1
    .param p0, "x0"    # Lc8/RXb;

    .prologue
    .line 14
    iget-object v0, p0, Lc8/RXb;->mAugmentedLayer:Lc8/KXb;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    sget v0, Lcom/youku/phone/R$layout;->pop_layer_sando_layer:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    sget v0, Lcom/youku/phone/R$id;->mirror:I

    invoke-virtual {p0, v0}, Lc8/RXb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/OXb;

    iput-object v0, p0, Lc8/RXb;->mMirrorLayer:Lc8/OXb;

    .line 41
    iget-object v0, p0, Lc8/RXb;->mMirrorLayer:Lc8/OXb;

    invoke-virtual {v0, p0}, Lc8/OXb;->setSandoContainer(Lc8/RXb;)V

    .line 42
    sget v0, Lcom/youku/phone/R$id;->augmented:I

    invoke-virtual {p0, v0}, Lc8/RXb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/KXb;

    iput-object v0, p0, Lc8/RXb;->mAugmentedLayer:Lc8/KXb;

    .line 43
    iget-object v0, p0, Lc8/RXb;->mAugmentedLayer:Lc8/KXb;

    invoke-virtual {v0, p0}, Lc8/KXb;->setSandoContainer(Lc8/RXb;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getAugmentedLayer()Lc8/KXb;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/RXb;->mAugmentedLayer:Lc8/KXb;

    return-object v0
.end method

.method public getMirrorLayer()Lc8/OXb;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lc8/RXb;->mMirrorLayer:Lc8/OXb;

    return-object v0
.end method

.method getPopLayerContainer()Lc8/PXb;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lc8/RXb;->mPopLayerContainer:Lc8/PXb;

    return-object v0
.end method

.method setPopLayerContainer(Lc8/PXb;)V
    .locals 0
    .param p1, "popLayerContainer"    # Lc8/PXb;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/RXb;->mPopLayerContainer:Lc8/PXb;

    .line 56
    return-void
.end method

.method startPreDrawListenerIfNeed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 65
    iget-boolean v1, p0, Lc8/RXb;->isBeginPreDrawListener:Z

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lc8/RXb;->mPopLayerContainer:Lc8/PXb;

    invoke-virtual {v1, v3}, Lc8/PXb;->showSandoContainer(Z)V

    .line 68
    invoke-virtual {p0}, Lc8/RXb;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/alibaba/poplayer/utils/Utils;->getTopView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 69
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lc8/RXb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 70
    iget-object v1, p0, Lc8/RXb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 71
    const-string/jumbo v1, "SandoContainer.start preDraw listener."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iput-boolean v3, p0, Lc8/RXb;->isBeginPreDrawListener:Z

    goto :goto_0
.end method

.method stopPreDrawListenerIfNeed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 76
    iget-boolean v1, p0, Lc8/RXb;->isBeginPreDrawListener:Z

    if-nez v1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v1, p0, Lc8/RXb;->mPopLayerContainer:Lc8/PXb;

    invoke-virtual {v1, v3}, Lc8/PXb;->showSandoContainer(Z)V

    .line 79
    invoke-virtual {p0}, Lc8/RXb;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/alibaba/poplayer/utils/Utils;->getTopView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 80
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lc8/RXb;->mPreDrawLsn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    const-string/jumbo v1, "SandoContainer.stop preDraw listener."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iput-boolean v3, p0, Lc8/RXb;->isBeginPreDrawListener:Z

    goto :goto_0
.end method
