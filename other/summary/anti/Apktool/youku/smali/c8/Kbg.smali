.class public Lc8/Kbg;
.super Lc8/tbg;
.source "WXImage.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jbg;,
        Lc8/Ibg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/tbg",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# static fields
.field private static BLUR_RADIUS_MAPPER:Lc8/dgg; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/dgg",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERRORDESC:Ljava/lang/String; = "errorDesc"

.field public static final SUCCEED:Ljava/lang/String; = "success"

.field private static final WRITE_EXTERNAL_STORAGE_PERMISSION_REQUEST_CODE:I = 0x2


# instance fields
.field private mAutoRecycle:Z

.field private mBlurRadius:I

.field private mSrc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lc8/Fbg;

    invoke-direct {v0}, Lc8/Fbg;-><init>()V

    sput-object v0, Lc8/Kbg;->BLUR_RADIUS_MAPPER:Lc8/dgg;

    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 1
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2, p3}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Kbg;->mAutoRecycle:Z

    .line 104
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3}, Lc8/Kbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 99
    return-void
.end method

.method private getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;
    .locals 4
    .param p1, "resizeMode"    # Ljava/lang/String;

    .prologue
    .line 167
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 168
    .local v0, "scaleType":Landroid/widget/ImageView$ScaleType;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 183
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .local v1, "scaleType":Landroid/widget/ImageView$ScaleType;
    :goto_0
    return-object v1

    .line 172
    .end local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .restart local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :cond_0
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    :goto_2
    move-object v1, v0

    .line 183
    .end local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .restart local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    goto :goto_0

    .line 172
    .end local v1    # "scaleType":Landroid/widget/ImageView$ScaleType;
    .restart local v0    # "scaleType":Landroid/widget/ImageView$ScaleType;
    :sswitch_0
    const-string/jumbo v3, "cover"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v3, "contain"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "stretch"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    .line 174
    :pswitch_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 175
    goto :goto_2

    .line 177
    :pswitch_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 178
    goto :goto_2

    .line 180
    :pswitch_2
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_2

    .line 172
    nop

    :sswitch_data_0
    .sparse-switch
        -0x702b18fb -> :sswitch_2
        0x5a753b7 -> :sswitch_0
        0x38b724d4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseBlurRadius(Ljava/lang/String;)I
    .locals 4
    .param p1, "rawRadius"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 248
    if-nez p1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v2

    .line 251
    :cond_1
    new-instance v1, Lc8/fgg;

    sget-object v3, Lc8/Kbg;->BLUR_RADIUS_MAPPER:Lc8/dgg;

    invoke-direct {v1, p1, v3}, Lc8/fgg;-><init>(Ljava/lang/String;Lc8/dgg;)V

    .line 254
    .local v1, "parser":Lc8/fgg;, "Lcom/taobao/weex/utils/SingleFunctionParser<Ljava/lang/Integer;>;"
    :try_start_0
    const-string/jumbo v3, "blur"

    invoke-virtual {v1, v3}, Lc8/fgg;->parse(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 261
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 256
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private setBlurRadius(Ljava/lang/String;I)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "blurRadius"    # I

    .prologue
    .line 239
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lc8/Kbg;->mBlurRadius:I

    if-eq p2, v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "image"

    invoke-virtual {v1, v2, v3}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 241
    .local v0, "parsedUri":Landroid/net/Uri;
    const-string/jumbo v1, "local"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-direct {p0, v0, p2}, Lc8/Kbg;->setRemoteSrc(Landroid/net/Uri;I)V

    .line 245
    .end local v0    # "parsedUri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method private setLocalSrc(Landroid/net/Uri;)V
    .locals 3
    .param p1, "rewrited"    # Landroid/net/Uri;

    .prologue
    .line 197
    invoke-virtual {p0}, Lc8/Kbg;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lc8/Zfg;->getDrawableFromLoaclSrc(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 198
    .local v1, "localDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 201
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method private setRemoteSrc(Landroid/net/Uri;I)V
    .locals 7
    .param p1, "rewrited"    # Landroid/net/Uri;
    .param p2, "blurRadius"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 297
    new-instance v1, Lc8/GXf;

    invoke-direct {v1}, Lc8/GXf;-><init>()V

    .line 298
    .local v1, "imageStrategy":Lc8/GXf;
    iput-boolean v4, v1, Lc8/GXf;->isClipping:Z

    .line 300
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xYf;->getImageSharpen()Lcom/taobao/weex/common/WXImageSharpen;

    move-result-object v0

    .line 301
    .local v0, "imageSharpen":Lcom/taobao/weex/common/WXImageSharpen;
    sget-object v6, Lcom/taobao/weex/common/WXImageSharpen;->SHARPEN:Lcom/taobao/weex/common/WXImageSharpen;

    if-ne v0, v6, :cond_3

    :goto_0
    iput-boolean v4, v1, Lc8/GXf;->isSharpen:Z

    .line 303
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v1, Lc8/GXf;->blurRadius:I

    .line 304
    iput p2, p0, Lc8/Kbg;->mBlurRadius:I

    .line 306
    new-instance v4, Lc8/Gbg;

    invoke-direct {v4, p0}, Lc8/Gbg;-><init>(Lc8/Kbg;)V

    invoke-virtual {v1, v4}, Lc8/GXf;->setImageListener(Lc8/FXf;)V

    .line 329
    const/4 v3, 0x0

    .line 330
    .local v3, "placeholder":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "placeholder"

    invoke-virtual {v4, v5}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 331
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "placeholder"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "placeholder":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 335
    .restart local v3    # "placeholder":Ljava/lang/String;
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v4

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "image"

    invoke-virtual {v4, v5, v6}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/GXf;->placeHolder:Ljava/lang/String;

    .line 339
    :cond_1
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v4

    invoke-virtual {v4}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v2

    .line 340
    .local v2, "imgLoaderAdapter":Lc8/EVf;
    if-eqz v2, :cond_2

    .line 341
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v6

    invoke-interface {v6}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/xYf;->getImageQuality()Lcom/taobao/weex/dom/WXImageQuality;

    move-result-object v6

    invoke-interface {v2, v5, v4, v6, v1}, Lc8/EVf;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    .line 344
    :cond_2
    return-void

    .end local v2    # "imgLoaderAdapter":Lc8/EVf;
    .end local v3    # "placeholder":Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 301
    goto :goto_0

    .line 332
    .restart local v3    # "placeholder":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "placeHolder"

    invoke-virtual {v4, v5}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 333
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v4

    invoke-interface {v4}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "placeHolder"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "placeholder":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "placeholder":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public autoRecoverImage()V
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lc8/Kbg;->mAutoRecycle:Z

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lc8/Kbg;->mSrc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc8/Kbg;->setSrc(Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method public autoReleaseImage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 280
    iget-boolean v0, p0, Lc8/Kbg;->mAutoRecycle:Z

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v1

    iget-object v0, p0, Lc8/Kbg;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0, v2, v2}, Lc8/EVf;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    .line 287
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 442
    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lc8/teg;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v1

    iget-object v0, p0, Lc8/Kbg;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0, v2, v2}, Lc8/EVf;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    .line 447
    :cond_0
    invoke-super {p0}, Lc8/tbg;->destroy()V

    .line 448
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lc8/Kbg;->initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/ImageView;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    new-instance v0, Lc8/teg;

    invoke-direct {v0, p1}, Lc8/teg;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "view":Lc8/teg;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lc8/teg;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 110
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 111
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc8/teg;->setCropToPadding(Z)V

    .line 113
    :cond_0
    invoke-virtual {v0, p0}, Lc8/teg;->holdComponent(Lc8/Kbg;)V

    .line 114
    return-object v0
.end method

.method public recycled()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 266
    invoke-super {p0}, Lc8/tbg;->recycled()V

    .line 268
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/nVf;->getImgLoaderAdapter()Lc8/EVf;

    move-result-object v1

    iget-object v0, p0, Lc8/Kbg;->mHost:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v2, v0, v2, v2}, Lc8/EVf;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    new-instance v0, Lcom/taobao/weex/common/WXRuntimeException;

    const-string/jumbo v1, "getImgLoaderAdapter() == null"

    invoke-direct {v0, v1}, Lcom/taobao/weex/common/WXRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_1
    const-string/jumbo v0, "Error getImgLoaderAdapter() == null"

    invoke-static {v0}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public refreshData(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 155
    invoke-super {p0, p1}, Lc8/tbg;->refreshData(Lc8/tbg;)V

    .line 156
    instance-of v0, p1, Lc8/Kbg;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Lc8/tbg;->getDomObject()Lc8/qYf;

    move-result-object v0

    invoke-interface {v0}, Lc8/qYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/xYf;->getImageSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/Kbg;->setSrc(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public save(Lc8/EWf;)V
    .locals 5
    .param p1, "saveStatuCallback"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
        uiThread = false
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 381
    invoke-virtual {p0}, Lc8/Kbg;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lc8/Kbg;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {p0}, Lc8/Kbg;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 388
    :cond_0
    invoke-virtual {p0}, Lc8/Kbg;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 389
    if-eqz p1, :cond_1

    .line 390
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 391
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string/jumbo v1, "errorDesc"

    const-string/jumbo v2, "Permission denied: android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 438
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 398
    :cond_2
    iget-object v1, p0, Lc8/Kbg;->mHost:Landroid/view/View;

    if-nez v1, :cond_3

    .line 399
    if-eqz p1, :cond_1

    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 401
    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string/jumbo v1, "errorDesc"

    const-string/jumbo v2, "Image component not initialized"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-object v1, p0, Lc8/Kbg;->mSrc:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lc8/Kbg;->mSrc:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 409
    :cond_4
    if-eqz p1, :cond_1

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    .restart local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "success"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v1, "errorDesc"

    const-string/jumbo v2, "Image does not have the correct src"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-interface {p1, v0}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 418
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    iget-object v1, p0, Lc8/Kbg;->mHost:Landroid/view/View;

    const v2, -0x70708

    new-instance v3, Lc8/Hbg;

    invoke-direct {v3, p0, p1}, Lc8/Hbg;-><init>(Lc8/Kbg;Lc8/EWf;)V

    invoke-static {v1, v4, v2, v3}, Lc8/Hgg;->generateImage(Landroid/view/View;IILc8/Ggg;)V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 119
    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 150
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    .end local p2    # "param":Ljava/lang/Object;
    :cond_1
    :goto_1
    :pswitch_0
    return v4

    .line 119
    .restart local p2    # "param":Ljava/lang/Object;
    :sswitch_0
    const-string/jumbo v6, "resizeMode"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "resize"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "src"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v6, "imageQuality"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v6, "autoBitmapRecycle"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :sswitch_5
    const-string/jumbo v6, "filter"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x5

    goto :goto_0

    .line 121
    :pswitch_1
    invoke-static {p2, v7}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "resize_mode":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 123
    invoke-virtual {p0, v2}, Lc8/Kbg;->setResizeMode(Ljava/lang/String;)V

    goto :goto_1

    .line 126
    .end local v2    # "resize_mode":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, v7}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "resize":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 128
    invoke-virtual {p0, v1}, Lc8/Kbg;->setResize(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    .end local v1    # "resize":Ljava/lang/String;
    :pswitch_3
    invoke-static {p2, v7}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .local v3, "src":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {p0, v3}, Lc8/Kbg;->setSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    .end local v3    # "src":Ljava/lang/String;
    :pswitch_4
    iget-boolean v5, p0, Lc8/Kbg;->mAutoRecycle:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p2, v5}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-boolean v5, p0, Lc8/Kbg;->mAutoRecycle:Z

    goto/16 :goto_1

    .line 141
    :pswitch_5
    const/4 v0, 0x0

    .line 142
    .local v0, "blurRadius":I
    if-eqz p2, :cond_2

    instance-of v5, p2, Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 143
    check-cast p2, Ljava/lang/String;

    .end local p2    # "param":Ljava/lang/Object;
    invoke-direct {p0, p2}, Lc8/Kbg;->parseBlurRadius(Ljava/lang/String;)I

    move-result v0

    .line 145
    :cond_2
    iget-object v5, p0, Lc8/Kbg;->mSrc:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 146
    iget-object v5, p0, Lc8/Kbg;->mSrc:Ljava/lang/String;

    invoke-direct {p0, v5, v0}, Lc8/Kbg;->setBlurRadius(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 119
    :sswitch_data_0
    .sparse-switch
        -0x4ca1830b -> :sswitch_4
        -0x4bf73488 -> :sswitch_5
        -0x37b2634c -> :sswitch_1
        0x1bde4 -> :sswitch_2
        0x4a798324 -> :sswitch_3
        0x7a2cd077 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setResize(Ljava/lang/String;)V
    .locals 2
    .param p1, "resize"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "resize"
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lc8/Kbg;->getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 189
    return-void
.end method

.method public setResizeMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "resizeMode"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "resizeMode"
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lc8/Kbg;->getResizeMode(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 164
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "src"
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 205
    if-nez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 210
    .local v2, "image":Landroid/widget/ImageView;
    const-string/jumbo v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 211
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 215
    :cond_1
    if-eqz v2, :cond_2

    .line 216
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 217
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_2
    iput-object p1, p0, Lc8/Kbg;->mSrc:Ljava/lang/String;

    .line 223
    invoke-virtual {p0}, Lc8/Kbg;->getInstance()Lc8/nVf;

    move-result-object v3

    .line 224
    .local v3, "instance":Lc8/nVf;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "image"

    invoke-virtual {v3, v5, v6}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 226
    .local v4, "rewrited":Landroid/net/Uri;
    const-string/jumbo v5, "local"

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 227
    invoke-direct {p0, v4}, Lc8/Kbg;->setLocalSrc(Landroid/net/Uri;)V

    goto :goto_0

    .line 229
    :cond_3
    const/4 v0, 0x0

    .line 230
    .local v0, "blur":I
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 231
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v5

    invoke-interface {v5}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/PYf;->getBlur()Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, "blurStr":Ljava/lang/String;
    invoke-direct {p0, v1}, Lc8/Kbg;->parseBlurRadius(Ljava/lang/String;)I

    move-result v0

    .line 234
    .end local v1    # "blurStr":Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v4, v0}, Lc8/Kbg;->setRemoteSrc(Landroid/net/Uri;I)V

    goto :goto_0
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 348
    invoke-super {p0, p1}, Lc8/tbg;->updateProperties(Ljava/util/Map;)V

    .line 351
    invoke-virtual {p0}, Lc8/Kbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    .local v3, "imageDom":Lc8/qYf;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Lc8/teg;

    if-eqz v7, :cond_1

    .line 353
    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lc8/teg;

    .line 354
    .local v5, "imageView":Lc8/teg;
    invoke-virtual {p0}, Lc8/Kbg;->getHostView()Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, Lc8/Jgg;->getBorderDrawable(Landroid/view/View;)Lc8/Ieg;

    move-result-object v1

    .line 356
    .local v1, "borderDrawable":Lc8/Ieg;
    if-eqz v1, :cond_2

    .line 357
    new-instance v0, Landroid/graphics/RectF;

    invoke-static {v3}, Lc8/pgg;->getContentWidth(Lc8/qYf;)F

    move-result v7

    invoke-static {v3}, Lc8/pgg;->getContentHeight(Lc8/qYf;)F

    move-result v8

    invoke-direct {v0, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 358
    .local v0, "borderBox":Landroid/graphics/RectF;
    invoke-virtual {v1, v0}, Lc8/Ieg;->getBorderRadius(Landroid/graphics/RectF;)[F

    move-result-object v2

    .line 362
    .end local v0    # "borderBox":Landroid/graphics/RectF;
    .local v2, "borderRadius":[F
    :goto_0
    invoke-virtual {v5, v2}, Lc8/teg;->setBorderRadius([F)V

    .line 364
    invoke-virtual {v5}, Lc8/teg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    instance-of v7, v7, Lc8/Yfg;

    if-eqz v7, :cond_0

    .line 365
    invoke-virtual {v5}, Lc8/teg;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Lc8/Yfg;

    .line 366
    .local v4, "imageDrawable":Lc8/Yfg;
    invoke-virtual {v4}, Lc8/Yfg;->getCornerRadii()[F

    move-result-object v6

    .line 367
    .local v6, "previousRadius":[F
    invoke-static {v6, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v7

    if-nez v7, :cond_0

    .line 368
    invoke-virtual {v4, v2}, Lc8/Yfg;->setCornerRadii([F)V

    .line 371
    .end local v4    # "imageDrawable":Lc8/Yfg;
    .end local v6    # "previousRadius":[F
    :cond_0
    invoke-virtual {p0}, Lc8/Kbg;->readyToRender()V

    .line 373
    .end local v1    # "borderDrawable":Lc8/Ieg;
    .end local v2    # "borderRadius":[F
    .end local v5    # "imageView":Lc8/teg;
    :cond_1
    return-void

    .line 360
    .restart local v1    # "borderDrawable":Lc8/Ieg;
    .restart local v5    # "imageView":Lc8/teg;
    :cond_2
    const/16 v7, 0x8

    new-array v2, v7, [F

    fill-array-data v2, :array_0

    .restart local v2    # "borderRadius":[F
    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
