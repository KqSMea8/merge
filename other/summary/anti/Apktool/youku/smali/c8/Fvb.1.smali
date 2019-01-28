.class public Lc8/Fvb;
.super Ljava/lang/Object;
.source "Elevator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ivb;->setList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ivb;


# direct methods
.method constructor <init>(Lc8/Ivb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ivb;

    .prologue
    .line 295
    iput-object p1, p0, Lc8/Fvb;->this$0:Lc8/Ivb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Lvb;

    .line 301
    .local v0, "item":Lc8/Lvb;
    iget-object v1, p0, Lc8/Fvb;->this$0:Lc8/Ivb;

    invoke-static {v1}, Lc8/Ivb;->access$700(Lc8/Ivb;)Lc8/Gvb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 302
    iget-object v1, p0, Lc8/Fvb;->this$0:Lc8/Ivb;

    invoke-static {v1}, Lc8/Ivb;->access$700(Lc8/Ivb;)Lc8/Gvb;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/Gvb;->OnClick(Lc8/Lvb;)V

    .line 304
    :cond_0
    return-void
.end method
