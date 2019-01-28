.class public Lc8/eu;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/iu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field private static final BOTTOM_MARGIN:I

.field private static final COLUMN:I

.field private static final COLUMN_SPAN:I

.field private static final DEFAULT_COLUMN:I = -0x80000000

.field private static final DEFAULT_HEIGHT:I = -0x2

.field private static final DEFAULT_MARGIN:I = -0x80000000

.field private static final DEFAULT_ROW:I = -0x80000000

.field private static final DEFAULT_SPAN:Lc8/du;

.field private static final DEFAULT_SPAN_SIZE:I

.field private static final DEFAULT_WIDTH:I = -0x2

.field private static final GRAVITY:I

.field private static final LEFT_MARGIN:I

.field private static final MARGIN:I

.field private static final RIGHT_MARGIN:I

.field private static final ROW:I

.field private static final ROW_SPAN:I

.field private static final TOP_MARGIN:I


# instance fields
.field public columnSpec:Lc8/hu;

.field public rowSpec:Lc8/hu;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1756
    new-instance v0, Lc8/du;

    const/high16 v1, -0x80000000

    const v2, -0x7fffffff

    invoke-direct {v0, v1, v2}, Lc8/du;-><init>(II)V

    .line 1757
    sput-object v0, Lc8/eu;->DEFAULT_SPAN:Lc8/du;

    invoke-virtual {v0}, Lc8/du;->size()I

    move-result v0

    sput v0, Lc8/eu;->DEFAULT_SPAN_SIZE:I

    .line 1761
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_android_layout_margin:I

    sput v0, Lc8/eu;->MARGIN:I

    .line 1762
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_android_layout_marginLeft:I

    sput v0, Lc8/eu;->LEFT_MARGIN:I

    .line 1763
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_android_layout_marginTop:I

    sput v0, Lc8/eu;->TOP_MARGIN:I

    .line 1764
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_android_layout_marginRight:I

    sput v0, Lc8/eu;->RIGHT_MARGIN:I

    .line 1765
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_android_layout_marginBottom:I

    sput v0, Lc8/eu;->BOTTOM_MARGIN:I

    .line 1767
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_layout_column:I

    sput v0, Lc8/eu;->COLUMN:I

    .line 1768
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_layout_columnSpan:I

    sput v0, Lc8/eu;->COLUMN_SPAN:I

    .line 1770
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_layout_row:I

    sput v0, Lc8/eu;->ROW:I

    .line 1771
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_layout_rowSpan:I

    sput v0, Lc8/eu;->ROW_SPAN:I

    .line 1773
    sget v0, Lcom/youku/phone/R$styleable;->GridLayout_Layout_layout_gravity:I

    sput v0, Lc8/eu;->GRAVITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1835
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    sget-object v1, Lc8/hu;->UNDEFINED:Lc8/hu;

    invoke-direct {p0, v0, v1}, Lc8/eu;-><init>(Lc8/hu;Lc8/hu;)V

    .line 1836
    return-void
.end method

.method private constructor <init>(IIIIIILc8/hu;Lc8/hu;)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "rowSpec"    # Lc8/hu;
    .param p8, "columnSpec"    # Lc8/hu;

    .prologue
    .line 1811
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1789
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1803
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1812
    invoke-virtual {p0, p3, p4, p5, p6}, Lc8/eu;->setMargins(IIII)V

    .line 1813
    iput-object p7, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1814
    iput-object p8, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1815
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1872
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1789
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1803
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1873
    invoke-direct {p0, p1, p2}, Lc8/eu;->reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1874
    invoke-direct {p0, p1, p2}, Lc8/eu;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1875
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1844
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1789
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1803
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1845
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1789
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1803
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1852
    return-void
.end method

.method public constructor <init>(Lc8/eu;)V
    .locals 1
    .param p1, "that"    # Lc8/eu;

    .prologue
    .line 1858
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1789
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1803
    sget-object v0, Lc8/hu;->UNDEFINED:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1859
    iget-object v0, p1, Lc8/eu;->rowSpec:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1860
    iget-object v0, p1, Lc8/eu;->columnSpec:Lc8/hu;

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1861
    return-void
.end method

