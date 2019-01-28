.class public Lc8/Eaf;
.super Lc8/Maf;
.source "DCountDownTimerPropertySetter.java"


# instance fields
.field private final MARGIN_BOTTOM:I

.field private final MARGIN_LEFT:I

.field private final MARGIN_RIGHT:I

.field private final MARGIN_TOP:I

.field private final TEXT_COLOR:I

.field private final TEXT_HEIGHT:I

.field private final TEXT_SIZE:I

.field private final TEXT_WIDTH:I

.field private final colonTextDefaults:[I

.field private final colonTextKeys:[Ljava/lang/String;

.field private final seeMoreTextDefaults:[I

.field private final seeMoreTextKeys:[Ljava/lang/String;

.field private final timerTextDefaults:[I

.field private final timerTextKeys:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 48
    invoke-direct {p0}, Lc8/Maf;-><init>()V

    .line 50
    iput v4, p0, Lc8/Eaf;->MARGIN_LEFT:I

    .line 52
    iput v5, p0, Lc8/Eaf;->MARGIN_TOP:I

    .line 54
    iput v6, p0, Lc8/Eaf;->MARGIN_RIGHT:I

    .line 56
    iput v7, p0, Lc8/Eaf;->MARGIN_BOTTOM:I

    .line 58
    const/4 v0, 0x4

    iput v0, p0, Lc8/Eaf;->TEXT_WIDTH:I

    .line 60
    const/4 v0, 0x5

    iput v0, p0, Lc8/Eaf;->TEXT_HEIGHT:I

    .line 62
    const/4 v0, 0x6

    iput v0, p0, Lc8/Eaf;->TEXT_SIZE:I

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lc8/Eaf;->TEXT_COLOR:I

    .line 66
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lc8/Eaf;->seeMoreTextDefaults:[I

    .line 68
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lc8/Eaf;->timerTextDefaults:[I

    .line 70
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lc8/Eaf;->colonTextDefaults:[I

    .line 72
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "dSeeMoreTextMarginLeft"

    aput-object v1, v0, v4

    const-string/jumbo v1, "dSeeMoreTextMarginTop"

    aput-object v1, v0, v5

    const-string/jumbo v1, "dSeeMoreTextMarginRight"

    aput-object v1, v0, v6

    const-string/jumbo v1, "dSeeMoreTextMarginBottom"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "dSeeMoreTextWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "dSeeMoreTextHeight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dSeeMoreTextSize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dSeeMoreTextColor"

    aput-object v2, v0, v1

    iput-object v0, p0, Lc8/Eaf;->seeMoreTextKeys:[Ljava/lang/String;

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "dTimerTextMarginLeft"

    aput-object v1, v0, v4

    const-string/jumbo v1, "dTimerTextMarginTop"

    aput-object v1, v0, v5

    const-string/jumbo v1, "dTimerTextMarginRight"

    aput-object v1, v0, v6

    const-string/jumbo v1, "dTimerTextMarginBottom"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "dTimerTextWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "dTimerTextHeight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dTimerTextSize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dTimerTextColor"

    aput-object v2, v0, v1

    iput-object v0, p0, Lc8/Eaf;->timerTextKeys:[Ljava/lang/String;

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "dColonTextMarginLeft"

    aput-object v1, v0, v4

    const-string/jumbo v1, "dColonTextMarginTop"

    aput-object v1, v0, v5

    const-string/jumbo v1, "dColonTextMarginRight"

    aput-object v1, v0, v6

    const-string/jumbo v1, "dColonTextMarginBottom"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "dColonTextWidth"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "dColonTextHeight"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "dColonTextSize"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "dColonTextColor"

    aput-object v2, v0, v1

    iput-object v0, p0, Lc8/Eaf;->colonTextKeys:[Ljava/lang/String;

    return-void

    .line 66
    .line 68
    .line 70
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0xc
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x14
        0x14
        0xc
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0xa
        -0x1000000
    .end array-data
.end method

.method private setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "values"    # [I

    .prologue
    const/4 v5, 0x1

    .line 286
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 288
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v1, 0x0

    aget v1, p2, v1

    aget v2, p2, v5

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 291
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    const/4 v1, 0x7

    aget v1, p2, v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 293
    const/4 v1, 0x6

    aget v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {p1, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 294
    return-void
.end method

.method private setTextViewStyle(Ljava/util/Map;Landroid/widget/TextView;[Ljava/lang/String;[I)V
    .locals 11
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "propertyKeys"    # [Ljava/lang/String;
    .param p4, "defaults"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/TextView;",
            "[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x6

    aget-object v7, p3, v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 207
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x6

    aget-object v8, p3, v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v5

    .line 209
    .local v5, "textSize":I
    const/4 v7, 0x0

    int-to-float v8, v5

    invoke-virtual {p2, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 212
    .end local v5    # "textSize":I
    :cond_0
    const/4 v7, 0x7

    aget-object v7, p3, v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 213
    const/4 v7, 0x7

    aget-object v7, p3, v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 214
    .local v1, "colorStr":Ljava/lang/String;
    const/high16 v7, -0x1000000

    invoke-static {v1, v7}, Lc8/Daf;->parseColor(Ljava/lang/String;I)I

    move-result v0

    .line 215
    .local v0, "color":I
    const/high16 v7, -0x1000000

    if-eq v0, v7, :cond_1

    .line 216
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    .end local v0    # "color":I
    .end local v1    # "colorStr":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0, v7, p1, p3, p4}, Lc8/Eaf;->getTextViewMargin(Landroid/content/Context;Ljava/util/Map;[Ljava/lang/String;[I)[I

    move-result-object v3

    .line 222
    .local v3, "margin":[I
    if-nez v3, :cond_2

    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x5

    aget-object v7, p3, v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 224
    :cond_2
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 227
    .local v4, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v7, 0x4

    aget-object v7, p3, v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 228
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x4

    aget-object v8, p3, v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v6

    .line 230
    .local v6, "width":I
    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 233
    .end local v6    # "width":I
    :cond_3
    const/4 v7, 0x5

    aget-object v7, p3, v7

    invoke-interface {p1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 234
    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x5

    aget-object v8, p3, v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v2

    .line 236
    .local v2, "height":I
    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 239
    .end local v2    # "height":I
    :cond_4
    if-eqz v3, :cond_5

    .line 240
    const/4 v7, 0x0

    aget v7, v3, v7

    const/4 v8, 0x1

    aget v8, v3, v8

    const/4 v9, 0x2

    aget v9, v3, v9

    const/4 v10, 0x3

    aget v10, v3, v10

    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 244
    :cond_5
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    .end local v4    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_6
    return-void
.end method

.method private setTimerTextBackground(Landroid/view/View;Ljava/util/Map;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p3, "tvHour"    # Landroid/widget/TextView;
    .param p4, "tvMinute"    # Landroid/widget/TextView;
    .param p5, "tvSecond"    # Landroid/widget/TextView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            "Landroid/widget/TextView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/high16 v7, -0x1000000

    .line 183
    const/high16 v1, -0x1000000

    .line 184
    .local v1, "timerBackgroundColor":I
    const-string/jumbo v4, "dTimerBackgroundColor"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 185
    const-string/jumbo v4, "dTimerBackgroundColor"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 186
    .local v2, "timerBackgroundColorStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    invoke-static {v2, v7}, Lc8/Daf;->parseColor(Ljava/lang/String;I)I

    move-result v1

    .line 191
    .end local v2    # "timerBackgroundColorStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "dTimerCornerRadius"

    invoke-interface {p2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v3

    .line 194
    .local v3, "timerBackgroundRadius":I
    if-ne v1, v7, :cond_1

    if-eqz v3, :cond_2

    .line 195
    :cond_1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 196
    .local v0, "shape":Landroid/graphics/drawable/GradientDrawable;
    int-to-float v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 198
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 200
    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    .end local v0    # "shape":Landroid/graphics/drawable/GradientDrawable;
    :cond_2
    return-void
.end method


# virtual methods
.method public applyDefaultProperty(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 250
    invoke-super {p0, p1}, Lc8/Maf;->applyDefaultProperty(Landroid/view/View;)V

    move-object v0, p1

    .line 252
    check-cast v0, Lc8/Taf;

    .line 254
    .local v0, "countDownTimerView":Lc8/Taf;
    invoke-virtual {v0}, Lc8/Taf;->getSeeMoreView()Landroid/widget/TextView;

    move-result-object v7

    .line 255
    .local v7, "tvSeeMore":Landroid/widget/TextView;
    invoke-virtual {v0}, Lc8/Taf;->getHour()Landroid/widget/TextView;

    move-result-object v4

    .line 256
    .local v4, "tvHour":Landroid/widget/TextView;
    invoke-virtual {v0}, Lc8/Taf;->getMinute()Landroid/widget/TextView;

    move-result-object v5

    .line 257
    .local v5, "tvMinute":Landroid/widget/TextView;
    invoke-virtual {v0}, Lc8/Taf;->getSecond()Landroid/widget/TextView;

    move-result-object v6

    .line 258
    .local v6, "tvSecond":Landroid/widget/TextView;
    invoke-virtual {v0}, Lc8/Taf;->getColonFirst()Landroid/widget/TextView;

    move-result-object v2

    .line 259
    .local v2, "tvColonFirst":Landroid/widget/TextView;
    invoke-virtual {v0}, Lc8/Taf;->getColonSecond()Landroid/widget/TextView;

    move-result-object v3

    .line 261
    .local v3, "tvColonSecond":Landroid/widget/TextView;
    iget-object v8, p0, Lc8/Eaf;->seeMoreTextDefaults:[I

    invoke-direct {p0, v7, v8}, Lc8/Eaf;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 262
    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    iget-object v8, p0, Lc8/Eaf;->timerTextDefaults:[I

    invoke-direct {p0, v4, v8}, Lc8/Eaf;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 265
    iget-object v8, p0, Lc8/Eaf;->timerTextDefaults:[I

    invoke-direct {p0, v5, v8}, Lc8/Eaf;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 266
    iget-object v8, p0, Lc8/Eaf;->timerTextDefaults:[I

    invoke-direct {p0, v6, v8}, Lc8/Eaf;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 267
    invoke-virtual {v4, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 268
    invoke-virtual {v5, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 269
    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 271
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 272
    .local v1, "shape":Landroid/graphics/drawable/GradientDrawable;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 273
    const/high16 v8, -0x1000000

    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 275
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    iget-object v8, p0, Lc8/Eaf;->colonTextDefaults:[I

    invoke-direct {p0, v2, v8}, Lc8/Eaf;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 280
    iget-object v8, p0, Lc8/Eaf;->colonTextDefaults:[I

    invoke-direct {p0, v3, v8}, Lc8/Eaf;->setTextViewMarginAndColorAndSize(Landroid/widget/TextView;[I)V

    .line 281
    const-string/jumbo v8, ":"

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    const-string/jumbo v8, ":"

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    return-void
.end method

.method public applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super/range {p0 .. p2}, Lc8/Maf;->applyDinamicProperty(Landroid/view/View;Ljava/util/Map;)V

    .line 88
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 179
    :goto_0
    return-void

    :cond_0
    move-object/from16 v8, p1

    .line 91
    check-cast v8, Lc8/Taf;

    .line 93
    .local v8, "countDownTimerView":Lc8/Taf;
    invoke-virtual {v8}, Lc8/Taf;->getHour()Landroid/widget/TextView;

    move-result-object v5

    .line 94
    .local v5, "tvHour":Landroid/widget/TextView;
    invoke-virtual {v8}, Lc8/Taf;->getMinute()Landroid/widget/TextView;

    move-result-object v6

    .line 95
    .local v6, "tvMinute":Landroid/widget/TextView;
    invoke-virtual {v8}, Lc8/Taf;->getSecond()Landroid/widget/TextView;

    move-result-object v7

    .line 96
    .local v7, "tvSecond":Landroid/widget/TextView;
    invoke-virtual {v8}, Lc8/Taf;->getColonFirst()Landroid/widget/TextView;

    move-result-object v11

    .line 97
    .local v11, "tvColonFirst":Landroid/widget/TextView;
    invoke-virtual {v8}, Lc8/Taf;->getColonSecond()Landroid/widget/TextView;

    move-result-object v12

    .line 99
    .local v12, "tvColonSecond":Landroid/widget/TextView;
    invoke-virtual {v8}, Lc8/Taf;->getSeeMoreView()Landroid/widget/TextView;

    move-result-object v13

    .line 100
    .local v13, "tvSeeMore":Landroid/widget/TextView;
    const-string/jumbo v2, "dSeeMoreText"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 101
    const-string/jumbo v2, "dSeeMoreText"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Eaf;->seeMoreTextKeys:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Eaf;->seeMoreTextDefaults:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13, v2, v3}, Lc8/Eaf;->setTextViewStyle(Ljava/util/Map;Landroid/widget/TextView;[Ljava/lang/String;[I)V

    .line 105
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Eaf;->timerTextKeys:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Eaf;->timerTextDefaults:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5, v2, v3}, Lc8/Eaf;->setTextViewStyle(Ljava/util/Map;Landroid/widget/TextView;[Ljava/lang/String;[I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Eaf;->timerTextKeys:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Eaf;->timerTextDefaults:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v2, v3}, Lc8/Eaf;->setTextViewStyle(Ljava/util/Map;Landroid/widget/TextView;[Ljava/lang/String;[I)V

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Eaf;->timerTextKeys:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Eaf;->timerTextDefaults:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v2, v3}, Lc8/Eaf;->setTextViewStyle(Ljava/util/Map;Landroid/widget/TextView;[Ljava/lang/String;[I)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 111
    invoke-direct/range {v2 .. v7}, Lc8/Eaf;->setTimerTextBackground(Landroid/view/View;Ljava/util/Map;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Eaf;->colonTextKeys:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Eaf;->colonTextDefaults:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11, v2, v3}, Lc8/Eaf;->setTextViewStyle(Ljava/util/Map;Landroid/widget/TextView;[Ljava/lang/String;[I)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Eaf;->colonTextKeys:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Eaf;->colonTextDefaults:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v2, v3}, Lc8/Eaf;->setTextViewStyle(Ljava/util/Map;Landroid/widget/TextView;[Ljava/lang/String;[I)V

    .line 115
    const-string/jumbo v2, "dColonText"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    const-string/jumbo v2, "dColonText"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    const-string/jumbo v2, "dColonText"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    :cond_2
    const-string/jumbo v2, "dFutureTime"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 121
    const-string/jumbo v2, "dFutureTime"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 122
    .local v10, "futureTime":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    invoke-virtual {v8}, Lc8/Taf;->hideCountDown()V

    .line 124
    invoke-virtual {v8}, Lc8/Taf;->getTimer()Lc8/Waf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Waf;->stop()V

    .line 147
    .end local v10    # "futureTime":Ljava/lang/String;
    :goto_1
    const-string/jumbo v2, "dFutureTime"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v2, "dCurrentTime"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string/jumbo v2, "dSeeMoreText"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string/jumbo v2, "dSeeMoreTextSize"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string/jumbo v2, "dSeeMoreTextColor"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string/jumbo v2, "dSeeMoreTextMarginLeft"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string/jumbo v2, "dSeeMoreTextMarginRight"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string/jumbo v2, "dSeeMoreTextMarginTop"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v2, "dSeeMoreTextMarginBottom"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string/jumbo v2, "dTimerTextSize"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v2, "dTimerTextColor"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string/jumbo v2, "dTimerTextMarginLeft"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const-string/jumbo v2, "dTimerTextMarginRight"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v2, "dTimerTextMarginTop"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string/jumbo v2, "dTimerTextMarginBottom"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string/jumbo v2, "dTimerTextWidth"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string/jumbo v2, "dTimerTextHeight"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v2, "dTimerBackgroundColor"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v2, "dTimerCornerRadius"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v2, "dColonText"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v2, "dColonTextSize"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v2, "dColonTextColor"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v2, "dColonTextMarginLeft"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v2, "dColonTextMarginRight"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v2, "dColonTextMarginTop"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v2, "dColonTextMarginBottom"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 126
    .restart local v10    # "futureTime":Ljava/lang/String;
    :cond_3
    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lc8/Taf;->setFurtureTime(J)V

    .line 128
    const-string/jumbo v2, "dCurrentTime"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 129
    const-string/jumbo v2, "dCurrentTime"

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    .line 130
    .local v9, "currentTime":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lc8/Taf;->setCurrentTime(J)V

    .line 133
    .end local v9    # "currentTime":Ljava/lang/Long;
    :cond_4
    invoke-virtual {v8}, Lc8/Taf;->getLastTime()J

    move-result-wide v2

    const-wide/16 v14, 0x0

    cmp-long v2, v2, v14

    if-lez v2, :cond_5

    .line 134
    invoke-virtual {v8}, Lc8/Taf;->showCountDown()V

    .line 135
    invoke-virtual {v8}, Lc8/Taf;->updateCountDownViewTime()V

    .line 136
    invoke-virtual {v8}, Lc8/Taf;->getTimer()Lc8/Waf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Waf;->start()V

    goto/16 :goto_1

    .line 138
    :cond_5
    invoke-virtual {v8}, Lc8/Taf;->hideCountDown()V

    .line 139
    invoke-virtual {v8}, Lc8/Taf;->getTimer()Lc8/Waf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Waf;->stop()V

    goto/16 :goto_1

    .line 143
    .end local v10    # "futureTime":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Lc8/Taf;->hideCountDown()V

    .line 144
    invoke-virtual {v8}, Lc8/Taf;->getTimer()Lc8/Waf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Waf;->stop()V

    goto/16 :goto_1
.end method

.method public getTextViewMargin(Landroid/content/Context;Ljava/util/Map;[Ljava/lang/String;[I)[I
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "keys"    # [Ljava/lang/String;
    .param p4, "def"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/String;",
            "[I)[I"
        }
    .end annotation

    .prologue
    .local p2, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 298
    aget v1, p4, v6

    .line 299
    .local v1, "marginLeft":I
    aget v3, p4, v7

    .line 300
    .local v3, "marginTop":I
    aget v2, p4, v8

    .line 301
    .local v2, "marginRight":I
    aget v0, p4, v9

    .line 303
    .local v0, "marginBottom":I
    aget-object v4, p3, v6

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 304
    aget-object v4, p3, v6

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aget v5, p4, v6

    invoke-static {p1, v4, v5}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v1

    .line 308
    :cond_0
    aget-object v4, p3, v7

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 309
    aget-object v4, p3, v7

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aget v5, p4, v7

    invoke-static {p1, v4, v5}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v3

    .line 313
    :cond_1
    aget-object v4, p3, v8

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 314
    aget-object v4, p3, v8

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aget v5, p4, v8

    invoke-static {p1, v4, v5}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v2

    .line 318
    :cond_2
    aget-object v4, p3, v9

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 319
    aget-object v4, p3, v9

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aget v5, p4, v9

    invoke-static {p1, v4, v5}, Lc8/Oaf;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v0

    .line 323
    :cond_3
    aget v4, p4, v6

    if-ne v1, v4, :cond_4

    aget v4, p4, v7

    if-ne v3, v4, :cond_4

    aget v4, p4, v8

    if-ne v2, v4, :cond_4

    aget v4, p4, v9

    if-ne v0, v4, :cond_4

    .line 325
    const/4 v4, 0x0

    .line 328
    :goto_0
    return-object v4

    :cond_4
    const/4 v4, 0x4

    new-array v4, v4, [I

    aput v1, v4, v6

    aput v3, v4, v7

    aput v2, v4, v8

    aput v0, v4, v9

    goto :goto_0
.end method
