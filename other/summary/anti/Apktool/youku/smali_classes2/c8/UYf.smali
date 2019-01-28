.class public Lc8/UYf;
.super Lc8/HYf;
.source "WXTextDomObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TYf;
    }
.end annotation


# static fields
.field private static final DUMMY_CANVAS:Landroid/graphics/Canvas;

.field private static final ELLIPSIS:Ljava/lang/String; = "\u2026"

.field static final TEXT_MEASURE_FUNCTION:Lc8/BZf;


# instance fields
.field private atomicReference:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field private hasBeenMeasured:Z

.field private layout:Landroid/text/Layout;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mColor:I

.field private mFontFamily:Ljava/lang/String;

.field private mFontSize:I

.field private mFontStyle:I

.field private mFontWeight:I

.field private mIsColorSet:Z

.field private mLineHeight:I

.field private mNumberOfLines:I

.field private mText:Ljava/lang/String;

.field private mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

.field private mTextPaint:Landroid/text/TextPaint;

.field private previousWidth:F

.field private spanned:Landroid/text/Spanned;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private textOverflow:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lc8/SYf;

    invoke-direct {v0}, Lc8/SYf;-><init>()V

    sput-object v0, Lc8/UYf;->TEXT_MEASURE_FUNCTION:Lc8/BZf;

    .line 124
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lc8/UYf;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 157
    invoke-direct {p0}, Lc8/HYf;-><init>()V

    .line 126
    iput-boolean v1, p0, Lc8/UYf;->mIsColorSet:Z

    .line 127
    iput-boolean v1, p0, Lc8/UYf;->hasBeenMeasured:Z

    .line 132
    iput v0, p0, Lc8/UYf;->mFontStyle:I

    .line 136
    iput v0, p0, Lc8/UYf;->mFontWeight:I

    .line 137
    iput v0, p0, Lc8/UYf;->mNumberOfLines:I

    .line 138
    iput v0, p0, Lc8/UYf;->mFontSize:I

    .line 139
    iput v0, p0, Lc8/UYf;->mLineHeight:I

    .line 140
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lc8/UYf;->previousWidth:F

    .line 141
    iput-object v2, p0, Lc8/UYf;->mFontFamily:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lc8/UYf;->mText:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/taobao/weex/ui/component/WXTextDecoration;->NONE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    iput-object v0, p0, Lc8/UYf;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 146
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/UYf;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 158
    iget-object v0, p0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 159
    sget-object v0, Lc8/UYf;->TEXT_MEASURE_FUNCTION:Lc8/BZf;

    invoke-virtual {p0, v0}, Lc8/UYf;->setMeasureFunction(Lc8/BZf;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lc8/UYf;)Landroid/text/Layout$Alignment;
    .locals 1
    .param p0, "x0"    # Lc8/UYf;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/UYf;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method static synthetic access$102(Lc8/UYf;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/UYf;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lc8/UYf;->hasBeenMeasured:Z

    return p1
.end method

.method static synthetic access$200(Lc8/UYf;)Landroid/text/TextPaint;
    .locals 1
    .param p0, "x0"    # Lc8/UYf;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic access$300(Lc8/UYf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/UYf;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/UYf;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lc8/UYf;)Landroid/text/Layout;
    .locals 1
    .param p0, "x0"    # Lc8/UYf;

    .prologue
    .line 66
    iget-object v0, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$402(Lc8/UYf;Landroid/text/Layout;)Landroid/text/Layout;
    .locals 0
    .param p0, "x0"    # Lc8/UYf;
    .param p1, "x1"    # Landroid/text/Layout;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    return-object p1
.end method

.method static synthetic access$500(Lc8/UYf;FZLandroid/text/Layout;)Landroid/text/Layout;
    .locals 1
    .param p0, "x0"    # Lc8/UYf;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/text/Layout;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lc8/UYf;->createLayout(FZLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lc8/UYf;)F
    .locals 1
    .param p0, "x0"    # Lc8/UYf;

    .prologue
    .line 66
    iget v0, p0, Lc8/UYf;->previousWidth:F

    return v0