.method public constructor <init>(Lc8/hu;Lc8/hu;)V
    .locals 9
    .param p1, "rowSpec"    # Lc8/hu;
    .param p2, "columnSpec"    # Lc8/hu;

    .prologue
    const/4 v1, -0x2

    const/high16 v3, -0x80000000

    .line 1826
    move-object v0, p0

    move v2, v1

    move v4, v3

    move v5, v3

    move v6, v3

    move-object v7, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lc8/eu;-><init>(IIIIIILc8/hu;Lc8/hu;)V

    .line 1829
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1904
    sget-object v6, Lcom/youku/phone/R$styleable;->GridLayout_Layout:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1906
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v6, Lc8/eu;->GRAVITY:I

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1908
    .local v3, "gravity":I
    sget v6, Lc8/eu;->COLUMN:I

    const/high16 v7, -0x80000000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 1909
    .local v2, "column":I
    sget v6, Lc8/eu;->COLUMN_SPAN:I

    sget v7, Lc8/eu;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 1910
    .local v1, "colSpan":I
    const/4 v6, 0x1

    invoke-static {v3, v6}, Lc8/iu;->getAlignment(IZ)Lc8/Yt;

    move-result-object v6

    invoke-static {v2, v1, v6}, Lc8/iu;->spec(IILc8/Yt;)Lc8/hu;

    move-result-object v6

    iput-object v6, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1912
    sget v6, Lc8/eu;->ROW:I

    const/high16 v7, -0x80000000

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 1913
    .local v4, "row":I
    sget v6, Lc8/eu;->ROW_SPAN:I

    sget v7, Lc8/eu;->DEFAULT_SPAN_SIZE:I

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1914
    .local v5, "rowSpan":I
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lc8/iu;->getAlignment(IZ)Lc8/Yt;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lc8/iu;->spec(IILc8/Yt;)Lc8/hu;

    move-result-object v6

    iput-object v6, p0, Lc8/eu;->rowSpec:Lc8/hu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1917
    return-void

    .line 1916
    .end local v1    # "colSpan":I
    .end local v2    # "column":I
    .end local v3    # "gravity":I
    .end local v4    # "row":I
    .end local v5    # "rowSpan":I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v6
.end method

.method private reInitSuper(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1889
    sget-object v2, Lcom/youku/phone/R$styleable;->GridLayout_Layout:[I

    .line 1890
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1892
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lc8/eu;->MARGIN:I

    const/high16 v3, -0x80000000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 1894
    .local v1, "margin":I
    sget v2, Lc8/eu;->LEFT_MARGIN:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lc8/eu;->leftMargin:I

    .line 1895
    sget v2, Lc8/eu;->TOP_MARGIN:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lc8/eu;->topMargin:I

    .line 1896
    sget v2, Lc8/eu;->RIGHT_MARGIN:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lc8/eu;->rightMargin:I

    .line 1897
    sget v2, Lc8/eu;->BOTTOM_MARGIN:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lc8/eu;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1899
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1900
    return-void

    .line 1899
    .end local v1    # "margin":I
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1949
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 1955
    :cond_0
    :goto_0
    return v1

    .line 1950
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 1952
    check-cast v0, Lc8/eu;

    .line 1954
    .local v0, "that":Lc8/eu;
    iget-object v2, p0, Lc8/eu;->columnSpec:Lc8/hu;

    iget-object v3, v0, Lc8/eu;->columnSpec:Lc8/hu;

    invoke-virtual {v2, v3}, Lc8/hu;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1955
    iget-object v1, p0, Lc8/eu;->rowSpec:Lc8/hu;

    iget-object v2, v0, Lc8/eu;->rowSpec:Lc8/hu;

    invoke-virtual {v1, v2}, Lc8/hu;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1961
    iget-object v1, p0, Lc8/eu;->rowSpec:Lc8/hu;

    invoke-virtual {v1}, Lc8/hu;->hashCode()I

    move-result v0

    .line 1962
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lc8/eu;->columnSpec:Lc8/hu;

    invoke-virtual {v2}, Lc8/hu;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1963
    return v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p1, "attributes"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    const/4 v1, -0x2

    .line 1935
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lc8/eu;->width:I

    .line 1936
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Lc8/eu;->height:I

    .line 1937
    return-void
.end method

.method final setColumnSpecSpan(Lc8/du;)V
    .locals 1
    .param p1, "span"    # Lc8/du;

    .prologue
    .line 1944
    iget-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    invoke-virtual {v0, p1}, Lc8/hu;->copyWriteSpan(Lc8/du;)Lc8/hu;

    move-result-object v0

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1945
    return-void
.end method

.method public setGravity(I)V
    .locals 2
    .param p1, "gravity"    # I

    .prologue
    .line 1929
    iget-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lc8/iu;->getAlignment(IZ)Lc8/Yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/hu;->copyWriteAlignment(Lc8/Yt;)Lc8/hu;

    move-result-object v0

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1930
    iget-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lc8/iu;->getAlignment(IZ)Lc8/Yt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/hu;->copyWriteAlignment(Lc8/Yt;)Lc8/hu;

    move-result-object v0

    iput-object v0, p0, Lc8/eu;->columnSpec:Lc8/hu;

    .line 1931
    return-void
.end method

.method final setRowSpecSpan(Lc8/du;)V
    .locals 1
    .param p1, "span"    # Lc8/du;

    .prologue
    .line 1940
    iget-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    invoke-virtual {v0, p1}, Lc8/hu;->copyWriteSpan(Lc8/du;)Lc8/hu;

    move-result-object v0

    iput-object v0, p0, Lc8/eu;->rowSpec:Lc8/hu;

    .line 1941
    return-void
.end method
