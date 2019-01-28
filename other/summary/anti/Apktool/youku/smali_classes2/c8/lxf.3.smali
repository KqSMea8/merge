.class public Lc8/lxf;
.super Ljava/lang/Object;
.source "PhenixCreator.java"

# interfaces
.implements Lc8/qxf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mxf;->fetchInto(Landroid/widget/ImageView;)Lc8/nxf;
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
        "Lc8/pxf;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mxf;


# direct methods
.method constructor <init>(Lc8/mxf;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mxf;

    .prologue
    .line 368
    iput-object p1, p0, Lc8/lxf;->this$0:Lc8/mxf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lc8/pxf;)Z
    .locals 2
    .param p1, "event"    # Lc8/pxf;

    .prologue
    .line 371
    iget-object v1, p0, Lc8/lxf;->this$0:Lc8/mxf;

    invoke-static {v1}, Lc8/mxf;->access$000(Lc8/mxf;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/lxf;->this$0:Lc8/mxf;

    invoke-static {v1}, Lc8/mxf;->access$000(Lc8/mxf;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    if-nez v0, :cond_1

    .line 372
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    const/4 v1, 0x0

    .line 379
    :goto_0
    return v1

    .line 374
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    iget-object v1, p0, Lc8/lxf;->this$0:Lc8/mxf;

    invoke-static {v1}, Lc8/mxf;->access$300(Lc8/mxf;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 375
    iget-object v1, p0, Lc8/lxf;->this$0:Lc8/mxf;

    invoke-static {v1}, Lc8/mxf;->access$300(Lc8/mxf;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 376
    :cond_3
    iget-object v1, p0, Lc8/lxf;->this$0:Lc8/mxf;

    invoke-static {v1}, Lc8/mxf;->access$400(Lc8/mxf;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lc8/lxf;->this$0:Lc8/mxf;

    invoke-static {v1}, Lc8/mxf;->access$400(Lc8/mxf;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public bridge synthetic onHappen(Lc8/txf;)Z
    .locals 1

    .prologue
    .line 368
    check-cast p1, Lc8/pxf;

    invoke-virtual {p0, p1}, Lc8/lxf;->onHappen(Lc8/pxf;)Z

    move-result v0

    return v0
.end method
