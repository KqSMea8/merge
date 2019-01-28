.class public Lc8/ro;
.super Lc8/jt;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ListMenuDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/vo;


# direct methods
.method public constructor <init>(Lc8/vo;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2117
    iput-object p1, p0, Lc8/ro;->this$0:Lc8/vo;

    .line 2118
    invoke-direct {p0, p2}, Lc8/jt;-><init>(Landroid/content/Context;)V

    .line 2119
    return-void
.end method

.method private isOutOfBounds(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x5

    .line 2147
    if-lt p1, v0, :cond_0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lc8/ro;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lc8/ro;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 2123
    iget-object v0, p0, Lc8/ro;->this$0:Lc8/vo;

    invoke-virtual {v0, p1}, Lc8/vo;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2124
    invoke-super {p0, p1}, Lc8/jt;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2130
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 2131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2132
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2133
    .local v2, "y":I
    invoke-direct {p0, v1, v2}, Lc8/ro;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2134
    iget-object v3, p0, Lc8/ro;->this$0:Lc8/vo;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lc8/vo;->closePanel(I)V

    .line 2135
    const/4 v3, 0x1

    .line 2138
    .end local v1    # "x":I
    .end local v2    # "y":I
    :goto_0
    return v3

    :cond_0
    invoke-super {p0, p1}, Lc8/jt;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 2143
    invoke-virtual {p0}, Lc8/ro;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lc8/kp;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ro;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2144
    return-void
.end method
