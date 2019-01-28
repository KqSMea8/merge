.class public Lc8/obg;
.super Landroid/graphics/drawable/RippleDrawable;
.source "WXComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/tbg;->prepareBackgroundRipple()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/tbg;


# direct methods
.method constructor <init>(Lc8/tbg;Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/res/ColorStateList;
    .param p3, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p4, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1375
    .local p0, "this":Lc8/obg;, "Lcom/taobao/weex/ui/component/WXComponent.5;"
    iput-object p1, p0, Lc8/obg;->this$0:Lc8/tbg;

    invoke-direct {p0, p2, p3, p4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .local p0, "this":Lc8/obg;, "Lcom/taobao/weex/ui/component/WXComponent.5;"
    const/4 v5, 0x0

    .line 1378
    iget-object v1, p0, Lc8/obg;->this$0:Lc8/tbg;

    invoke-static {v1}, Lc8/tbg;->access$500(Lc8/tbg;)Lc8/Ieg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1379
    iget-object v1, p0, Lc8/obg;->this$0:Lc8/tbg;

    invoke-static {v1}, Lc8/tbg;->access$500(Lc8/tbg;)Lc8/Ieg;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Lc8/Ieg;->getContentPath(Landroid/graphics/RectF;)Landroid/graphics/Path;

    move-result-object v0

    .line 1380
    .local v0, "border":Landroid/graphics/Path;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1382
    .end local v0    # "border":Landroid/graphics/Path;
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1383
    return-void
.end method
