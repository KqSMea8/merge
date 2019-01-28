.class public Lc8/zeo;
.super Lc8/xeo;
.source "RecyclerViewBinderAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Aeo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InnerItemHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Aeo;

.field private views:[Landroid/view/View;


# direct methods
.method public constructor <init>(Lc8/Aeo;Landroid/view/View;)V
    .locals 3
    .param p1, "this$0"    # Lc8/Aeo;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 120
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    iput-object p1, p0, Lc8/zeo;->this$0:Lc8/Aeo;

    .line 121
    invoke-direct {p0, p2}, Lc8/xeo;-><init>(Landroid/view/View;)V

    .line 122
    invoke-static {p1}, Lc8/Aeo;->access$000(Lc8/Aeo;)[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lc8/zeo;->views:[Landroid/view/View;

    .line 123
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {p1}, Lc8/Aeo;->access$000(Lc8/Aeo;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 124
    iget-object v1, p0, Lc8/zeo;->views:[Landroid/view/View;

    invoke-static {p1}, Lc8/Aeo;->access$000(Lc8/Aeo;)[I

    move-result-object v2

    aget v2, v2, v0

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v1, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p1, Lc8/Aeo;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 127
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :cond_1
    return-void
.end method

.method private bindImageView(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "resource"    # I

    .prologue
    .line 231
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 232
    return-void
.end method

.method private bindImageView(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 241
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    iget-object v0, p0, Lc8/zeo;->this$0:Lc8/Aeo;

    invoke-static {v0}, Lc8/Aeo;->access$200(Lc8/Aeo;)Lc8/yeo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lc8/zeo;->this$0:Lc8/Aeo;

    invoke-static {v0}, Lc8/Aeo;->access$200(Lc8/Aeo;)Lc8/yeo;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lc8/yeo;->bindImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-static {p2}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    invoke-static {p2, p1}, Lc8/rbo;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 248
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private bindTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 221
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    return-void
.end method

.method private bindView(Landroid/view/View;Ljava/lang/Object;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 155
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "value":Ljava/lang/String;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lc8/zeo;->this$0:Lc8/Aeo;

    iget-object v1, v1, Lc8/Aeo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_0
    :goto_0
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lc8/zeo;->bindTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 173
    .end local v0    # "value":Ljava/lang/String;
    .end local p2    # "data":Ljava/lang/Object;
    :cond_1
    :goto_1
    return-void

    .line 162
    .restart local v0    # "value":Ljava/lang/String;
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 163
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 166
    .end local v0    # "value":Ljava/lang/String;
    :cond_3
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 167
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 168
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "data":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lc8/zeo;->bindImageView(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 169
    .restart local p1    # "view":Landroid/view/View;
    .restart local p2    # "data":Ljava/lang/Object;
    :cond_4
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 170
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lc8/zeo;->bindImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private bindView(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "column"    # Ljava/lang/String;

    .prologue
    .line 183
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    invoke-static {p3}, Lc8/abo;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 186
    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    invoke-direct {p0, p2, p3}, Lc8/zeo;->getColumnValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 188
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lc8/zeo;->bindTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 190
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lc8/zeo;->bindImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getColumnValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "column"    # Ljava/lang/String;

    .prologue
    .line 202
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    const/4 v1, 0x0

    .line 203
    .local v1, "property":Ljava/lang/Object;
    const-string/jumbo v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 204
    const-string/jumbo v3, "\\."

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "columns":[Ljava/lang/String;
    array-length v4, v0

    const/4 v3, 0x0

    .end local v1    # "property":Ljava/lang/Object;
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v0, v3

    .line 206
    .local v2, "sub":Ljava/lang/String;
    if-eqz v1, :cond_0

    :goto_1
    invoke-static {v1, v2}, Lc8/Zao;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 205
    .restart local v1    # "property":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "property":Ljava/lang/Object;
    :cond_0
    move-object v1, p1

    .line 206
    goto :goto_1

    .line 209
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v2    # "sub":Ljava/lang/String;
    .restart local v1    # "property":Ljava/lang/Object;
    :cond_1
    invoke-static {p1, p2}, Lc8/Zao;->getProperty(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 211
    .end local v1    # "property":Ljava/lang/Object;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindViewHolder(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 133
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    iget-object v1, p0, Lc8/zeo;->views:[Landroid/view/View;

    invoke-static {v1}, Lc8/abo;->isNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/zeo;->views:[Landroid/view/View;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 135
    iget-object v1, p0, Lc8/zeo;->views:[Landroid/view/View;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lc8/zeo;->this$0:Lc8/Aeo;

    invoke-static {v1}, Lc8/Aeo;->access$100(Lc8/Aeo;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/abo;->isNull([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    iget-object v1, p0, Lc8/zeo;->views:[Landroid/view/View;

    aget-object v1, v1, v0

    iget-object v2, p0, Lc8/zeo;->this$0:Lc8/Aeo;

    invoke-static {v2}, Lc8/Aeo;->access$100(Lc8/Aeo;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-direct {p0, v1, p1, v2}, Lc8/zeo;->bindView(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lc8/zeo;->views:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Lc8/zeo;->bindView(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_1

    .line 145
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lc8/zeo;->itemView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    .local p0, "this":Lc8/zeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/RecyclerViewBinderAdapter<TT;>.InnerItemHolder;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lc8/zeo;->this$0:Lc8/Aeo;

    iget-object v0, v0, Lc8/Aeo;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lc8/zeo;->getAdapterPosition()I

    move-result v3

    const-wide/16 v4, 0x0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 257
    :cond_0
    return-void
.end method
