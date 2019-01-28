.class public Lc8/xvb;
.super Ljava/lang/Object;
.source "Elevator.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ivb;-><init>(Landroid/content/Context;)V
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
    .line 125
    iput-object p1, p0, Lc8/xvb;->this$0:Lc8/Ivb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lc8/xvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$000(Lc8/Ivb;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lc8/xvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$100(Lc8/Ivb;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lc8/xvb;->this$0:Lc8/Ivb;

    invoke-static {v0}, Lc8/Ivb;->access$300(Lc8/Ivb;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lc8/xvb;->this$0:Lc8/Ivb;

    invoke-static {v1}, Lc8/Ivb;->access$200(Lc8/Ivb;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    return-void
.end method
