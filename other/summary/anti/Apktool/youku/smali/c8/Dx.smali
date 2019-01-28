.class public Lc8/Dx;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Lc8/lv;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mx;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Mx;


# direct methods
.method constructor <init>(Lc8/Mx;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Mx;

    .prologue
    .line 1265
    iput-object p1, p0, Lc8/Dx;->this$0:Lc8/Mx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .locals 3
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 1268
    iget-object v1, p0, Lc8/Dx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mOverdrawChild:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1279
    .end local p2    # "i":I
    :cond_0
    :goto_0
    return p2

    .line 1271
    .restart local p2    # "i":I
    :cond_1
    iget-object v1, p0, Lc8/Dx;->this$0:Lc8/Mx;

    iget v0, v1, Lc8/Mx;->mOverdrawChildPosition:I

    .line 1272
    .local v0, "childPosition":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1273
    iget-object v1, p0, Lc8/Dx;->this$0:Lc8/Mx;

    iget-object v1, v1, Lc8/Mx;->mRecyclerView:Lc8/Rv;

    iget-object v2, p0, Lc8/Dx;->this$0:Lc8/Mx;

    iget-object v2, v2, Lc8/Mx;->mOverdrawChild:Landroid/view/View;

    invoke-virtual {v1, v2}, Lc8/Rv;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1274
    iget-object v1, p0, Lc8/Dx;->this$0:Lc8/Mx;

    iput v0, v1, Lc8/Mx;->mOverdrawChildPosition:I

    .line 1276
    :cond_2
    add-int/lit8 v1, p1, -0x1

    if-ne p2, v1, :cond_3

    move p2, v0

    .line 1277
    goto :goto_0

    .line 1279
    :cond_3
    if-lt p2, v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
