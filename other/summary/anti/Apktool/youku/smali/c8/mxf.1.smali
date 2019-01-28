.class public Lc8/mxf;
.super Lc8/fxf;
.source "PhenixCreator.java"


# static fields
.field private static gScreenSize:[I


# instance fields
.field private mCancelListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/txf;",
            ">;"
        }
    .end annotation
.end field

.field private mErrorDrawable:Landroid/graphics/drawable/Drawable;

.field private mErrorResId:I

.field private mFailListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/pxf;",
            ">;"
        }
    .end annotation
.end field

.field private final mImageRequest:Lc8/Jxf;

.field private mIntoImageRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mMemMissListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/sxf;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

.field private mPlaceholderResId:I

.field private mProgressListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/vxf;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryHandlerOnFailure:Lc8/rxf;

.field private mSuccessListener:Lc8/qxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/qxf",
            "<",
            "Lc8/wxf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lc8/mxf;->gScreenSize:[I

    return-void
.end method

.method constructor <init>(Lc8/Nxf;Ljava/lang/String;Lc8/Dvf;)V
    .locals 2
    .param p1, "strategy"    # Lc8/Nxf;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "inspector"    # Lc8/Dvf;

    .prologue
    .line 53
    invoke-direct {p0}, Lc8/fxf;-><init>()V

    .line 54
    new-instance v0, Lc8/Jxf;

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->isGenericTypeCheckEnabled()Z

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    iput-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    .line 55
    if-eqz p1, :cond_0

    .line 56
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget-object v1, p1, Lc8/Nxf;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/Jxf;->setModuleName(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget v1, p1, Lc8/Nxf;->schedulePriority:I

    invoke-virtual {v0, v1}, Lc8/Jxf;->setSchedulePriority(I)V

    .line 58
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget v1, p1, Lc8/Nxf;->memoryCachePriority:I

    invoke-virtual {v0, v1}, Lc8/Jxf;->setMemoryCachePriority(I)V

    .line 59
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget v1, p1, Lc8/Nxf;->diskCachePriority:I

    invoke-virtual {v0, v1}, Lc8/Jxf;->setDiskCachePriority(I)V

    .line 60
    iget-boolean v0, p1, Lc8/Nxf;->preloadWithSmall:Z

    invoke-virtual {p0, v0}, Lc8/mxf;->preloadWithSmall(Z)Lc8/mxf;

    .line 61
    iget-boolean v0, p1, Lc8/Nxf;->scaleFromLarge:Z

    invoke-virtual {p0, v0}, Lc8/mxf;->scaleFromLarge(Z)Lc8/mxf;

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->isPreloadWithLowImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lc8/mxf;->preloadWithSmall(Z)Lc8/mxf;

    .line 64
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->isScaleWithLargeImage()Z

    move-result v0

    invoke-virtual {p0, v0}, Lc8/mxf;->scaleFromLarge(Z)Lc8/mxf;

    goto :goto_0
.end method

.method static synthetic access$000(Lc8/mxf;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lc8/mxf;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/mxf;->mIntoImageRef:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lc8/mxf;)I
    .locals 1
    .param p0, "x0"    # Lc8/mxf;

    .prologue
    .line 36
    iget v0, p0, Lc8/mxf;->mPlaceholderResId:I

    return v0
.end method

.method static synthetic access$200(Lc8/mxf;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lc8/mxf;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/mxf;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$300(Lc8/mxf;)I
    .locals 1
    .param p0, "x0"    # Lc8/mxf;

    .prologue
    .line 36
    iget v0, p0, Lc8/mxf;->mErrorResId:I

    return v0
.end method

.method static synthetic access$400(Lc8/mxf;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lc8/mxf;

    .prologue
    .line 36
    iget-object v0, p0, Lc8/mxf;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private fetchInto(Landroid/widget/ImageView;)Lc8/nxf;
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 367
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/mxf;->mIntoImageRef:Ljava/lang/ref/WeakReference;

    .line 368
    new-instance v0, Lc8/lxf;

    invoke-direct {v0, p0}, Lc8/lxf;-><init>(Lc8/mxf;)V

    invoke-virtual {p0, v0}, Lc8/mxf;->failListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v0

    new-instance v1, Lc8/kxf;

    invoke-direct {v1, p0}, Lc8/kxf;-><init>(Lc8/mxf;)V

    .line 381
    invoke-virtual {v0, v1}, Lc8/mxf;->memCacheMissListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v0

    new-instance v1, Lc8/jxf;

    invoke-direct {v1, p0}, Lc8/jxf;-><init>(Lc8/mxf;)V

    .line 395
    invoke-virtual {v0, v1}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lc8/mxf;->fetch()Lc8/nxf;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenSize(Landroid/content/Context;)[I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    sget-object v1, Lc8/mxf;->gScreenSize:[I

    if-nez v1, :cond_0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 145
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    aput v3, v1, v2

    sput-object v1, Lc8/mxf;->gScreenSize:[I

    .line 147
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_0
    sget-object v1, Lc8/mxf;->gScreenSize:[I

    return-object v1
.end method


# virtual methods
.method public addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lc8/mxf;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 253
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1, p2}, Lc8/Jxf;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object p0
.end method

.method public asThumbnail(IZ)Lc8/mxf;
    .locals 1
    .param p1, "type"    # I
    .param p2, "useOriginIfNotExist"    # Z

    .prologue
    .line 203
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 204
    :cond_0
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1, p2}, Lc8/Jxf;->asThumbnail(IZ)V

    .line 206
    :cond_1
    return-object p0
.end method

.method public varargs bitmapProcessors([Lc8/ovf;)Lc8/mxf;
    .locals 1
    .param p1, "processors"    # [Lc8/ovf;

    .prologue
    .line 213
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 214
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->setBitmapProcessors([Lc8/ovf;)V

    .line 216
    :cond_0
    return-object p0
.end method

.method public cancelListener(Lc8/qxf;)Lc8/mxf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/txf;",
            ">;)",
            "Lc8/mxf;"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/PhenixEvent;>;"
    iput-object p1, p0, Lc8/mxf;->mCancelListener:Lc8/qxf;

    .line 297
    return-object p0
.end method

.method public diskCachePriority(I)Lc8/mxf;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->setDiskCachePriority(I)V

    .line 177
    return-object p0
.end method

.method public bridge synthetic error(I)Lc8/fxf;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/mxf;->error(I)Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic error(Landroid/graphics/drawable/Drawable;)Lc8/fxf;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/mxf;->error(Landroid/graphics/drawable/Drawable;)Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public error(I)Lc8/mxf;
    .locals 2
    .param p1, "errorResId"    # I

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Error image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lc8/mxf;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_1
    iput p1, p0, Lc8/mxf;->mErrorResId:I

    .line 117
    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lc8/mxf;
    .locals 2
    .param p1, "errorDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Error image may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget v0, p0, Lc8/mxf;->mErrorResId:I

    if-eqz v0, :cond_1

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Error image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iput-object p1, p0, Lc8/mxf;->mErrorDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    return-object p0
.end method

.method public failListener(Lc8/qxf;)Lc8/mxf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/pxf;",
            ">;)",
            "Lc8/mxf;"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/FailPhenixEvent;>;"
    iput-object p1, p0, Lc8/mxf;->mFailListener:Lc8/qxf;

    .line 265
    return-object p0
.end method

.method public fetch()Lc8/nxf;
    .locals 9

    .prologue
    .line 414
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0}, Lc8/Jxf;->getPhenixTicket()Lc8/nxf;

    move-result-object v8

    .line 416
    .local v8, "ticket":Lc8/nxf;
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lc8/mxf;->mFailListener:Lc8/qxf;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lc8/mxf;->mFailListener:Lc8/qxf;

    new-instance v1, Lc8/pxf;

    invoke-direct {v1, v8}, Lc8/pxf;-><init>(Lc8/nxf;)V

    invoke-interface {v0, v1}, Lc8/qxf;->onHappen(Lc8/txf;)Z

    .line 435
    :cond_0
    :goto_0
    return-object v8

    .line 423
    :cond_1
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->getProducerSupplier()Lc8/fwf;

    move-result-object v7

    .line 424
    .local v7, "supplier":Lc8/fwf;
    invoke-virtual {v7}, Lc8/fwf;->get()Lc8/uyf;

    move-result-object v6

    .line 425
    .local v6, "headProducer":Lc8/uyf;, "Lcom/taobao/rxm/produce/Producer<Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;Lcom/taobao/phenix/request/ImageRequest;>;"
    invoke-virtual {v7}, Lc8/fwf;->getSchedulerSupplierUsedInProducer()Lc8/Oyf;

    move-result-object v4

    .line 426
    .local v4, "schedulerSupplier":Lc8/Oyf;
    new-instance v0, Lc8/gwf;

    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    .line 430
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->getImageFlowMonitor()Lc8/Ixf;

    move-result-object v3

    .line 432
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->getImageDecodingListener()Lc8/ewf;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lc8/gwf;-><init>(Lc8/Jxf;Lc8/mxf;Lc8/Ixf;Lc8/Oyf;Lc8/ewf;)V

    .line 433
    invoke-interface {v4}, Lc8/Oyf;->forUiThread()Lc8/Nyf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/gwf;->consumeOn(Lc8/Nyf;)Lc8/oyf;

    move-result-object v0

    .line 426
    invoke-interface {v6, v0}, Lc8/uyf;->produceResults(Lc8/oyf;)V

    goto :goto_0
.end method

.method public forceAnimationToBeStatic(Z)Lc8/mxf;
    .locals 1
    .param p1, "forced"    # Z

    .prologue
    .line 223
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->forceAnimationStatic(Z)V

    .line 224
    return-object p0
.end method

.method public getCancelListener()Lc8/qxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/qxf",
            "<",
            "Lc8/txf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lc8/mxf;->mCancelListener:Lc8/qxf;

    return-object v0
.end method

.method public getFailureListener()Lc8/qxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/qxf",
            "<",
            "Lc8/pxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lc8/mxf;->mFailListener:Lc8/qxf;

    return-object v0
.end method

.method public getMemCacheMissListener()Lc8/qxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/qxf",
            "<",
            "Lc8/sxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 447
    iget-object v0, p0, Lc8/mxf;->mMemMissListener:Lc8/qxf;

    return-object v0
.end method

.method public getProgressListener()Lc8/qxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/qxf",
            "<",
            "Lc8/vxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lc8/mxf;->mProgressListener:Lc8/qxf;

    return-object v0
.end method

.method public getRetryHandlerOnFailure()Lc8/rxf;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lc8/mxf;->mRetryHandlerOnFailure:Lc8/rxf;

    return-object v0
.end method

.method public getSuccessListener()Lc8/qxf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/qxf",
            "<",
            "Lc8/wxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 443
    iget-object v0, p0, Lc8/mxf;->mSuccessListener:Lc8/qxf;

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lc8/nxf;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;

    .prologue
    .line 319
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lc8/mxf;->into(Landroid/widget/ImageView;F)Lc8/nxf;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;F)Lc8/nxf;
    .locals 2
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "scaleRatio"    # F

    .prologue
    .line 323
    invoke-virtual {p0, p1}, Lc8/mxf;->limitSize(Landroid/view/View;)Lc8/mxf;

    .line 324
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 325
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getMaxViewWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lc8/Jxf;->setMaxViewWidth(I)V

    .line 326
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getMaxViewHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lc8/Jxf;->setMaxViewHeight(I)V

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lc8/mxf;->fetchInto(Landroid/widget/ImageView;)Lc8/nxf;

    move-result-object v0

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;II)Lc8/nxf;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "defaultMaxWidth"    # I
    .param p3, "defaultMaxHeight"    # I

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lc8/mxf;->limitSize(Landroid/view/View;II)Lc8/mxf;

    .line 333
    invoke-direct {p0, p1}, Lc8/mxf;->fetchInto(Landroid/widget/ImageView;)Lc8/nxf;

    move-result-object v0

    return-object v0
.end method

.method public limitSize(Landroid/view/View;)Lc8/mxf;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lc8/mxf;->getScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    .line 341
    .local v0, "screenSize":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p0, p1, v1, v2}, Lc8/mxf;->limitSize(Landroid/view/View;II)Lc8/mxf;

    move-result-object v1

    return-object v1
.end method

.method public limitSize(Landroid/view/View;II)Lc8/mxf;
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "defaultMaxWidth"    # I
    .param p3, "defaultMaxHeight"    # I

    .prologue
    const/4 v3, -0x2

    .line 345
    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 347
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_1

    .line 348
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lez v1, :cond_4

    .line 349
    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1, v2}, Lc8/Jxf;->setMaxViewWidth(I)V

    .line 353
    :cond_0
    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v1, :cond_5

    .line 354
    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Lc8/Jxf;->setMaxViewHeight(I)V

    .line 361
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    :goto_1
    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getMaxViewWidth()I

    move-result v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v1, p2}, Lc8/Jxf;->setMaxViewWidth(I)V

    .line 362
    :cond_2
    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v1}, Lc8/Jxf;->getMaxViewHeight()I

    move-result v1

    if-gtz v1, :cond_3

    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v1, p3}, Lc8/Jxf;->setMaxViewHeight(I)V

    .line 363
    :cond_3
    return-object p0

    .line 350
    .restart local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v1, v3, :cond_0

    .line 351
    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lc8/Jxf;->setMaxViewWidth(I)V

    goto :goto_0

    .line 355
    :cond_5
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v1, v3, :cond_1

    .line 356
    iget-object v1, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lc8/Jxf;->setMaxViewHeight(I)V

    goto :goto_1
