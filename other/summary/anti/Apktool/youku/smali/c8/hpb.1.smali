.class public Lc8/hpb;
.super Ljava/lang/Object;
.source "WXImgLoaderAdapter.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/kpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WXFailPhenixListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/qxf",
        "<",
        "Lc8/pxf;",
        ">;"
    }
.end annotation


# instance fields
.field private mImageStrategy:Lc8/GXf;

.field private mImageViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private phenixTracker:Lc8/sxb;


# direct methods
.method constructor <init>(Lc8/GXf;Landroid/widget/ImageView;Ljava/lang/String;Lc8/sxb;)V
    .locals 1
    .param p1, "strategy"    # Lc8/GXf;
    .param p2, "imageView"    # Landroid/widget/ImageView;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "tracker"    # Lc8/sxb;

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Lc8/hpb;->mImageStrategy:Lc8/GXf;

    .line 236
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/hpb;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 237
    iput-object p3, p0, Lc8/hpb;->mUrl:Ljava/lang/String;

    .line 238
    iput-object p4, p0, Lc8/hpb;->phenixTracker:Lc8/sxb;

    .line 239
    return-void
.end method


# virtual methods
.method public onHappen(Lc8/pxf;)Z
    .locals 5
    .param p1, "failPhenixEvent"    # Lc8/pxf;

    .prologue
    const/4 v4, 0x0

    .line 243
    iget-object v1, p0, Lc8/hpb;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 244
    .local v0, "mImageView":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v4

    .line 247
    :cond_1
    iget-object v1, p0, Lc8/hpb;->mImageStrategy:Lc8/GXf;

    invoke-virtual {v1}, Lc8/GXf;->getImageListener()Lc8/FXf;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 248
    iget-object v1, p0, Lc8/hpb;->mImageStrategy:Lc8/GXf;

    invoke-virtual {v1}, Lc8/GXf;->getImageListener()Lc8/FXf;

    move-result-object v1

    iget-object v2, p0, Lc8/hpb;->mUrl:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v4, v3}, Lc8/FXf;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    .line 250
    :cond_2
    iget-object v1, p0, Lc8/hpb;->phenixTracker:Lc8/sxb;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lc8/hpb;->phenixTracker:Lc8/sxb;

    invoke-virtual {v1, p1}, Lc8/sxb;->onFail(Lc8/pxf;)V

    goto :goto_0
.end method

.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 226
    check-cast p1, Lc8/pxf;

    invoke-virtual {p0, p1}, Lc8/hpb;->onHappen(Lc8/pxf;)Z

    move-result v0

    return v0
.end method
