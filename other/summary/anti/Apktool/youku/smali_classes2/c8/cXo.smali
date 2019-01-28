.class public Lc8/cXo;
.super Ljava/lang/Object;
.source "RichTextDomObject.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/dXo;->getDrawable(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
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
.field final synthetic this$1:Lc8/dXo;

.field final synthetic val$richTextDrawable:Lc8/fXo;


# direct methods
.method constructor <init>(Lc8/dXo;Lc8/fXo;)V
    .locals 0
    .param p1, "this$1"    # Lc8/dXo;

    .prologue
    .line 432
    iput-object p1, p0, Lc8/cXo;->this$1:Lc8/dXo;

    iput-object p2, p0, Lc8/cXo;->val$richTextDrawable:Lc8/fXo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 432
    check-cast p1, Lc8/wxf;

    invoke-virtual {p0, p1}, Lc8/cXo;->onHappen(Lc8/wxf;)Z

    move-result v0

    return v0
.end method

.method public onHappen(Lc8/wxf;)Z
    .locals 2
    .param p1, "event"    # Lc8/wxf;

    .prologue
    .line 435
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lc8/wxf;->isIntermediate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 436
    invoke-virtual {p1}, Lc8/wxf;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 437
    .local v0, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v1, p0, Lc8/cXo;->val$richTextDrawable:Lc8/fXo;

    invoke-virtual {v1, v0}, Lc8/fXo;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 439
    .end local v0    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
