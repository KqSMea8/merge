.class public Lc8/zdo;
.super Landroid/widget/LinearLayout;
.source "DynamicGridLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private childViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private listAdapter:Landroid/widget/Adapter;

.field private selectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/zdo;->childViewMap:Ljava/util/Map;

    .line 48
    invoke-direct {p0}, Lc8/zdo;->init()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/zdo;->childViewMap:Ljava/util/Map;

    .line 53
    invoke-direct {p0}, Lc8/zdo;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/zdo;->childViewMap:Ljava/util/Map;

    .line 58
    invoke-direct {p0}, Lc8/zdo;->init()V

    .line 59
    return-void
.end method

.method private addChildView()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, -0x1

    const/4 v12, -0x2

    .line 82
    iget-object v9, p0, Lc8/zdo;->listAdapter:Landroid/widget/Adapter;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lc8/zdo;->listAdapter:Landroid/widget/Adapter;

    invoke-interface {v9}, Landroid/widget/Adapter;->getCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 83
    :cond_0
    invoke-virtual {p0}, Lc8/zdo;->removeAllViews()V

    .line 130
    :cond_1
    return-void

    .line 87
    :cond_2
    invoke-virtual {p0}, Lc8/zdo;->getRight()I

    move-result v9

    invoke-virtual {p0}, Lc8/zdo;->getLeft()I

    move-result v10

    sub-int v7, v9, v10

    .line 89
    .local v7, "width":I
    invoke-virtual {p0}, Lc8/zdo;->getPaddingLeft()I

    move-result v9

    sub-int v9, v7, v9

    invoke-virtual {p0}, Lc8/zdo;->getPaddingRight()I

    move-result v10

    sub-int v0, v9, v10

    .line 90
    .local v0, "childSpace":I
    iget-object v9, p0, Lc8/zdo;->listAdapter:Landroid/widget/Adapter;

    invoke-interface {v9}, Landroid/widget/Adapter;->getCount()I

    move-result v6

    .line 91
    .local v6, "size":I
    const/4 v2, 0x0

    .line 93
    .local v2, "itemRowLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 94
    iget-object v9, p0, Lc8/zdo;->listAdapter:Landroid/widget/Adapter;

    invoke-interface {v9, v1, v14, v14}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 95
    .local v3, "itemView":Landroid/view/View;
    iget-object v9, p0, Lc8/zdo;->childViewMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v11, Ljava/lang/ref/SoftReference;

    invoke-direct {v11, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget v9, p0, Lc8/zdo;->selectedIndex:I

    if-ne v9, v1, :cond_3

    .line 97
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroid/view/View;->setSelected(Z)V

    .line 99
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    if-nez v2, :cond_4

    .line 102
    new-instance v2, Landroid/widget/LinearLayout;

    .end local v2    # "itemRowLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lc8/zdo;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v2, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 104
    .restart local v2    # "itemRowLayout":Landroid/widget/LinearLayout;
    :cond_4
    const/4 v8, 0x0

    .line 105
    .local v8, "widthCount":I
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-lez v9, :cond_5

    .line 106
    invoke-direct {p0, v2}, Lc8/zdo;->getChildViewWidthCount(Landroid/view/ViewGroup;)I

    move-result v8

    .line 108
    :cond_5
    invoke-direct {p0, v3}, Lc8/zdo;->getViewWidth(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v8

    if-le v9, v0, :cond_9

    .line 109
    int-to-float v9, v8

    int-to-float v10, v0

    const v11, 0x3f4ccccd    # 0.8f

    mul-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 110
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 111
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 112
    .local v5, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v5, :cond_6

    .line 113
    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 110
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    .end local v4    # "j":I
    .end local v5    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v9}, Lc8/zdo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/4 v2, 0x0

    .line 120
    add-int/lit8 v1, v1, -0x1

    .line 93
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_9
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    add-int/lit8 v9, v6, -0x1

    if-ne v1, v9, :cond_8

    .line 125
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v13, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v9}, Lc8/zdo;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private getChildViewWidthCount(Landroid/view/ViewGroup;)I
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "widthCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lc8/zdo;->getViewWidth(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    return v1
.end method

.method private getViewWidth(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 139
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 140
    .local v1, "width":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 141
    .local v0, "height":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    return v2
.end method

.method private init()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/zdo;->setOrientation(I)V

    .line 63
    return-void
.end method


# virtual methods
.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lc8/zdo;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemView(I)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 176
    iget-object v1, p0, Lc8/zdo;->childViewMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 177
    .local v0, "sof":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 180
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectedIndex()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lc8/zdo;->selectedIndex:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 186
    .local v3, "position":I
    iput v3, p0, Lc8/zdo;->selectedIndex:I

    .line 187
    iget-object v0, p0, Lc8/zdo;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lc8/zdo;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    int-to-long v4, v2

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 190
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 72
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 73
    invoke-virtual {p0}, Lc8/zdo;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lc8/zdo;->addChildView()V

    .line 76
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 66
    iput-object p1, p0, Lc8/zdo;->listAdapter:Landroid/widget/Adapter;

    .line 67
    invoke-virtual {p0}, Lc8/zdo;->requestLayout()V

    .line 68
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 158
    iput-object p1, p0, Lc8/zdo;->itemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 159
    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .param p1, "selectedIndex"    # I

    .prologue
    .line 166
    iput p1, p0, Lc8/zdo;->selectedIndex:I

    .line 167
    return-void
.end method
