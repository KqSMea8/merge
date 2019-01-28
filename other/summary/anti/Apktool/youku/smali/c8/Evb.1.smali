.class public Lc8/Evb;
.super Ljava/lang/Object;
.source "Elevator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ivb;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ivb;

.field final synthetic val$location:[I


# direct methods
.method constructor <init>(Lc8/Ivb;[I)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ivb;

    .prologue
    .line 227
    iput-object p1, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    iput-object p2, p0, Lc8/Evb;->val$location:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 232
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$500(Lc8/Ivb;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 233
    iget-object v4, p0, Lc8/Evb;->val$location:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 235
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$500(Lc8/Ivb;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$600(Lc8/Ivb;)V

    .line 257
    :goto_0
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$400(Lc8/Ivb;)Lc8/Hvb;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 258
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$400(Lc8/Ivb;)Lc8/Hvb;

    move-result-object v4

    invoke-interface {v4}, Lc8/Hvb;->changed()V

    .line 260
    :cond_0
    return-void

    .line 238
    :cond_1
    new-array v3, v8, [I

    .line 239
    .local v3, "stickyViewP":[I
    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 240
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 241
    .local v2, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 243
    aget v4, v3, v6

    iget-object v5, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v5}, Lc8/Ivb;->access$900(Lc8/Ivb;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    const/high16 v5, 0x423a0000    # 46.5f

    invoke-static {v5}, Lc8/Jgg;->dip2px(F)I

    move-result v5

    sub-int v1, v4, v5

    .line 245
    .local v1, "offsetY":I
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v4, v5, :cond_3

    .line 246
    new-array v0, v8, [I

    .line 247
    .local v0, "a":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 248
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$500(Lc8/Ivb;)Landroid/widget/PopupWindow;

    move-result-object v5

    if-gez v1, :cond_2

    neg-int v4, v1

    aget v6, v0, v6

    add-int/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    :goto_1
    invoke-virtual {v5, p1, v7, v7, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 255
    .end local v0    # "a":[I
    :goto_2
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$1000(Lc8/Ivb;)V

    goto :goto_0

    .line 248
    .restart local v0    # "a":[I
    :cond_2
    aget v4, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_1

    .line 250
    .end local v0    # "a":[I
    :cond_3
    iget-object v4, p0, Lc8/Evb;->this$0:Lc8/Ivb;

    invoke-static {v4}, Lc8/Ivb;->access$500(Lc8/Ivb;)Landroid/widget/PopupWindow;

    move-result-object v4

    invoke-virtual {v4, p1, v7, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_2
.end method
