.class public Lc8/Sbp;
.super Ljava/lang/Object;
.source "YoukuPopupMenu.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Obp;,
        Lc8/Qbp;,
        Lc8/Rbp;
    }
.end annotation


# instance fields
.field private mAdapter:Lc8/Qbp;

.field private mContext:Landroid/content/Context;

.field private mHeaderTitleView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Obp;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsView:Landroid/widget/ListView;

.field private mListener:Lc8/Rbp;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lc8/Sbp;->mContext:Landroid/content/Context;

    .line 47
    const-string/jumbo v1, "layout_inflater"

    .line 48
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lc8/Sbp;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iget-object v1, p0, Lc8/Sbp;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/youku/phone/R$dimen;->popup_menu_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lc8/Sbp;->mWidth:I

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc8/Sbp;->mItems:Ljava/util/List;

    .line 53
    invoke-direct {p0}, Lc8/Sbp;->initPopupWindow()V

    .line 55
    iget-object v1, p0, Lc8/Sbp;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/youku/phone/R$layout;->popup_menu:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "contentView":Landroid/view/View;
    sget v1, Lcom/youku/phone/R$id;->items:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lc8/Sbp;->mItemsView:Landroid/widget/ListView;

    .line 57
    sget v1, Lcom/youku/phone/R$id;->header_title:I

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lc8/Sbp;->mHeaderTitleView:Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lc8/Sbp;->mItemsView:Landroid/widget/ListView;

    new-instance v2, Lc8/Nbp;

    invoke-direct {v2, p0}, Lc8/Nbp;-><init>(Lc8/Sbp;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object v1, p0, Lc8/Sbp;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lc8/Sbp;)Lc8/Rbp;
    .locals 1
    .param p0, "x0"    # Lc8/Sbp;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Sbp;->mListener:Lc8/Rbp;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Sbp;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/Sbp;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Sbp;->mItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Sbp;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lc8/Sbp;

    .prologue
    .line 31
    iget-object v0, p0, Lc8/Sbp;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private initPopupWindow()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lc8/Sbp;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lc8/Mbp;->newPopInstance(Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lc8/Sbp;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 78
    iget-object v0, p0, Lc8/Sbp;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Lc8/Sbp;->mWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 79
    iget-object v0, p0, Lc8/Sbp;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 80
    return-void
.end method

.method private preShow()V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lc8/Sbp;->mAdapter:Lc8/Qbp;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lc8/Qbp;

    iget-object v1, p0, Lc8/Sbp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/Sbp;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lc8/Qbp;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lc8/Sbp;->mAdapter:Lc8/Qbp;

    .line 111
    iget-object v0, p0, Lc8/Sbp;->mItemsView:Landroid/widget/ListView;

    iget-object v1, p0, Lc8/Sbp;->mAdapter:Lc8/Qbp;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lc8/Sbp;->mAdapter:Lc8/Qbp;

    invoke-virtual {v0}, Lc8/Qbp;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public add(II)Lc8/Obp;
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "titleRes"    # I

    .prologue
    .line 135
    iget-object v0, p0, Lc8/Sbp;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/Sbp;->add(ILjava/lang/String;)Lc8/Obp;

    move-result-object v0

    return-object v0
.end method

.method public add(ILjava/lang/String;)Lc8/Obp;
    .locals 2
    .param p1, "itemId"    # I
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 140
    new-instance v0, Lc8/Obp;

    invoke-direct {v0}, Lc8/Obp;-><init>()V

    .line 141
    .local v0, "item":Lc8/Obp;
    invoke-virtual {v0, p1}, Lc8/Obp;->setItemId(I)V

    .line 142
    invoke-virtual {v0, p2}, Lc8/Obp;->setTitle(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lc8/Sbp;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-object v0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "height"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lc8/Sbp;->mItemsView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lc8/Sbp;->mItemsView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 192
    iget-object v0, p0, Lc8/Sbp;->mItemsView:Landroid/widget/ListView;

    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 194
    :cond_0
    return-void
.end method

.method public setOnItemSelectedListener(Lc8/Rbp;)V
    .locals 0
    .param p1, "listener"    # Lc8/Rbp;

    .prologue
    .line 203
    iput-object p1, p0, Lc8/Sbp;->mListener:Lc8/Rbp;

    .line 204
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;I)V
    .locals 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PopupMenu#showAsDropDown anchor cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 96
    :cond_0
    iget-object v1, p0, Lc8/Sbp;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "PopupMenu#add was not called with a menu item to display."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1
    invoke-direct {p0}, Lc8/Sbp;->preShow()V

    .line 103
    invoke-static {p1, p2}, Lc8/Mbp;->getPopupPosition(Landroid/view/View;I)[I

    move-result-object v0

    .line 104
    .local v0, "position":[I
    iget-object v1, p0, Lc8/Sbp;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 105
    return-void
.end method