.end method

.method public memCacheMissListener(Lc8/qxf;)Lc8/mxf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/sxf;",
            ">;)",
            "Lc8/mxf;"
        }
    .end annotation

    .prologue
    .line 291
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/MemCacheMissPhenixEvent;>;"
    iput-object p1, p0, Lc8/mxf;->mMemMissListener:Lc8/qxf;

    .line 292
    return-object p0
.end method

.method public memOnly(Z)Lc8/mxf;
    .locals 1
    .param p1, "memOnly"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->memoryOnly(Z)V

    .line 152
    return-object p0
.end method

.method public memoryCachePriority(I)Lc8/mxf;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->setMemoryCachePriority(I)V

    .line 172
    return-object p0
.end method

.method public notSharedDrawable(Z)Lc8/mxf;
    .locals 0
    .param p1, "isNotShared"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    return-object p0
.end method

.method public bridge synthetic onlyCache()Lc8/fxf;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0}, Lc8/mxf;->onlyCache()Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public onlyCache()Lc8/mxf;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/Jxf;->onlyCache(Z)V

    .line 138
    return-object p0
.end method

.method public bridge synthetic placeholder(I)Lc8/fxf;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/mxf;->placeholder(I)Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic placeholder(Landroid/graphics/drawable/Drawable;)Lc8/fxf;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lc8/mxf;->placeholder(Landroid/graphics/drawable/Drawable;)Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public placeholder(I)Lc8/mxf;
    .locals 2
    .param p1, "placeholderResId"    # I

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Placeholder image resource invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iget-object v0, p0, Lc8/mxf;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_1
    iput p1, p0, Lc8/mxf;->mPlaceholderResId:I

    .line 86
    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lc8/mxf;
    .locals 2
    .param p1, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 96
    iget v0, p0, Lc8/mxf;->mPlaceholderResId:I

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_0
    iput-object p1, p0, Lc8/mxf;->mPlaceholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 100
    return-object p0
