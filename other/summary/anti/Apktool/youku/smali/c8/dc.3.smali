.class public Lc8/dc;
.super Ljava/lang/Object;
.source "ScrimInsetsFrameLayout.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ec;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/ec;


# direct methods
.method constructor <init>(Lc8/ec;)V
    .locals 0
    .param p1, "this$0"    # Lc8/ec;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/dc;->this$0:Lc8/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 70
    iget-object v0, p0, Lc8/dc;->this$0:Lc8/ec;

    iget-object v0, v0, Lc8/ec;->mInsets:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lc8/dc;->this$0:Lc8/ec;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lc8/ec;->mInsets:Landroid/graphics/Rect;

    .line 73
    :cond_0
    iget-object v0, p0, Lc8/dc;->this$0:Lc8/ec;

    iget-object v0, v0, Lc8/ec;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    .line 74
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    .line 75
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    .line 76
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v4

    .line 73
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 77
    iget-object v0, p0, Lc8/dc;->this$0:Lc8/ec;

    invoke-virtual {v0, p2}, Lc8/ec;->onInsetsChanged(Landroid/support/v4/view/WindowInsetsCompat;)V

    .line 78
    iget-object v1, p0, Lc8/dc;->this$0:Lc8/ec;

    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->hasSystemWindowInsets()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/dc;->this$0:Lc8/ec;

    iget-object v0, v0, Lc8/ec;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lc8/ec;->setWillNotDraw(Z)V

    .line 79
    iget-object v0, p0, Lc8/dc;->this$0:Lc8/ec;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 80
    invoke-virtual {p2}, Landroid/support/v4/view/WindowInsetsCompat;->consumeSystemWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
