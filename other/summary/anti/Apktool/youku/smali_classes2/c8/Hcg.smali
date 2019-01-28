.class public final Lc8/Hcg;
.super Ljava/lang/Object;
.source "SoftKeyboardDetector.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Lcg;->registerKeyboardEventListener(Landroid/app/Activity;Lc8/Jcg;)Lc8/Kcg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final threshold:I

.field final synthetic val$activityRoot:Landroid/view/View;

.field final synthetic val$listener:Lc8/Jcg;

.field private final visibleFrame:Landroid/graphics/Rect;

.field private wasKeyboardOpened:Z


# direct methods
.method constructor <init>(Landroid/view/View;Lc8/Jcg;)V
    .locals 1

    .prologue
    .line 67
    iput-object p1, p0, Lc8/Hcg;->val$activityRoot:Landroid/view/View;

    iput-object p2, p0, Lc8/Hcg;->val$listener:Lc8/Jcg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/Hcg;->visibleFrame:Landroid/graphics/Rect;

    .line 70
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-static {v0}, Lc8/Jgg;->dip2px(F)I

    move-result v0

    iput v0, p0, Lc8/Hcg;->threshold:I

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Hcg;->wasKeyboardOpened:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 75
    iget-object v2, p0, Lc8/Hcg;->val$activityRoot:Landroid/view/View;

    iget-object v3, p0, Lc8/Hcg;->visibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 76
    iget-object v2, p0, Lc8/Hcg;->val$activityRoot:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lc8/Hcg;->visibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int v0, v2, v3

    .line 77
    .local v0, "heightDiff":I
    iget v2, p0, Lc8/Hcg;->threshold:I

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    .line 78
    .local v1, "isOpen":Z
    :goto_0
    iget-boolean v2, p0, Lc8/Hcg;->wasKeyboardOpened:Z

    if-ne v1, v2, :cond_1

    .line 84
    :goto_1
    return-void

    .line 77
    .end local v1    # "isOpen":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 82
    .restart local v1    # "isOpen":Z
    :cond_1
    iput-boolean v1, p0, Lc8/Hcg;->wasKeyboardOpened:Z

    .line 83
    iget-object v2, p0, Lc8/Hcg;->val$listener:Lc8/Jcg;

    invoke-interface {v2, v1}, Lc8/Jcg;->onKeyboardEvent(Z)V

    goto :goto_1
.end method
