.class public Lc8/yZb;
.super Ljava/lang/Object;
.source "Window.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/IZb;->getSystemDecorations()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/IZb;

.field final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lc8/IZb;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lc8/yZb;->this$0:Lc8/IZb;

    iput-object p2, p0, Lc8/yZb;->val$icon:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 352
    iget-object v1, p0, Lc8/yZb;->this$0:Lc8/IZb;

    invoke-static {v1}, Lc8/IZb;->access$000(Lc8/IZb;)Lc8/uZb;

    move-result-object v1

    iget-object v2, p0, Lc8/yZb;->this$0:Lc8/IZb;

    iget v2, v2, Lc8/IZb;->id:I

    invoke-virtual {v1, v2}, Lc8/uZb;->getDropDown(I)Landroid/widget/PopupWindow;

    move-result-object v0

    .line 353
    .local v0, "dropDown":Landroid/widget/PopupWindow;
    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lc8/yZb;->val$icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 356
    :cond_0
    return-void
.end method
