.class public Lc8/eXo;
.super Lc8/HYf;
.source "RichTextDomObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/aXo;,
        Lc8/dXo;,
        Lc8/bXo;
    }
.end annotation


# static fields
.field public static final COMPONENT_TYPE:Ljava/lang/String; = "yk-rich-text"

.field private static DISPLAY_COUNT:Ljava/lang/String; = null

.field private static final EMOJI_IMAGE_SIZE_DP:I = 0x12

.field private static MAX_LINES:Ljava/lang/String;

.field private static PROP_CUSTOM_ELLIPSIS:Ljava/lang/String;

.field private static sColorFilter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/LightingColorFilter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorFilterObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/aXo;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomEllipsis:Ljava/lang/String;

.field private mDisplayCount:I

.field private mDisplayCountChange:Z

.field private mFontFamily:Ljava/lang/String;

.field private mFontSize:I

.field private mFontStyle:I

.field private mFontWeight:I

.field private mLayout:Lc8/VWo;

.field private mLineHeight:I

.field private mMaxLines:I

.field private mPreparedSpannedText:Landroid/text/Spanned;

.field private mRichText:Lc8/YWo;

.field private mTextHash:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "displayCount"

    sput-object v0, Lc8/eXo;->DISPLAY_COUNT:Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "maxlines"

    sput-object v0, Lc8/eXo;->MAX_LINES:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "customEllipsis"

    sput-object v0, Lc8/eXo;->PROP_CUSTOM_ELLIPSIS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 68
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    .line 53
    iput v0, p0, Lc8/eXo;->mFontSize:I

    .line 54
    iput v0, p0, Lc8/eXo;->mLineHeight:I

    .line 55
    iput v0, p0, Lc8/eXo;->mFontStyle:I

    .line 56
    iput v0, p0, Lc8/eXo;->mFontWeight:I

    .line 57
    iput v0, p0, Lc8/eXo;->mDisplayCount:I

    .line 58
    iput v0, p0, Lc8/eXo;->mMaxLines:I

    .line 61
    iput-object v1, p0, Lc8/eXo;->mFontFamily:Ljava/lang/String;

    .line 69
    new-instance v0, Lc8/bXo;

    invoke-direct {v0, p0, v1}, Lc8/bXo;-><init>(Lc8/eXo;Lc8/ZWo;)V

    invoke-virtual {p0, v0}, Lc8/eXo;->setMeasureFunction(Lc8/BZf;)V

    .line 70
    return-void
.end method

.method static synthetic access$100(Lc8/eXo;)Landroid/text/Spanned;
    .locals 1
    .param p0, "x0"    # Lc8/eXo;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/eXo;->mPreparedSpannedText:Landroid/text/Spanned;

    return-object v0
.end method

.method static synthetic access$200(Lc8/eXo;)Lc8/VWo;
    .locals 1
    .param p0, "x0"    # Lc8/eXo;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/eXo;->mLayout:Lc8/VWo;

    return-object v0
.end method

.method static synthetic access$202(Lc8/eXo;Lc8/VWo;)Lc8/VWo;
    .locals 0
    .param p0, "x0"    # Lc8/eXo;
    .param p1, "x1"    # Lc8/VWo;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/eXo;->mLayout:Lc8/VWo;

    return-object p1
.end method

.method static synthetic access$300(Lc8/eXo;)I
    .locals 1
    .param p0, "x0"    # Lc8/eXo;

    .prologue
    .line 42
    iget v0, p0, Lc8/eXo;->mMaxLines:I

    return v0
.end method

.method static synthetic access$500(Lc8/eXo;)Lc8/YWo;
    .locals 1
    .param p0, "x0"    # Lc8/eXo;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/eXo;->mRichText:Lc8/YWo;

    return-object v0
.end method

