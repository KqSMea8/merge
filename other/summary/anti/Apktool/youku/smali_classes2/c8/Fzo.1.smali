.class public final Lc8/Fzo;
.super Ljava/lang/Object;
.source "YoukuUIUtil.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Mzo;->setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$mTouchDelegateGroup:Lc8/Oap;

.field final synthetic val$parent:Landroid/view/View;

.field final synthetic val$right:I

.field final synthetic val$top:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;IIIILandroid/view/View;Lc8/Oap;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lc8/Fzo;->val$view:Landroid/view/View;

    iput p2, p0, Lc8/Fzo;->val$top:I

    iput p3, p0, Lc8/Fzo;->val$bottom:I

    iput p4, p0, Lc8/Fzo;->val$left:I

    iput p5, p0, Lc8/Fzo;->val$right:I

    iput-object p6, p0, Lc8/Fzo;->val$parent:Landroid/view/View;

    iput-object p7, p0, Lc8/Fzo;->val$mTouchDelegateGroup:Lc8/Oap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 103
    .local v1, "delegateArea":Landroid/graphics/Rect;
    iget-object v0, p0, Lc8/Fzo;->val$view:Landroid/view/View;

    .line 104
    .local v0, "delegate":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 105
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lc8/Fzo;->val$top:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 106
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lc8/Fzo;->val$bottom:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 107
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lc8/Fzo;->val$left:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 108
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lc8/Fzo;->val$right:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 109
    new-instance v2, Landroid/view/TouchDelegate;

    invoke-direct {v2, v1, v0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 112
    .local v2, "expandedArea":Landroid/view/TouchDelegate;
    const-class v3, Landroid/view/View;

    iget-object v4, p0, Lc8/Fzo;->val$parent:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lc8/Fzo;->val$mTouchDelegateGroup:Lc8/Oap;

    invoke-virtual {v3, v2}, Lc8/Oap;->addTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 117
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 118
    iget-object v3, p0, Lc8/Fzo;->val$parent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    iget-object v3, p0, Lc8/Fzo;->val$parent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
