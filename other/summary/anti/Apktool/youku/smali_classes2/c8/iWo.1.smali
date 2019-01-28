.class public Lc8/iWo;
.super Lc8/kpb;
.source "YKWXImageAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lc8/kpb;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/iWo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 0
    .param p0, "x0"    # Lc8/iWo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "x4"    # Lc8/GXf;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/iWo;->loadLocalImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    return-void
.end method

.method static synthetic access$101(Lc8/iWo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 0
    .param p0, "x0"    # Lc8/iWo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "x4"    # Lc8/GXf;

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lc8/kpb;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    return-void
.end method

.method static synthetic access$201(Lc8/iWo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 0
    .param p0, "x0"    # Lc8/iWo;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;
    .param p3, "x3"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "x4"    # Lc8/GXf;

    .prologue
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Lc8/kpb;->setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    return-void
.end method

.method private loadLocalImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 6
    .param p1, "imgUrl"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "strategy"    # Lc8/GXf;

    .prologue
    .line 58
    :try_start_0
    const-class v0, Lcom/youku/phone/R$drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "drawable":Ljava/lang/Class;
    :try_start_1
    const-string/jumbo v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "fileName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 62
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 63
    .local v3, "resId":I
    invoke-static {v3}, Lc8/Mxf;->wrapRes(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, p2, p3, p4}, Lc8/iWo;->access$201(Lc8/iWo;Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .end local v0    # "drawable":Ljava/lang/Class;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "resId":I
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0

    .restart local v0    # "drawable":Ljava/lang/Class;
    :catch_1
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "strategy"    # Lc8/GXf;

    .prologue
    .line 22
    invoke-static {p1, p2, p3, p4}, Lc8/wfh;->handle(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v6

    new-instance v0, Lc8/hWo;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/hWo;-><init>(Lc8/iWo;Landroid/widget/ImageView;Ljava/lang/String;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v6, v0, v2, v3}, Lc8/pVf;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