.method private addColorFilterObserver(Lc8/aXo;)V
    .locals 1
    .param p1, "observer"    # Lc8/aXo;

    .prologue
    .line 485
    iget-object v0, p0, Lc8/eXo;->mColorFilterObservers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 486
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/eXo;->mColorFilterObservers:Ljava/util/List;

    .line 488
    :cond_0
    iget-object v0, p0, Lc8/eXo;->mColorFilterObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method private static dip2px(FF)I
    .locals 2
    .param p0, "dipValue"    # F
    .param p1, "density"    # F

    .prologue
    .line 481
    mul-float v0, p0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 273
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 274
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 291
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :pswitch_0
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 294
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method private getColorFilter(Ljava/lang/String;)Landroid/graphics/ColorFilter;
    .locals 4
    .param p1, "filterColor"    # Ljava/lang/String;

    .prologue
    .line 516
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "none"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 517
    :cond_0
    const/4 v1, 0x0

    .line 528
    :cond_1
    :goto_0
    return-object v1

    .line 519
    :cond_2
    sget-object v2, Lc8/eXo;->sColorFilter:Ljava/util/Map;

    if-nez v2, :cond_3

    .line 520
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lc8/eXo;->sColorFilter:Ljava/util/Map;

    .line 522
    :cond_3
    invoke-static {p1}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v0

    .line 523
    .local v0, "colorInt":I
    sget-object v2, Lc8/eXo;->sColorFilter:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/LightingColorFilter;

    .line 524
    .local v1, "filter":Landroid/graphics/LightingColorFilter;
    if-nez v1, :cond_1

    .line 525
    new-instance v1, Landroid/graphics/LightingColorFilter;

    .end local v1    # "filter":Landroid/graphics/LightingColorFilter;
    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 526
    .restart local v1    # "filter":Landroid/graphics/LightingColorFilter;
    sget-object v2, Lc8/eXo;->sColorFilter:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getFontSize(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string/jumbo v1, "fontSize"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 261
    .local v0, "fontSize":I
    int-to-float v1, v0

    invoke-static {v1}, Lc8/hXo;->dip2px(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 265
    .end local v0    # "fontSize":I
    :goto_0
    return v0

    :catch_0
    move-exception v1

    const/16 v0, 0x20

    goto :goto_0
.end method

.method private handleException(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 387
    return-void
.end method

.method private notifyColorFilterObservers()V
    .locals 3

    .prologue
    .line 492
    iget-object v1, p0, Lc8/eXo;->mColorFilterObservers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lc8/eXo;->mColorFilterObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/aXo;

    .line 494
    .local v0, "observer":Lc8/aXo;
    invoke-interface {v0}, Lc8/aXo;->updateColorFilter()V

    goto :goto_0

    .line 497
    .end local v0    # "observer":Lc8/aXo;
    :cond_0
    return-void
.end method

.method private preparedSpanned(Ljava/lang/String;)V
    .locals 14
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 298
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 299
    :cond_0
    iput-object v1, p0, Lc8/eXo;->mPreparedSpannedText:Landroid/text/Spanned;

    .line 300
    const/4 v0, 0x0

    iput v0, p0, Lc8/eXo;->mTextHash:I

    .line 381
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    .line 303
    .local v13, "newHash":I
    const/4 v6, 0x0

    .line 304
    .local v6, "changed":Z
    iget v0, p0, Lc8/eXo;->mTextHash:I

    if-eq v0, v13, :cond_3

    .line 305
    const/4 v6, 0x1

    .line 306
    iput v13, p0, Lc8/eXo;->mTextHash:I

    .line 309
    :cond_3
    iget-boolean v0, p0, Lc8/eXo;->mDisplayCountChange:Z

    if-eqz v0, :cond_4

    .line 310
    const/4 v6, 0x1

    .line 313
    :cond_4
    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v0

    sget-object v1, Lc8/eXo;->PROP_CUSTOM_ELLIPSIS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/xYf;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 314
    .local v7, "customEllipsis":Ljava/lang/String;
    if-eqz v7, :cond_5

    iget-object v0, p0, Lc8/eXo;->mCustomEllipsis:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 315
    iput-object v7, p0, Lc8/eXo;->mCustomEllipsis:Ljava/lang/String;

    .line 316
    const/4 v6, 0x1

    .line 320
    :cond_5
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/eXo;->getFontSize(Ljava/util/Map;)I

    move-result v10

    .line 321
    .local v10, "fontSize":I
    iget v0, p0, Lc8/eXo;->mFontSize:I

    if-eq v0, v10, :cond_6

    .line 322
    const/4 v6, 0x1

    .line 323
    iput v10, p0, Lc8/eXo;->mFontSize:I

    .line 326
    :cond_6
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-virtual {p0}, Lc8/eXo;->getViewPortWidth()I

    move-result v1

    invoke-static {v0, v1}, Lc8/PYf;->getLineHeight(Ljava/util/Map;I)I

    move-result v3

    .line 327
    .local v3, "lineHeight":I
    iget v0, p0, Lc8/eXo;->mLineHeight:I

    if-eq v0, v3, :cond_7

    .line 328
    const/4 v6, 0x1

    .line 329
    iput v3, p0, Lc8/eXo;->mLineHeight:I

    .line 332
    :cond_7
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    const-string/jumbo v1, "fontWeight"

    invoke-virtual {v0, v1}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 333
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-static {v0}, Lc8/PYf;->getFontWeight(Ljava/util/Map;)I

    move-result v12

    .line 334
    .local v12, "fontWeight":I
    iget v0, p0, Lc8/eXo;->mFontWeight:I

    if-eq v0, v12, :cond_8

    .line 335
    const/4 v6, 0x1

    .line 336
    iput v12, p0, Lc8/eXo;->mFontWeight:I

    .line 340
    .end local v12    # "fontWeight":I
    :cond_8
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    const-string/jumbo v1, "fontStyle"

    invoke-virtual {v0, v1}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 341
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-static {v0}, Lc8/PYf;->getFontStyle(Ljava/util/Map;)I

    move-result v11

    .line 342
    .local v11, "fontStyle":I
    iget v0, p0, Lc8/eXo;->mFontStyle:I

    if-eq v0, v11, :cond_9

    .line 343
    const/4 v6, 0x1

    .line 344
    iput v11, p0, Lc8/eXo;->mFontStyle:I

    .line 348
    .end local v11    # "fontStyle":I
    :cond_9
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    const-string/jumbo v1, "fontFamily"

    invoke-virtual {v0, v1}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 349
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-static {v0}, Lc8/PYf;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "fontFamily":Ljava/lang/String;
    if-eqz v9, :cond_a

    iget-object v0, p0, Lc8/eXo;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 351
    const/4 v6, 0x1

    .line 352
    iput-object v9, p0, Lc8/eXo;->mFontFamily:Ljava/lang/String;

    .line 361
    .end local v9    # "fontFamily":Ljava/lang/String;
    :cond_a
    if-eqz v6, :cond_1

    .line 362
    const-string/jumbo v0, "[\n|\t]"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 363
    const-string/jumbo v0, "<html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    :cond_b
    const-string/jumbo v0, "</html>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 372
    :cond_c
    :try_start_0
    new-instance v1, Lc8/dXo;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lc8/dXo;-><init>(Lc8/eXo;Lc8/ZWo;)V

    const/4 v2, 0x0

    iget v4, p0, Lc8/eXo;->mDisplayCount:I

    iget-object v5, p0, Lc8/eXo;->mCustomEllipsis:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lc8/CWo;->fromHtml(Ljava/lang/String;Lc8/AWo;Lc8/BWo;IILjava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lc8/eXo;->mPreparedSpannedText:Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 373
    :catch_0
    move-exception v8

    .line 374
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 376
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lc8/eXo;->mPreparedSpannedText:Landroid/text/Spanned;

    .line 377
    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/eXo;->handleException(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Lc8/HYf;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lc8/eXo;->clone()Lc8/eXo;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lc8/eXo;
    .locals 4

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    .local v0, "dom":Lc8/eXo;
    :try_start_0
    new-instance v1, Lc8/eXo;

    invoke-direct {v1}, Lc8/eXo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v0    # "dom":Lc8/eXo;
    .local v1, "dom":Lc8/eXo;
    :try_start_1
    invoke-virtual {p0, v1}, Lc8/eXo;->copyFields(Lc8/HYf;)V

    .line 158
    iget-object v3, p0, Lc8/eXo;->mPreparedSpannedText:Landroid/text/Spanned;

    iput-object v3, v1, Lc8/eXo;->mPreparedSpannedText:Landroid/text/Spanned;

    .line 159
    iget-object v3, p0, Lc8/eXo;->mLayout:Lc8/VWo;

    iput-object v3, v1, Lc8/eXo;->mLayout:Lc8/VWo;

    .line 160
    iget-object v3, p0, Lc8/eXo;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v3, v1, Lc8/eXo;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 161
    iget-object v3, p0, Lc8/eXo;->mColorFilterObservers:Ljava/util/List;

    iput-object v3, v1, Lc8/eXo;->mColorFilterObservers:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 167
    .end local v1    # "dom":Lc8/eXo;
    .restart local v0    # "dom":Lc8/eXo;
    :cond_0
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v2

    .line 163
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    const-string/jumbo v3, "WXTextDomObject clone error: "

    invoke-static {v3, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 162
    .end local v0    # "dom":Lc8/eXo;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dom":Lc8/eXo;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "dom":Lc8/eXo;
    .restart local v0    # "dom":Lc8/eXo;
    goto :goto_1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-virtual {p0}, Lc8/eXo;->clone()Lc8/eXo;

    move-result-object v0

    return-object v0
.end method

.method createTextPaint()Landroid/text/TextPaint;
    .locals 7

    .prologue
    .line 236
    invoke-static {}, Lc8/UUf;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 240
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v3, Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(I)V

    .line 241
    .local v3, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 245
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v4

    invoke-direct {p0, v4}, Lc8/eXo;->getFontSize(Ljava/util/Map;)I

    move-result v0

    .line 247
    .local v0, "fontSize":I
    int-to-float v4, v0

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 249
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v4

    invoke-static {v4}, Lc8/PYf;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "textColorStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 251
    invoke-static {v2}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setColor(I)V

    .line 254
    :cond_0
    iget v4, p0, Lc8/eXo;->mFontStyle:I

    iget v5, p0, Lc8/eXo;->mFontWeight:I

    iget-object v6, p0, Lc8/eXo;->mFontFamily:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lc8/ngg;->applyFontStyle(Landroid/graphics/Paint;IILjava/lang/String;)V

    .line 255
    return-object v3
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lc8/eXo;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lc8/eXo;->mLayout:Lc8/VWo;

    return-object v0
.end method

.method public getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lc8/eXo;->mLayout:Lc8/VWo;

    return-object v0
.end method

.method public getTextSpanned()Landroid/text/Spanned;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lc8/eXo;->mPreparedSpannedText:Landroid/text/Spanned;

    return-object v0
.end method

.method public layoutBefore()V
    .locals 6

    .prologue
    .line 78
    const/4 v2, 0x0

    .line 79
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v3

    invoke-static {v3}, Lc8/xYf;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_0
    invoke-virtual {p0}, Lc8/eXo;->getStyles()Lc8/PYf;

    move-result-object v1

    .line 83
    .local v1, "styles":Lc8/PYf;
    if-eqz v1, :cond_1

    .line 84
    const-string/jumbo v3, "filterColor"

    invoke-virtual {v1, v3}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 85
    const-string/jumbo v3, "filterColor"

    invoke-virtual {v1, v3}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lc8/eXo;->setColorFilter(Ljava/lang/String;)V

    .line 90
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v3

    sget-object v4, Lc8/eXo;->DISPLAY_COUNT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v4

    sget-object v5, Lc8/eXo;->DISPLAY_COUNT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/eXo;->mDisplayCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v3

    sget-object v4, Lc8/eXo;->MAX_LINES:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/xYf;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v4

    sget-object v5, Lc8/eXo;->MAX_LINES:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/eXo;->mMaxLines:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 106
    :cond_3
    :goto_2
    invoke-direct {p0, v2}, Lc8/eXo;->preparedSpanned(Ljava/lang/String;)V

    .line 107
    invoke-super {p0}, Lc8/HYf;->dirty()V

    .line 108
    return-void

    .line 86
    :cond_4
    const-string/jumbo v3, "filtercolor"

    invoke-virtual {v1, v3}, Lc8/PYf;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    const-string/jumbo v3, "filtercolor"

    invoke-virtual {v1, v3}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lc8/eXo;->setColorFilter(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 95
    const-string/jumbo v3, "WXTextDomObject updateAttr error: "

    invoke-static {v3, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 103
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setColorFilter(Ljava/lang/String;)V
    .locals 2
    .param p1, "filterColor"    # Ljava/lang/String;

    .prologue
    .line 504
    invoke-direct {p0, p1}, Lc8/eXo;->getColorFilter(Ljava/lang/String;)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 505
    .local v0, "newFilter":Landroid/graphics/ColorFilter;
    iget-object v1, p0, Lc8/eXo;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, v1, :cond_0

    .line 506
    iput-object v0, p0, Lc8/eXo;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 507
    invoke-direct {p0}, Lc8/eXo;->notifyColorFilterObservers()V

    .line 509
    :cond_0
    return-void
.end method

.method setRichText(Lc8/YWo;)V
    .locals 0
    .param p1, "richText"    # Lc8/YWo;

    .prologue
    .line 73
    iput-object p1, p0, Lc8/eXo;->mRichText:Lc8/YWo;

    .line 74
    return-void
.end method

.method public updateAttr(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-super {p0, p1}, Lc8/HYf;->updateAttr(Ljava/util/Map;)V

    .line 126
    sget-object v3, Lc8/eXo;->DISPLAY_COUNT:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lc8/eXo;->DISPLAY_COUNT:Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 129
    .local v0, "displayCount":I
    iget v3, p0, Lc8/eXo;->mDisplayCount:I

    if-eq v3, v0, :cond_1

    .line 130
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/eXo;->mDisplayCountChange:Z

    .line 131
    iput v0, p0, Lc8/eXo;->mDisplayCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "displayCount":I
    :cond_0
    :goto_0
    const-string/jumbo v3, "value"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 142
    invoke-static {p1}, Lc8/xYf;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "newValue":Ljava/lang/String;
    invoke-direct {p0, v2}, Lc8/eXo;->preparedSpanned(Ljava/lang/String;)V

    .line 150
    :goto_1
    return-void

    .line 133
    .end local v2    # "newValue":Ljava/lang/String;
    .restart local v0    # "displayCount":I
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lc8/eXo;->mDisplayCountChange:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 135
    .end local v0    # "displayCount":I
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string/jumbo v3, "WXTextDomObject updateAttr error: "

    invoke-static {v3, v1}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lc8/eXo;->getAttrs()Lc8/xYf;

    move-result-object v3

    invoke-static {v3}, Lc8/xYf;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 146
    .restart local v2    # "newValue":Ljava/lang/String;
    invoke-direct {p0, v2}, Lc8/eXo;->preparedSpanned(Ljava/lang/String;)V

    goto :goto_1
.end method
