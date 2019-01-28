.class public Lc8/Gb;
.super Ljava/lang/Object;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hb;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Hb;


# direct methods
.method constructor <init>(Lc8/Hb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Hb;

    .prologue
    .line 85
    iput-object p1, p0, Lc8/Gb;->this$0:Lc8/Hb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    move-object v1, p1

    check-cast v1, Lc8/Eb;

    .line 89
    .local v1, "itemView":Lc8/Eb;
    invoke-virtual {v1}, Lc8/Eb;->getItemData()Lc8/Vq;

    move-result-object v0

    .line 90
    .local v0, "item":Landroid/view/MenuItem;
    iget-object v2, p0, Lc8/Gb;->this$0:Lc8/Hb;

    invoke-static {v2}, Lc8/Hb;->access$100(Lc8/Hb;)Lc8/Rq;

    move-result-object v2

    iget-object v3, p0, Lc8/Gb;->this$0:Lc8/Hb;

    invoke-static {v3}, Lc8/Hb;->access$000(Lc8/Hb;)Lc8/Jb;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lc8/Rq;->performItemAction(Landroid/view/MenuItem;Lc8/hr;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 91
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 93
    :cond_0
    return-void
.end method