.end method

.method static synthetic access$602(Lc8/UYf;F)F
    .locals 0
    .param p0, "x0"    # Lc8/UYf;
    .param p1, "x1"    # F

    .prologue
    .line 66
    iput p1, p0, Lc8/UYf;->previousWidth:F

    return p1
.end method

.method private adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V
    .locals 10
    .param p1, "beforeTruncate"    # Landroid/text/Spanned;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "afterTruncate"    # Landroid/text/Spannable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    .line 413
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {p1, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    .line 414
    .local v5, "spans":[Ljava/lang/Object;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v5

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 415
    .local v4, "span":Ljava/lang/Object;
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 416
    .local v6, "start":I
    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 417
    .local v1, "end":I
    if-nez v6, :cond_0

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ne v1, v7, :cond_0

    .line 418
    invoke-interface {p2, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 419
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v7

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p2, v4, v9, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 414
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    .end local v1    # "end":I
    .end local v4    # "span":Ljava/lang/Object;
    .end local v6    # "start":I
    :cond_1
    return-void
.end method

.method private createLayout(FZLandroid/text/Layout;)Landroid/text/Layout;
    .locals 27
    .param p1, "width"    # F
    .param p2, "forceWidth"    # Z
    .param p3, "previousLayout"    # Landroid/text/Layout;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v4, v1, v2}, Lc8/UYf;->getTextWidth(Landroid/text/TextPaint;FZ)F

    move-result v26

    .line 326
    .local v26, "textWidth":F
    move-object/from16 v0, p0

    iget v4, v0, Lc8/UYf;->previousWidth:F

    move/from16 v0, v26

    invoke-static {v4, v0}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p3, :cond_2

    .line 327
    :cond_0
    const/4 v11, 0x0

    .line 328
    .local v11, "forceRtl":Z
    invoke-virtual/range {p0 .. p0}, Lc8/UYf;->getStyles()Lc8/PYf;

    move-result-object v4

    const-string/jumbo v5, "direction"

    invoke-virtual {v4, v5}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 329
    .local v21, "direction":Ljava/lang/Object;
    if-eqz v21, :cond_1

    const-string/jumbo v4, "text"

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/UYf;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    const-string/jumbo v4, "rtl"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 332
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v26

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v11}, Lc8/ggg;->create(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZ)Landroid/text/StaticLayout;

    move-result-object v25

    .line 337
    .end local v11    # "forceRtl":Z
    .end local v21    # "direction":Ljava/lang/Object;
    .local v25, "layout":Landroid/text/Layout;
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lc8/UYf;->mNumberOfLines:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lc8/UYf;->mNumberOfLines:I

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lc8/UYf;->mNumberOfLines:I

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget v4, v0, Lc8/UYf;->mNumberOfLines:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v24

    .line 340
    .local v24, "lastLineStart":I
    move-object/from16 v0, p0

    iget v4, v0, Lc8/UYf;->mNumberOfLines:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v23

    .line 341
    .local v23, "lastLineEnd":I
    move/from16 v0, v24

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 343
    if-lez v24, :cond_3

    .line 344
    new-instance v20, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    const/4 v5, 0x0

    move/from16 v0, v24

    invoke-interface {v4, v5, v0}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 348
    .local v20, "builder":Landroid/text/SpannableStringBuilder;
    :goto_1
    new-instance v22, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v4, v0, v1}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 349
    .local v22, "lastLine":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v26

    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/UYf;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4, v5, v6}, Lc8/UYf;->truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1}, Lc8/UYf;->adjustSpansRange(Landroid/text/Spanned;Landroid/text/Spannable;)V

    .line 351
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/UYf;->spanned:Landroid/text/Spanned;

    .line 352
    new-instance v12, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v0, v26

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v15, v4

    sget-object v16, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 356
    .end local v20    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v22    # "lastLine":Landroid/text/Editable;
    .end local v23    # "lastLineEnd":I
    .end local v24    # "lastLineStart":I
    :goto_2
    return-object v12

    .line 335
    .end local v25    # "layout":Landroid/text/Layout;
    :cond_2
    move-object/from16 v25, p3

    .restart local v25    # "layout":Landroid/text/Layout;
    goto/16 :goto_0

    .line 346
    .restart local v23    # "lastLineEnd":I
    .restart local v24    # "lastLineStart":I
    :cond_3
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    .restart local v20    # "builder":Landroid/text/SpannableStringBuilder;
    goto :goto_1

    .end local v20    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v23    # "lastLineEnd":I
    .end local v24    # "lastLineStart":I
    :cond_4
    move-object/from16 v12, v25

    .line 356
    goto :goto_2