.end method

.method public preloadWithSmall(Z)Lc8/mxf;
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lc8/Jxf;->allowSizeLevel(ZI)V

    .line 162
    return-object p0
.end method

.method public progressListener(ILc8/qxf;)Lc8/mxf;
    .locals 1
    .param p1, "step"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/qxf",
            "<",
            "Lc8/vxf;",
            ">;)",
            "Lc8/mxf;"
        }
    .end annotation

    .prologue
    .line 308
    .local p2, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/ProgressPhenixEvent;>;"
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->setProgressUpdateStep(I)V

    .line 309
    iput-object p2, p0, Lc8/mxf;->mProgressListener:Lc8/qxf;

    .line 310
    return-object p0
.end method

.method public releasableDrawable(Z)Lc8/mxf;
    .locals 1
    .param p1, "releasable"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->releasableDrawableSpecified(Z)V

    .line 199
    return-object p0
.end method

.method public retryHandler(Lc8/rxf;)Lc8/mxf;
    .locals 0
    .param p1, "handlerOnFailure"    # Lc8/rxf;

    .prologue
    .line 280
    iput-object p1, p0, Lc8/mxf;->mRetryHandlerOnFailure:Lc8/rxf;

    .line 281
    return-object p0
.end method

.method public scaleFromLarge(Z)Lc8/mxf;
    .locals 2
    .param p1, "allowed"    # Z

    .prologue
    .line 166
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lc8/Jxf;->allowSizeLevel(ZI)V

    .line 167
    return-object p0
