.class public Lc8/Ucg;
.super Ljava/lang/Object;
.source "BasicListComponent.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xcg;->onBindViewHolder(Lc8/hfg;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xcg;

.field final synthetic val$holder:Lc8/hfg;


# direct methods
.method constructor <init>(Lc8/Xcg;Lc8/hfg;)V
    .locals 0

    .prologue
    .line 854
    .local p0, "this":Lc8/Ucg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.5;"
    iput-object p1, p0, Lc8/Ucg;->this$0:Lc8/Xcg;

    iput-object p2, p0, Lc8/Ucg;->val$holder:Lc8/hfg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 857
    .local p0, "this":Lc8/Ucg;, "Lcom/taobao/weex/ui/component/list/BasicListComponent.5;"
    invoke-static {p2}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_0

    .line 858
    iget-object v0, p0, Lc8/Ucg;->this$0:Lc8/Xcg;

    invoke-static {v0}, Lc8/Xcg;->access$300(Lc8/Xcg;)Lc8/Zcg;

    move-result-object v0

    iget-object v1, p0, Lc8/Ucg;->val$holder:Lc8/hfg;

    invoke-interface {v0, v1}, Lc8/Zcg;->startDrag(Lc8/Qv;)V

    .line 860
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