.end method

.method private createSetSpanOperation(II)Ljava/util/List;
    .locals 8
    .param p1, "end"    # I
    .param p2, "spanFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lc8/TYf;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    .line 489
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 490
    .local v0, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/dom/WXTextDomObject$SetSpanOperation;>;"
    const/4 v1, 0x0

    .line 491
    .local v1, "start":I
    if-lt p1, v1, :cond_6

    .line 492
    iget-object v2, p0, Lc8/UYf;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v3, Lcom/taobao/weex/ui/component/WXTextDecoration;->UNDERLINE:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lc8/UYf;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    sget-object v3, Lcom/taobao/weex/ui/component/WXTextDecoration;->LINETHROUGH:Lcom/taobao/weex/ui/component/WXTextDecoration;

    if-ne v2, v3, :cond_1

    .line 493
    :cond_0
    new-instance v2, Lc8/TYf;

    new-instance v3, Lc8/wYf;

    iget-object v4, p0, Lc8/UYf;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    invoke-direct {v3, v4}, Lc8/wYf;-><init>(Lcom/taobao/weex/ui/component/WXTextDecoration;)V

    invoke-direct {v2, v1, p1, v3, p2}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    iget-boolean v2, p0, Lc8/UYf;->mIsColorSet:Z

    if-eqz v2, :cond_2

    .line 496
    new-instance v2, Lc8/TYf;

    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lc8/UYf;->mColor:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-direct {v2, v1, p1, v3, p2}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_2
    iget v2, p0, Lc8/UYf;->mFontSize:I

    if-eq v2, v7, :cond_3

    .line 500
    new-instance v2, Lc8/TYf;

    new-instance v3, Landroid/text/style/AbsoluteSizeSpan;

    iget v4, p0, Lc8/UYf;->mFontSize:I

    invoke-direct {v3, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v2, v1, p1, v3, p2}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_3
    iget v2, p0, Lc8/UYf;->mFontStyle:I

    if-ne v2, v7, :cond_4

    iget v2, p0, Lc8/UYf;->mFontWeight:I

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lc8/UYf;->mFontFamily:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 505
    :cond_4
    new-instance v2, Lc8/TYf;

    new-instance v3, Lc8/AYf;

    iget v4, p0, Lc8/UYf;->mFontStyle:I

    iget v5, p0, Lc8/UYf;->mFontWeight:I

    iget-object v6, p0, Lc8/UYf;->mFontFamily:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lc8/AYf;-><init>(IILjava/lang/String;)V

    invoke-direct {v2, v1, p1, v3, p2}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    :cond_5
    new-instance v2, Lc8/TYf;

    new-instance v3, Landroid/text/style/AlignmentSpan$Standard;

    iget-object v4, p0, Lc8/UYf;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-direct {v3, v4}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-direct {v2, v1, p1, v3, p2}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    iget v2, p0, Lc8/UYf;->mLineHeight:I

    if-eq v2, v7, :cond_6

    .line 511
    new-instance v2, Lc8/TYf;

    new-instance v3, Lc8/LYf;

    iget v4, p0, Lc8/UYf;->mLineHeight:I

    invoke-direct {v3, v4}, Lc8/LYf;-><init>(I)V

    invoke-direct {v2, v1, p1, v3, p2}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 514
    :cond_6
    return-object v0
.end method

