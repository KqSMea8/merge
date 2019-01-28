.class public Lc8/Qbp;
.super Landroid/widget/ArrayAdapter;
.source "YoukuPopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Sbp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Pbp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lc8/Obp;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lc8/Obp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/youku/widget/YoukuPopupMenu$MenuItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 220
    const-string/jumbo v0, "layout_inflater"

    .line 221
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lc8/Qbp;->mInflater:Landroid/view/LayoutInflater;

    .line 222
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 227
    if-nez p2, :cond_0

    .line 228
    iget-object v2, p0, Lc8/Qbp;->mInflater:Landroid/view/LayoutInflater;

    sget v3, Lcom/youku/phone/R$layout;->menu_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 229
    new-instance v0, Lc8/Pbp;

    invoke-direct {v0}, Lc8/Pbp;-><init>()V

    .line 230
    .local v0, "holder":Lc8/Pbp;
    sget v2, Lcom/youku/phone/R$id;->icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lc8/Pbp;->icon:Landroid/widget/ImageView;

    .line 231
    sget v2, Lcom/youku/phone/R$id;->title:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lc8/Pbp;->title:Landroid/widget/TextView;

    .line 232
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    :goto_0
    invoke-virtual {p0, p1}, Lc8/Qbp;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Obp;

    .line 238
    .local v1, "item":Lc8/Obp;
    invoke-virtual {v1}, Lc8/Obp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 239
    iget-object v2, v0, Lc8/Pbp;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lc8/Obp;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    iget-object v2, v0, Lc8/Pbp;->icon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    :goto_1
    iget-object v2, v0, Lc8/Pbp;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Lc8/Obp;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    return-object p2

    .line 234
    .end local v0    # "holder":Lc8/Pbp;
    .end local v1    # "item":Lc8/Obp;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Pbp;

    .restart local v0    # "holder":Lc8/Pbp;
    goto :goto_0

    .line 242
    .restart local v1    # "item":Lc8/Obp;
    :cond_1
    iget-object v2, v0, Lc8/Pbp;->icon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
