.class public Lc8/fpb;
.super Ljava/lang/Object;
.source "WXImgLoaderAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/kpb;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/kpb;

.field final synthetic val$quality:Lcom/taobao/weex/dom/WXImageQuality;

.field final synthetic val$strategy:Lc8/GXf;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$view:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lc8/kpb;Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/kpb;

    .prologue
    .line 58
    iput-object p1, p0, Lc8/fpb;->this$0:Lc8/kpb;

    iput-object p2, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    iput-object p3, p0, Lc8/fpb;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lc8/fpb;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iput-object p5, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0x46

    .line 61
    iget-object v5, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    if-eqz v5, :cond_1

    .line 62
    iget-object v5, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lc8/nxf;

    if-eqz v5, :cond_0

    .line 63
    iget-object v5, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/nxf;

    invoke-virtual {v5}, Lc8/nxf;->cancel()Z

    .line 66
    :cond_0
    iget-object v5, p0, Lc8/fpb;->val$url:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    iget-object v5, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v5, p0, Lc8/fpb;->this$0:Lc8/kpb;

    iget-object v6, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    iget-object v7, p0, Lc8/fpb;->val$url:Ljava/lang/String;

    iget-object v8, p0, Lc8/fpb;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    iget-object v9, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    invoke-virtual {v5, v6, v7, v8, v9}, Lc8/kpb;->getImageRealURL(Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)Ljava/lang/String;

    move-result-object v3

    .line 71
    .local v3, "realUrl":Ljava/lang/String;
    iget-object v5, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget-object v5, v5, Lc8/GXf;->placeHolder:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 72
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v5

    iget-object v6, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget-object v6, v6, Lc8/GXf;->placeHolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/mxf;->fetch()Lc8/nxf;

    .line 77
    :cond_3
    const/4 v4, 0x0

    .line 78
    .local v4, "tracker":Lc8/sxb;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    invoke-static {}, Lc8/sxb;->newInstance()Lc8/sxb;

    move-result-object v4

    .line 81
    :cond_4
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v5

    invoke-virtual {v5, v3}, Lc8/ixf;->load(Ljava/lang/String;)Lc8/mxf;

    move-result-object v5

    iget-object v6, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget-object v6, v6, Lc8/GXf;->placeHolder:Ljava/lang/String;

    .line 82
    invoke-virtual {v5, v6}, Lc8/mxf;->secondary(Ljava/lang/String;)Lc8/mxf;

    move-result-object v5

    iget-object v6, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Lc8/mxf;->limitSize(Landroid/view/View;)Lc8/mxf;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lc8/mxf;->releasableDrawable(Z)Lc8/mxf;

    move-result-object v5

    const-string/jumbo v6, "bundle_biz_code"

    .line 83
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lc8/mxf;->addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)Lc8/mxf;

    move-result-object v1

    .line 85
    .local v1, "creator":Lc8/mxf;
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v5

    const-string/jumbo v6, "android_aliweex_image_release"

    const-string/jumbo v7, "allow_active_release"

    const-string/jumbo v8, ""

    invoke-interface {v5, v6, v7, v8}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "allowedReleaseImage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "true"

    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 87
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lc8/mxf;->releasableDrawable(Z)Lc8/mxf;

    .line 89
    :cond_6
    new-instance v5, Lc8/jpb;

    iget-object v6, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget-object v7, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    iget-object v8, p0, Lc8/fpb;->val$url:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v4}, Lc8/jpb;-><init>(Lc8/GXf;Landroid/widget/ImageView;Ljava/lang/String;Lc8/sxb;)V

    invoke-virtual {v1, v5}, Lc8/mxf;->succListener(Lc8/qxf;)Lc8/mxf;

    .line 90
    new-instance v5, Lc8/hpb;

    iget-object v6, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget-object v7, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    iget-object v8, p0, Lc8/fpb;->val$url:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8, v4}, Lc8/hpb;-><init>(Lc8/GXf;Landroid/widget/ImageView;Ljava/lang/String;Lc8/sxb;)V

    invoke-virtual {v1, v5}, Lc8/mxf;->failListener(Lc8/qxf;)Lc8/mxf;

    .line 92
    if-eqz v4, :cond_8

    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 95
    const-string/jumbo v5, "quality"

    iget-object v6, p0, Lc8/fpb;->val$quality:Lcom/taobao/weex/dom/WXImageQuality;

    invoke-virtual {v6}, Lcom/taobao/weex/dom/WXImageQuality;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string/jumbo v5, "bundle_biz_code"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v5, "sharpen"

    iget-object v6, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget-boolean v6, v6, Lc8/GXf;->isSharpen:Z

    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v5, "blurRaduis"

    iget-object v6, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget v6, v6, Lc8/GXf;->blurRadius:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string/jumbo v5, "placeHolder"

    iget-object v6, p0, Lc8/fpb;->val$strategy:Lc8/GXf;

    iget-object v6, v6, Lc8/GXf;->placeHolder:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_7
    invoke-virtual {v4, v1, v2}, Lc8/sxb;->preRequest(Lc8/mxf;Ljava/util/Map;)V

    .line 103
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    iget-object v5, p0, Lc8/fpb;->val$view:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lc8/mxf;->fetch()Lc8/nxf;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
