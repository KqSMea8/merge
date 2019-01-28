.class public Lc8/iu;
.super Landroid/view/ViewGroup;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Yt;,
        Lc8/hu;,
        Lc8/du;,
        Lc8/cu;,
        Lc8/gu;,
        Landroid/support/v7/widget/GridLayout$Assoc;,
        Lc8/fu;,
        Lc8/Zt;,
        Lc8/eu;,
        Lc8/bu;
    }
.end annotation


# static fields
.field private static final ALIGNMENT_MODE:I

.field public static final ALIGN_BOUNDS:I = 0x0

.field public static final ALIGN_MARGINS:I = 0x1

.field public static final BASELINE:Lc8/Yt;

.field public static final BOTTOM:Lc8/Yt;

.field private static final CAN_STRETCH:I = 0x2

.field public static final CENTER:Lc8/Yt;

.field private static final COLUMN_COUNT:I

.field private static final COLUMN_ORDER_PRESERVED:I

.field private static final DEFAULT_ALIGNMENT_MODE:I = 0x1

.field static final DEFAULT_CONTAINER_MARGIN:I = 0x0

.field private static final DEFAULT_COUNT:I = -0x80000000

.field private static final DEFAULT_ORDER_PRESERVED:Z = true

.field private static final DEFAULT_ORIENTATION:I = 0x0

.field private static final DEFAULT_USE_DEFAULT_MARGINS:Z = false

.field public static final END:Lc8/Yt;

.field public static final FILL:Lc8/Yt;

.field public static final HORIZONTAL:I = 0x0

.field private static final INFLEXIBLE:I = 0x0

.field private static final LEADING:Lc8/Yt;

.field public static final LEFT:Lc8/Yt;

.field static final LOG_PRINTER:Landroid/util/Printer;

.field static final MAX_SIZE:I = 0x186a0

.field static final NO_PRINTER:Landroid/util/Printer;

.field private static final ORIENTATION:I

.field public static final RIGHT:Lc8/Yt;

.field private static final ROW_COUNT:I

.field private static final ROW_ORDER_PRESERVED:I

.field public static final START:Lc8/Yt;

.field public static final TOP:Lc8/Yt;

.field private static final TRAILING:Lc8/Yt;

.field public static final UNDEFINED:I = -0x80000000

.field static final UNDEFINED_ALIGNMENT:Lc8/Yt;

.field static final UNINITIALIZED_HASH:I = 0x0

.field private static final USE_DEFAULT_MARGINS:I

.field public static final VERTICAL:I = 0x1


# instance fields
.field mAlignmentMode:I

.field mDefaultGap:I

.field final mHorizontalAxis:Lc8/bu;

.field mLastLayoutParamsHashCode:I

.field mOrientation:I

.field mPrinter:Landroid/util/Printer;

.field mUseDefaultMargins:Z

