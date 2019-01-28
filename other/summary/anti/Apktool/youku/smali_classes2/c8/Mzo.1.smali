.class public Lc8/Mzo;
.super Ljava/lang/Object;
.source "YoukuUIUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jzo;,
        Lc8/Kzo;,
        Lc8/Lzo;
    }
.end annotation


# static fields
.field private static DEFAULT_ORIENTATION:I = 0x0

.field public static final TYPEV_VIP_FOUR:I = 0x4

.field public static final TYPE_ACTIVITY_TWO:I = 0x2

.field public static final TYPE_OPERATION_THREE:I = 0x3

.field public static final TYPE_RECOMMEND_SIX:I = 0x6

.field private static s_SystemUiVisibilityOrigin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, -0x1

    sput v0, Lc8/Mzo;->s_SystemUiVisibilityOrigin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
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

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static clearCornerMask(Lc8/aWc;)V
    .locals 1
    .param p0, "view"    # Lc8/aWc;

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc8/aWc;->setMask(Landroid/graphics/drawable/Drawable;)V

    .line 383
    return-void
.end method

.method public static getDeviceDefaultOrientation(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 73
    sget v3, Lc8/Mzo;->DEFAULT_ORIENTATION:I

    if-nez v3, :cond_4

    .line 74
    const-string/jumbo v3, "window"

    .line 75
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 76
    .local v2, "windowManager":Landroid/view/WindowManager;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 77
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 78
    .local v1, "rotation":I
    if-eqz v1, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v5, :cond_3

    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_5

    :cond_2
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_5

    .line 80
    :cond_3
    sput v5, Lc8/Mzo;->DEFAULT_ORIENTATION:I

    .line 85
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "rotation":I
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_4
    :goto_0
    sget v3, Lc8/Mzo;->DEFAULT_ORIENTATION:I

    return v3

    .line 82
    .restart local v0    # "config":Landroid/content/res/Configuration;
    .restart local v1    # "rotation":I
    .restart local v2    # "windowManager":Landroid/view/WindowManager;
    :cond_5
    sput v4, Lc8/Mzo;->DEFAULT_ORIENTATION:I

    goto :goto_0
.end method

.method public static getPaletteColor(Landroid/graphics/drawable/BitmapDrawable;Lc8/Lzo;)V
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p1, "listener"    # Lc8/Lzo;

    .prologue
    const/4 v8, 0x0

    .line 447
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_1

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/16 v7, 0x64

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 450
    .local v4, "height":I
    if-lez v4, :cond_0

    .line 451
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v0, v8, v8, v6, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 453
    .local v5, "tmpBitmap":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 455
    :try_start_0
    invoke-static {v5}, Lc8/vp;->from(Landroid/graphics/Bitmap;)Lc8/rp;

    move-result-object v3

    .line 456
    .local v3, "from":Lc8/rp;
    new-instance v6, Lc8/Izo;

    invoke-direct {v6, p1}, Lc8/Izo;-><init>(Lc8/Lzo;)V

    invoke-virtual {v3, v6}, Lc8/rp;->generate(Lc8/tp;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 468
    .end local v3    # "from":Lc8/rp;
    :catch_0
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 470
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 471
    .local v2, "error":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_0
.end method

.method private static getXiaomiVersion()Ljava/lang/String;
    .locals 8

    .prologue
    .line 494
    const-string/jumbo v2, "ro.miui.ui.version.name"

    .line 496
    .local v2, "key":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "android.os.SystemProperties"

    invoke-static {v4}, Lc8/Mzo;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 497
    .local v3, "osSystem":Ljava/lang/Class;
    const-string/jumbo v4, "get"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 498
    .local v1, "getInvoke":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lc8/Mzo;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v1    # "getInvoke":Ljava/lang/reflect/Method;
    .end local v3    # "osSystem":Ljava/lang/Class;
    :goto_0
    return-object v4

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 502
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method public static isActivityContextValid(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMiPad()Z
    .locals 2

    .prologue
    .line 49
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v1, "MI PAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 58
    if-eqz p0, :cond_1

    .line 59
    const/4 v1, 0x2

    invoke-static {p0}, Lc8/Mzo;->getDeviceDefaultOrientation(Landroid/content/Context;)I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lc8/Mzo;->isMiPad()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 61
    :cond_1
    return v0
.end method

.method public static isTransparentStatusBar()Z
    .locals 2

    .prologue
    .line 485
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 486
    invoke-static {}, Lc8/Mzo;->isXiaomiDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/Mzo;->isXiaomiDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "V9"

    invoke-static {}, Lc8/Mzo;->getXiaomiVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

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

.method private static isXiaomiDevice()Z
    .locals 2

    .prologue
    .line 490
    const-string/jumbo v0, "Xiaomi"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "view"    # Lc8/aWc;

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lc8/Mzo;->setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;Landroid/view/View;)V

    .line 307
    return-void
.end method

.method public static setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;Landroid/view/View;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "view"    # Lc8/aWc;
    .param p4, "holdView"    # Landroid/view/View;

    .prologue
    .line 311
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 312
    .local v13, "resources":Landroid/content/res/Resources;
    sget v20, Lcom/youku/phone/R$dimen;->corner_mask_text_size:I

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 313
    .local v16, "textSize":I
    sget v20, Lcom/youku/phone/R$dimen;->corner_mask_padding:I

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 314
    .local v11, "padding":I
    sget v20, Lcom/youku/phone/R$dimen;->corner_mask_height:I

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 315
    .local v7, "height":I
    sget v20, Lcom/youku/phone/R$dimen;->home_personal_movie_12px:I

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 317
    .local v10, "margin":I
    sget v3, Lcom/youku/phone/R$drawable;->corner_mark_red:I

    .line 341
    .local v3, "bgId":I
    const/16 v20, 0x4

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 342
    sget v3, Lcom/youku/phone/R$drawable;->corner_mark_yellow:I

    .line 347
    :cond_0
    :goto_0
    invoke-static {v13, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 348
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v13, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 350
    .local v2, "bgDrawable":Landroid/graphics/drawable/BitmapDrawable;
    new-instance v15, Lc8/cZo;

    new-instance v20, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Lc8/cZo;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 351
    .local v15, "second":Lc8/cZo;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Lc8/cZo;->setText(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {v15 .. v16}, Lc8/cZo;->setTextSize(I)V

    .line 353
    invoke-virtual {v15}, Lc8/cZo;->getPaint()Landroid/graphics/Paint;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 354
    const-string/jumbo v20, "#ffffff"

    invoke-static/range {v20 .. v20}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Lc8/cZo;->setTextColor(I)V

    .line 356
    new-instance v12, Landroid/text/TextPaint;

    invoke-direct {v12}, Landroid/text/TextPaint;-><init>()V

    .line 357
    .local v12, "paint":Landroid/text/TextPaint;
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 358
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 359
    .local v17, "textwidth":F
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v20, v0

    shl-int/lit8 v21, v11, 0x1

    add-int v19, v20, v21

    .line 360
    .local v19, "width":I
    invoke-virtual {v15, v7}, Lc8/cZo;->setIntrinsicHeight(I)V

    .line 361
    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lc8/cZo;->setIntrinsicWidth(I)V

    .line 363
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v6, v0, [Landroid/graphics/drawable/Drawable;

    const/16 v20, 0x0

    aput-object v2, v6, v20

    const/16 v20, 0x1

    aput-object v15, v6, v20

    .line 364
    .local v6, "drawables":[Landroid/graphics/drawable/Drawable;
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 365
    .local v8, "layer":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual/range {p3 .. p3}, Lc8/aWc;->getRight()I

    move-result v20

    sub-int v14, v20, v10

    .line 366
    .local v14, "right":I
    sub-int v9, v14, v19

    .line 368
    .local v9, "left":I
    move/from16 v18, v10

    .local v18, "top":I
    add-int v5, v10, v7

    .line 369
    .local v5, "bottom":I
    move/from16 v0, v18

    invoke-virtual {v8, v9, v0, v14, v5}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 371
    if-nez p4, :cond_2

    .line 372
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lc8/aWc;->setMask(Landroid/graphics/drawable/Drawable;)V

    .line 379
    .end local p4    # "holdView":Landroid/view/View;
    :goto_1
    return-void

    .line 343
    .end local v2    # "bgDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "bottom":I
    .end local v6    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v8    # "layer":Landroid/graphics/drawable/LayerDrawable;
    .end local v9    # "left":I
    .end local v12    # "paint":Landroid/text/TextPaint;
    .end local v14    # "right":I
    .end local v15    # "second":Lc8/cZo;
    .end local v17    # "textwidth":F
    .end local v18    # "top":I
    .end local v19    # "width":I
    .restart local p4    # "holdView":Landroid/view/View;
    :cond_1
    const/16 v20, 0x6

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 344
    sget v3, Lcom/youku/phone/R$drawable;->corner_mark_black:I

    goto/16 :goto_0

    .line 374
    .restart local v2    # "bgDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .restart local v4    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "bottom":I
    .restart local v6    # "drawables":[Landroid/graphics/drawable/Drawable;
    .restart local v8    # "layer":Landroid/graphics/drawable/LayerDrawable;
    .restart local v9    # "left":I
    .restart local v12    # "paint":Landroid/text/TextPaint;
    .restart local v14    # "right":I
    .restart local v15    # "second":Lc8/cZo;
    .restart local v17    # "textwidth":F
    .restart local v18    # "top":I
    .restart local v19    # "width":I
    :cond_2
    check-cast p4, Lc8/XVc;

    .end local p4    # "holdView":Landroid/view/View;
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lc8/XVc;->setMask(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static setCornerMarkData(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "view"    # Lc8/aWc;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lc8/Mzo;->setCornerMarkData(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public static setCornerMarkData(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;Landroid/view/View;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "cornerView"    # Lc8/aWc;
    .param p4, "holderView"    # Landroid/view/View;

    .prologue
    .line 199
    if-nez p4, :cond_1

    .line 200
    invoke-virtual {p3}, Lc8/aWc;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 201
    invoke-static {p0, p1, p2, p3}, Lc8/Mzo;->setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V

    .line 301
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p3}, Lc8/aWc;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 204
    .local v6, "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lc8/Gzo;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/Gzo;-><init>(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 222
    .end local v6    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    invoke-virtual {p4}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_2

    .line 223
    invoke-static {p0, p1, p2, p3, p4}, Lc8/Mzo;->setCornerMark(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;Landroid/view/View;)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    .line 226
    .restart local v6    # "vto":Landroid/view/ViewTreeObserver;
    new-instance v0, Lc8/Hzo;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/Hzo;-><init>(Landroid/content/Context;ILjava/lang/String;Lc8/aWc;Landroid/view/View;)V

    invoke-virtual {v6, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method public static setStatusBarTextColorBlack(Landroid/app/Activity;Z)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "blackText"    # Z

    .prologue
    const/4 v2, -0x1

    .line 397
    invoke-static {}, Lc8/Mzo;->isTransparentStatusBar()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    sget v1, Lc8/Mzo;->s_SystemUiVisibilityOrigin:I

    if-ne v1, v2, :cond_0

    .line 402
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    sput v1, Lc8/Mzo;->s_SystemUiVisibilityOrigin:I

    .line 404
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 405
    .local v0, "window":Landroid/view/Window;
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 406
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 407
    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 414
    .end local v0    # "window":Landroid/view/Window;
    :cond_1
    :goto_0
    return-void

    .line 409
    .restart local v0    # "window":Landroid/view/Window;
    :cond_2
    sget v1, Lc8/Mzo;->s_SystemUiVisibilityOrigin:I

    if-eq v1, v2, :cond_1

    .line 410
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget v2, Lc8/Mzo;->s_SystemUiVisibilityOrigin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static setViewTouchDelegate(Landroid/view/View;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 171
    .local v0, "parent":Landroid/view/View;
    invoke-static {v0, p0}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;I)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # I

    .prologue
    .line 180
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "parent":Landroid/view/View;
    move-object v1, p0

    move v2, p1

    move v3, p1

    move v4, p1

    move v5, p1

    .line 181
    invoke-static/range {v0 .. v5}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;Landroid/view/View;IIII)V

    .line 182
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;IIII)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "top"    # I
    .param p2, "bottom"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "parent":Landroid/view/View;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 176
    invoke-static/range {v0 .. v5}, Lc8/Mzo;->setViewTouchDelegate(Landroid/view/View;Landroid/view/View;IIII)V

    .line 177
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 152
    if-eqz p0, :cond_2

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v1

    .line 156
    .local v1, "touchDelegate":Landroid/view/TouchDelegate;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lc8/Oap;

    if-nez v2, :cond_1

    .line 158
    :cond_0
    new-instance v1, Lc8/Oap;

    .end local v1    # "touchDelegate":Landroid/view/TouchDelegate;
    invoke-direct {v1, p0}, Lc8/Oap;-><init>(Landroid/view/View;)V

    .line 160
    .restart local v1    # "touchDelegate":Landroid/view/TouchDelegate;
    invoke-virtual {p0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_1
    move-object v0, v1

    .line 163
    check-cast v0, Lc8/Oap;

    .line 165
    .local v0, "mTouchDelegateGroup":Lc8/Oap;
    invoke-static {v0, p0, p1}, Lc8/Mzo;->setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;)V

    .line 167
    .end local v0    # "mTouchDelegateGroup":Lc8/Oap;
    .end local v1    # "touchDelegate":Landroid/view/TouchDelegate;
    :cond_2
    return-void
.end method

.method public static setViewTouchDelegate(Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8
    .param p0, "parent"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "bottom"    # I
    .param p4, "left"    # I
    .param p5, "right"    # I

    .prologue
    .line 133
    if-eqz p0, :cond_2

    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getTouchDelegate()Landroid/view/TouchDelegate;

    move-result-object v7

    .line 137
    .local v7, "touchDelegate":Landroid/view/TouchDelegate;
    if-eqz v7, :cond_0

    instance-of v1, v7, Lc8/Oap;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    new-instance v7, Lc8/Oap;

    .end local v7    # "touchDelegate":Landroid/view/TouchDelegate;
    invoke-direct {v7, p0}, Lc8/Oap;-><init>(Landroid/view/View;)V

    .line 141
    .restart local v7    # "touchDelegate":Landroid/view/TouchDelegate;
    invoke-virtual {p0, v7}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_1
    move-object v0, v7

    .line 144
    check-cast v0, Lc8/Oap;

    .local v0, "mTouchDelegateGroup":Lc8/Oap;
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    .line 146
    invoke-static/range {v0 .. v6}, Lc8/Mzo;->setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;IIII)V

    .line 148
    .end local v0    # "mTouchDelegateGroup":Lc8/Oap;
    .end local v7    # "touchDelegate":Landroid/view/TouchDelegate;
    :cond_2
    return-void
.end method

.method public static setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p0, "mTouchDelegateGroup"    # Lc8/Oap;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x64

    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lc8/Mzo;->setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;IIII)V

    .line 129
    return-void
.end method

.method public static setViewTouchDelegate(Lc8/Oap;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 9
    .param p0, "mTouchDelegateGroup"    # Lc8/Oap;
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "left"    # I
    .param p6, "right"    # I

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v8

    new-instance v0, Lc8/Fzo;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lc8/Fzo;-><init>(Landroid/view/View;IIIILandroid/view/View;Lc8/Oap;)V

    invoke-virtual {v8, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 125
    :cond_0
    return-void
.end method
