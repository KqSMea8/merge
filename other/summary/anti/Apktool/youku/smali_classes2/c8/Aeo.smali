.class public Lc8/Aeo;
.super Lc8/weo;
.source "RecyclerViewBinderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/yeo;,
        Lc8/zeo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/weo;"
    }
.end annotation


# static fields
.field private static final ITEM_TYPE_NORMAL:I = 0x19d


# instance fields
.field private columns:[Ljava/lang/String;

.field private imageViewBinder:Lc8/yeo;

.field private layoutRes:I

.field private viewIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutRes"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p4, "viewIds"    # [I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I[I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lc8/Aeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>;"
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lc8/weo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 63
    iput p3, p0, Lc8/Aeo;->layoutRes:I

    .line 64
    iput-object p4, p0, Lc8/Aeo;->viewIds:[I

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[I[Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutRes"    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param
    .param p4, "viewIds"    # [I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .param p5, "columns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;I[I[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lc8/Aeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>;"
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p1, p2}, Lc8/weo;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 79
    iput p3, p0, Lc8/Aeo;->layoutRes:I

    .line 80
    iput-object p4, p0, Lc8/Aeo;->viewIds:[I

    .line 81
    iput-object p5, p0, Lc8/Aeo;->columns:[Ljava/lang/String;

    .line 82
    invoke-static {p4}, Lc8/abo;->isNull([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p5}, Lc8/abo;->isNull([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    array-length v0, p4

    array-length v1, p5

    if-eq v0, v1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "viewIds\'s length must same than columns"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lc8/Aeo;)[I
    .locals 1
    .param p0, "x0"    # Lc8/Aeo;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/Aeo;->viewIds:[I

    return-object v0
.end method

.method static synthetic access$100(Lc8/Aeo;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Aeo;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/Aeo;->columns:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lc8/Aeo;)Lc8/yeo;
    .locals 1
    .param p0, "x0"    # Lc8/Aeo;

    .prologue
    .line 33
    iget-object v0, p0, Lc8/Aeo;->imageViewBinder:Lc8/yeo;

    return-object v0
.end method


# virtual methods
.method public getImageViewBinder()Lc8/yeo;
    .locals 1

    .prologue
    .line 263
    .local p0, "this":Lc8/Aeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>;"
    iget-object v0, p0, Lc8/Aeo;->imageViewBinder:Lc8/yeo;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 109
    .local p0, "this":Lc8/Aeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>;"
    invoke-super {p0, p1}, Lc8/weo;->getItemViewType(I)I

    move-result v0

    .line 110
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lc8/Aeo;->getItemData(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    const/16 v0, 0x19d

    .line 113
    .end local v0    # "result":I
    :cond_0
    return v0
.end method

.method public onBindViewHolder(Lc8/Qv;I)V
    .locals 1
    .param p1, "holder"    # Lc8/Qv;
    .param p2, "position"    # I

    .prologue
    .line 96
    .local p0, "this":Lc8/Aeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>;"
    instance-of v0, p1, Lc8/zeo;

    if-eqz v0, :cond_0

    .line 97
    check-cast p1, Lc8/zeo;

    .end local p1    # "holder":Lc8/Qv;
    iget-object v0, p0, Lc8/Aeo;->dataList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lc8/zeo;->bindViewHolder(Ljava/lang/Object;I)V

    .line 99
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lc8/Qv;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 89
    .local p0, "this":Lc8/Aeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>;"
    iget-object v2, p0, Lc8/Aeo;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lc8/Aeo;->layoutRes:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 90
    .local v1, "itemView":Landroid/view/View;
    new-instance v0, Lc8/zeo;

    invoke-direct {v0, p0, v1}, Lc8/zeo;-><init>(Lc8/Aeo;Landroid/view/View;)V

    .line 91
    .local v0, "itemHolder":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    return-object v0
.end method

.method public setImageViewBinder(Lc8/yeo;)V
    .locals 0
    .param p1, "imageViewBinder"    # Lc8/yeo;

    .prologue
    .line 267
    .local p0, "this":Lc8/Aeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>;"
    iput-object p1, p0, Lc8/Aeo;->imageViewBinder:Lc8/yeo;

    .line 268
    return-void
.end method
