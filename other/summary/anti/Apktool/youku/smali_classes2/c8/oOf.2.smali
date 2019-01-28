.class public Lc8/oOf;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tOf;->placeBgResImage(I)V
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
.field final synthetic this$0:Lc8/tOf;


# direct methods
.method constructor <init>(Lc8/tOf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/tOf;

    .prologue
    .line 565
    iput-object p1, p0, Lc8/oOf;->this$0:Lc8/tOf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 565
    check-cast p1, Lc8/wxf;

    invoke-virtual {p0, p1}, Lc8/oOf;->onHappen(Lc8/wxf;)Z

    move-result v0

    return v0
.end method

.method public onHappen(Lc8/wxf;)Z
    .locals 4
    .param p1, "event"    # Lc8/wxf;

    .prologue
    .line 570
    iget-object v3, p0, Lc8/oOf;->this$0:Lc8/tOf;

    invoke-virtual {v3}, Lc8/tOf;->getHost()Landroid/widget/ImageView;

    move-result-object v2

    .local v2, "view":Landroid/widget/ImageView;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    check-cast v0, Lc8/Yvf;

    .local v0, "drawable":Lc8/Yvf;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lc8/Yvf;->convert2NinePatchDrawable()Landroid/graphics/drawable/NinePatchDrawable;

    move-result-object v1

    .line 572
    .local v1, "nineDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    if-eqz v1, :cond_1

    .end local v1    # "nineDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 574
    .end local v0    # "drawable":Lc8/Yvf;
    :cond_0
    const/4 v3, 0x0

    return v3

    .restart local v0    # "drawable":Lc8/Yvf;
    .restart local v1    # "nineDrawable":Landroid/graphics/drawable/NinePatchDrawable;
    :cond_1
    move-object v1, v0

    .line 572
    goto :goto_0
.end method
