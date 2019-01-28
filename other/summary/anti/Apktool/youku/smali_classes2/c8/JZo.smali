.class public Lc8/JZo;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/IZo;,
        Lc8/HZo;,
        Lc8/GZo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeaderGridView"


# instance fields
.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lc8/GZo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 65
    invoke-direct {p0}, Lc8/JZo;->initHeaderGridView()V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0}, Lc8/JZo;->initHeaderGridView()V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 73
    invoke-direct {p0}, Lc8/JZo;->initHeaderGridView()V

    .line 74
    return-void
.end method

.method private getColumns()I
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 91
    invoke-virtual {p0}, Lc8/JZo;->getNumColumns()I

    move-result v0

    .line 96
    :goto_0
    return v0

    .line 94
    :cond_0
    :try_start_0
    const-string/jumbo v0, "mNumColumns"

    invoke-virtual {p0, p0, v0}, Lc8/JZo;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private initHeaderGridView()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setClipChildren(Z)V

    .line 62
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/GZo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/widget/HeaderGridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 217
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 218
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/GZo;

    .line 219
    .local v1, "info":Lc8/GZo;
    iget-object v3, v1, Lc8/GZo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 220
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 224
    .end local v1    # "info":Lc8/GZo;
    :cond_0
    return-void

    .line 217
    .restart local v1    # "info":Lc8/GZo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lc8/JZo;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 192
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 161
    invoke-virtual {p0}, Lc8/JZo;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 162
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v3, v0, Lc8/IZo;

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Cannot add header view to grid -- setAdapter has already been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 166
    :cond_0
    new-instance v2, Lc8/GZo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lc8/GZo;-><init>(Lc8/FZo;)V

    .line 167
    .local v2, "info":Lc8/GZo;
    new-instance v1, Lc8/HZo;

    invoke-virtual {p0}, Lc8/JZo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lc8/HZo;-><init>(Lc8/JZo;Landroid/content/Context;)V

    .line 168
    .local v1, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 169
    iput-object p1, v2, Lc8/GZo;->view:Landroid/view/View;

    .line 170
    iput-object v1, v2, Lc8/GZo;->viewContainer:Landroid/view/ViewGroup;

    .line 171
    iput-object p2, v2, Lc8/GZo;->data:Ljava/lang/Object;

    .line 172
    iput-boolean p3, v2, Lc8/GZo;->isSelectable:Z

    .line 173
    iget-object v3, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    if-eqz v0, :cond_1

    .line 177
    check-cast v0, Lc8/IZo;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lc8/IZo;->notifyDataSetChanged()V

    .line 179
    :cond_1
    return-void
.end method

.method public getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 113
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 120
    :goto_1
    return-object v1

    .line 111
    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 120
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 132
    invoke-virtual {p0, p1, p2}, Lc8/JZo;->getDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 134
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 137
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 141
    :goto_0
    return-object v2

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getHeaderViewCount()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 78
    invoke-virtual {p0}, Lc8/JZo;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 79
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lc8/IZo;

    if-eqz v1, :cond_0

    .line 80
    check-cast v0, Lc8/IZo;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {p0}, Lc8/JZo;->getColumns()I

    move-result v1

    invoke-virtual {v0, v1}, Lc8/IZo;->setNumColumns(I)V

    .line 82
    :cond_0
    return-void
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 204
    iget-object v2, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "result":Z
    invoke-virtual {p0}, Lc8/JZo;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 207
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    check-cast v0, Lc8/IZo;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p1}, Lc8/IZo;->removeHeader(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/4 v1, 0x1

    .line 210
    :cond_0
    iget-object v2, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2}, Lc8/JZo;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 213
    .end local v1    # "result":Z
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lc8/JZo;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 227
    iget-object v2, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 228
    new-instance v0, Lc8/IZo;

    iget-object v2, p0, Lc8/JZo;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v2, p1}, Lc8/IZo;-><init>(Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    .line 229
    .local v0, "hadapter":Lc8/IZo;
    invoke-direct {p0}, Lc8/JZo;->getColumns()I

    move-result v1

    .line 230
    .local v1, "numColumns":I
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 231
    invoke-virtual {v0, v1}, Lc8/IZo;->setNumColumns(I)V

    .line 233
    :cond_0
    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    .end local v0    # "hadapter":Lc8/IZo;
    .end local v1    # "numColumns":I
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setClipChildren(Z)V
    .locals 0
    .param p1, "clipChildren"    # Z

    .prologue
    .line 147
    return-void
.end method
