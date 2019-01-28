.class public Lc8/yap;
.super Landroid/widget/BaseAdapter;
.source "SimpleMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Aap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Aap;


# direct methods
.method constructor <init>(Lc8/Aap;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Aap;

    .prologue
    .line 69
    iput-object p1, p0, Lc8/yap;->this$0:Lc8/Aap;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lc8/yap;->this$0:Lc8/Aap;

    invoke-static {v0}, Lc8/Aap;->access$000(Lc8/Aap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lc8/yap;->this$0:Lc8/Aap;

    invoke-static {v0}, Lc8/Aap;->access$000(Lc8/Aap;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    if-nez p2, :cond_0

    .line 89
    new-instance v1, Lc8/zap;

    invoke-direct {v1}, Lc8/zap;-><init>()V

    .line 90
    .local v1, "viewHolder":Lc8/zap;
    iget-object v2, p0, Lc8/yap;->this$0:Lc8/Aap;

    invoke-static {v2}, Lc8/Aap;->access$200(Lc8/Aap;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/youku/phone/R$layout;->simple_popmenu_items:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    sget v2, Lcom/youku/phone/R$id;->view_item_img:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lc8/zap;->img:Landroid/widget/ImageView;

    .line 92
    sget v2, Lcom/youku/phone/R$id;->view_item_title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lc8/zap;->txt:Landroid/widget/TextView;

    .line 93
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Lc8/yap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/ui/activity/actionbar/ActionMenu;

    .line 98
    .local v0, "item":Lcom/youku/ui/activity/actionbar/ActionMenu;
    iget-object v2, v1, Lc8/zap;->img:Landroid/widget/ImageView;

    iget v3, v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->drawable:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 99
    iget-object v2, v1, Lc8/zap;->txt:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/youku/ui/activity/actionbar/ActionMenu;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-object p2

    .line 95
    .end local v0    # "item":Lcom/youku/ui/activity/actionbar/ActionMenu;
    .end local v1    # "viewHolder":Lc8/zap;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zap;

    .restart local v1    # "viewHolder":Lc8/zap;
    goto :goto_0
.end method