.end method

.method public schedulePriority(I)Lc8/mxf;
    .locals 1
    .param p1, "priority"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->setSchedulePriority(I)V

    .line 182
    return-object p0
.end method

.method public secondary(Ljava/lang/String;)Lc8/mxf;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0, p1}, Lc8/Jxf;->setSecondaryPath(Ljava/lang/String;)V

    .line 236
    :cond_0
    return-object p0
.end method

.method public setCacheKey4PlaceHolder(Ljava/lang/String;)Lc8/mxf;
    .locals 0
    .param p1, "cacheKey4PlaceHolder"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0, p1}, Lc8/mxf;->secondary(Ljava/lang/String;)Lc8/mxf;

    .line 245
    return-object p0
.end method

.method public setImageStrategyInfo(Ljava/lang/Object;)Lc8/mxf;
    .locals 2
    .param p1, "info"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 468
    const-string/jumbo v0, "bundle_biz_code"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/mxf;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lc8/mxf;

    .line 470
    :cond_0
    return-object p0
.end method

.method public skipCache()Lc8/mxf;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0}, Lc8/Jxf;->skipCache()V

    .line 157
    return-object p0
.end method

.method public succListener(Lc8/qxf;)Lc8/mxf;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/qxf",
            "<",
            "Lc8/wxf;",
            ">;)",
            "Lc8/mxf;"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "listener":Lc8/qxf;, "Lcom/taobao/phenix/intf/event/IPhenixListener<Lcom/taobao/phenix/intf/event/SuccPhenixEvent;>;"
    iput-object p1, p0, Lc8/mxf;->mSuccessListener:Lc8/qxf;

    .line 276
    return-object p0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lc8/mxf;->mImageRequest:Lc8/Jxf;

    invoke-virtual {v0}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
