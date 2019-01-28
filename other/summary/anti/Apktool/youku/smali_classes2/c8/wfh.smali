.class public Lc8/wfh;
.super Ljava/lang/Object;
.source "YKImageAdapterDelegate.java"

# interfaces
.implements Lc8/EVf;


# static fields
.field private static mDelegateAdapter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xfh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lc8/wfh;->mDelegateAdapter:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handle(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p3, "strategy"    # Lc8/GXf;

    .prologue
    .line 52
    sget-object v2, Lc8/wfh;->mDelegateAdapter:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xfh;

    .line 53
    .local v0, "adapter":Lc8/xfh;
    invoke-interface {v0, p0, p1, p2, p3}, Lc8/xfh;->handle(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    const/4 v2, 0x1

    .line 57
    .end local v0    # "adapter":Lc8/xfh;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static registerAdapter(Lc8/xfh;)V
    .locals 1
    .param p0, "adapter"    # Lc8/xfh;

    .prologue
    .line 29
    sget-object v0, Lc8/wfh;->mDelegateAdapter:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lc8/wfh;->mDelegateAdapter:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public setImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "quality"    # Lcom/taobao/weex/dom/WXImageQuality;
    .param p4, "strategy"    # Lc8/GXf;

    .prologue
    .line 63
    invoke-static {p1, p2, p3, p4}, Lc8/wfh;->handle(Ljava/lang/String;Landroid/widget/ImageView;Lcom/taobao/weex/dom/WXImageQuality;Lc8/GXf;)Z

    .line 64
    return-void
.end method
