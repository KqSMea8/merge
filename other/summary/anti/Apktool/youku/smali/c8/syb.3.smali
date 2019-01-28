.class public Lc8/syb;
.super Ljava/lang/Object;
.source "AliWXActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private mActivityA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAnimationing:Z

.field private mPreView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$000(Lc8/syb;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lc8/syb;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/syb;->mPreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lc8/syb;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lc8/syb;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lc8/syb;->destoryPreTransformView(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lc8/syb;Landroid/app/Activity;Landroid/view/View;Landroid/view/View;ZJLandroid/animation/Animator$AnimatorListener;)Z
    .locals 1
    .param p0, "x0"    # Lc8/syb;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Z
    .param p5, "x5"    # J
    .param p7, "x6"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 28
    invoke-direct/range {p0 .. p7}, Lc8/syb;->transform3D(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;ZJLandroid/animation/Animator$AnimatorListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lc8/syb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/syb;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lc8/syb;->mIsAnimationing:Z

    return p1
.end method

.method private createBitmapByActivityRootView(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 163
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 164
    .local v3, "decorView":Landroid/view/View;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 166
    const/4 v8, 0x1

    .line 167
    .local v8, "hasSystemBar":Z
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x10

    if-lt v13, v14, :cond_0

    .line 168
    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v11

    .line 169
    .local v11, "systemUiVisibility":I
    and-int/lit8 v13, v11, 0x4

    const/4 v14, 0x4

    if-eq v13, v14, :cond_2

    const/4 v8, 0x1

    .line 171
    .end local v11    # "systemUiVisibility":I
    :cond_0
    :goto_0
    const/4 v6, 0x1

    .line 172
    .local v6, "hasActionBar":Z
    const/4 v1, 0x0

    .line 174
    .local v1, "actionBarHeight":I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 175
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActionBar;->isShowing()Z

    move-result v6

    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/ActionBar;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 196
    .end local p1    # "activity":Landroid/app/Activity;
    :cond_1
    :goto_1
    const/4 v13, 0x1

    :try_start_2
    invoke-virtual {v3, v13}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 197
    invoke-virtual {v3}, Landroid/view/View;->buildDrawingCache()V

    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v9

    .line 199
    .local v9, "source":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v5, "frame":Landroid/graphics/Rect;
    invoke-virtual {v3, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 201
    iget v10, v5, Landroid/graphics/Rect;->top:I

    .line 203
    .local v10, "statusBarHeight":I
    if-eqz v8, :cond_5

    .end local v10    # "statusBarHeight":I
    :goto_2
    if-eqz v6, :cond_6

    .end local v1    # "actionBarHeight":I
    :goto_3
    add-int v12, v10, v1

    .line 204
    .local v12, "topHeight":I
    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    sub-int/2addr v15, v12

    invoke-static {v9, v13, v12, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 210
    .end local v3    # "decorView":Landroid/view/View;
    .end local v5    # "frame":Landroid/graphics/Rect;
    .end local v6    # "hasActionBar":Z
    .end local v8    # "hasSystemBar":Z
    .end local v9    # "source":Landroid/graphics/Bitmap;
    .end local v12    # "topHeight":I
    :goto_4
    return-object v13

    .line 169
    .restart local v3    # "decorView":Landroid/view/View;
    .restart local v8    # "hasSystemBar":Z
    .restart local v11    # "systemUiVisibility":I
    .restart local p1    # "activity":Landroid/app/Activity;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 178
    .end local v11    # "systemUiVisibility":I
    .restart local v1    # "actionBarHeight":I
    .restart local v6    # "hasActionBar":Z
    :cond_3
    const/4 v7, 0x0

    .line 180
    .local v7, "hasAppCompatActivity":Z
    :try_start_3
    const-string/jumbo v13, "android.support.v7.app.AppCompatActivity"

    invoke-static {v13}, Lc8/syb;->_1forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 181
    const/4 v7, 0x1

    .line 185
    :goto_5
    if-eqz v7, :cond_1

    :try_start_4
    move-object/from16 v0, p1

    instance-of v13, v0, Lc8/Qn;

    if-eqz v13, :cond_1

    .line 186
    check-cast p1, Lc8/Qn;

    .end local p1    # "activity":Landroid/app/Activity;
    invoke-virtual/range {p1 .. p1}, Lc8/Qn;->getSupportActionBar()Lc8/mn;

    move-result-object v2

    .line 187
    .local v2, "actionbar":Lc8/mn;
    if-eqz v2, :cond_1

    .line 188
    invoke-virtual {v2}, Lc8/mn;->isShowing()Z

    move-result v6

    .line 189
    invoke-virtual {v2}, Lc8/mn;->getHeight()I

    move-result v1

    goto :goto_1

    .line 182
    .end local v2    # "actionbar":Lc8/mn;
    .restart local p1    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v4

    .line 183
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 193
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "hasAppCompatActivity":Z
    .end local p1    # "activity":Landroid/app/Activity;
    :catch_1
    move-exception v4

    .line 194
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 207
    .end local v1    # "actionBarHeight":I
    .end local v3    # "decorView":Landroid/view/View;
    .end local v4    # "e":Ljava/lang/Throwable;
    .end local v6    # "hasActionBar":Z
    .end local v8    # "hasSystemBar":Z
    :catch_2
    move-exception v4

    .line 208
    .restart local v4    # "e":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 210
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v13, 0x0

    goto :goto_4

    .line 203
    .restart local v1    # "actionBarHeight":I
    .restart local v3    # "decorView":Landroid/view/View;
    .restart local v5    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "hasActionBar":Z
    .restart local v8    # "hasSystemBar":Z
    .restart local v9    # "source":Landroid/graphics/Bitmap;
    .restart local v10    # "statusBarHeight":I
    :cond_5
    const/4 v10, 0x0

    goto :goto_2

    .end local v10    # "statusBarHeight":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private createPreView(Landroid/app/Activity;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "preImageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 140
    iput-object v0, p0, Lc8/syb;->mPreView:Landroid/view/View;

    .line 141
    return-void
.end method

.method private destoryPreTransformView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "preView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 126
    if-eqz p2, :cond_0

    .line 127
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 130
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 133
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iput-object v2, p0, Lc8/syb;->mPreView:Landroid/view/View;

    .line 134
    iput-object v2, p0, Lc8/syb;->mActivityB:Ljava/lang/ref/WeakReference;

    .line 135
    return-void
.end method

.method private hasTransform3DParams(Landroid/app/Activity;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 145
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_0

    .line 147
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string/jumbo v5, "wx_options"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    .line 148
    .local v1, "extrOpts":Ljava/io/Serializable;
    instance-of v4, v1, Ljava/util/Map;

    if-eqz v4, :cond_0

    .line 149
    move-object v0, v1

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 150
    .local v2, "opt":Ljava/util/Map;
    const-string/jumbo v4, "transform"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 151
    .local v3, "transform":Ljava/lang/String;
    const-string/jumbo v4, "3d"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 152
    const/4 v4, 0x1

    .line 158
    .end local v1    # "extrOpts":Ljava/io/Serializable;
    .end local v2    # "opt":Ljava/util/Map;
    .end local v3    # "transform":Ljava/lang/String;
    :goto_0
    return v4

    :catch_0
    move-exception v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private transform3D(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;ZJLandroid/animation/Animator$AnimatorListener;)Z
    .locals 21
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fromView"    # Landroid/view/View;
    .param p3, "toView"    # Landroid/view/View;
    .param p4, "reverse"    # Z
    .param p5, "duration"    # J
    .param p7, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/syb;->mIsAnimationing:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 216
    :cond_0
    const/4 v2, 0x0

    .line 291
    :goto_0
    return v2

    .line 220
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/syb;->mIsAnimationing:Z

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v2

    move/from16 v20, v0

    .line 222
    .local v20, "width":F
    if-eqz p4, :cond_2

    const/16 v19, -0x1

    .line 223
    .local v19, "reverseValue":I
    :goto_1
    const-wide/16 v2, 0x3e8

    mul-long v14, p5, v2

    .line 224
    .local v14, "newDuration":J
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPivotX()F

    move-result v6

    .line 225
    .local v6, "originToPivotX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPivotX()F

    move-result v8

    .line 226
    .local v8, "originFromPivotX":F
    if-eqz p4, :cond_3

    move/from16 v2, v20

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 227
    if-eqz p4, :cond_4

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    .line 229
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 230
    .local v11, "linearInterpolator":Landroid/animation/TimeInterpolator;
    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 232
    .local v9, "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    const-string/jumbo v2, "rotationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-float v5, v0

    const/high16 v7, 0x42b40000    # 90.0f

    mul-float/2addr v5, v7

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 233
    .local v13, "newRotate":Landroid/animation/ObjectAnimator;
    invoke-virtual {v13, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 234
    invoke-virtual {v13, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 236
    const-string/jumbo v2, "rotationY"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    move/from16 v0, v19

    neg-int v5, v0

    int-to-float v5, v5

    const/high16 v7, 0x42b40000    # 90.0f

    mul-float/2addr v5, v7

    aput v5, v3, v4

    .line 237
    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v17

    .line 238
    .local v17, "preRotate":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 239
    move-object/from16 v0, v17

    invoke-virtual {v0, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 241
    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-float v5, v0

    mul-float v5, v5, v20

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    .line 242
    .local v16, "newTrans":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 243
    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 245
    const-string/jumbo v2, "translationX"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    move/from16 v0, v19

    neg-int v5, v0

    int-to-float v5, v5

    mul-float v5, v5, v20

    aput v5, v3, v4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 246
    .local v18, "preTrans":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    .line 250
    .local v12, "newAnimator":Landroid/animation/AnimatorSet;
    invoke-virtual {v12, v13}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 251
    new-instance v2, Lc8/ryb;

    move-object/from16 v3, p0

    move-object/from16 v4, p7

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lc8/ryb;-><init>(Lc8/syb;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;FLandroid/view/View;F)V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 284
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 222
    .end local v6    # "originToPivotX":F
    .end local v8    # "originFromPivotX":F
    .end local v9    # "decelerateInterpolator":Landroid/animation/TimeInterpolator;
    .end local v11    # "linearInterpolator":Landroid/animation/TimeInterpolator;
    .end local v12    # "newAnimator":Landroid/animation/AnimatorSet;
    .end local v13    # "newRotate":Landroid/animation/ObjectAnimator;
    .end local v14    # "newDuration":J
    .end local v16    # "newTrans":Landroid/animation/ObjectAnimator;
    .end local v17    # "preRotate":Landroid/animation/ObjectAnimator;
    .end local v18    # "preTrans":Landroid/animation/ObjectAnimator;
    .end local v19    # "reverseValue":I
    :cond_2
    const/16 v19, 0x1

    goto/16 :goto_1

    .line 226
    .restart local v6    # "originToPivotX":F
    .restart local v8    # "originFromPivotX":F
    .restart local v14    # "newDuration":J
    .restart local v19    # "reverseValue":I
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_4
    move/from16 v2, v20

    .line 227
    goto/16 :goto_3

    .line 286
    .end local v6    # "originToPivotX":F
    .end local v8    # "originFromPivotX":F
    .end local v14    # "newDuration":J
    .end local v19    # "reverseValue":I
    .end local v20    # "width":F
    :catch_0
    move-exception v10

    .line 287
    .local v10, "e":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 288
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/syb;->mIsAnimationing:Z

    .line 289
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    iget-object v2, p0, Lc8/syb;->mActivityA:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/syb;->mActivityA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lc8/syb;->mActivityA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 41
    .local v0, "preActivity":Landroid/app/Activity;
    invoke-static {}, Lc8/uyb;->blockTransform3D()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lc8/syb;->hasTransform3DParams(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-direct {p0, v0}, Lc8/syb;->createBitmapByActivityRootView(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 44
    .local v1, "preBitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1, v1}, Lc8/syb;->createPreView(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    .line 47
    .end local v0    # "preActivity":Landroid/app/Activity;
    .end local v1    # "preBitmap":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 123
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 99
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 100
    invoke-static {}, Lc8/uyb;->blockTransform3D()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lc8/syb;->hasTransform3DParams(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lc8/syb;->mActivityB:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {p1, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 103
    iget-object v2, p0, Lc8/syb;->mActivityA:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc8/syb;->mActivityA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lc8/syb;->mActivityA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 105
    .local v0, "activityA":Landroid/app/Activity;
    invoke-direct {p0, p1}, Lc8/syb;->createBitmapByActivityRootView(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0, v1}, Lc8/syb;->createPreView(Landroid/app/Activity;Landroid/graphics/Bitmap;)V

    .line 111
    .end local v0    # "activityA":Landroid/app/Activity;
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lc8/syb;->mActivityA:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 55
    iget-object v5, p0, Lc8/syb;->mPreView:Landroid/view/View;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lc8/syb;->mPreView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_3

    .line 56
    const v5, 0x1020002

    invoke-virtual {p1, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "contentView":Landroid/view/View;
    const/4 v2, 0x0

    .line 58
    .local v2, "currentView":Landroid/view/View;
    if-eqz v0, :cond_1

    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v1, v0

    .line 59
    check-cast v1, Landroid/view/ViewGroup;

    .line 60
    .local v1, "contentViewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 61
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 63
    :cond_0
    iget-object v5, p0, Lc8/syb;->mPreView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 64
    iget-object v5, p0, Lc8/syb;->mPreView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->bringToFront()V

    .line 66
    .end local v1    # "contentViewGroup":Landroid/view/ViewGroup;
    :cond_1
    move-object v3, v2

    .line 67
    .local v3, "currentViewF":Landroid/view/View;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 68
    iget-object v5, p0, Lc8/syb;->mActivityB:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lc8/syb;->mActivityB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    .line 69
    .local v4, "reverse":Z
    :cond_2
    new-instance v5, Lc8/qyb;

    invoke-direct {v5, p0, p1, v3, v4}, Lc8/qyb;-><init>(Lc8/syb;Landroid/app/Activity;Landroid/view/View;Z)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    .end local v0    # "contentView":Landroid/view/View;
    .end local v2    # "currentView":Landroid/view/View;
    .end local v3    # "currentViewF":Landroid/view/View;
    .end local v4    # "reverse":Z
    :cond_3
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 115
    return-void
.end method
