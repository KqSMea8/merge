.class public Lc8/Vob;
.super Ljava/lang/Object;
.source "PhenixBasedDrawableLoader.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Wob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrawableLoadSuccess"
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
.field private mDrawableTarget:Lc8/yVf;


# direct methods
.method constructor <init>(Lc8/yVf;)V
    .locals 0
    .param p1, "drawableTarget"    # Lc8/yVf;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lc8/Vob;->mDrawableTarget:Lc8/yVf;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lc8/wxf;

    invoke-virtual {p0, p1}, Lc8/Vob;->onHappen(Lc8/wxf;)Z

    move-result v0

    return v0
.end method

.method public onHappen(Lc8/wxf;)Z
    .locals 3
    .param p1, "succPhenixEvent"    # Lc8/wxf;

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .local v0, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lc8/wxf;->isIntermediate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setGravity(I)V

    .line 51
    iget-object v1, p0, Lc8/Vob;->mDrawableTarget:Lc8/yVf;

    instance-of v1, v1, Lc8/zVf;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lc8/Vob;->mDrawableTarget:Lc8/yVf;

    check-cast v1, Lc8/zVf;

    invoke-interface {v1, v0, v2}, Lc8/zVf;->setDrawable(Landroid/graphics/drawable/Drawable;Z)V

    .line 55
    :cond_0
    return v2
.end method
