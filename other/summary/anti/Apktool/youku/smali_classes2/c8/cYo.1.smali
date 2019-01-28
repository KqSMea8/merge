.class public Lc8/cYo;
.super Ljava/lang/Object;
.source "ArrowRefreshHeader.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/iYo;->setBgImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
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


# instance fields
.field final synthetic this$0:Lc8/iYo;


# direct methods
.method constructor <init>(Lc8/iYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/iYo;

    .prologue
    .line 140
    iput-object p1, p0, Lc8/cYo;->this$0:Lc8/iYo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 140
    check-cast p1, Lc8/wxf;

    invoke-virtual {p0, p1}, Lc8/cYo;->onHappen(Lc8/wxf;)Z

    move-result v0

    return v0
.end method

.method public onHappen(Lc8/wxf;)Z
    .locals 9
    .param p1, "event"    # Lc8/wxf;

    .prologue
    .line 143
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lc8/wxf;->isIntermediate()Z

    move-result v7

    if-nez v7, :cond_0

    .line 144
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v4

    .line 146
    .local v4, "resource":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 147
    .local v5, "scale":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    .line 148
    .local v1, "dw":I
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v0

    .line 149
    .local v0, "dh":I
    iget-object v7, p0, Lc8/cYo;->this$0:Lc8/iYo;

    iget-object v7, v7, Lc8/iYo;->mBgImage:Lc8/DOf;

    invoke-virtual {v7}, Lc8/DOf;->getWidth()I

    move-result v6

    .line 150
    .local v6, "vw":I
    int-to-float v7, v6

    int-to-float v8, v1

    div-float v3, v7, v8

    .line 151
    .local v3, "ratio":F
    invoke-virtual {v5, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 153
    iget-object v7, p0, Lc8/cYo;->this$0:Lc8/iYo;

    iget-object v7, v7, Lc8/iYo;->mBgImage:Lc8/DOf;

    sget-object v8, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Lc8/DOf;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 154
    iget-object v7, p0, Lc8/cYo;->this$0:Lc8/iYo;

    iget-object v7, v7, Lc8/iYo;->mBgImage:Lc8/DOf;

    invoke-virtual {v7, v5}, Lc8/DOf;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 156
    iget-object v7, p0, Lc8/cYo;->this$0:Lc8/iYo;

    iget-object v7, v7, Lc8/iYo;->mBgImage:Lc8/DOf;

    invoke-virtual {v7}, Lc8/DOf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 157
    .local v2, "params":Landroid/view/ViewGroup$LayoutParams;
    int-to-float v7, v0

    mul-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    iget-object v7, p0, Lc8/cYo;->this$0:Lc8/iYo;

    iget-object v7, v7, Lc8/iYo;->mBgImage:Lc8/DOf;

    invoke-virtual {v7, v2}, Lc8/DOf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v7, p0, Lc8/cYo;->this$0:Lc8/iYo;

    iget-object v7, v7, Lc8/iYo;->mContainer:Landroid/widget/FrameLayout;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 163
    .end local v0    # "dh":I
    .end local v1    # "dw":I
    .end local v2    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "ratio":F
    .end local v4    # "resource":Landroid/graphics/drawable/BitmapDrawable;
    .end local v5    # "scale":Landroid/graphics/Matrix;
    .end local v6    # "vw":I
    :cond_0
    const/4 v7, 0x1

    return v7
.end method