.field final mVerticalAxis:Lc8/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/util/LogPrinter;

    const/4 v1, 0x3

    const-class v2, Lc8/iu;

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc8/iu;->LOG_PRINTER:Landroid/util/Printer;

    .line 228
    new-instance v0, Lc8/Pt;

    invoke-direct {v0}, Lc8/Pt;-><init>()V

    sput-object v0, Lc8/iu;->NO_PRINTER:Landroid/util/Printer;

    .line 244
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_orientation:I

    sput v0, Lc8/iu;->ORIENTATION:I

    .line 245
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_rowCount:I

    sput v0, Lc8/iu;->ROW_COUNT:I

    .line 246
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_columnCount:I

    sput v0, Lc8/iu;->COLUMN_COUNT:I

    .line 247
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_useDefaultMargins:I

    sput v0, Lc8/iu;->USE_DEFAULT_MARGINS:I

    .line 248
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_alignmentMode:I

    sput v0, Lc8/iu;->ALIGNMENT_MODE:I

    .line 249
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_rowOrderPreserved:I

    sput v0, Lc8/iu;->ROW_ORDER_PRESERVED:I

    .line 250
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_columnOrderPreserved:I

    sput v0, Lc8/iu;->COLUMN_ORDER_PRESERVED:I

    .line 2477
    new-instance v0, Lc8/Qt;

    invoke-direct {v0}, Lc8/Qt;-><init>()V

    sput-object v0, Lc8/iu;->UNDEFINED_ALIGNMENT:Lc8/Yt;

    .line 2493
    new-instance v0, Lc8/Rt;

    invoke-direct {v0}, Lc8/Rt;-><init>()V

    sput-object v0, Lc8/iu;->LEADING:Lc8/Yt;

    .line 2509
    new-instance v0, Lc8/St;

    invoke-direct {v0}, Lc8/St;-><init>()V

    sput-object v0, Lc8/iu;->TRAILING:Lc8/Yt;

    .line 2525
    sget-object v0, Lc8/iu;->LEADING:Lc8/Yt;

    sput-object v0, Lc8/iu;->TOP:Lc8/Yt;

    .line 2531
    sget-object v0, Lc8/iu;->TRAILING:Lc8/Yt;

    sput-object v0, Lc8/iu;->BOTTOM:Lc8/Yt;

    .line 2537
    sget-object v0, Lc8/iu;->LEADING:Lc8/Yt;

    sput-object v0, Lc8/iu;->START:Lc8/Yt;

    .line 2543
    sget-object v0, Lc8/iu;->TRAILING:Lc8/Yt;

    sput-object v0, Lc8/iu;->END:Lc8/Yt;

    .line 2567
    sget-object v0, Lc8/iu;->START:Lc8/Yt;

    sget-object v1, Lc8/iu;->END:Lc8/Yt;

    invoke-static {v0, v1}, Lc8/iu;->createSwitchingAlignment(Lc8/Yt;Lc8/Yt;)Lc8/Yt;

    move-result-object v0

    sput-object v0, Lc8/iu;->LEFT:Lc8/Yt;

    .line 2573
    sget-object v0, Lc8/iu;->END:Lc8/Yt;

    sget-object v1, Lc8/iu;->START:Lc8/Yt;

    invoke-static {v0, v1}, Lc8/iu;->createSwitchingAlignment(Lc8/Yt;Lc8/Yt;)Lc8/Yt;

    move-result-object v0

    sput-object v0, Lc8/iu;->RIGHT:Lc8/Yt;

    .line 2580
    new-instance v0, Lc8/Ut;

    invoke-direct {v0}, Lc8/Ut;-><init>()V

    sput-object v0, Lc8/iu;->CENTER:Lc8/Yt;

    .line 2599
    new-instance v0, Lc8/Wt;

    invoke-direct {v0}, Lc8/Wt;-><init>()V

    sput-object v0, Lc8/iu;->BASELINE:Lc8/Yt;

    .line 2655
    new-instance v0, Lc8/Xt;

    invoke-direct {v0}, Lc8/Xt;-><init>()V

    sput-object v0, Lc8/iu;->FILL:Lc8/Yt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 297
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc8/iu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 289
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc8/iu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 290
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 269
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 254
    new-instance v1, Lc8/bu;

    invoke-direct {v1, p0, v3, v4}, Lc8/bu;-><init>(Lc8/iu;ZLc8/Pt;)V

    iput-object v1, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    .line 255
    new-instance v1, Lc8/bu;

    invoke-direct {v1, p0, v2, v4}, Lc8/bu;-><init>(Lc8/iu;ZLc8/Pt;)V

    iput-object v1, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    .line 256
    iput v2, p0, Lc8/iu;->mOrientation:I

    .line 257
    iput-boolean v2, p0, Lc8/iu;->mUseDefaultMargins:Z

    .line 258
    iput v3, p0, Lc8/iu;->mAlignmentMode:I

    .line 260
    iput v2, p0, Lc8/iu;->mLastLayoutParamsHashCode:I

    .line 261
    sget-object v1, Lc8/iu;->LOG_PRINTER:Landroid/util/Printer;

    iput-object v1, p0, Lc8/iu;->mPrinter:Landroid/util/Printer;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->default_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lc8/iu;->mDefaultGap:I

    .line 271
    sget-object v1, Lcom/youku/phone/R$styleable;->GridLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 273
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lc8/iu;->ROW_COUNT:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/iu;->setRowCount(I)V

    .line 274
    sget v1, Lc8/iu;->COLUMN_COUNT:I

    const/high16 v2, -0x80000000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/iu;->setColumnCount(I)V

    .line 275
    sget v1, Lc8/iu;->ORIENTATION:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/iu;->setOrientation(I)V

    .line 276
    sget v1, Lc8/iu;->USE_DEFAULT_MARGINS:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lc8/iu;->setUseDefaultMargins(Z)V

    .line 277
    sget v1, Lc8/iu;->ALIGNMENT_MODE:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/iu;->setAlignmentMode(I)V

    .line 278
    sget v1, Lc8/iu;->ROW_ORDER_PRESERVED:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lc8/iu;->setRowOrderPreserved(Z)V

    .line 279
    sget v1, Lc8/iu;->COLUMN_ORDER_PRESERVED:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Lc8/iu;->setColumnOrderPreserved(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 282
    return-void

    .line 281
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Lc8/iu;->handleInvalidParams(Ljava/lang/String;)V

    return-void
.end method

.method static adjust(II)I
    .locals 2
    .param p0, "measureSpec"    # I
    .param p1, "delta"    # I

    .prologue
    .line 932
    add-int v0, p0, p1

    .line 933
    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 932
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method static append([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "b":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .line 613
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 614
    .local v0, "result":[Ljava/lang/Object;, "[TT;"
    array-length v1, p0

    invoke-static {p0, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 616
    return-object v0
.end method

.method static canStretch(I)Z
    .locals 1
    .param p0, "flexibility"    # I

    .prologue
    .line 2673
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkLayoutParams(Lc8/eu;Z)V
    .locals 8
    .param p1, "lp"    # Lc8/eu;
    .param p2, "horizontal"    # Z

    .prologue
    const/high16 v7, -0x80000000

    .line 811
    if-eqz p2, :cond_3

    const-string/jumbo v2, "column"

    .line 812
    .local v2, "groupName":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_4

    iget-object v4, p1, Lc8/eu;->columnSpec:Lc8/hu;

    .line 813
    .local v4, "spec":Lc8/hu;
    :goto_1
    iget-object v3, v4, Lc8/hu;->span:Lc8/du;

    .line 814
    .local v3, "span":Lc8/du;
    iget v5, v3, Lc8/du;->min:I

    if-eq v5, v7, :cond_0

    iget v5, v3, Lc8/du;->min:I

    if-gez v5, :cond_0

    .line 815
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " indices must be positive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/iu;->handleInvalidParams(Ljava/lang/String;)V

    .line 817
    :cond_0
    if-eqz p2, :cond_5

    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    .line 818
    .local v0, "axis":Lc8/bu;
    :goto_2
    iget v1, v0, Lc8/bu;->definedCount:I

    .line 819
    .local v1, "count":I
    if-eq v1, v7, :cond_2

    .line 820
    iget v5, v3, Lc8/du;->max:I

    if-le v5, v1, :cond_1

    .line 821
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " indices (start + span) mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/iu;->handleInvalidParams(Ljava/lang/String;)V

    .line 824
    :cond_1
    invoke-virtual {v3}, Lc8/du;->size()I

    move-result v5

    if-le v5, v1, :cond_2

    .line 825
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " span mustn\'t exceed the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/iu;->handleInvalidParams(Ljava/lang/String;)V

    .line 828
    :cond_2
    return-void

    .line 811
    .end local v0    # "axis":Lc8/bu;
    .end local v1    # "count":I
    .end local v2    # "groupName":Ljava/lang/String;
    .end local v3    # "span":Lc8/du;
    .end local v4    # "spec":Lc8/hu;
    :cond_3
    const-string/jumbo v2, "row"

    goto :goto_0

    .line 812
    .restart local v2    # "groupName":Ljava/lang/String;
    :cond_4
    iget-object v4, p1, Lc8/eu;->rowSpec:Lc8/hu;

    goto :goto_1

    .line 817
    .restart local v3    # "span":Lc8/du;
    .restart local v4    # "spec":Lc8/hu;
    :cond_5
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    goto :goto_2
.end method

.method private static clip(Lc8/du;ZI)I
    .locals 3
    .param p0, "minorRange"    # Lc8/du;
    .param p1, "minorWasDefined"    # Z
    .param p2, "count"    # I

    .prologue
    .line 719
    invoke-virtual {p0}, Lc8/du;->size()I

    move-result v1

    .line 720
    .local v1, "size":I
    if-nez p2, :cond_0

    .line 724
    .end local v1    # "size":I
    :goto_0
    return v1

    .line 723
    .restart local v1    # "size":I
    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lc8/du;->min:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 724
    .local v0, "min":I
    :goto_1
    sub-int v2, p2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 723
    .end local v0    # "min":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private computeLayoutParamsHashCode()I
    .locals 7

    .prologue
    .line 870
    const/4 v4, 0x1

    .line 871
    .local v4, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lc8/iu;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 872
    invoke-virtual {p0, v2}, Lc8/iu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 873
    .local v1, "c":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 874
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lc8/eu;

    .line 875
    .local v3, "lp":Lc8/eu;
    mul-int/lit8 v5, v4, 0x1f

    invoke-virtual {v3}, Lc8/eu;->hashCode()I

    move-result v6

    add-int v4, v5, v6

    .line 871
    .end local v3    # "lp":Lc8/eu;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    .end local v1    # "c":Landroid/view/View;
    :cond_1
    return v4
.end method

.method private consistencyCheck()V
    .locals 2

    .prologue
    .line 881
    iget v0, p0, Lc8/iu;->mLastLayoutParamsHashCode:I

    if-nez v0, :cond_1

    .line 882
    invoke-direct {p0}, Lc8/iu;->validateLayoutParams()V

    .line 883
    invoke-direct {p0}, Lc8/iu;->computeLayoutParamsHashCode()I

    move-result v0

    iput v0, p0, Lc8/iu;->mLastLayoutParamsHashCode:I

    .line 890
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget v0, p0, Lc8/iu;->mLastLayoutParamsHashCode:I

    invoke-direct {p0}, Lc8/iu;->computeLayoutParamsHashCode()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 885
    iget-object v0, p0, Lc8/iu;->mPrinter:Landroid/util/Printer;

    const-string/jumbo v1, "The fields of some layout parameters were modified in between layout operations. Check the javadoc for GridLayout.LayoutParams#rowSpec."

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 887
    invoke-direct {p0}, Lc8/iu;->invalidateStructure()V

    .line 888
    invoke-direct {p0}, Lc8/iu;->consistencyCheck()V

    goto :goto_0
.end method

.method private static createSwitchingAlignment(Lc8/Yt;Lc8/Yt;)Lc8/Yt;
    .locals 1
    .param p0, "ltr"    # Lc8/Yt;
    .param p1, "rtl"    # Lc8/Yt;

    .prologue
    .line 2546
    new-instance v0, Lc8/Tt;

    invoke-direct {v0, p0, p1}, Lc8/Tt;-><init>(Lc8/Yt;Lc8/Yt;)V

    return-object v0
.end method

.method private drawLine(Landroid/graphics/Canvas;IIIILandroid/graphics/Paint;)V
    .locals 7
    .param p1, "graphics"    # Landroid/graphics/Canvas;
    .param p2, "x1"    # I
    .param p3, "y1"    # I
    .param p4, "x2"    # I
    .param p5, "y2"    # I
    .param p6, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 861
    invoke-direct {p0}, Lc8/iu;->isLayoutRtlCompat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    invoke-virtual {p0}, Lc8/iu;->getWidth()I

    move-result v6

    .line 863
    .local v6, "width":I
    sub-int v0, v6, p2

    int-to-float v1, v0

    int-to-float v2, p3

    sub-int v0, v6, p4

    int-to-float v3, v0

    int-to-float v4, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 867
    .end local v6    # "width":I
    :goto_0
    return-void

    .line 865
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    move-object v0, p1

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static fits([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "value"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/4 v1, 0x0

    .line 696
    array-length v2, p0

    if-le p3, v2, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v1

    .line 699
    :cond_1
    move v0, p2

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 700
    aget v2, p0, v0

    if-gt v2, p1, :cond_0

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 704
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static getAlignment(IZ)Lc8/Yt;
    .locals 4
    .param p0, "gravity"    # I
    .param p1, "horizontal"    # Z

    .prologue
    .line 620
    if-eqz p1, :cond_0

    const/4 v1, 0x7

    .line 621
    .local v1, "mask":I
    :goto_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    .line 622
    .local v2, "shift":I
    :goto_1
    and-int v3, p0, v1

    shr-int v0, v3, v2

    .line 623
    .local v0, "flags":I
    sparse-switch v0, :sswitch_data_0

    .line 637
    sget-object v3, Lc8/iu;->UNDEFINED_ALIGNMENT:Lc8/Yt;

    :goto_2
    return-object v3

    .line 620
    .end local v0    # "flags":I
    .end local v1    # "mask":I
    .end local v2    # "shift":I
    :cond_0
    const/16 v1, 0x70

    goto :goto_0

    .line 621
    .restart local v1    # "mask":I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1

    .line 625
    .restart local v0    # "flags":I
    .restart local v2    # "shift":I
    :sswitch_0
    if-eqz p1, :cond_2

    sget-object v3, Lc8/iu;->LEFT:Lc8/Yt;

    goto :goto_2

    :cond_2
    sget-object v3, Lc8/iu;->TOP:Lc8/Yt;

    goto :goto_2

    .line 627
    :sswitch_1
    if-eqz p1, :cond_3

    sget-object v3, Lc8/iu;->RIGHT:Lc8/Yt;

    goto :goto_2

    :cond_3
    sget-object v3, Lc8/iu;->BOTTOM:Lc8/Yt;

    goto :goto_2

    .line 629
    :sswitch_2
    sget-object v3, Lc8/iu;->FILL:Lc8/Yt;

    goto :goto_2

    .line 631
    :sswitch_3
    sget-object v3, Lc8/iu;->CENTER:Lc8/Yt;

    goto :goto_2

    .line 633
    :sswitch_4
    sget-object v3, Lc8/iu;->START:Lc8/Yt;

    goto :goto_2

    .line 635
    :sswitch_5
    sget-object v3, Lc8/iu;->END:Lc8/Yt;

    goto :goto_2

    .line 623
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_0
        0x5 -> :sswitch_1
        0x7 -> :sswitch_2
        0x800003 -> :sswitch_4
        0x800005 -> :sswitch_5
    .end sparse-switch
.end method

.method private getDefaultMargin(Landroid/view/View;Lc8/eu;ZZ)I
    .locals 8
    .param p1, "c"    # Landroid/view/View;
    .param p2, "p"    # Lc8/eu;
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 654
    iget-boolean v6, p0, Lc8/iu;->mUseDefaultMargins:Z

    if-nez v6, :cond_0

    .line 663
    :goto_0
    return v5

    .line 657
    :cond_0
    if-eqz p3, :cond_2

    iget-object v4, p2, Lc8/eu;->columnSpec:Lc8/hu;

    .line 658
    .local v4, "spec":Lc8/hu;
    :goto_1
    if-eqz p3, :cond_3

    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    .line 659
    .local v0, "axis":Lc8/bu;
    :goto_2
    iget-object v3, v4, Lc8/hu;->span:Lc8/du;

    .line 660
    .local v3, "span":Lc8/du;
    if-eqz p3, :cond_5

    invoke-direct {p0}, Lc8/iu;->isLayoutRtlCompat()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez p4, :cond_4

    move v2, v1

    .line 661
    .local v2, "leading1":Z
    :goto_3
    if-eqz v2, :cond_7

    iget v6, v3, Lc8/du;->min:I

    if-nez v6, :cond_6

    .line 663
    .local v1, "isAtEdge":Z
    :cond_1
    :goto_4
    invoke-direct {p0, p1, v1, p3, p4}, Lc8/iu;->getDefaultMargin(Landroid/view/View;ZZZ)I

    move-result v5

    goto :goto_0

    .line 657
    .end local v0    # "axis":Lc8/bu;
    .end local v1    # "isAtEdge":Z
    .end local v2    # "leading1":Z
    .end local v3    # "span":Lc8/du;
    .end local v4    # "spec":Lc8/hu;
    :cond_2
    iget-object v4, p2, Lc8/eu;->rowSpec:Lc8/hu;

    goto :goto_1

    .line 658
    .restart local v4    # "spec":Lc8/hu;
    :cond_3
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    goto :goto_2

    .restart local v0    # "axis":Lc8/bu;
    .restart local v3    # "span":Lc8/du;
    :cond_4
    move v2, v5

    .line 660
    goto :goto_3

    :cond_5
    move v2, p4

    goto :goto_3

    .restart local v2    # "leading1":Z
    :cond_6
    move v1, v5

    .line 661
    goto :goto_4

    :cond_7
    iget v6, v3, Lc8/du;->max:I

    invoke-virtual {v0}, Lc8/bu;->getCount()I

    move-result v7

    if-eq v6, v7, :cond_1

    move v1, v5

    goto :goto_4
.end method

.method private getDefaultMargin(Landroid/view/View;ZZ)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 643
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc8/Iw;

    if-ne v0, v1, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lc8/iu;->mDefaultGap:I

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getDefaultMargin(Landroid/view/View;ZZZ)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "isAtEdge"    # Z
    .param p3, "horizontal"    # Z
    .param p4, "leading"    # Z

    .prologue
    .line 650
    invoke-direct {p0, p1, p3, p4}, Lc8/iu;->getDefaultMargin(Landroid/view/View;ZZ)I

    move-result v0

    return v0
.end method

.method private getMargin(Landroid/view/View;ZZ)I
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 679
    iget v5, p0, Lc8/iu;->mAlignmentMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 680
    invoke-virtual {p0, p1, p2, p3}, Lc8/iu;->getMargin1(Landroid/view/View;ZZ)I

    move-result v5

    .line 687
    :goto_0
    return v5

    .line 682
    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    .line 683
    .local v0, "axis":Lc8/bu;
    :goto_1
    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lc8/bu;->getLeadingMargins()[I

    move-result-object v3

    .line 684
    .local v3, "margins":[I
    :goto_2
    invoke-virtual {p0, p1}, Lc8/iu;->getLayoutParams(Landroid/view/View;)Lc8/eu;

    move-result-object v2

    .line 685
    .local v2, "lp":Lc8/eu;
    if-eqz p2, :cond_3

    iget-object v4, v2, Lc8/eu;->columnSpec:Lc8/hu;

    .line 686
    .local v4, "spec":Lc8/hu;
    :goto_3
    if-eqz p3, :cond_4

    iget-object v5, v4, Lc8/hu;->span:Lc8/du;

    iget v1, v5, Lc8/du;->min:I

    .line 687
    .local v1, "index":I
    :goto_4
    aget v5, v3, v1

    goto :goto_0

    .line 682
    .end local v0    # "axis":Lc8/bu;
    .end local v1    # "index":I
    .end local v2    # "lp":Lc8/eu;
    .end local v3    # "margins":[I
    .end local v4    # "spec":Lc8/hu;
    :cond_1
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    goto :goto_1

    .line 683
    .restart local v0    # "axis":Lc8/bu;
    :cond_2
    invoke-virtual {v0}, Lc8/bu;->getTrailingMargins()[I

    move-result-object v3

    goto :goto_2

    .line 685
    .restart local v2    # "lp":Lc8/eu;
    .restart local v3    # "margins":[I
    :cond_3
    iget-object v4, v2, Lc8/eu;->rowSpec:Lc8/hu;

    goto :goto_3

    .line 686
    .restart local v4    # "spec":Lc8/hu;
    :cond_4
    iget-object v5, v4, Lc8/hu;->span:Lc8/du;

    iget v1, v5, Lc8/du;->max:I

    goto :goto_4
.end method

.method private getMeasurement(Landroid/view/View;Z)I
    .locals 1
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 975
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getTotalMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 692
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lc8/iu;->getMargin(Landroid/view/View;ZZ)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lc8/iu;->getMargin(Landroid/view/View;ZZ)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static handleInvalidParams(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 807
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private invalidateStructure()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    iput v0, p0, Lc8/iu;->mLastLayoutParamsHashCode:I

    .line 787
    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->invalidateStructure()V

    .line 788
    :cond_0
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->invalidateStructure()V

    .line 790
    :cond_1
    invoke-direct {p0}, Lc8/iu;->invalidateValues()V

    .line 791
    return-void
.end method

.method private invalidateValues()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->invalidateValues()V

    .line 798
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->invalidateValues()V

    .line 800
    :cond_0
    return-void
.end method

.method private isLayoutRtlCompat()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 675
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static max2([II)I
    .locals 4
    .param p0, "a"    # [I
    .param p1, "valueIfEmpty"    # I

    .prologue
    .line 604
    move v2, p1

    .line 605
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v0, p0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 606
    aget v3, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 605
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 608
    :cond_0
    return v2
.end method

.method private measureChildWithMargins2(Landroid/view/View;IIII)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "parentHeightSpec"    # I
    .param p4, "childWidth"    # I
    .param p5, "childHeight"    # I

    .prologue
    .line 897
    const/4 v2, 0x1

    .line 898
    invoke-direct {p0, p1, v2}, Lc8/iu;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    .line 897
    invoke-static {p2, v2, p4}, Lc8/iu;->getChildMeasureSpec(III)I

    move-result v1

    .line 899
    .local v1, "childWidthSpec":I
    const/4 v2, 0x0

    .line 900
    invoke-direct {p0, p1, v2}, Lc8/iu;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    .line 899
    invoke-static {p3, v2, p5}, Lc8/iu;->getChildMeasureSpec(III)I

    move-result v0

    .line 901
    .local v0, "childHeightSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 902
    return-void
.end method

.method private measureChildrenWithMargins(IIZ)V
    .locals 22
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "firstPass"    # Z

    .prologue
    .line 906
    const/16 v17, 0x0

    .local v17, "i":I
    invoke-virtual/range {p0 .. p0}, Lc8/iu;->getChildCount()I

    move-result v13

    .local v13, "N":I
    :goto_0
    move/from16 v0, v17

    if-ge v0, v13, :cond_6

    .line 907
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lc8/iu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 908
    .local v3, "c":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_0

    .line 909
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lc8/iu;->getLayoutParams(Landroid/view/View;)Lc8/eu;

    move-result-object v19

    .line 910
    .local v19, "lp":Lc8/eu;
    if-eqz p3, :cond_1

    .line 911
    move-object/from16 v0, v19

    iget v6, v0, Lc8/eu;->width:I

    move-object/from16 v0, v19

    iget v7, v0, Lc8/eu;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lc8/iu;->measureChildWithMargins2(Landroid/view/View;IIII)V

    .line 906
    .end local v19    # "lp":Lc8/eu;
    :cond_0
    :goto_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 913
    .restart local v19    # "lp":Lc8/eu;
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lc8/iu;->mOrientation:I

    if-nez v2, :cond_2

    const/16 v16, 0x1

    .line 914
    .local v16, "horizontal":Z
    :goto_2
    if-eqz v16, :cond_3

    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/eu;->columnSpec:Lc8/hu;

    move-object/from16 v21, v0

    .line 915
    .local v21, "spec":Lc8/hu;
    :goto_3
    move-object/from16 v0, v21

    iget-object v2, v0, Lc8/hu;->alignment:Lc8/Yt;

    sget-object v4, Lc8/iu;->FILL:Lc8/Yt;

    if-ne v2, v4, :cond_0

    .line 916
    move-object/from16 v0, v21

    iget-object v0, v0, Lc8/hu;->span:Lc8/du;

    move-object/from16 v20, v0

    .line 917
    .local v20, "span":Lc8/du;
    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    .line 918
    .local v14, "axis":Lc8/bu;
    :goto_4
    invoke-virtual {v14}, Lc8/bu;->getLocations()[I

    move-result-object v18

    .line 919
    .local v18, "locations":[I
    move-object/from16 v0, v20

    iget v2, v0, Lc8/du;->max:I

    aget v2, v18, v2

    move-object/from16 v0, v20

    iget v4, v0, Lc8/du;->min:I

    aget v4, v18, v4

    sub-int v15, v2, v4

    .line 920
    .local v15, "cellSize":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lc8/iu;->getTotalMargin(Landroid/view/View;Z)I

    move-result v2

    sub-int v6, v15, v2

    .line 921
    .local v6, "viewSize":I
    if-eqz v16, :cond_5

    .line 922
    move-object/from16 v0, v19

    iget v7, v0, Lc8/eu;->height:I

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lc8/iu;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 913
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Lc8/bu;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v20    # "span":Lc8/du;
    .end local v21    # "spec":Lc8/hu;
    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    .line 914
    .restart local v16    # "horizontal":Z
    :cond_3
    move-object/from16 v0, v19

    iget-object v0, v0, Lc8/eu;->rowSpec:Lc8/hu;

    move-object/from16 v21, v0

    goto :goto_3

    .line 917
    .restart local v20    # "span":Lc8/du;
    .restart local v21    # "spec":Lc8/hu;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    goto :goto_4

    .line 924
    .restart local v6    # "viewSize":I
    .restart local v14    # "axis":Lc8/bu;
    .restart local v15    # "cellSize":I
    .restart local v18    # "locations":[I
    :cond_5
    move-object/from16 v0, v19

    iget v11, v0, Lc8/eu;->width:I

    move-object/from16 v7, p0

    move-object v8, v3

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v6

    invoke-direct/range {v7 .. v12}, Lc8/iu;->measureChildWithMargins2(Landroid/view/View;IIII)V

    goto :goto_1

    .line 929
    .end local v3    # "c":Landroid/view/View;
    .end local v6    # "viewSize":I
    .end local v14    # "axis":Lc8/bu;
    .end local v15    # "cellSize":I
    .end local v16    # "horizontal":Z
    .end local v18    # "locations":[I
    .end local v19    # "lp":Lc8/eu;
    .end local v20    # "span":Lc8/du;
    .end local v21    # "spec":Lc8/hu;
    :cond_6
    return-void
.end method

.method private static procrusteanFill([IIII)V
    .locals 3
    .param p0, "a"    # [I
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "value"    # I

    .prologue
    .line 708
    array-length v0, p0

    .line 709
    .local v0, "length":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {p0, v1, v2, p3}, Ljava/util/Arrays;->fill([IIII)V

    .line 710
    return-void
.end method

.method private static setCellGroup(Lc8/eu;IIII)V
    .locals 2
    .param p0, "lp"    # Lc8/eu;
    .param p1, "row"    # I
    .param p2, "rowSpan"    # I
    .param p3, "col"    # I
    .param p4, "colSpan"    # I

    .prologue
    .line 713
    new-instance v0, Lc8/du;

    add-int v1, p1, p2

    invoke-direct {v0, p1, v1}, Lc8/du;-><init>(II)V

    invoke-virtual {p0, v0}, Lc8/eu;->setRowSpecSpan(Lc8/du;)V

    .line 714
    new-instance v0, Lc8/du;

    add-int v1, p3, p4

    invoke-direct {v0, p3, v1}, Lc8/du;-><init>(II)V

    invoke-virtual {p0, v0}, Lc8/eu;->setColumnSpecSpan(Lc8/du;)V

    .line 715
    return-void
.end method

.method public static spec(I)Lc8/hu;
    .locals 1
    .param p0, "start"    # I

    .prologue
    .line 2413
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lc8/iu;->spec(II)Lc8/hu;

    move-result-object v0

    return-object v0
.end method

.method public static spec(II)Lc8/hu;
    .locals 1
    .param p0, "start"    # I
    .param p1, "size"    # I

    .prologue
    .line 2397
    sget-object v0, Lc8/iu;->UNDEFINED_ALIGNMENT:Lc8/Yt;

    invoke-static {p0, p1, v0}, Lc8/iu;->spec(IILc8/Yt;)Lc8/hu;

    move-result-object v0

    return-object v0
.end method

.method public static spec(IILc8/Yt;)Lc8/hu;
    .locals 6
    .param p0, "start"    # I
    .param p1, "size"    # I
    .param p2, "alignment"    # Lc8/Yt;

    .prologue
    .line 2362
    new-instance v0, Lc8/hu;

    const/high16 v1, -0x80000000

    if-eq p0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v5, 0x0

    move v2, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lc8/hu;-><init>(ZIILc8/Yt;Lc8/Pt;)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static spec(ILc8/Yt;)Lc8/hu;
    .locals 1
    .param p0, "start"    # I
    .param p1, "alignment"    # Lc8/Yt;

    .prologue
    .line 2380
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lc8/iu;->spec(IILc8/Yt;)Lc8/hu;

    move-result-object v0

    return-object v0
.end method

.method private validateLayoutParams()V
    .locals 21

    .prologue
    .line 729
    move-object/from16 v0, p0

    iget v0, v0, Lc8/iu;->mOrientation:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    const/4 v5, 0x1

    .line 730
    .local v5, "horizontal":Z
    :goto_0
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    .line 731
    .local v3, "axis":Lc8/bu;
    :goto_1
    iget v0, v3, Lc8/bu;->definedCount:I

    move/from16 v19, v0

    const/high16 v20, -0x80000000

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    iget v4, v3, Lc8/bu;->definedCount:I

    .line 733
    .local v4, "count":I
    :goto_2
    const/4 v8, 0x0

    .line 734
    .local v8, "major":I
    const/4 v14, 0x0

    .line 735
    .local v14, "minor":I
    new-array v13, v4, [I

    .line 737
    .local v13, "maxSizes":[I
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Lc8/iu;->getChildCount()I

    move-result v2

    .local v2, "N":I
    :goto_3
    if-ge v6, v2, :cond_d

    .line 738
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lc8/iu;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lc8/eu;

    .line 740
    .local v7, "lp":Lc8/eu;
    if-eqz v5, :cond_6

    iget-object v11, v7, Lc8/eu;->rowSpec:Lc8/hu;

    .line 741
    .local v11, "majorSpec":Lc8/hu;
    :goto_4
    iget-object v9, v11, Lc8/hu;->span:Lc8/du;

    .line 742
    .local v9, "majorRange":Lc8/du;
    iget-boolean v12, v11, Lc8/hu;->startDefined:Z

    .line 743
    .local v12, "majorWasDefined":Z
    invoke-virtual {v9}, Lc8/du;->size()I

    move-result v10

    .line 744
    .local v10, "majorSpan":I
    if-eqz v12, :cond_0

    .line 745
    iget v8, v9, Lc8/du;->min:I

    .line 748
    :cond_0
    if-eqz v5, :cond_7

    iget-object v0, v7, Lc8/eu;->columnSpec:Lc8/hu;

    move-object/from16 v17, v0

    .line 749
    .local v17, "minorSpec":Lc8/hu;
    :goto_5
    move-object/from16 v0, v17

    iget-object v15, v0, Lc8/hu;->span:Lc8/du;

    .line 750
    .local v15, "minorRange":Lc8/du;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lc8/hu;->startDefined:Z

    move/from16 v18, v0

    .line 751
    .local v18, "minorWasDefined":Z
    move/from16 v0, v18

    invoke-static {v15, v0, v4}, Lc8/iu;->clip(Lc8/du;ZI)I

    move-result v16

    .line 752
    .local v16, "minorSpan":I
    if-eqz v18, :cond_1

    .line 753
    iget v14, v15, Lc8/du;->min:I

    .line 756
    :cond_1
    if-eqz v4, :cond_b

    .line 758
    if-eqz v12, :cond_2

    if-nez v18, :cond_a

    .line 759
    :cond_2
    :goto_6
    add-int v19, v14, v16

    move/from16 v0, v19

    invoke-static {v13, v8, v14, v0}, Lc8/iu;->fits([IIII)Z

    move-result v19

    if-nez v19, :cond_a

    .line 760
    if-eqz v18, :cond_8

    .line 761
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 729
    .end local v2    # "N":I
    .end local v3    # "axis":Lc8/bu;
    .end local v4    # "count":I
    .end local v5    # "horizontal":Z
    .end local v6    # "i":I
    .end local v7    # "lp":Lc8/eu;
    .end local v8    # "major":I
    .end local v9    # "majorRange":Lc8/du;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Lc8/hu;
    .end local v12    # "majorWasDefined":Z
    .end local v13    # "maxSizes":[I
    .end local v14    # "minor":I
    .end local v15    # "minorRange":Lc8/du;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Lc8/hu;
    .end local v18    # "minorWasDefined":Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 730
    .restart local v5    # "horizontal":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    goto :goto_1

    .line 731
    .restart local v3    # "axis":Lc8/bu;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    .line 740
    .restart local v2    # "N":I
    .restart local v4    # "count":I
    .restart local v6    # "i":I
    .restart local v7    # "lp":Lc8/eu;
    .restart local v8    # "major":I
    .restart local v13    # "maxSizes":[I
    .restart local v14    # "minor":I
    :cond_6
    iget-object v11, v7, Lc8/eu;->columnSpec:Lc8/hu;

    goto :goto_4

    .line 748
    .restart local v9    # "majorRange":Lc8/du;
    .restart local v10    # "majorSpan":I
    .restart local v11    # "majorSpec":Lc8/hu;
    .restart local v12    # "majorWasDefined":Z
    :cond_7
    iget-object v0, v7, Lc8/eu;->rowSpec:Lc8/hu;

    move-object/from16 v17, v0

    goto :goto_5

    .line 763
    .restart local v15    # "minorRange":Lc8/du;
    .restart local v16    # "minorSpan":I
    .restart local v17    # "minorSpec":Lc8/hu;
    .restart local v18    # "minorWasDefined":Z
    :cond_8
    add-int v19, v14, v16

    move/from16 v0, v19

    if-gt v0, v4, :cond_9

    .line 764
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 766
    :cond_9
    const/4 v14, 0x0

    .line 767
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 772
    :cond_a
    add-int v19, v14, v16

    add-int v20, v8, v10

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v13, v14, v0, v1}, Lc8/iu;->procrusteanFill([IIII)V

    .line 775
    :cond_b
    if-eqz v5, :cond_c

    .line 776
    move/from16 v0, v16

    invoke-static {v7, v8, v10, v14, v0}, Lc8/iu;->setCellGroup(Lc8/eu;IIII)V

    .line 781
    :goto_7
    add-int v14, v14, v16

    .line 737
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 778
    :cond_c
    move/from16 v0, v16

    invoke-static {v7, v14, v0, v8, v10}, Lc8/iu;->setCellGroup(Lc8/eu;IIII)V

    goto :goto_7

    .line 783
    .end local v7    # "lp":Lc8/eu;
    .end local v9    # "majorRange":Lc8/du;
    .end local v10    # "majorSpan":I
    .end local v11    # "majorSpec":Lc8/hu;
    .end local v12    # "majorWasDefined":Z
    .end local v15    # "minorRange":Lc8/du;
    .end local v16    # "minorSpan":I
    .end local v17    # "minorSpec":Lc8/hu;
    .end local v18    # "minorWasDefined":Z
    :cond_d
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 832
    instance-of v3, p1, Lc8/eu;

    if-nez v3, :cond_0

    .line 840
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 835
    check-cast v0, Lc8/eu;

    .line 837
    .local v0, "lp":Lc8/eu;
    invoke-direct {p0, v0, v2}, Lc8/iu;->checkLayoutParams(Lc8/eu;Z)V

    .line 838
    invoke-direct {p0, v0, v1}, Lc8/iu;->checkLayoutParams(Lc8/eu;Z)V

    move v1, v2

    .line 840
    goto :goto_0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lc8/iu;->generateDefaultLayoutParams()Lc8/eu;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lc8/eu;
    .locals 1

    .prologue
    .line 845
    new-instance v0, Lc8/eu;

    invoke-direct {v0}, Lc8/eu;-><init>()V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lc8/iu;->generateLayoutParams(Landroid/util/AttributeSet;)Lc8/eu;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0, p1}, Lc8/iu;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/eu;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lc8/eu;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 850
    new-instance v0, Lc8/eu;

    invoke-virtual {p0}, Lc8/iu;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lc8/eu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lc8/eu;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 855
    new-instance v0, Lc8/eu;

    invoke-direct {v0, p1}, Lc8/eu;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method final getAlignment(Lc8/Yt;Z)Lc8/Yt;
    .locals 1
    .param p1, "alignment"    # Lc8/Yt;
    .param p2, "horizontal"    # Z

    .prologue
    .line 992
    sget-object v0, Lc8/iu;->UNDEFINED_ALIGNMENT:Lc8/Yt;

    if-eq p1, v0, :cond_0

    .end local p1    # "alignment":Lc8/Yt;
    :goto_0
    return-object p1

    .restart local p1    # "alignment":Lc8/Yt;
    :cond_0
    if-eqz p2, :cond_1

    sget-object p1, Lc8/iu;->START:Lc8/Yt;

    goto :goto_0

    :cond_1
    sget-object p1, Lc8/iu;->BASELINE:Lc8/Yt;

    goto :goto_0
.end method

.method public getAlignmentMode()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lc8/iu;->mAlignmentMode:I

    return v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->getCount()I

    move-result v0

    return v0
.end method

.method final getLayoutParams(Landroid/view/View;)Lc8/eu;
    .locals 1
    .param p1, "c"    # Landroid/view/View;

    .prologue
    .line 803
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lc8/eu;

    return-object v0
.end method

.method getMargin1(Landroid/view/View;ZZ)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "horizontal"    # Z
    .param p3, "leading"    # Z

    .prologue
    .line 667
    invoke-virtual {p0, p1}, Lc8/iu;->getLayoutParams(Landroid/view/View;)Lc8/eu;

    move-result-object v0

    .line 668
    .local v0, "lp":Lc8/eu;
    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    iget v1, v0, Lc8/eu;->leftMargin:I

    .line 671
    .local v1, "margin":I
    :goto_0
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, Lc8/iu;->getDefaultMargin(Landroid/view/View;Lc8/eu;ZZ)I

    move-result v1

    .end local v1    # "margin":I
    :cond_0
    return v1

    .line 668
    :cond_1
    iget v1, v0, Lc8/eu;->rightMargin:I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget v1, v0, Lc8/eu;->topMargin:I

    goto :goto_0

    :cond_3
    iget v1, v0, Lc8/eu;->bottomMargin:I

    goto :goto_0
.end method

.method final getMeasurementIncludingMargin(Landroid/view/View;Z)I
    .locals 2
    .param p1, "c"    # Landroid/view/View;
    .param p2, "horizontal"    # Z

    .prologue
    .line 979
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 982
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lc8/iu;->getMeasurement(Landroid/view/View;Z)I

    move-result v0

    invoke-direct {p0, p1, p2}, Lc8/iu;->getTotalMargin(Landroid/view/View;Z)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 312
    iget v0, p0, Lc8/iu;->mOrientation:I

    return v0
.end method

.method public getPrinter()Landroid/util/Printer;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lc8/iu;->mPrinter:Landroid/util/Printer;

    return-object v0
.end method

.method public getRowCount()I
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->getCount()I

    move-result v0

    return v0
.end method

.method public getUseDefaultMargins()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lc8/iu;->mUseDefaultMargins:Z

    return v0
.end method

.method public isColumnOrderPreserved()Z
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method public isRowOrderPreserved()Z
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v0}, Lc8/bu;->isOrderPreserved()Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 51
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1012
    invoke-direct/range {p0 .. p0}, Lc8/iu;->consistencyCheck()V

    .line 1014
    sub-int v43, p4, p2

    .line 1015
    .local v43, "targetWidth":I
    sub-int v42, p5, p3

    .line 1017
    .local v42, "targetHeight":I
    invoke-virtual/range {p0 .. p0}, Lc8/iu;->getPaddingLeft()I

    move-result v34

    .line 1018
    .local v34, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lc8/iu;->getPaddingTop()I

    move-result v36

    .line 1019
    .local v36, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lc8/iu;->getPaddingRight()I

    move-result v35

    .line 1020
    .local v35, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Lc8/iu;->getPaddingBottom()I

    move-result v33

    .line 1022
    .local v33, "paddingBottom":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    sub-int v6, v43, v34

    sub-int v6, v6, v35

    invoke-virtual {v3, v6}, Lc8/bu;->layout(I)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    sub-int v6, v42, v36

    sub-int v6, v6, v33

    invoke-virtual {v3, v6}, Lc8/bu;->layout(I)V

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v3}, Lc8/bu;->getLocations()[I

    move-result-object v26

    .line 1026
    .local v26, "hLocations":[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v3}, Lc8/bu;->getLocations()[I

    move-result-object v45

    .line 1028
    .local v45, "vLocations":[I
    const/16 v28, 0x0

    .local v28, "i":I
    invoke-virtual/range {p0 .. p0}, Lc8/iu;->getChildCount()I

    move-result v12

    .local v12, "N":I
    :goto_0
    move/from16 v0, v28

    if-ge v0, v12, :cond_4

    .line 1029
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lc8/iu;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1030
    .local v4, "c":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_2

    .line 1031
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lc8/iu;->getLayoutParams(Landroid/view/View;)Lc8/eu;

    move-result-object v30

    .line 1032
    .local v30, "lp":Lc8/eu;
    move-object/from16 v0, v30

    iget-object v0, v0, Lc8/eu;->columnSpec:Lc8/hu;

    move-object/from16 v20, v0

    .line 1033
    .local v20, "columnSpec":Lc8/hu;
    move-object/from16 v0, v30

    iget-object v0, v0, Lc8/eu;->rowSpec:Lc8/hu;

    move-object/from16 v39, v0

    .line 1035
    .local v39, "rowSpec":Lc8/hu;
    move-object/from16 v0, v20

    iget-object v0, v0, Lc8/hu;->span:Lc8/du;

    move-object/from16 v19, v0

    .line 1036
    .local v19, "colSpan":Lc8/du;
    move-object/from16 v0, v39

    iget-object v0, v0, Lc8/hu;->span:Lc8/du;

    move-object/from16 v38, v0

    .line 1038
    .local v38, "rowSpan":Lc8/du;
    move-object/from16 v0, v19

    iget v3, v0, Lc8/du;->min:I

    aget v47, v26, v3

    .line 1039
    .local v47, "x1":I
    move-object/from16 v0, v38

    iget v3, v0, Lc8/du;->min:I

    aget v49, v45, v3

    .line 1041
    .local v49, "y1":I
    move-object/from16 v0, v19

    iget v3, v0, Lc8/du;->max:I

    aget v48, v26, v3

    .line 1042
    .local v48, "x2":I
    move-object/from16 v0, v38

    iget v3, v0, Lc8/du;->max:I

    aget v50, v45, v3

    .line 1044
    .local v50, "y2":I
    sub-int v18, v48, v47

    .line 1045
    .local v18, "cellWidth":I
    sub-int v17, v50, v49

    .line 1047
    .local v17, "cellHeight":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lc8/iu;->getMeasurement(Landroid/view/View;Z)I

    move-result v32

    .line 1048
    .local v32, "pWidth":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lc8/iu;->getMeasurement(Landroid/view/View;Z)I

    move-result v31

    .line 1050
    .local v31, "pHeight":I
    move-object/from16 v0, v20

    iget-object v3, v0, Lc8/hu;->alignment:Lc8/Yt;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lc8/iu;->getAlignment(Lc8/Yt;Z)Lc8/Yt;

    move-result-object v5

    .line 1051
    .local v5, "hAlign":Lc8/Yt;
    move-object/from16 v0, v39

    iget-object v3, v0, Lc8/hu;->alignment:Lc8/Yt;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lc8/iu;->getAlignment(Lc8/Yt;Z)Lc8/Yt;

    move-result-object v9

    .line 1053
    .local v9, "vAlign":Lc8/Yt;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v3}, Lc8/bu;->getGroupBounds()Lc8/gu;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lc8/gu;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/cu;

    .line 1054
    .local v2, "boundsX":Lc8/cu;
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v3}, Lc8/bu;->getGroupBounds()Lc8/gu;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Lc8/gu;->getValue(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lc8/cu;

    .line 1057
    .local v16, "boundsY":Lc8/cu;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/cu;->size(Z)I

    move-result v3

    sub-int v3, v18, v3

    invoke-virtual {v5, v4, v3}, Lc8/Yt;->getGravityOffset(Landroid/view/View;I)I

    move-result v24

    .line 1058
    .local v24, "gravityOffsetX":I
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lc8/cu;->size(Z)I

    move-result v3

    sub-int v3, v17, v3

    invoke-virtual {v9, v4, v3}, Lc8/Yt;->getGravityOffset(Landroid/view/View;I)I

    move-result v25

    .line 1060
    .local v25, "gravityOffsetY":I
    const/4 v3, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Lc8/iu;->getMargin(Landroid/view/View;ZZ)I

    move-result v29

    .line 1061
    .local v29, "leftMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Lc8/iu;->getMargin(Landroid/view/View;ZZ)I

    move-result v44

    .line 1062
    .local v44, "topMargin":I
    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Lc8/iu;->getMargin(Landroid/view/View;ZZ)I

    move-result v37

    .line 1063
    .local v37, "rightMargin":I
    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v6}, Lc8/iu;->getMargin(Landroid/view/View;ZZ)I

    move-result v15

    .line 1065
    .local v15, "bottomMargin":I
    add-int v40, v29, v37

    .line 1066
    .local v40, "sumMarginsX":I
    add-int v41, v44, v15

    .line 1069
    .local v41, "sumMarginsY":I
    add-int v6, v32, v40

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lc8/cu;->getOffset(Lc8/iu;Landroid/view/View;Lc8/Yt;IZ)I

    move-result v13

    .line 1070
    .local v13, "alignmentOffsetX":I
    add-int v10, v31, v41

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-object/from16 v7, p0

    move-object v8, v4

    invoke-virtual/range {v6 .. v11}, Lc8/cu;->getOffset(Lc8/iu;Landroid/view/View;Lc8/Yt;IZ)I

    move-result v14

    .line 1072
    .local v14, "alignmentOffsetY":I
    sub-int v3, v18, v40

    move/from16 v0, v32

    invoke-virtual {v5, v4, v0, v3}, Lc8/Yt;->getSizeInCell(Landroid/view/View;II)I

    move-result v46

    .line 1073
    .local v46, "width":I
    sub-int v3, v17, v41

    move/from16 v0, v31

    invoke-virtual {v9, v4, v0, v3}, Lc8/Yt;->getSizeInCell(Landroid/view/View;II)I

    move-result v27

    .line 1075
    .local v27, "height":I
    add-int v3, v47, v24

    add-int v23, v3, v13

    .line 1077
    .local v23, "dx":I
    invoke-direct/range {p0 .. p0}, Lc8/iu;->isLayoutRtlCompat()Z

    move-result v3

    if-nez v3, :cond_3

    add-int v3, v34, v29

    add-int v21, v3, v23

    .line 1079
    .local v21, "cx":I
    :goto_1
    add-int v3, v36, v49

    add-int v3, v3, v25

    add-int/2addr v3, v14

    add-int v22, v3, v44

    .line 1081
    .local v22, "cy":I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    move/from16 v0, v46

    if-ne v0, v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move/from16 v0, v27

    if-eq v0, v3, :cond_1

    .line 1082
    :cond_0
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v46

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v27

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    .line 1084
    :cond_1
    add-int v3, v21, v46

    add-int v6, v22, v27

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v4, v0, v1, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 1028
    .end local v2    # "boundsX":Lc8/cu;
    .end local v5    # "hAlign":Lc8/Yt;
    .end local v9    # "vAlign":Lc8/Yt;
    .end local v13    # "alignmentOffsetX":I
    .end local v14    # "alignmentOffsetY":I
    .end local v15    # "bottomMargin":I
    .end local v16    # "boundsY":Lc8/cu;
    .end local v17    # "cellHeight":I
    .end local v18    # "cellWidth":I
    .end local v19    # "colSpan":Lc8/du;
    .end local v20    # "columnSpec":Lc8/hu;
    .end local v21    # "cx":I
    .end local v22    # "cy":I
    .end local v23    # "dx":I
    .end local v24    # "gravityOffsetX":I
    .end local v25    # "gravityOffsetY":I
    .end local v27    # "height":I
    .end local v29    # "leftMargin":I
    .end local v30    # "lp":Lc8/eu;
    .end local v31    # "pHeight":I
    .end local v32    # "pWidth":I
    .end local v37    # "rightMargin":I
    .end local v38    # "rowSpan":Lc8/du;
    .end local v39    # "rowSpec":Lc8/hu;
    .end local v40    # "sumMarginsX":I
    .end local v41    # "sumMarginsY":I
    .end local v44    # "topMargin":I
    .end local v46    # "width":I
    .end local v47    # "x1":I
    .end local v48    # "x2":I
    .end local v49    # "y1":I
    .end local v50    # "y2":I
    :cond_2
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    .line 1077
    .restart local v2    # "boundsX":Lc8/cu;
    .restart local v5    # "hAlign":Lc8/Yt;
    .restart local v9    # "vAlign":Lc8/Yt;
    .restart local v13    # "alignmentOffsetX":I
    .restart local v14    # "alignmentOffsetY":I
    .restart local v15    # "bottomMargin":I
    .restart local v16    # "boundsY":Lc8/cu;
    .restart local v17    # "cellHeight":I
    .restart local v18    # "cellWidth":I
    .restart local v19    # "colSpan":Lc8/du;
    .restart local v20    # "columnSpec":Lc8/hu;
    .restart local v23    # "dx":I
    .restart local v24    # "gravityOffsetX":I
    .restart local v25    # "gravityOffsetY":I
    .restart local v27    # "height":I
    .restart local v29    # "leftMargin":I
    .restart local v30    # "lp":Lc8/eu;
    .restart local v31    # "pHeight":I
    .restart local v32    # "pWidth":I
    .restart local v37    # "rightMargin":I
    .restart local v38    # "rowSpan":Lc8/du;
    .restart local v39    # "rowSpec":Lc8/hu;
    .restart local v40    # "sumMarginsX":I
    .restart local v41    # "sumMarginsY":I
    .restart local v44    # "topMargin":I
    .restart local v46    # "width":I
    .restart local v47    # "x1":I
    .restart local v48    # "x2":I
    .restart local v49    # "y1":I
    .restart local v50    # "y2":I
    :cond_3
    sub-int v3, v43, v46

    sub-int v3, v3, v35

    sub-int v3, v3, v37

    sub-int v21, v3, v23

    goto :goto_1

    .line 1086
    .end local v2    # "boundsX":Lc8/cu;
    .end local v4    # "c":Landroid/view/View;
    .end local v5    # "hAlign":Lc8/Yt;
    .end local v9    # "vAlign":Lc8/Yt;
    .end local v13    # "alignmentOffsetX":I
    .end local v14    # "alignmentOffsetY":I
    .end local v15    # "bottomMargin":I
    .end local v16    # "boundsY":Lc8/cu;
    .end local v17    # "cellHeight":I
    .end local v18    # "cellWidth":I
    .end local v19    # "colSpan":Lc8/du;
    .end local v20    # "columnSpec":Lc8/hu;
    .end local v23    # "dx":I
    .end local v24    # "gravityOffsetX":I
    .end local v25    # "gravityOffsetY":I
    .end local v27    # "height":I
    .end local v29    # "leftMargin":I
    .end local v30    # "lp":Lc8/eu;
    .end local v31    # "pHeight":I
    .end local v32    # "pWidth":I
    .end local v37    # "rightMargin":I
    .end local v38    # "rowSpan":Lc8/du;
    .end local v39    # "rowSpec":Lc8/hu;
    .end local v40    # "sumMarginsX":I
    .end local v41    # "sumMarginsY":I
    .end local v44    # "topMargin":I
    .end local v46    # "width":I
    .end local v47    # "x1":I
    .end local v48    # "x2":I
    .end local v49    # "y1":I
    .end local v50    # "y2":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v10, 0x0

    .line 938
    invoke-direct {p0}, Lc8/iu;->consistencyCheck()V

    .line 942
    invoke-direct {p0}, Lc8/iu;->invalidateValues()V

    .line 944
    invoke-virtual {p0}, Lc8/iu;->getPaddingLeft()I

    move-result v8

    invoke-virtual {p0}, Lc8/iu;->getPaddingRight()I

    move-result v9

    add-int v0, v8, v9

    .line 945
    .local v0, "hPadding":I
    invoke-virtual {p0}, Lc8/iu;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lc8/iu;->getPaddingBottom()I

    move-result v9

    add-int v5, v8, v9

    .line 947
    .local v5, "vPadding":I
    neg-int v8, v0

    invoke-static {p1, v8}, Lc8/iu;->adjust(II)I

    move-result v7

    .line 948
    .local v7, "widthSpecSansPadding":I
    neg-int v8, v5

    invoke-static {p2, v8}, Lc8/iu;->adjust(II)I

    move-result v2

    .line 950
    .local v2, "heightSpecSansPadding":I
    const/4 v8, 0x1

    invoke-direct {p0, v7, v2, v8}, Lc8/iu;->measureChildrenWithMargins(IIZ)V

    .line 956
    iget v8, p0, Lc8/iu;->mOrientation:I

    if-nez v8, :cond_0

    .line 957
    iget-object v8, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v8, v7}, Lc8/bu;->getMeasure(I)I

    move-result v6

    .line 958
    .local v6, "widthSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Lc8/iu;->measureChildrenWithMargins(IIZ)V

    .line 959
    iget-object v8, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v8, v2}, Lc8/bu;->getMeasure(I)I

    move-result v1

    .line 966
    .local v1, "heightSansPadding":I
    :goto_0
    add-int v8, v6, v0

    invoke-virtual {p0}, Lc8/iu;->getSuggestedMinimumWidth()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 967
    .local v4, "measuredWidth":I
    add-int v8, v1, v5

    invoke-virtual {p0}, Lc8/iu;->getSuggestedMinimumHeight()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 970
    .local v3, "measuredHeight":I
    invoke-static {v4, p1, v10}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v8

    .line 971
    invoke-static {v3, p2, v10}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v9

    .line 969
    invoke-virtual {p0, v8, v9}, Lc8/iu;->setMeasuredDimension(II)V

    .line 972
    return-void

    .line 961
    .end local v1    # "heightSansPadding":I
    .end local v3    # "measuredHeight":I
    .end local v4    # "measuredWidth":I
    .end local v6    # "widthSansPadding":I
    :cond_0
    iget-object v8, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v8, v2}, Lc8/bu;->getMeasure(I)I

    move-result v1

    .line 962
    .restart local v1    # "heightSansPadding":I
    invoke-direct {p0, v7, v2, v10}, Lc8/iu;->measureChildrenWithMargins(IIZ)V

    .line 963
    iget-object v8, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v8, v7}, Lc8/bu;->getMeasure(I)I

    move-result v6

    .restart local v6    # "widthSansPadding":I
    goto :goto_0
.end method

.method public requestLayout()V
    .locals 0

    .prologue
    .line 987
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 988
    invoke-direct {p0}, Lc8/iu;->invalidateStructure()V

    .line 989
    return-void
.end method

.method public setAlignmentMode(I)V
    .locals 0
    .param p1, "alignmentMode"    # I

    .prologue
    .line 502
    iput p1, p0, Lc8/iu;->mAlignmentMode:I

    .line 503
    invoke-virtual {p0}, Lc8/iu;->requestLayout()V

    .line 504
    return-void
.end method

.method public setColumnCount(I)V
    .locals 1
    .param p1, "columnCount"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v0, p1}, Lc8/bu;->setCount(I)V

    .line 421
    invoke-direct {p0}, Lc8/iu;->invalidateStructure()V

    .line 422
    invoke-virtual {p0}, Lc8/iu;->requestLayout()V

    .line 423
    return-void
.end method

.method public setColumnOrderPreserved(Z)V
    .locals 1
    .param p1, "columnOrderPreserved"    # Z

    .prologue
    .line 573
    iget-object v0, p0, Lc8/iu;->mHorizontalAxis:Lc8/bu;

    invoke-virtual {v0, p1}, Lc8/bu;->setOrderPreserved(Z)V

    .line 574
    invoke-direct {p0}, Lc8/iu;->invalidateStructure()V

    .line 575
    invoke-virtual {p0}, Lc8/iu;->requestLayout()V

    .line 576
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 352
    iget v0, p0, Lc8/iu;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 353
    iput p1, p0, Lc8/iu;->mOrientation:I

    .line 354
    invoke-direct {p0}, Lc8/iu;->invalidateStructure()V

    .line 355
    invoke-virtual {p0}, Lc8/iu;->requestLayout()V

    .line 357
    :cond_0
    return-void
.end method

.method public setPrinter(Landroid/util/Printer;)V
    .locals 0
    .param p1, "printer"    # Landroid/util/Printer;

    .prologue
    .line 598
    if-nez p1, :cond_0

    sget-object p1, Lc8/iu;->NO_PRINTER:Landroid/util/Printer;

    .end local p1    # "printer":Landroid/util/Printer;
    :cond_0
    iput-object p1, p0, Lc8/iu;->mPrinter:Landroid/util/Printer;

    .line 599
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "rowCount"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v0, p1}, Lc8/bu;->setCount(I)V

    .line 388
    invoke-direct {p0}, Lc8/iu;->invalidateStructure()V

    .line 389
    invoke-virtual {p0}, Lc8/iu;->requestLayout()V

    .line 390
    return-void
.end method

.method public setRowOrderPreserved(Z)V
    .locals 1
    .param p1, "rowOrderPreserved"    # Z

    .prologue
    .line 537
    iget-object v0, p0, Lc8/iu;->mVerticalAxis:Lc8/bu;

    invoke-virtual {v0, p1}, Lc8/bu;->setOrderPreserved(Z)V

    .line 538
    invoke-direct {p0}, Lc8/iu;->invalidateStructure()V

    .line 539
    invoke-virtual {p0}, Lc8/iu;->requestLayout()V

    .line 540
    return-void
.end method

.method public setUseDefaultMargins(Z)V
    .locals 0
    .param p1, "useDefaultMargins"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lc8/iu;->mUseDefaultMargins:Z

    .line 467
    invoke-virtual {p0}, Lc8/iu;->requestLayout()V

    .line 468
    return-void
.end method
