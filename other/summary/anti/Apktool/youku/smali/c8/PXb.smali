.class public Lc8/PXb;
.super Landroid/widget/FrameLayout;
.source "PopLayerViewContainer.java"


# instance fields
.field private mActivityAttachTo:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mPageCanvas:Lc8/LXb;

.field private mSandoContainer:Lc8/RXb;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lc8/PXb;->initialize(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1}, Lc8/PXb;->initialize(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    invoke-direct {p0, p1}, Lc8/PXb;->initialize(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private initialize(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget v0, Lcom/youku/phone/R$layout;->pop_layer_container:I

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    sget v0, Lcom/youku/phone/R$id;->poplayer_view:I

    invoke-virtual {p0, v0}, Lc8/PXb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/LXb;

    iput-object v0, p0, Lc8/PXb;->mPageCanvas:Lc8/LXb;

    .line 44
    sget v0, Lcom/youku/phone/R$id;->sando_container:I

    invoke-virtual {p0, v0}, Lc8/PXb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/RXb;

    iput-object v0, p0, Lc8/PXb;->mSandoContainer:Lc8/RXb;

    .line 45
    iget-object v0, p0, Lc8/PXb;->mSandoContainer:Lc8/RXb;

    invoke-virtual {v0, p0}, Lc8/RXb;->setPopLayerContainer(Lc8/PXb;)V

    .line 47
    const-string/jumbo v0, "PopLayerViewContainer.initialize.success?this=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/PXb;->mActivityAttachTo:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/PXb;->mActivityAttachTo:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public getCanvas()Lc8/LXb;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/PXb;->mPageCanvas:Lc8/LXb;

    return-object v0
.end method

.method public getSandoContainer()Lc8/RXb;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lc8/PXb;->mSandoContainer:Lc8/RXb;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activityAttachTo"    # Landroid/app/Activity;

    .prologue
    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/PXb;->mActivityAttachTo:Ljava/lang/ref/WeakReference;

    .line 63
    return-void
.end method

.method public showSandoContainer(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_0

    move v0, v1

    .line 52
    .local v0, "visibility":I
    :goto_0
    iget-object v2, p0, Lc8/PXb;->mSandoContainer:Lc8/RXb;

    invoke-virtual {v2, v0}, Lc8/RXb;->setVisibility(I)V

    .line 53
    const-string/jumbo v2, "PopLayerViewContainer.showSandoContainer?show=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    return-void

    .line 51
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
