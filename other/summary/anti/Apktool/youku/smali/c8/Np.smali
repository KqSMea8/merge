.class public Lc8/Np;
.super Ljava/lang/Object;
.source "DiffUtil.java"

# interfaces
.implements Lc8/Tp;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Op;->dispatchUpdatesTo(Lc8/iv;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Op;

.field final synthetic val$adapter:Lc8/iv;


# direct methods
.method constructor <init>(Lc8/Op;Lc8/iv;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Op;

    .prologue
    .line 659
    iput-object p1, p0, Lc8/Np;->this$0:Lc8/Op;

    iput-object p2, p0, Lc8/Np;->val$adapter:Lc8/iv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(IILjava/lang/Object;)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 677
    iget-object v0, p0, Lc8/Np;->val$adapter:Lc8/iv;

    invoke-virtual {v0, p1, p2, p3}, Lc8/iv;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 678
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 662
    iget-object v0, p0, Lc8/Np;->val$adapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemRangeInserted(II)V

    .line 663
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 672
    iget-object v0, p0, Lc8/Np;->val$adapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemMoved(II)V

    .line 673
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 667
    iget-object v0, p0, Lc8/Np;->val$adapter:Lc8/iv;

    invoke-virtual {v0, p1, p2}, Lc8/iv;->notifyItemRangeRemoved(II)V

    .line 668
    return-void
.end method
