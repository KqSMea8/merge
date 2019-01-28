.class public abstract Lc8/Td;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Sd;
    }
.end annotation


# static fields
.field static final ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field static final ANIM_STATE_HIDING:I = 0x1

.field static final ANIM_STATE_NONE:I = 0x0

.field static final ANIM_STATE_SHOWING:I = 0x2

.field static final EMPTY_STATE_SET:[I

.field static final ENABLED_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ANIM_DELAY:J = 0x64L

.field static final PRESSED_ANIM_DURATION:J = 0x64L

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field mAnimState:I

.field final mAnimatorCreator:Lc8/af;

.field mBorderDrawable:Lc8/hd;

.field mContentBackground:Landroid/graphics/drawable/Drawable;

.field mElevation:F

.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mPressedTranslationZ:F

.field mRippleDrawable:Landroid/graphics/drawable/Drawable;

.field final mShadowViewDelegate:Lc8/ge;

.field mShapeDrawable:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field final mView:Lc8/uf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 35
    sget-object v0, Lc8/jc;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    sput-object v0, Lc8/Td;->ANIM_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 60
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lc8/Td;->PRESSED_ENABLED_STATE_SET:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lc8/Td;->FOCUSED_ENABLED_STATE_SET:[I

    .line 64
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x101009e

    aput v1, v0, v2

    sput-object v0, Lc8/Td;->ENABLED_STATE_SET:[I

    .line 65
    new-array v0, v2, [I

    sput-object v0, Lc8/Td;->EMPTY_STATE_SET:[I

    return-void

    .line 60
    .line 62
    nop

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lc8/uf;Lc8/ge;Lc8/af;)V
    .locals 1
    .param p1, "view"    # Lc8/uf;
    .param p2, "shadowViewDelegate"    # Lc8/ge;
    .param p3, "animatorCreator"    # Lc8/af;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lc8/Td;->mAnimState:I

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/Td;->mTmpRect:Landroid/graphics/Rect;

    .line 76
    iput-object p1, p0, Lc8/Td;->mView:Lc8/uf;

    .line 77
    iput-object p2, p0, Lc8/Td;->mShadowViewDelegate:Lc8/ge;

    .line 78
    iput-object p3, p0, Lc8/Td;->mAnimatorCreator:Lc8/af;

    .line 79
    return-void
.end method

.method private ensurePreDrawListener()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lc8/Td;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lc8/Rd;

    invoke-direct {v0, p0}, Lc8/Rd;-><init>(Lc8/Td;)V

    iput-object v0, p0, Lc8/Td;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 181
    :cond_0
    return-void
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Lc8/hd;
    .locals 6
    .param p1, "borderWidth"    # I
    .param p2, "backgroundTint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 152
    iget-object v2, p0, Lc8/Td;->mView:Lc8/uf;

    invoke-virtual {v2}, Lc8/uf;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 153
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lc8/Td;->newCircularDrawable()Lc8/hd;

    move-result-object v0

    .line 154
    .local v0, "borderDrawable":Lc8/hd;
    sget v2, Lcom/youku/phone/R$color;->design_fab_stroke_top_outer_color:I

    .line 155
    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget v3, Lcom/youku/phone/R$color;->design_fab_stroke_top_inner_color:I

    .line 156
    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    sget v4, Lcom/youku/phone/R$color;->design_fab_stroke_end_inner_color:I

    .line 157
    invoke-static {v1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/youku/phone/R$color;->design_fab_stroke_end_outer_color:I

    .line 158
    invoke-static {v1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    .line 154
    invoke-virtual {v0, v2, v3, v4, v5}, Lc8/hd;->setGradientColors(IIII)V

    .line 159
    int-to-float v2, p1

    invoke-virtual {v0, v2}, Lc8/hd;->setBorderWidth(F)V

    .line 160
    invoke-virtual {v0, p2}, Lc8/hd;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 161
    return-object v0
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 2

    .prologue
    .line 184
    invoke-virtual {p0}, Lc8/Td;->newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 185
    .local v0, "d":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 186
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 187
    return-object v0
.end method

.method final getContentBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/Td;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method abstract getElevation()F
.end method

.method abstract getPadding(Landroid/graphics/Rect;)V
.end method

.method abstract hide(Lc8/Sd;Z)V
    .param p1    # Lc8/Sd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method isOrWillBeHidden()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 205
    iget-object v2, p0, Lc8/Td;->mView:Lc8/uf;

    invoke-virtual {v2}, Lc8/uf;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 207
    iget v2, p0, Lc8/Td;->mAnimState:I

    if-ne v2, v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0

    .line 210
    :cond_2
    iget v2, p0, Lc8/Td;->mAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method isOrWillBeShown()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 195
    iget-object v2, p0, Lc8/Td;->mView:Lc8/uf;

    invoke-virtual {v2}, Lc8/uf;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    .line 197
    iget v2, p0, Lc8/Td;->mAnimState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :cond_2
    iget v2, p0, Lc8/Td;->mAnimState:I

    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method abstract jumpDrawableToCurrentState()V
.end method

.method newCircularDrawable()Lc8/hd;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lc8/hd;

    invoke-direct {v0}, Lc8/hd;-><init>()V

    return-object v0
.end method

.method newGradientDrawableForShape()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    return-object v0
.end method

.method onAttachedToWindow()V
    .locals 2

    .prologue
    .line 134
    invoke-virtual {p0}, Lc8/Td;->requirePreDrawListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lc8/Td;->ensurePreDrawListener()V

    .line 136
    iget-object v0, p0, Lc8/Td;->mView:Lc8/uf;

    invoke-virtual {v0}, Lc8/uf;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lc8/Td;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method abstract onCompatShadowChanged()V
.end method

.method onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lc8/Td;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lc8/Td;->mView:Lc8/uf;

    invoke-virtual {v0}, Lc8/uf;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lc8/Td;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Td;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 145
    :cond_0
    return-void
.end method

.method abstract onDrawableStateChanged([I)V
.end method

.method abstract onElevationsChanged(FF)V
.end method

.method onPaddingUpdated(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 131
    return-void
.end method

.method onPreDraw()V
    .locals 0

    .prologue
    .line 169
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method abstract setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract setBackgroundTintList(Landroid/content/res/ColorStateList;)V
.end method

.method abstract setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method final setElevation(F)V
    .locals 1
    .param p1, "elevation"    # F

    .prologue
    .line 91
    iget v0, p0, Lc8/Td;->mElevation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 92
    iput p1, p0, Lc8/Td;->mElevation:F

    .line 93
    iget v0, p0, Lc8/Td;->mPressedTranslationZ:F

    invoke-virtual {p0, p1, v0}, Lc8/Td;->onElevationsChanged(FF)V

    .line 95
    :cond_0
    return-void
.end method

.method final setPressedTranslationZ(F)V
    .locals 1
    .param p1, "translationZ"    # F

    .prologue
    .line 100
    iget v0, p0, Lc8/Td;->mPressedTranslationZ:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 101
    iput p1, p0, Lc8/Td;->mPressedTranslationZ:F

    .line 102
    iget v0, p0, Lc8/Td;->mElevation:F

    invoke-virtual {p0, v0, p1}, Lc8/Td;->onElevationsChanged(FF)V

    .line 104
    :cond_0
    return-void
.end method

.method abstract setRippleColor(I)V
.end method

.method abstract show(Lc8/Sd;Z)V
    .param p1    # Lc8/Sd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method final updatePadding()V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lc8/Td;->mTmpRect:Landroid/graphics/Rect;

    .line 124
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lc8/Td;->getPadding(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual {p0, v0}, Lc8/Td;->onPaddingUpdated(Landroid/graphics/Rect;)V

    .line 126
    iget-object v1, p0, Lc8/Td;->mShadowViewDelegate:Lc8/ge;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, v5}, Lc8/ge;->setShadowPadding(IIII)V

    .line 127
    return-void
.end method
