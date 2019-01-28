.class public Lc8/jpb;
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
    name = "WXSucPhenixListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/qxf",
        "<",
        "Lc8/wxf;",
        ">;"
    }
.end annotation


# static fields
.field private static final DRAWABLE_KEY:Ljava/lang/String; = "drawable"


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
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lc8/jpb;->mImageStrategy:Lc8/GXf;

    .line 169
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/jpb;->mImageViewRef:Ljava/lang/ref/WeakReference;

    .line 170
    iput-object p3, p0, Lc8/jpb;->mUrl:Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lc8/jpb;->phenixTracker:Lc8/sxb;

    .line 172
    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 159
    check-cast p1, Lc8/wxf;

    invoke-virtual {p0, p1}, Lc8/jpb;->onHappen(Lc8/wxf;)Z

    move-result v0

    return v0
.end method

.method public onHappen(Lc8/wxf;)Z
    .locals 9
    .param p1, "succPhenixEvent"    # Lc8/wxf;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 177
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lc8/jpb;->mImageViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 178
    .local v2, "mImageView":Landroid/widget/ImageView;
    if-nez v2, :cond_1

    .line 222
    :cond_0
    :goto_0
    return v7

    .line 181
    :cond_1
    if-eqz v0, :cond_2

    .line 182
    instance-of v4, v2, Lc8/teg;

    if-eqz v4, :cond_3

    instance-of v4, v0, Lc8/ivf;

    if-eqz v4, :cond_3

    move-object v4, v2

    .line 183
    check-cast v4, Lc8/teg;

    invoke-virtual {v4, v0, v8}, Lc8/teg;->setImageDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 213
    :goto_1
    invoke-virtual {p1}, Lc8/wxf;->isIntermediate()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lc8/jpb;->mImageStrategy:Lc8/GXf;

    invoke-virtual {v4}, Lc8/GXf;->getImageListener()Lc8/FXf;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 214
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 215
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;"
    const-string/jumbo v4, "drawable"

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v4, p0, Lc8/jpb;->mImageStrategy:Lc8/GXf;

    invoke-virtual {v4}, Lc8/GXf;->getImageListener()Lc8/FXf;

    move-result-object v4

    iget-object v5, p0, Lc8/jpb;->mUrl:Ljava/lang/String;

    invoke-interface {v4, v5, v2, v8, v3}, Lc8/FXf;->onImageFinish(Ljava/lang/String;Landroid/widget/ImageView;ZLjava/util/Map;)V

    .line 219
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable;>;>;"
    :cond_2
    iget-object v4, p0, Lc8/jpb;->phenixTracker:Lc8/sxb;

    if-eqz v4, :cond_0

    .line 220
    iget-object v4, p0, Lc8/jpb;->phenixTracker:Lc8/sxb;

    invoke-virtual {v4, p1}, Lc8/sxb;->onSuccess(Lc8/wxf;)V

    goto :goto_0

    .line 185
    :cond_3
    iget-object v4, p0, Lc8/jpb;->mImageStrategy:Lc8/GXf;

    iget v4, v4, Lc8/GXf;->blurRadius:I

    if-gtz v4, :cond_4

    .line 186
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    move-object v4, v0

    .line 188
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v4, v0

    .line 189
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lc8/jpb;->mImageStrategy:Lc8/GXf;

    iget v5, v5, Lc8/GXf;->blurRadius:I

    new-instance v6, Lc8/ipb;

    invoke-direct {v6, p0, v2, v0}, Lc8/ipb;-><init>(Lc8/jpb;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v4, v5, v6}, Lc8/Ayb;->asyncBlur(Landroid/graphics/Bitmap;ILc8/zyb;)V

    goto :goto_1

    .line 206
    :cond_5
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_1
.end method
