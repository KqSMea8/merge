.class public Lc8/teo;
.super Lc8/Qv;
.source "XRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ueo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SimpleViewHolder"
.end annotation


# instance fields
.field final synthetic this$1:Lc8/ueo;


# direct methods
.method public constructor <init>(Lc8/ueo;Landroid/view/View;)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 696
    iput-object p1, p0, Lc8/teo;->this$1:Lc8/ueo;

    .line 697
    invoke-direct {p0, p2}, Lc8/Qv;-><init>(Landroid/view/View;)V

    .line 698
    return-void
.end method
