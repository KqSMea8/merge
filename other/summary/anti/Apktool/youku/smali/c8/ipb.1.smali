.class public Lc8/ipb;
.super Ljava/lang/Object;
.source "WXImgLoaderAdapter.java"

# interfaces
.implements Lc8/zyb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jpb;->onHappen(Lc8/wxf;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jpb;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$mImageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lc8/jpb;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jpb;

    .prologue
    .line 189
    iput-object p1, p0, Lc8/ipb;->this$0:Lc8/jpb;

    iput-object p2, p0, Lc8/ipb;->val$mImageView:Landroid/widget/ImageView;

    iput-object p3, p0, Lc8/ipb;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlurComplete(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 193
    :try_start_0
    iget-object v2, p0, Lc8/ipb;->val$mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lc8/ipb;->val$mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lc8/ipb;->val$mImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lc8/ipb;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 198
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e2":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/xgg;->e(Ljava/lang/String;)V

    goto :goto_0
.end method
