.class public Lc8/aWf;
.super Landroid/widget/ArrayAdapter;
.source "WXPickersModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eWf;->performSinglePick(Ljava/util/List;Ljava/util/Map;Lc8/EWf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eWf;

.field final synthetic val$textColor:I


# direct methods
.method constructor <init>(Lc8/eWf;Landroid/content/Context;ILjava/util/List;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 193
    .local p4, "x2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lc8/aWf;->this$0:Lc8/eWf;

    iput p5, p0, Lc8/aWf;->val$textColor:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, "itemView":Landroid/view/View;
    iget-object v1, p0, Lc8/aWf;->this$0:Lc8/eWf;

    invoke-static {v1}, Lc8/eWf;->access$000(Lc8/eWf;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 199
    iget-object v1, p0, Lc8/aWf;->this$0:Lc8/eWf;

    invoke-static {v1, v0}, Lc8/eWf;->access$102(Lc8/eWf;Landroid/view/View;)Landroid/view/View;

    .line 202
    :cond_0
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget v1, p0, Lc8/aWf;->val$textColor:I

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 203
    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lc8/aWf;->val$textColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    :cond_1
    return-object v0
.end method
