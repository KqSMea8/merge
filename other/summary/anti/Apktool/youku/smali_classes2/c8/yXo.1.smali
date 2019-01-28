.class public Lc8/yXo;
.super Landroid/support/v4/view/PagerAdapter;
.source "ViewPagerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/zXo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Adapter"
.end annotation


# instance fields
.field private mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lc8/zXo;


# direct methods
.method constructor <init>(Lc8/zXo;)V
    .locals 1
    .param p1, "this$0"    # Lc8/zXo;

    .prologue
    .line 32
    iput-object p1, p0, Lc8/yXo;->this$0:Lc8/zXo;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/yXo;->mViews:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lc8/yXo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lc8/yXo;

    .prologue
    .line 32
    iget-object v0, p0, Lc8/yXo;->mViews:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v0, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {p0}, Lc8/yXo;->notifyDataSetChanged()V

    .line 47
    iget-object v0, p0, Lc8/yXo;->this$0:Lc8/zXo;

    iget-object v1, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/zXo;->setOffscreenPageLimit(I)V

    .line 48
    return-void
.end method

.method addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 52
    invoke-virtual {p0}, Lc8/yXo;->notifyDataSetChanged()V

    .line 61
    iget-object v0, p0, Lc8/yXo;->this$0:Lc8/zXo;

    iget-object v1, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/zXo;->setOffscreenPageLimit(I)V

    .line 62
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 103
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 113
    iget-object v1, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 114
    .local v0, "index":I
    if-ltz v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x2

    goto :goto_0
.end method

.method getViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 83
    iget-object v0, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 93
    iget-object v1, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 94
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-gez v1, :cond_0

    .line 95
    const/4 v1, 0x0

    iget-object v2, p0, Lc8/yXo;->this$0:Lc8/zXo;

    invoke-static {v2}, Lc8/zXo;->access$000(Lc8/zXo;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :cond_0
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 108
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {p0}, Lc8/yXo;->notifyDataSetChanged()V

    .line 79
    iget-object v0, p0, Lc8/yXo;->this$0:Lc8/zXo;

    iget-object v1, p0, Lc8/yXo;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/zXo;->setOffscreenPageLimit(I)V

    .line 80
    return-void
.end method