.method private recalculateLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 255
    invoke-static {p0}, Lc8/pgg;->getContentWidth(Lc8/qYf;)F

    move-result v0

    .line 256
    .local v0, "contentWidth":F
    cmpl-float v1, v0, v2

    if-lez v1, :cond_0

    .line 257
    iget-object v1, p0, Lc8/UYf;->mText:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lc8/UYf;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    iput-object v1, p0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    .line 258
    iget-object v1, p0, Lc8/UYf;->mText:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 259
    const/4 v1, 0x1

    iget-object v2, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    invoke-direct {p0, v0, v1, v2}, Lc8/UYf;->createLayout(FZLandroid/text/Layout;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    .line 260
    iget-object v1, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lc8/UYf;->previousWidth:F

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    iput v2, p0, Lc8/UYf;->previousWidth:F

    goto :goto_0
.end method

.method private swap()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lc8/UYf;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    .line 525
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    .line 527
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/UYf;->hasBeenMeasured:Z

    .line 528
    return-void
.end method

.method private truncate(Landroid/text/Editable;Landroid/text/TextPaint;ILandroid/text/TextUtils$TruncateAt;)Landroid/text/Spanned;
    .locals 19
    .param p1, "source"    # Landroid/text/Editable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "paint"    # Landroid/text/TextPaint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "desired"    # I
    .param p4, "truncateAt"    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 373
    new-instance v14, Landroid/text/SpannedString;

    const-string/jumbo v3, ""

    invoke-direct {v14, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 374
    .local v14, "ret":Landroid/text/Spanned;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 375
    if-eqz p4, :cond_1

    .line 376
    const-string/jumbo v3, "\u2026"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 377
    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    .line 378
    .local v16, "spans":[Ljava/lang/Object;
    move-object/from16 v10, v16

    .local v10, "arr$":[Ljava/lang/Object;
    move-object/from16 v0, v16

    array-length v13, v0

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    if-ge v12, v13, :cond_1

    aget-object v15, v10, v12

    .line 379
    .local v15, "span":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v17

    .line 380
    .local v17, "start":I
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    .line 381
    .local v11, "end":I
    if-nez v17, :cond_0

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v11, v3, :cond_0

    .line 382
    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 383
    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v4

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p1

    invoke-interface {v0, v15, v3, v4, v5}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 378
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 391
    .end local v10    # "arr$":[Ljava/lang/Object;
    .end local v11    # "end":I
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v15    # "span":Ljava/lang/Object;
    .end local v16    # "spans":[Ljava/lang/Object;
    .end local v17    # "start":I
    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_3

    .line 392
    invoke-interface/range {p1 .. p1}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v18, v3, -0x1

    .line 393
    .local v18, "startOffset":I
    if-eqz p4, :cond_2

    .line 394
    add-int/lit8 v18, v18, -0x1

    .line 396
    :cond_2
    add-int/lit8 v3, v18, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 397
    new-instance v2, Landroid/text/StaticLayout;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 398
    .local v2, "layout":Landroid/text/StaticLayout;
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 399
    move-object/from16 v14, p1

    .line 404
    .end local v2    # "layout":Landroid/text/StaticLayout;
    .end local v18    # "startOffset":I
    :cond_3
    return-object v14
.end method

.method private updateStyleAndText()V
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lc8/UYf;->getStyles()Lc8/PYf;

    move-result-object v0

    invoke-direct {p0, v0}, Lc8/UYf;->updateStyleImp(Ljava/util/Map;)V

    .line 272
    invoke-virtual {p0}, Lc8/UYf;->getAttrs()Lc8/xYf;

    move-result-object v0

    invoke-static {v0}, Lc8/xYf;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/UYf;->mText:Ljava/lang/String;

    .line 273
    return-void
.end method

.method private updateStyleImp(Ljava/util/Map;)V
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
    .local p1, "style":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, -0x1

    .line 280
    if-eqz p1, :cond_7

    .line 281
    const-string/jumbo v3, "lines"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    invoke-static {p1}, Lc8/PYf;->getLines(Ljava/util/Map;)I

    move-result v1

    .line 283
    .local v1, "lines":I
    if-lez v1, :cond_8

    .end local v1    # "lines":I
    :goto_0
    iput v1, p0, Lc8/UYf;->mNumberOfLines:I

    .line 285
    :cond_0
    const-string/jumbo v3, "fontSize"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    invoke-virtual {p0}, Lc8/UYf;->getViewPortWidth()I

    move-result v3

    invoke-static {p1, v3}, Lc8/PYf;->getFontSize(Ljava/util/Map;I)I

    move-result v3

    iput v3, p0, Lc8/UYf;->mFontSize:I

    .line 288
    :cond_1
    const-string/jumbo v3, "fontWeight"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 289
    invoke-static {p1}, Lc8/PYf;->getFontWeight(Ljava/util/Map;)I

    move-result v3

    iput v3, p0, Lc8/UYf;->mFontWeight:I

    .line 291
    :cond_2
    const-string/jumbo v3, "fontStyle"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 292
    invoke-static {p1}, Lc8/PYf;->getFontStyle(Ljava/util/Map;)I

    move-result v3

    iput v3, p0, Lc8/UYf;->mFontStyle:I

    .line 294
    :cond_3
    const-string/jumbo v3, "color"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 295
    invoke-static {p1}, Lc8/PYf;->getTextColor(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/Bgg;->getColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lc8/UYf;->mColor:I

    .line 296
    iget v3, p0, Lc8/UYf;->mColor:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_9

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, p0, Lc8/UYf;->mIsColorSet:Z

    .line 298
    :cond_4
    const-string/jumbo v3, "textDecoration"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 299
    invoke-static {p1}, Lc8/PYf;->getTextDecoration(Ljava/util/Map;)Lcom/taobao/weex/ui/component/WXTextDecoration;

    move-result-object v3

    iput-object v3, p0, Lc8/UYf;->mTextDecoration:Lcom/taobao/weex/ui/component/WXTextDecoration;

    .line 301
    :cond_5
    const-string/jumbo v3, "fontFamily"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 302
    invoke-static {p1}, Lc8/PYf;->getFontFamily(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/UYf;->mFontFamily:Ljava/lang/String;

    .line 304
    :cond_6
    invoke-static {p1}, Lc8/PYf;->getTextAlignment(Ljava/util/Map;)Landroid/text/Layout$Alignment;

    move-result-object v3

    iput-object v3, p0, Lc8/UYf;->mAlignment:Landroid/text/Layout$Alignment;

    .line 305
    invoke-static {p1}, Lc8/PYf;->getTextOverflow(Ljava/util/Map;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    iput-object v3, p0, Lc8/UYf;->textOverflow:Landroid/text/TextUtils$TruncateAt;

    .line 306
    invoke-virtual {p0}, Lc8/UYf;->getViewPortWidth()I

    move-result v3

    invoke-static {p1, v3}, Lc8/PYf;->getLineHeight(Ljava/util/Map;I)I

    move-result v0

    .line 307
    .local v0, "lineHeight":I
    if-eq v0, v2, :cond_7

    .line 308
    iput v0, p0, Lc8/UYf;->mLineHeight:I

    .line 311
    .end local v0    # "lineHeight":I
    :cond_7
    return-void

    .restart local v1    # "lines":I
    :cond_8
    move v1, v2

    .line 283
    goto/16 :goto_0

    .line 296
    .end local v1    # "lines":I
    :cond_9
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private warmUpTextLayoutCache(Landroid/text/Layout;)Z
    .locals 3
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    .line 539
    :try_start_0
    sget-object v2, Lc8/UYf;->DUMMY_CANVAS:Landroid/graphics/Canvas;

    invoke-virtual {p1, v2}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    const/4 v1, 0x1

    .line 545
    .local v1, "result":Z
    :goto_0
    return v1

    .line 541
    .end local v1    # "result":Z
    :catch_0
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lc8/UYf;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lc8/xgg;->eTag(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 543
    const/4 v1, 0x0

    .restart local v1    # "result":Z
    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic clone()Lc8/HYf;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lc8/UYf;->clone()Lc8/UYf;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lc8/UYf;
    .locals 5

    .prologue
    .line 231
    invoke-virtual {p0}, Lc8/UYf;->isCloneThis()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 248
    .end local p0    # "this":Lc8/UYf;
    :goto_0
    return-object p0

    .line 234
    .restart local p0    # "this":Lc8/UYf;
    :cond_0
    const/4 v0, 0x0

    .line 236
    .local v0, "dom":Lc8/UYf;
    :try_start_0
    new-instance v1, Lc8/UYf;

    invoke-direct {v1}, Lc8/UYf;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    .end local v0    # "dom":Lc8/UYf;
    .local v1, "dom":Lc8/UYf;
    :try_start_1
    invoke-virtual {p0, v1}, Lc8/UYf;->copyFields(Lc8/HYf;)V

    .line 238
    iget-boolean v3, p0, Lc8/UYf;->hasBeenMeasured:Z

    iput-boolean v3, v1, Lc8/UYf;->hasBeenMeasured:Z

    .line 239
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v4, p0, Lc8/UYf;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v1, Lc8/UYf;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 245
    .end local v1    # "dom":Lc8/UYf;
    .restart local v0    # "dom":Lc8/UYf;
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 246
    iget-object v3, p0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    iput-object v3, v0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    :cond_2
    move-object p0, v0

    .line 248
    goto :goto_0

    .line 240
    :catch_0
    move-exception v2

    .line 241
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 242
    const-string/jumbo v3, "WXTextDomObject clone error: "

    invoke-static {v3, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 240
    .end local v0    # "dom":Lc8/UYf;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dom":Lc8/UYf;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "dom":Lc8/UYf;
    .restart local v0    # "dom":Lc8/UYf;
    goto :goto_2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lc8/UYf;->clone()Lc8/UYf;

    move-result-object v0

    return-object v0
.end method

.method protected createSpanned(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 462
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 463
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 464
    .local v0, "spannable":Landroid/text/SpannableString;
    const/16 v1, 0x11

    invoke-virtual {p0, v0, v1}, Lc8/UYf;->updateSpannable(Landroid/text/Spannable;I)V

    .line 467
    .end local v0    # "spannable":Landroid/text/SpannableString;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getExtra()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lc8/UYf;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Layout;

    return-object v0
.end method

.method public bridge synthetic getExtra()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lc8/UYf;->getExtra()Landroid/text/Layout;

    move-result-object v0

    return-object v0
.end method

.method public getTextPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lc8/UYf;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method getTextWidth(Landroid/text/TextPaint;FZ)F
    .locals 3
    .param p1, "textPaint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # F
    .param p3, "forceToDesired"    # Z

    .prologue
    .line 434
    iget-object v2, p0, Lc8/UYf;->mText:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 435
    if-eqz p3, :cond_0

    .line 451
    .end local p2    # "outerWidth":F
    :goto_0
    return p2

    .line 438
    .restart local p2    # "outerWidth":F
    :cond_0
    const/4 p2, 0x0

    goto :goto_0

    .line 441
    :cond_1
    if-eqz p3, :cond_2

    .line 442
    move v1, p2

    .local v1, "textWidth":F
    :goto_1
    move p2, v1

    .line 451
    goto :goto_0

    .line 444
    .end local v1    # "textWidth":F
    :cond_2
    iget-object v2, p0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    invoke-static {v2, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    .line 445
    .local v0, "desiredWidth":F
    invoke-static {p2}, Lc8/yZf;->isUndefined(F)Z

    move-result v2

    if-nez v2, :cond_3

    cmpg-float v2, v0, p2

    if-gez v2, :cond_4

    .line 446
    :cond_3
    move v1, v0

    .restart local v1    # "textWidth":F
    goto :goto_1

    .line 448
    .end local v1    # "textWidth":F
    :cond_4
    move v1, p2

    .restart local v1    # "textWidth":F
    goto :goto_1
.end method

.method public layoutAfter()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lc8/UYf;->hasBeenMeasured:Z

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc8/pgg;->getContentWidth(Lc8/qYf;)F

    move-result v0

    iget v1, p0, Lc8/UYf;->previousWidth:F

    invoke-static {v0, v1}, Lc8/FZf;->floatsEqual(FF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lc8/UYf;->recalculateLayout()V

    .line 197
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/UYf;->hasBeenMeasured:Z

    .line 198
    iget-object v0, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    iget-object v1, p0, Lc8/UYf;->atomicReference:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 200
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lc8/UYf;->layout:Landroid/text/Layout;

    invoke-direct {p0, v0}, Lc8/UYf;->warmUpTextLayoutCache(Landroid/text/Layout;)Z

    .line 204
    :cond_1
    invoke-direct {p0}, Lc8/UYf;->swap()V

    .line 205
    invoke-super {p0}, Lc8/HYf;->layoutAfter()V

    .line 206
    return-void

    .line 194
    :cond_2
    invoke-direct {p0}, Lc8/UYf;->updateStyleAndText()V

    .line 195
    invoke-direct {p0}, Lc8/UYf;->recalculateLayout()V

    goto :goto_0
.end method

.method public layoutBefore()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/UYf;->hasBeenMeasured:Z

    .line 174
    invoke-direct {p0}, Lc8/UYf;->updateStyleAndText()V

    .line 175
    iget-object v0, p0, Lc8/UYf;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lc8/UYf;->createSpanned(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lc8/UYf;->spanned:Landroid/text/Spanned;

    .line 176
    invoke-virtual {p0}, Lc8/UYf;->hasNewLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const-string/jumbo v0, "Previous csslayout was ignored! markLayoutSeen() never called"

    invoke-static {v0}, Lc8/xgg;->d(Ljava/lang/String;)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lc8/UYf;->markUpdateSeen()V

    .line 182
    :cond_1
    invoke-super {p0}, Lc8/HYf;->dirty()V

    .line 183
    invoke-super {p0}, Lc8/HYf;->layoutBefore()V

    .line 184
    return-void
.end method

.method public updateAttr(Ljava/util/Map;)V
    .locals 1
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
    .line 215
    .local p1, "attrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lc8/UYf;->swap()V

    .line 216
    invoke-super {p0, p1}, Lc8/HYf;->updateAttr(Ljava/util/Map;)V

    .line 217
    const-string/jumbo v0, "value"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-static {p1}, Lc8/xYf;->getValue(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/UYf;->mText:Ljava/lang/String;

    .line 220
    :cond_0
    return-void
.end method

.method protected updateSpannable(Landroid/text/Spannable;I)V
    .locals 8
    .param p1, "spannable"    # Landroid/text/Spannable;
    .param p2, "spanFlag"    # I

    .prologue
    .line 471
    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v3

    invoke-direct {p0, v3, p2}, Lc8/UYf;->createSetSpanOperation(II)Ljava/util/List;

    move-result-object v2

    .line 472
    .local v2, "ops":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/dom/WXTextDomObject$SetSpanOperation;>;"
    iget v3, p0, Lc8/UYf;->mFontSize:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 473
    new-instance v3, Lc8/TYf;

    const/4 v4, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v5

    new-instance v6, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-direct {v3, v4, v5, v6, p2}, Lc8/TYf;-><init>(IILjava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_0
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 477
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/TYf;

    .line 478
    .local v1, "op":Lc8/TYf;
    invoke-virtual {v1, p1}, Lc8/TYf;->execute(Landroid/text/Spannable;)V

    goto :goto_0

    .line 480
    .end local v1    # "op":Lc8/TYf;
    :cond_1
    return-void
.end method

.method public updateStyle(Ljava/util/Map;)V
    .locals 0
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
    .line 224
    .local p1, "styles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lc8/UYf;->swap()V

    .line 225
    invoke-super {p0, p1}, Lc8/HYf;->updateStyle(Ljava/util/Map;)V

    .line 226
    invoke-direct {p0, p1}, Lc8/UYf;->updateStyleImp(Ljava/util/Map;)V

    .line 227
    return-void
.end method
