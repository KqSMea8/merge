.class public abstract Lc8/xeo;
.super Lc8/Qv;
.source "ARecyclerViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Qv;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 15
    .local p0, "this":Lc8/xeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewHolder<TT;>;"
    invoke-direct {p0, p1}, Lc8/Qv;-><init>(Landroid/view/View;)V

    .line 16
    return-void
.end method


# virtual methods
.method public abstract bindViewHolder(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public bindViewHolder(Ljava/lang/Object;I)V
    .locals 0
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lc8/xeo;, "Lcom/youku/us/baseuikit/widget/recycleview/adapter/ARecyclerViewHolder<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lc8/xeo;->bindViewHolder(Ljava/lang/Object;)V

    .line 26
    return-void
.end method
