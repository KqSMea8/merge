.class public Lc8/kpb;
.super Ljava/lang/Object;
.source "WXImgLoaderAdapter.java"

# interfaces
.implements Lc8/EVf;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hpb;,
        Lc8/jpb;
    }
.end annotation


# static fields
.field private static final BIZ_ID:I = 0x46

.field public static final TRUE:Ljava/lang/String; = "true"

.field public static final WX_ALLOW_RELEASE_DOMAIN:Ljava/lang/String; = "allow_active_release"

.field public static final WX_IMAGE_RELEASE_CONFIG:Ljava/lang/String; = "android_aliweex_image_release"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lc8/nVf;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private getConfig(ZLcom/taobao/weex/dom/WXImageQuality;)Lc8/nHf;
    .locals 3
    .param p1, "isSharpen"    # Z
    .param p2, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;

    .prologue
    .line 139
    if-eqz p1, :cond_1

    const-string/jumbo v1, "weappsharpen"

    :goto_0
    const/16 v2, 0x46

    invoke-static {v1, v2}, Lc8/nHf;->newBuilderWithName(Ljava/lang/String;I)Lc8/mHf;

    move-result-object v0

    .line 142
    .local v0, "builder":Lc8/mHf;
    if-eqz p2, :cond_0

    .line 143
    sget-object v1, Lc8/gpb;->$SwitchMap$com$taobao$weex$dom$WXImageQuality:[I

    invoke-virtual {p2}, Lcom/taobao/weex/dom/WXImageQuality;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 156
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lc8/mHf;->build()Lc8/nHf;

    move-result-object v1

    return-object v1

    .line 139
    .end local v0    # "builder":Lc8/mHf;
    :cond_1
    const-string/jumbo v1, "weapp"

    goto :goto_0

    .line 145
    .restart local v0    # "builder":Lc8/mHf;
    :pswitch_0
    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0, v1}, Lc8/mHf;->setFinalImageQuality(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;)Lc8/mHf;

    goto :goto_1

    .line 148
    :pswitch_1
    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0, v1}, Lc8/mHf;->setFinalImageQuality(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;)Lc8/mHf;

    goto :goto_1

    .line 151
    :pswitch_2
    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0, v1}, Lc8/mHf;->setFinalImageQuality(Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;)Lc8/mHf;

    goto :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public decideUrl(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/taobao/weex/dom/WXImageQuality;)Ljava/lang/String;
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isSharpen"    # Z
    .param p4, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;

    .prologue
    .line 120
    invoke-direct {p0, p3, p4}, Lc8/kpb;->getConfig(ZLcom/taobao/weex/dom/WXImageQuality;)Lc8/nHf;

    move-result-object v1

    .line 121
    .local v1, "mConfig":Lc8/nHf;
    if-nez v1, :cond_0

    .line 134
    .end local p2    # "url":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 127
    .restart local p2    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 128
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 129
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 134
    .local v2, "width":I
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p2, v3, v4, v1}, Lc8/uNf;->decideUrl(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 131
    .end local v0    # "height":I
    .end local v2    # "width":I
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 132
    .restart local v0    # "height":I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    .restart local v2    # "width":I
    goto :goto_1
.end method

.method public getImageRealURL(Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "strategy"    # Lc8/GXf;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/taobao/weex/dom/WXImageQuality;->ORIGINAL:Lcom/taobao/weex/dom/WXImageQuality;

    if-ne p3, v0, :cond_1

    .line 115
    .end local p2    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "url":Ljava/lang/String;
    :cond_1
    iget-boolean v0, p4, Lc8/GXf;->isSharpen:Z

    invoke-virtual {p0, p1, p2, v0, p3}, Lc8/kpb;->decideUrl(Landroid/widget/ImageView;Ljava/lang/String;ZLcom/taobao/weex/dom/WXImageQuality;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "view"    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "strategy"    # Lc8/GXf;

    .prologue
    .line 58
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v6

    new-instance v0, Lc8/fpb;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/fpb;-><init>(Lc8/kpb;Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v6, v0, v2, v3}, Lc8/pVf;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 108
    return-void
.end method
