.class public Lc8/Kvb;
.super Landroid/widget/BaseAdapter;
.source "ElevatorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Jvb;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Lvb;",
            ">;"
        }
    .end annotation
.end field

.field private normalColor:Ljava/lang/String;

.field private resourceId:I

.field private selectedColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lc8/Lvb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p3, "itemList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/aliweex/adapter/view/ElevatorItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/Kvb;->itemList:Ljava/util/List;

    .line 29
    iput-object p1, p0, Lc8/Kvb;->context:Landroid/content/Context;

    .line 30
    iput p2, p0, Lc8/Kvb;->resourceId:I

    .line 31
    iput-object p3, p0, Lc8/Kvb;->itemList:Ljava/util/List;

    .line 32
    const-string/jumbo v0, "#EE0A3B"

    iput-object v0, p0, Lc8/Kvb;->selectedColor:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, "#333333"

    iput-object v0, p0, Lc8/Kvb;->normalColor:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lc8/Kvb;->itemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lc8/Lvb;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lc8/Kvb;->itemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lvb;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lc8/Kvb;->getItem(I)Lc8/Lvb;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lc8/Kvb;->getItem(I)Lc8/Lvb;

    move-result-object v0

    .line 57
    .local v0, "item":Lc8/Lvb;
    if-nez p2, :cond_0

    .line 58
    iget-object v3, p0, Lc8/Kvb;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Lc8/Kvb;->resourceId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 59
    .local v1, "view":Landroid/view/View;
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    new-instance v2, Lc8/Jvb;

    invoke-direct {v2, p0}, Lc8/Jvb;-><init>(Lc8/Kvb;)V

    .line 61
    .local v2, "viewHolder":Lc8/Jvb;
    sget v3, Lcom/youku/phone/R$id;->loc_text:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lc8/Jvb;->textView:Landroid/widget/TextView;

    .line 62
    sget v3, Lcom/youku/phone/R$id;->loc_icon:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lc8/Jvb;->imageView:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 68
    :goto_0
    iget-object v3, v2, Lc8/Jvb;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Lc8/Lvb;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-virtual {v0}, Lc8/Lvb;->getIsHighLight()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, v2, Lc8/Jvb;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Kvb;->selectedColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    :goto_1
    invoke-virtual {v0}, Lc8/Lvb;->getIsImgShow()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    iget-object v3, v2, Lc8/Jvb;->imageView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    :goto_2
    return-object v1

    .line 66
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "viewHolder":Lc8/Jvb;
    :cond_0
    move-object v1, p2

    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Jvb;

    .restart local v2    # "viewHolder":Lc8/Jvb;
    goto :goto_0

    .line 72
    :cond_1
    iget-object v3, v2, Lc8/Jvb;->textView:Landroid/widget/TextView;

    iget-object v4, p0, Lc8/Kvb;->normalColor:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 77
    :cond_2
    iget-object v3, v2, Lc8/Jvb;->imageView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method public setNormalColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "normalColor"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lc8/Kvb;->normalColor:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lc8/Kvb;->notifyDataSetChanged()V

    .line 95
    return-void
.end method

.method public setSelectedColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectedColor"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lc8/Kvb;->selectedColor:Ljava/lang/String;

    .line 89
    invoke-virtual {p0}, Lc8/Kvb;->notifyDataSetChanged()V

    .line 90
    return-void
.end method
