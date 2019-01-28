.class public final Lc8/Mbp;
.super Ljava/lang/Object;
.source "YoukuPopupHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fixPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 6
    .param p0, "window"    # Landroid/widget/PopupWindow;

    .prologue
    .line 70
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    .line 72
    :try_start_0
    const-class v4, Landroid/widget/PopupWindow;

    const-string/jumbo v5, "mAnchor"

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 74
    .local v0, "mAnchorField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    const-class v4, Landroid/widget/PopupWindow;

    const-string/jumbo v5, "mOnScrollChangedListener"

    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 77
    .local v2, "mOnScrollChangedListenerField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 82
    .local v1, "mOnScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    new-instance v3, Lc8/Lbp;

    invoke-direct {v3, v0, p0, v1}, Lc8/Lbp;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 101
    .local v3, "newListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    invoke-static {v2, p0, v3}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "mAnchorField":Ljava/lang/reflect/Field;
    .end local v1    # "mOnScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .end local v2    # "mOnScrollChangedListenerField":Ljava/lang/reflect/Field;
    .end local v3    # "newListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static final getPopupPosition(Landroid/view/View;I)[I
    .locals 10
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "gravity"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 111
    new-array v3, v7, [I

    .line 113
    .local v3, "position":[I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 114
    .local v5, "windowWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 116
    .local v4, "windowHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 117
    .local v1, "anchorWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 119
    .local v0, "anchorHeight":I
    new-array v2, v7, [I

    .line 120
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 122
    const/4 v6, 0x3

    and-int/lit8 v7, p1, 0x3

    if-ne v6, v7, :cond_2

    .line 123
    aget v6, v2, v8

    aput v6, v3, v8

    .line 128
    :cond_0
    :goto_0
    const/16 v6, 0x30

    and-int/lit8 v7, p1, 0x30

    if-ne v6, v7, :cond_3

    .line 129
    aget v6, v2, v9

    add-int/2addr v6, v0

    aput v6, v3, v9

    .line 134
    :cond_1
    :goto_1
    return-object v3

    .line 124
    :cond_2
    const/4 v6, 0x5

    and-int/lit8 v7, p1, 0x5

    if-ne v6, v7, :cond_0

    .line 125
    aget v6, v2, v8

    sub-int v6, v5, v6

    sub-int/2addr v6, v1

    aput v6, v3, v8

    goto :goto_0

    .line 130
    :cond_3
    const/16 v6, 0x50

    and-int/lit8 v7, p1, 0x50

    if-ne v6, v7, :cond_1

    .line 131
    aget v6, v2, v9

    sub-int v6, v4, v6

    aput v6, v3, v9

    goto :goto_1
.end method

.method public static final newPopInstance(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x2

    .line 28
    invoke-static {p0, v0, v0}, Lc8/Mbp;->newPopInstance(Landroid/content/Context;II)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static final newPopInstance(Landroid/content/Context;II)Landroid/widget/PopupWindow;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 35
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 37
    .local v0, "pop":Landroid/widget/PopupWindow;
    invoke-static {v0}, Lc8/Mbp;->fixPopupWindow(Landroid/widget/PopupWindow;)V

    .line 39
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 40
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 46
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 47
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    new-instance v1, Lc8/Kbp;

    invoke-direct {v1, v0}, Lc8/Kbp;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 60
    return-object v0
.end method
